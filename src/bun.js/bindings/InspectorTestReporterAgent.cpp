#include "InspectorTestReporterAgent.h"

#include <JavaScriptCore/InspectorFrontendRouter.h>
#include <JavaScriptCore/InspectorBackendDispatcher.h>
#include <JavaScriptCore/JSGlobalObject.h>
#include <wtf/text/WTFString.h>
#include <JavaScriptCore/ScriptCallStack.h>
#include <JavaScriptCore/JSGlobalObjectDebuggable.h>
#include <JavaScriptCore/JSGlobalObjectInspectorController.h>
#include "ErrorStackTrace.h"
#include "ZigGlobalObject.h"

#include "ModuleLoader.h"
#include <wtf/TZoneMallocInlines.h>

using namespace JSC;
using namespace Inspector;

namespace Inspector {

WTF_MAKE_TZONE_ALLOCATED_IMPL(InspectorTestReporterAgent);

// Zig bindings implementation
extern "C" {

void Bun__TestReporterAgentEnable(Inspector::InspectorTestReporterAgent* agent);
void Bun__TestReporterAgentDisable(Inspector::InspectorTestReporterAgent* agent);

enum class BunTestType : uint8_t {
    Test,
    Describe,
};

void Bun__TestReporterAgentReportTestFound(Inspector::InspectorTestReporterAgent* agent, JSC::CallFrame* callFrame, int testId, BunString* name, BunTestType item_type, int parentId)
{
    auto str = name->toWTFString(BunString::ZeroCopy);

    Protocol::TestReporter::TestType type;
    switch (item_type) {
    case BunTestType::Test:
        type = Protocol::TestReporter::TestType::Test;
        break;
    case BunTestType::Describe:
        type = Protocol::TestReporter::TestType::Describe;
        break;
    default:
        ASSERT_NOT_REACHED();
    }

    agent->reportTestFound(callFrame, testId, str, type, parentId);
}

void Bun__TestReporterAgentReportTestStart(Inspector::InspectorTestReporterAgent* agent, int testId)
{
    agent->reportTestStart(testId);
}

enum class BunTestStatus : uint8_t {
    Pass,
    Fail,
    Timeout,
    Skip,
    Todo,
    SkippedBecauseLabel,
};

void Bun__TestReporterAgentReportTestEnd(Inspector::InspectorTestReporterAgent* agent, int testId, BunTestStatus bunTestStatus, double elapsed)
{
    Protocol::TestReporter::TestStatus status;
    switch (bunTestStatus) {
    case BunTestStatus::Pass:
        status = Protocol::TestReporter::TestStatus::Pass;
        break;
    case BunTestStatus::Fail:
        status = Protocol::TestReporter::TestStatus::Fail;
        break;
    case BunTestStatus::Timeout:
        status = Protocol::TestReporter::TestStatus::Timeout;
        break;
    case BunTestStatus::Skip:
        status = Protocol::TestReporter::TestStatus::Skip;
        break;
    case BunTestStatus::Todo:
        status = Protocol::TestReporter::TestStatus::Todo;
        break;
    case BunTestStatus::SkippedBecauseLabel:
        status = Protocol::TestReporter::TestStatus::Skipped_because_label;
        break;
    default:
        ASSERT_NOT_REACHED();
    }

    agent->reportTestEnd(testId, status, elapsed);
}
}

InspectorTestReporterAgent::InspectorTestReporterAgent(JSC::JSGlobalObject& globalObject)
    : InspectorAgentBase("TestReporter"_s)
    , m_globalObject(globalObject)
    , m_backendDispatcher(TestReporterBackendDispatcher::create(m_globalObject.inspectorController().backendDispatcher(), this))
    , m_frontendDispatcher(makeUnique<TestReporterFrontendDispatcher>(const_cast<FrontendRouter&>(m_globalObject.inspectorController().frontendRouter())))
{
}

InspectorTestReporterAgent::~InspectorTestReporterAgent()
{
    if (m_enabled) {
        Bun__TestReporterAgentDisable(this);
    }
}

void InspectorTestReporterAgent::didCreateFrontendAndBackend()
{
}

void InspectorTestReporterAgent::willDestroyFrontendAndBackend(DisconnectReason)
{
    disable();
}

Protocol::ErrorStringOr<void> InspectorTestReporterAgent::enable()
{
    if (m_enabled)
        return {};

    m_enabled = true;
    Bun__TestReporterAgentEnable(this);
    return {};
}

Protocol::ErrorStringOr<void> InspectorTestReporterAgent::disable()
{
    if (!m_enabled)
        return {};

    m_enabled = false;
    Bun__TestReporterAgentDisable(this);
    return {};
}

void InspectorTestReporterAgent::reportTestFound(JSC::CallFrame* callFrame, int testId, const String& name, Protocol::TestReporter::TestType type, int parentId)
{
    if (!m_enabled)
        return;

    JSC::LineColumn lineColumn;
    JSC::SourceID sourceID = 0;
    String sourceURL;

    ZigStackFrame remappedFrame = {};

    auto* globalObject = &m_globalObject;
    auto& vm = JSC::getVM(globalObject);

    JSC::StackVisitor::visit(callFrame, vm, [&](JSC::StackVisitor& visitor) -> WTF::IterationStatus {
        if (Zig::isImplementationVisibilityPrivate(visitor))
            return WTF::IterationStatus::Continue;

        if (visitor->hasLineAndColumnInfo()) {
            lineColumn = visitor->computeLineAndColumn();

            String sourceURLForFrame = Zig::sourceURL(visitor);

            // Sometimes, the sourceURL is empty.
            // For example, pages in Next.js.
            if (sourceURLForFrame.isEmpty()) {
                auto* codeBlock = visitor->codeBlock();
                ASSERT(codeBlock);

                // hasLineAndColumnInfo() checks codeBlock(), so this is safe to access here.
                const auto& source = codeBlock->source();

                // source.isNull() is true when the SourceProvider is a null pointer.
                if (!source.isNull()) {
                    auto* provider = source.provider();
                    sourceID = provider->asID();
                }
            }

            sourceURL = sourceURLForFrame;

            return WTF::IterationStatus::Done;
        }

        return WTF::IterationStatus::Continue;
    });

    if (!sourceURL.isEmpty() and lineColumn.line > 0) {
        OrdinalNumber originalLine = OrdinalNumber::fromOneBasedInt(lineColumn.line);
        OrdinalNumber originalColumn = OrdinalNumber::fromOneBasedInt(lineColumn.column);

        remappedFrame.position.line_zero_based = originalLine.zeroBasedInt();
        remappedFrame.position.column_zero_based = originalColumn.zeroBasedInt();
        remappedFrame.source_url = Bun::toStringRef(sourceURL);

        Bun__remapStackFramePositions(Bun::vm(globalObject), &remappedFrame, 1);

        sourceURL = remappedFrame.source_url.toWTFString();
        lineColumn.line = OrdinalNumber::fromZeroBasedInt(remappedFrame.position.line_zero_based).oneBasedInt();
        lineColumn.column = OrdinalNumber::fromZeroBasedInt(remappedFrame.position.column_zero_based).oneBasedInt();
    }

    m_frontendDispatcher->found(
        testId,
        sourceID > 0 ? String::number(sourceID) : String(),
        sourceURL,
        lineColumn.line,
        name,
        type,
        parentId > 0 ? parentId : std::optional<int>());
}

void InspectorTestReporterAgent::reportTestStart(int testId)
{
    if (!m_enabled || !m_frontendDispatcher)
        return;

    m_frontendDispatcher->start(testId);
}

void InspectorTestReporterAgent::reportTestEnd(int testId, Protocol::TestReporter::TestStatus status, double elapsed)
{
    if (!m_enabled || !m_frontendDispatcher)
        return;

    m_frontendDispatcher->end(testId, status, elapsed);
}

} // namespace Inspector
