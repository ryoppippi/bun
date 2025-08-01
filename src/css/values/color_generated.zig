//!This file is generated by `color_via.ts`. Do not edit it directly!

pub const generated_color_conversions = struct {
    pub const convert_RGBA = struct {
        pub fn intoLAB(this: *const RGBA) LAB {
            const xyz: SRGB = this.into(.SRGB);
            return xyz.into(.LAB);
        }

        pub fn intoLCH(this: *const RGBA) LCH {
            const xyz: SRGB = this.into(.SRGB);
            return xyz.into(.LCH);
        }

        pub fn intoOKLAB(this: *const RGBA) OKLAB {
            const xyz: SRGB = this.into(.SRGB);
            return xyz.into(.OKLAB);
        }

        pub fn intoOKLCH(this: *const RGBA) OKLCH {
            const xyz: SRGB = this.into(.SRGB);
            return xyz.into(.OKLCH);
        }

        pub fn intoP3(this: *const RGBA) P3 {
            const xyz: SRGB = this.into(.SRGB);
            return xyz.into(.P3);
        }

        pub fn intoSRGBLinear(this: *const RGBA) SRGBLinear {
            const xyz: SRGB = this.into(.SRGB);
            return xyz.into(.SRGBLinear);
        }

        pub fn intoA98(this: *const RGBA) A98 {
            const xyz: SRGB = this.into(.SRGB);
            return xyz.into(.A98);
        }

        pub fn intoProPhoto(this: *const RGBA) ProPhoto {
            const xyz: SRGB = this.into(.SRGB);
            return xyz.into(.ProPhoto);
        }

        pub fn intoXYZd50(this: *const RGBA) XYZd50 {
            const xyz: SRGB = this.into(.SRGB);
            return xyz.into(.XYZd50);
        }

        pub fn intoXYZd65(this: *const RGBA) XYZd65 {
            const xyz: SRGB = this.into(.SRGB);
            return xyz.into(.XYZd65);
        }

        pub fn intoRec2020(this: *const RGBA) Rec2020 {
            const xyz: SRGB = this.into(.SRGB);
            return xyz.into(.Rec2020);
        }

        pub fn intoHSL(this: *const RGBA) HSL {
            const xyz: SRGB = this.into(.SRGB);
            return xyz.into(.HSL);
        }

        pub fn intoHWB(this: *const RGBA) HWB {
            const xyz: SRGB = this.into(.SRGB);
            return xyz.into(.HWB);
        }
    };
    pub const convert_LAB = struct {
        pub fn intoXYZd65(this: *const LAB) XYZd65 {
            const xyz: XYZd50 = this.into(.XYZd50);
            return xyz.into(.XYZd65);
        }

        pub fn intoOKLAB(this: *const LAB) OKLAB {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.OKLAB);
        }

        pub fn intoOKLCH(this: *const LAB) OKLCH {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.OKLCH);
        }

        pub fn intoSRGB(this: *const LAB) SRGB {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.SRGB);
        }

        pub fn intoSRGBLinear(this: *const LAB) SRGBLinear {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.SRGBLinear);
        }

        pub fn intoP3(this: *const LAB) P3 {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.P3);
        }

        pub fn intoA98(this: *const LAB) A98 {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.A98);
        }

        pub fn intoProPhoto(this: *const LAB) ProPhoto {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.ProPhoto);
        }

        pub fn intoRec2020(this: *const LAB) Rec2020 {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.Rec2020);
        }

        pub fn intoHSL(this: *const LAB) HSL {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.HSL);
        }

        pub fn intoHWB(this: *const LAB) HWB {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.HWB);
        }

        pub fn intoRGBA(this: *const LAB) RGBA {
            const xyz: SRGB = this.into(.SRGB);
            return xyz.into(.RGBA);
        }
    };
    pub const convert_SRGB = struct {
        pub fn intoLAB(this: *const SRGB) LAB {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.LAB);
        }

        pub fn intoLCH(this: *const SRGB) LCH {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.LCH);
        }

        pub fn intoXYZd65(this: *const SRGB) XYZd65 {
            const xyz: SRGBLinear = this.into(.SRGBLinear);
            return xyz.into(.XYZd65);
        }

        pub fn intoOKLAB(this: *const SRGB) OKLAB {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.OKLAB);
        }

        pub fn intoOKLCH(this: *const SRGB) OKLCH {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.OKLCH);
        }

        pub fn intoP3(this: *const SRGB) P3 {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.P3);
        }

        pub fn intoA98(this: *const SRGB) A98 {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.A98);
        }

        pub fn intoProPhoto(this: *const SRGB) ProPhoto {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.ProPhoto);
        }

        pub fn intoRec2020(this: *const SRGB) Rec2020 {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.Rec2020);
        }

        pub fn intoXYZd50(this: *const SRGB) XYZd50 {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.XYZd50);
        }
    };
    pub const convert_HSL = struct {
        pub fn intoLAB(this: *const HSL) LAB {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.LAB);
        }

        pub fn intoLCH(this: *const HSL) LCH {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.LCH);
        }

        pub fn intoP3(this: *const HSL) P3 {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.P3);
        }

        pub fn intoSRGBLinear(this: *const HSL) SRGBLinear {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.SRGBLinear);
        }

        pub fn intoA98(this: *const HSL) A98 {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.A98);
        }

        pub fn intoProPhoto(this: *const HSL) ProPhoto {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.ProPhoto);
        }

        pub fn intoXYZd50(this: *const HSL) XYZd50 {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.XYZd50);
        }

        pub fn intoRec2020(this: *const HSL) Rec2020 {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.Rec2020);
        }

        pub fn intoOKLAB(this: *const HSL) OKLAB {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.OKLAB);
        }

        pub fn intoOKLCH(this: *const HSL) OKLCH {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.OKLCH);
        }

        pub fn intoXYZd65(this: *const HSL) XYZd65 {
            const xyz: SRGB = this.into(.SRGB);
            return xyz.into(.XYZd65);
        }

        pub fn intoHWB(this: *const HSL) HWB {
            const xyz: SRGB = this.into(.SRGB);
            return xyz.into(.HWB);
        }

        pub fn intoRGBA(this: *const HSL) RGBA {
            const xyz: SRGB = this.into(.SRGB);
            return xyz.into(.RGBA);
        }
    };
    pub const convert_HWB = struct {
        pub fn intoLAB(this: *const HWB) LAB {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.LAB);
        }

        pub fn intoLCH(this: *const HWB) LCH {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.LCH);
        }

        pub fn intoP3(this: *const HWB) P3 {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.P3);
        }

        pub fn intoSRGBLinear(this: *const HWB) SRGBLinear {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.SRGBLinear);
        }

        pub fn intoA98(this: *const HWB) A98 {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.A98);
        }

        pub fn intoProPhoto(this: *const HWB) ProPhoto {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.ProPhoto);
        }

        pub fn intoXYZd50(this: *const HWB) XYZd50 {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.XYZd50);
        }

        pub fn intoRec2020(this: *const HWB) Rec2020 {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.Rec2020);
        }

        pub fn intoHSL(this: *const HWB) HSL {
            const xyz: SRGB = this.into(.SRGB);
            return xyz.into(.HSL);
        }

        pub fn intoXYZd65(this: *const HWB) XYZd65 {
            const xyz: SRGB = this.into(.SRGB);
            return xyz.into(.XYZd65);
        }

        pub fn intoOKLAB(this: *const HWB) OKLAB {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.OKLAB);
        }

        pub fn intoOKLCH(this: *const HWB) OKLCH {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.OKLCH);
        }

        pub fn intoRGBA(this: *const HWB) RGBA {
            const xyz: SRGB = this.into(.SRGB);
            return xyz.into(.RGBA);
        }
    };
    pub const convert_SRGBLinear = struct {
        pub fn intoLAB(this: *const SRGBLinear) LAB {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.LAB);
        }

        pub fn intoLCH(this: *const SRGBLinear) LCH {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.LCH);
        }

        pub fn intoP3(this: *const SRGBLinear) P3 {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.P3);
        }

        pub fn intoOKLAB(this: *const SRGBLinear) OKLAB {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.OKLAB);
        }

        pub fn intoOKLCH(this: *const SRGBLinear) OKLCH {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.OKLCH);
        }

        pub fn intoA98(this: *const SRGBLinear) A98 {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.A98);
        }

        pub fn intoProPhoto(this: *const SRGBLinear) ProPhoto {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.ProPhoto);
        }

        pub fn intoRec2020(this: *const SRGBLinear) Rec2020 {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.Rec2020);
        }

        pub fn intoXYZd50(this: *const SRGBLinear) XYZd50 {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.XYZd50);
        }

        pub fn intoHSL(this: *const SRGBLinear) HSL {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.HSL);
        }

        pub fn intoHWB(this: *const SRGBLinear) HWB {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.HWB);
        }

        pub fn intoRGBA(this: *const SRGBLinear) RGBA {
            const xyz: SRGB = this.into(.SRGB);
            return xyz.into(.RGBA);
        }
    };
    pub const convert_P3 = struct {
        pub fn intoLAB(this: *const P3) LAB {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.LAB);
        }

        pub fn intoLCH(this: *const P3) LCH {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.LCH);
        }

        pub fn intoSRGB(this: *const P3) SRGB {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.SRGB);
        }

        pub fn intoSRGBLinear(this: *const P3) SRGBLinear {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.SRGBLinear);
        }

        pub fn intoOKLAB(this: *const P3) OKLAB {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.OKLAB);
        }

        pub fn intoOKLCH(this: *const P3) OKLCH {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.OKLCH);
        }

        pub fn intoA98(this: *const P3) A98 {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.A98);
        }

        pub fn intoProPhoto(this: *const P3) ProPhoto {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.ProPhoto);
        }

        pub fn intoRec2020(this: *const P3) Rec2020 {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.Rec2020);
        }

        pub fn intoXYZd50(this: *const P3) XYZd50 {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.XYZd50);
        }

        pub fn intoHSL(this: *const P3) HSL {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.HSL);
        }

        pub fn intoHWB(this: *const P3) HWB {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.HWB);
        }

        pub fn intoRGBA(this: *const P3) RGBA {
            const xyz: SRGB = this.into(.SRGB);
            return xyz.into(.RGBA);
        }
    };
    pub const convert_A98 = struct {
        pub fn intoLAB(this: *const A98) LAB {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.LAB);
        }

        pub fn intoLCH(this: *const A98) LCH {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.LCH);
        }

        pub fn intoSRGB(this: *const A98) SRGB {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.SRGB);
        }

        pub fn intoP3(this: *const A98) P3 {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.P3);
        }

        pub fn intoSRGBLinear(this: *const A98) SRGBLinear {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.SRGBLinear);
        }

        pub fn intoOKLAB(this: *const A98) OKLAB {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.OKLAB);
        }

        pub fn intoOKLCH(this: *const A98) OKLCH {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.OKLCH);
        }

        pub fn intoProPhoto(this: *const A98) ProPhoto {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.ProPhoto);
        }

        pub fn intoRec2020(this: *const A98) Rec2020 {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.Rec2020);
        }

        pub fn intoXYZd50(this: *const A98) XYZd50 {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.XYZd50);
        }

        pub fn intoHSL(this: *const A98) HSL {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.HSL);
        }

        pub fn intoHWB(this: *const A98) HWB {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.HWB);
        }

        pub fn intoRGBA(this: *const A98) RGBA {
            const xyz: SRGB = this.into(.SRGB);
            return xyz.into(.RGBA);
        }
    };
    pub const convert_ProPhoto = struct {
        pub fn intoXYZd65(this: *const ProPhoto) XYZd65 {
            const xyz: XYZd50 = this.into(.XYZd50);
            return xyz.into(.XYZd65);
        }

        pub fn intoLAB(this: *const ProPhoto) LAB {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.LAB);
        }

        pub fn intoLCH(this: *const ProPhoto) LCH {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.LCH);
        }

        pub fn intoSRGB(this: *const ProPhoto) SRGB {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.SRGB);
        }

        pub fn intoP3(this: *const ProPhoto) P3 {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.P3);
        }

        pub fn intoSRGBLinear(this: *const ProPhoto) SRGBLinear {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.SRGBLinear);
        }

        pub fn intoA98(this: *const ProPhoto) A98 {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.A98);
        }

        pub fn intoOKLAB(this: *const ProPhoto) OKLAB {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.OKLAB);
        }

        pub fn intoOKLCH(this: *const ProPhoto) OKLCH {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.OKLCH);
        }

        pub fn intoRec2020(this: *const ProPhoto) Rec2020 {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.Rec2020);
        }

        pub fn intoHSL(this: *const ProPhoto) HSL {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.HSL);
        }

        pub fn intoHWB(this: *const ProPhoto) HWB {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.HWB);
        }

        pub fn intoRGBA(this: *const ProPhoto) RGBA {
            const xyz: SRGB = this.into(.SRGB);
            return xyz.into(.RGBA);
        }
    };
    pub const convert_Rec2020 = struct {
        pub fn intoLAB(this: *const Rec2020) LAB {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.LAB);
        }

        pub fn intoLCH(this: *const Rec2020) LCH {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.LCH);
        }

        pub fn intoSRGB(this: *const Rec2020) SRGB {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.SRGB);
        }

        pub fn intoP3(this: *const Rec2020) P3 {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.P3);
        }

        pub fn intoSRGBLinear(this: *const Rec2020) SRGBLinear {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.SRGBLinear);
        }

        pub fn intoA98(this: *const Rec2020) A98 {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.A98);
        }

        pub fn intoProPhoto(this: *const Rec2020) ProPhoto {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.ProPhoto);
        }

        pub fn intoXYZd50(this: *const Rec2020) XYZd50 {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.XYZd50);
        }

        pub fn intoOKLAB(this: *const Rec2020) OKLAB {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.OKLAB);
        }

        pub fn intoOKLCH(this: *const Rec2020) OKLCH {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.OKLCH);
        }

        pub fn intoHSL(this: *const Rec2020) HSL {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.HSL);
        }

        pub fn intoHWB(this: *const Rec2020) HWB {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.HWB);
        }

        pub fn intoRGBA(this: *const Rec2020) RGBA {
            const xyz: SRGB = this.into(.SRGB);
            return xyz.into(.RGBA);
        }
    };
    pub const convert_XYZd50 = struct {
        pub fn intoLCH(this: *const XYZd50) LCH {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.LCH);
        }

        pub fn intoSRGB(this: *const XYZd50) SRGB {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.SRGB);
        }

        pub fn intoP3(this: *const XYZd50) P3 {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.P3);
        }

        pub fn intoSRGBLinear(this: *const XYZd50) SRGBLinear {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.SRGBLinear);
        }

        pub fn intoA98(this: *const XYZd50) A98 {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.A98);
        }

        pub fn intoOKLAB(this: *const XYZd50) OKLAB {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.OKLAB);
        }

        pub fn intoOKLCH(this: *const XYZd50) OKLCH {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.OKLCH);
        }

        pub fn intoRec2020(this: *const XYZd50) Rec2020 {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.Rec2020);
        }

        pub fn intoHSL(this: *const XYZd50) HSL {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.HSL);
        }

        pub fn intoHWB(this: *const XYZd50) HWB {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.HWB);
        }

        pub fn intoRGBA(this: *const XYZd50) RGBA {
            const xyz: SRGB = this.into(.SRGB);
            return xyz.into(.RGBA);
        }
    };
    pub const convert_XYZd65 = struct {
        pub fn intoLAB(this: *const XYZd65) LAB {
            const xyz: XYZd50 = this.into(.XYZd50);
            return xyz.into(.LAB);
        }

        pub fn intoProPhoto(this: *const XYZd65) ProPhoto {
            const xyz: XYZd50 = this.into(.XYZd50);
            return xyz.into(.ProPhoto);
        }

        pub fn intoOKLCH(this: *const XYZd65) OKLCH {
            const xyz: OKLAB = this.into(.OKLAB);
            return xyz.into(.OKLCH);
        }

        pub fn intoLCH(this: *const XYZd65) LCH {
            const xyz: LAB = this.into(.LAB);
            return xyz.into(.LCH);
        }

        pub fn intoSRGB(this: *const XYZd65) SRGB {
            const xyz: SRGBLinear = this.into(.SRGBLinear);
            return xyz.into(.SRGB);
        }

        pub fn intoHSL(this: *const XYZd65) HSL {
            const xyz: SRGB = this.into(.SRGB);
            return xyz.into(.HSL);
        }

        pub fn intoHWB(this: *const XYZd65) HWB {
            const xyz: SRGB = this.into(.SRGB);
            return xyz.into(.HWB);
        }

        pub fn intoRGBA(this: *const XYZd65) RGBA {
            const xyz: SRGB = this.into(.SRGB);
            return xyz.into(.RGBA);
        }
    };
    pub const convert_LCH = struct {
        pub fn intoXYZd65(this: *const LCH) XYZd65 {
            const xyz: LAB = this.into(.LAB);
            return xyz.into(.XYZd65);
        }

        pub fn intoOKLAB(this: *const LCH) OKLAB {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.OKLAB);
        }

        pub fn intoOKLCH(this: *const LCH) OKLCH {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.OKLCH);
        }

        pub fn intoSRGB(this: *const LCH) SRGB {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.SRGB);
        }

        pub fn intoSRGBLinear(this: *const LCH) SRGBLinear {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.SRGBLinear);
        }

        pub fn intoP3(this: *const LCH) P3 {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.P3);
        }

        pub fn intoA98(this: *const LCH) A98 {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.A98);
        }

        pub fn intoProPhoto(this: *const LCH) ProPhoto {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.ProPhoto);
        }

        pub fn intoRec2020(this: *const LCH) Rec2020 {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.Rec2020);
        }

        pub fn intoXYZd50(this: *const LCH) XYZd50 {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.XYZd50);
        }

        pub fn intoHSL(this: *const LCH) HSL {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.HSL);
        }

        pub fn intoHWB(this: *const LCH) HWB {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.HWB);
        }

        pub fn intoRGBA(this: *const LCH) RGBA {
            const xyz: SRGB = this.into(.SRGB);
            return xyz.into(.RGBA);
        }
    };
    pub const convert_OKLAB = struct {
        pub fn intoLAB(this: *const OKLAB) LAB {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.LAB);
        }

        pub fn intoLCH(this: *const OKLAB) LCH {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.LCH);
        }

        pub fn intoSRGB(this: *const OKLAB) SRGB {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.SRGB);
        }

        pub fn intoP3(this: *const OKLAB) P3 {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.P3);
        }

        pub fn intoSRGBLinear(this: *const OKLAB) SRGBLinear {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.SRGBLinear);
        }

        pub fn intoA98(this: *const OKLAB) A98 {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.A98);
        }

        pub fn intoProPhoto(this: *const OKLAB) ProPhoto {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.ProPhoto);
        }

        pub fn intoXYZd50(this: *const OKLAB) XYZd50 {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.XYZd50);
        }

        pub fn intoRec2020(this: *const OKLAB) Rec2020 {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.Rec2020);
        }

        pub fn intoHSL(this: *const OKLAB) HSL {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.HSL);
        }

        pub fn intoHWB(this: *const OKLAB) HWB {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.HWB);
        }

        pub fn intoRGBA(this: *const OKLAB) RGBA {
            const xyz: SRGB = this.into(.SRGB);
            return xyz.into(.RGBA);
        }
    };
    pub const convert_OKLCH = struct {
        pub fn intoXYZd65(this: *const OKLCH) XYZd65 {
            const xyz: OKLAB = this.into(.OKLAB);
            return xyz.into(.XYZd65);
        }

        pub fn intoLAB(this: *const OKLCH) LAB {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.LAB);
        }

        pub fn intoLCH(this: *const OKLCH) LCH {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.LCH);
        }

        pub fn intoSRGB(this: *const OKLCH) SRGB {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.SRGB);
        }

        pub fn intoP3(this: *const OKLCH) P3 {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.P3);
        }

        pub fn intoSRGBLinear(this: *const OKLCH) SRGBLinear {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.SRGBLinear);
        }

        pub fn intoA98(this: *const OKLCH) A98 {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.A98);
        }

        pub fn intoProPhoto(this: *const OKLCH) ProPhoto {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.ProPhoto);
        }

        pub fn intoXYZd50(this: *const OKLCH) XYZd50 {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.XYZd50);
        }

        pub fn intoRec2020(this: *const OKLCH) Rec2020 {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.Rec2020);
        }

        pub fn intoHSL(this: *const OKLCH) HSL {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.HSL);
        }

        pub fn intoHWB(this: *const OKLCH) HWB {
            const xyz: XYZd65 = this.into(.XYZd65);
            return xyz.into(.HWB);
        }

        pub fn intoRGBA(this: *const OKLCH) RGBA {
            const xyz: SRGB = this.into(.SRGB);
            return xyz.into(.RGBA);
        }
    };
};

const color = @import("./color.zig");
const A98 = color.A98;
const HSL = color.HSL;
const HWB = color.HWB;
const LAB = color.LAB;
const LCH = color.LCH;
const OKLAB = color.OKLAB;
const OKLCH = color.OKLCH;
const P3 = color.P3;
const ProPhoto = color.ProPhoto;
const RGBA = color.RGBA;
const Rec2020 = color.Rec2020;
const SRGB = color.SRGB;
const SRGBLinear = color.SRGBLinear;
const XYZd50 = color.XYZd50;
const XYZd65 = color.XYZd65;
