local ATT = {}
------------------------------------------------------------------------- SCOPE OPTICS
ATT = {}

ATT.PrintName = "Variable™ Zoom Scope"
ATT.CompactName = [[Variable Scope]]
ATT.Icon = Material("entities/attachs/cod2019_optic_scope_vz.png", "mips smooth")
ATT.Description = [[Long-range combat scope. Provides an improved precision at longer ranges.]]

ATT.CustomPros = {
    [ ARC9:GetPhrase("mw19_optic_stat_zoom") ] = "3.0x - 6.1x"
}

ATT.SortOrder = 4.5
ATT.Free = false
ATT.Folder = ARC9:GetPhrase("mw19_folder_scope")

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_optic"}
ATT.ActivateElements = {"optic","scope_sniper","optic_scope"}
ATT.ExcludeElements = {"no_optic_large"}

ATT.Model = "models/weapons/cod2019/attachs/sights/attachment_vm_scope_vz.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(-2, 0, 0.1)
ATT.ModelAngleOffset = Angle(0, 0, 0)

ATT.AimDownSightsTimeAdd = 0.093
-- ATT.VisualRecoilMult = 0.99
ATT.RecoilMult = 0.99

ATT.Sights = {
    {
        Pos = Vector(0, 8, -1.255),
        Ang = Angle(0, 0, 0),
        ViewModelFOV = 36,
        Magnification = 1.15,
        IgnoreExtra = true,
    },
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 1
ATT.RTScopeAdjustable = true
ATT.RTScopeAdjustmentLevels = 1
ATT.RTScopeFOVMin = 36 / 3
ATT.RTScopeFOVMax = 36 / 6.1
ATT.RTScopeRes = 256
ATT.RTScopeReticle = Material("hud/arc9_cod2019/overlays/sniper_crosshair")
ATT.RTScopeReticleScale = 0.8
ATT.RTScopeShadowIntensity = 1
ATT.RTScopeNoPP = false
ATT.RTScopeColorable = false

ARC9.LoadAttachment(ATT, "cod2019_optic_scope_vz")
------------------------------------------------------------------------- 
ATT = {}

ATT.PrintName = "Sniper Scope"
ATT.CompactName = [[Sniper Scope]]
ATT.Icon = Material("entities/attachs/cod2019_optic_snprscope_mike14.png", "mips smooth")
ATT.Description = [[Long-range combat scope. Provides an improved precision at longer ranges.]]

ATT.CustomPros = {
    [ ARC9:GetPhrase("mw19_optic_stat_zoom") ] = "4.4x"
}

ATT.SortOrder = 4
ATT.Free = false
ATT.Folder = ARC9:GetPhrase("mw19_folder_scope")

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_optic"}
ATT.ActivateElements = {"optic","scope_sniper","optic_scope"}
ATT.ExcludeElements = {"no_optic_large"}

ATT.Model = "models/weapons/cod2019/attachs/sights/weapon_vm_scope_mike14.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(-2, 0, 0.1)
ATT.ModelAngleOffset = Angle(0, 0, 0)

ATT.AimDownSightsTimeAdd = 0.08
-- ATT.VisualRecoilMult = 0.99
ATT.RecoilMult = 0.99

ATT.Sights = {
    {
        Pos = Vector(0, 8, -1.313),
        Ang = Angle(0, 0, 0),
        ViewModelFOV = 36,
        Magnification = 1.15,
        IgnoreExtra = true,
    },
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 1
ATT.RTScopeFOV = 36 / 4.4
ATT.RTScopeAdjustable = false
-- ATT.RTScopeAdjustmentLevels = 3
-- ATT.RTScopeFOVMin = 8
-- ATT.RTScopeFOVMax = 25
ATT.RTScopeRes = 256
ATT.RTScopeReticle = Material("hud/arc9_cod2019/overlays/sniper_crosshair")
ATT.RTScopeReticleScale = 0.9
ATT.RTScopeShadowIntensity = 1
ATT.RTScopeNoPP = false
ATT.RTScopeColorable = false

ARC9.LoadAttachment(ATT, "cod2019_optic_scope_mike14")
-------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "VLK 3.0x"
ATT.CompactName = [[VLK 3.0x]]
ATT.Icon = Material("entities/attachs/cod2019_optic_4x_east.png", "mips smooth")
ATT.Description = [[Russian combat optic with 3.0x magnification provides reliable target acquisition.]]

ATT.CustomPros = {
    [ ARC9:GetPhrase("mw19_optic_stat_zoom") ] = "3.0x"
}

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Free = false
ATT.Folder = ARC9:GetPhrase("mw19_folder_scope")

ATT.Category = {"cod2019_optic"}

ATT.Model = "models/weapons/cod2019/attachs/sights/attachment_vm_4x_east.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(-1, 0, 0.1)
ATT.ModelAngleOffset = Angle(0, 0, 0)
ATT.ActivateElements = {"optic","scope_sniper","optic_scope"}

ATT.AimDownSightsTimeAdd = 0.021
ATT.VisualRecoilMult = 0.99
ATT.RecoilMult = 0.99

ATT.Sights = {
    {
        Pos = Vector(0.11, 7, -1.01),
        Ang = Angle(0, 0, 0),
        Magnification = 1.15,
        ViewModelFOV = 36,
        IgnoreExtra = false
    },
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 2
ATT.RTScopeFOV = 36 / 3
ATT.RTScopeAdjustable = false
-- ATT.RTScopeAdjustmentLevels = 1
-- ATT.RTScopeFOVMin = 15
-- ATT.RTScopeFOVMax = 25
ATT.RTScopeFOV = 16
ATT.RTScopeRes = 512
ATT.RTScopeReticle = Material("hud/arc9_cod2019/overlays/vlk_crosshair.png", "mips")
ATT.RTScopeReticleScale = 0.8
ATT.RTScopeShadowIntensity = 5
ATT.RTScopeNoPP = false
ATT.RTScopeColorable = false

ARC9.LoadAttachment(ATT, "cod2019_optic_vlk3")
-------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Integral Hybrid"
ATT.CompactName = [[Integral]]
ATT.Icon = Material("entities/attachs/cod2019_optic_hybrid_west_lw.png", "mips smooth")
ATT.Description = [[3.25x Scout with integral 1x reflex for quickly transitioning between sights.]]

ATT.CustomPros = {
    [ ARC9:GetPhrase("mw19_optic_stat_zoom") ] = "1.15x - 3.25x",
    [ ARC9:GetPhrase("mw19_optic_stat_toggle_rds") ] = "",
}

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Free = false
ATT.Folder = ARC9:GetPhrase("mw19_folder_scope")

ATT.Category = {"cod2019_optic"}
ATT.ExcludeElements = {"no_optic_hybrid"}

ATT.Model = "models/weapons/cod2019/attachs/sights/attachment_vm_hybrid_west.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(-1, 0, 0.1)
ATT.ModelAngleOffset = Angle(0, 0, 0)
ATT.ActivateElements = {"optic","scope_sniper","optic_scope", "hybrid_scope_int"}

ATT.AimDownSightsTimeAdd = 0.042
ATT.VisualRecoilMult = 0.99
ATT.RecoilMult = 0.99

ATT.Sights = {
    {
        Pos = Vector(0, 6.5, -1.08),
        Ang = Angle(0, 0, 0),
        Magnification = 1.15,
        ViewModelFOV = 36,
        IgnoreExtra = false
    },
    {
        Pos = Vector(0, 6.5, -2.3),
        Ang = Angle(0, 0, 0),
        Magnification = 1.15,
        ViewModelFOV = 36,
		RTScopeFOV = 36,
        IgnoreExtra = false,
		Integral = false,
		Blur = true,
        Disassociate = true,
    },
}

ATT.HoloSight = true
ATT.HoloSightReticle = Material("hud/arc9_cod2019/reticles/aimpoint_reticle")
ATT.HoloSightSize = 128
ATT.HoloSightColorable = false
ATT.HoloSightColor = Color(255, 255, 255)

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 2
ATT.RTScopeAdjustable = false
ATT.RTScopeFOV = 36 / 3.25
ATT.RTScopeRes = 512
ATT.RTScopeReticle = Material("hud/arc9_cod2019/overlays/integral_crosshair.png", "mips")
ATT.RTScopeReticleScale = 1
ATT.RTScopeShadowIntensity = 5
ATT.RTScopeNoPP = false
ATT.RTScopeColorable = false
ATT.RTScopeNoBlur = true

ARC9.LoadAttachment(ATT, "cod2019_optic_hybrid_west")
-------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "3.0x Flip Hybrid"
ATT.CompactName = [[Flip Hybrid]]
ATT.Icon = Material("entities/attachs/cod2019_optic_hybrid_west02_lw.png", "mips smooth")
ATT.Description = [[Long range 3.0x optic manually flips to closer range holographic sight.]]

ATT.CustomPros = {
    [ ARC9:GetPhrase("mw19_optic_stat_zoom") ] = "1.15x - 4.0x",
    [ ARC9:GetPhrase("mw19_optic_stat_toggle_holo") ] = "",
}

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Free = false
ATT.Folder = ARC9:GetPhrase("mw19_folder_scope")

ATT.Category = {"cod2019_optic_big"}
ATT.ExcludeElements = {"no_optic_hybrid"}

ATT.Model = "models/weapons/cod2019/attachs/sights/attachment_vm_hybrid_west02.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(-1, 0, 0.1)
ATT.ModelAngleOffset = Angle(0, 0, 0)
ATT.ActivateElements = {"optic","scope_sniper","optic_scope","hybrid_scope"}

ATT.AimDownSightsTimeAdd = 0.049
ATT.VisualRecoilMult = 0.99
ATT.RecoilMult = 0.99

ATT.DrawFunc = function(swep, model, wm)
    if !model.playedsomeanim then
        model:ResetSequence(swep:GetMultiSight() == 1 and "idle" or "idle_off")
    end

    if swep.MWHybridSwitching then
        model:ResetSequence(swep:GetMultiSight() == 1 and "hybrid_on" or "hybrid_off")
        model.fuckingcycle = 0
        model.playedsomeanim = true
        swep.MWHybridSwitching = nil 
    end

    model.fuckingcycle = (model.fuckingcycle or 0) + FrameTime()*1
    model:SetCycle(model.fuckingcycle)
    
    -- if swep:GetElements()["magnifier_off"] then
    --     model:SetBodygroup(1,1)
    -- else
    --     model:SetBodygroup(1,0)
    -- end
end

ATT.Sights = {
    {
        Pos = Vector(-0.02, 6.25, -1.347),
        Ang = Angle(0, 0, 0),
        Magnification = 1.15,
        ViewModelFOV = 36,
        IgnoreExtra = false
    },
    {
        Pos = Vector(0, 6.25, -1.4),
        Ang = Angle(0, 0, 0),
        Magnification = 1.15,
        ViewModelFOV = 36,
        IgnoreExtra = false,
		Blur = true,
		ActivateElements = {"magnifier_off"},
        Disassociate = true,
		CantPeek = true,
    },
}

ATT.HoloSight = true
ATT.HoloSightReticle = Material("hud/arc9_cod2019/reticles/reticle_holo")
ATT.HoloSightSize = 512 * 1.3
ATT.HoloSightColorable = false
ATT.HoloSightColor = Color(255, 255, 255)

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 4
ATT.RTScopeAdjustable = false
ATT.RTScopeFOV = 36 / 4
ATT.RTScopeRes = 512
ATT.RTScopeReticle = Material("hud/arc9_cod2019/overlays/reticle_acog3_alt")
ATT.RTScopeReticleScale = 1
ATT.RTScopeShadowIntensity = 1
-- ATT.RTScopeBlackBox = true 
-- ATT.RTScopeBlackBoxShadow = true 
ATT.RTScopeNoPP = false
ATT.RTScopeColorable = false
ATT.RTScopeNoBlur = true

ARC9.LoadAttachment(ATT, "cod2019_optic_hybrid_west02")
-------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Scout Combat Optic"
ATT.CompactName = [[Scout]]
ATT.Icon = Material("entities/attachs/cod2019_optic_4x_west.png", "mips smooth")
ATT.Description = [[Reflex sight of western origin. Provides higher precision.]]

ATT.CustomPros = {
   [ ARC9:GetPhrase("mw19_optic_stat_zoom") ] = "3.25x"
}

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Free = false
ATT.Folder = ARC9:GetPhrase("mw19_folder_scope")

ATT.Category = {"cod2019_optic"}

ATT.Model = "models/weapons/cod2019/attachs/sights/attachment_vm_4x_west_tall.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(-1.5, 0, 0.1)
ATT.ModelAngleOffset = Angle(0, 0, 0)
ATT.ActivateElements = {"optic","optic_scope"}

ATT.AimDownSightsTimeAdd = 0.027
ATT.VisualRecoilMult = 0.99
ATT.RecoilMult = 0.99

ATT.Sights = {
    {
        Pos = Vector(0, 6, -1.12),
        Ang = Angle(0, 0, 0),
        ViewModelFOV = 36,
        Magnification = 1.15,
        IgnoreExtra = false
    },
}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_optic2") .. " II",
        Pos = Vector(0.7, 0, -1.88),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
        Category = "cod2019_optics_pistols_scope",
		Scale = 1,
    },
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 4
ATT.RTScopeFOV = 36 / 3.25
ATT.RTScopeAdjustable = false
-- ATT.RTScopeAdjustmentLevels = 1
-- ATT.RTScopeFOVMin = 25
-- ATT.RTScopeFOVMax = 16
ATT.RTScopeRes = 1024
ATT.RTScopeReticle = Material("hud/arc9_cod2019/reticles/reticle_vzscope_default2.png", "mips smooth")
ATT.RTScopeReticleScale = 1
ATT.RTScopeShadowIntensity = 24
ATT.RTScopeNoPP = false
ATT.RTScopeColorable = false
ATT.RTScopeNoShadow = true
ATT.RTScopeBlackBox = false
ATT.RTScopeBlackBoxShadow = false

ARC9.LoadAttachment(ATT, "cod2019_optic_scope_scout")
-------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Cronen C480 Pro Optic"
ATT.CompactName = [[Cronen]]
ATT.Icon = Material("entities/attachs/cod2019_optic_4x_west02.png", "mips smooth")
ATT.Description = [[Advanced optic with 3.5x magnification for rapid target acquisition.]]

ATT.CustomPros = {
   [ ARC9:GetPhrase("mw19_optic_stat_zoom") ] = "3.5x"
}

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Free = false
ATT.Folder = ARC9:GetPhrase("mw19_folder_scope")

ATT.Category = {"cod2019_optic"}
ATT.ActivateElements = {"optic","optic_scope"}

ATT.Model = "models/weapons/cod2019/attachs/sights/attachment_vm_4x_west02.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(-1.5, 0, 0.1)
ATT.ModelAngleOffset = Angle(0, 0, 0)

ATT.AimDownSightsTimeAdd = 0.03
ATT.VisualRecoilMult = 0.99
ATT.RecoilMult = 0.99

ATT.Sights = {
    {
        Pos = Vector(0, 6.2, -1),
        Ang = Angle(0, 0, 0),
        Magnification = 1.15,
        ViewModelFOV = 36,
        IgnoreExtra = false
    },
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 2
ATT.RTScopeFOV = 36 / 3.5
ATT.RTScopeRes = 512
ATT.RTScopeReticle = Material("hud/arc9_cod2019/overlays/acog_crosshair3")
ATT.RTScopeReticleScale = 1
ATT.RTScopeShadowIntensity = 5
ATT.RTScopeNoPP = false
ATT.RTScopeColorable = false
ATT.RTScopeNoBlur = true

ARC9.LoadAttachment(ATT, "cod2019_optic_cronen")
-------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Solozero NVG Enhanced"
ATT.CompactName = [[Solozero NVG]]
ATT.Icon = Material("entities/attachs/cod2019_optic_thermal_west01.png", "mips smooth")
ATT.Description = [[Advanced 3.25x Gen 3 night vision with thermal overlay for enhanced situational awareness. Not compatible with Night Vision Goggles.]]

ATT.CustomPros = {
   [ ARC9:GetPhrase("mw19_optic_stat_zoom") ] = "3.25x",
   [ ARC9:GetPhrase("mw19_optic_stat_thermal") ] = "",
}

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Free = false
ATT.Folder = ARC9:GetPhrase("mw19_folder_scope")

ATT.Category = {"cod2019_optic"}

ATT.Model = "models/weapons/cod2019/attachs/sights/attachment_vm_thermal_west_01.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(-1.5, 0, 0.1)
ATT.ModelAngleOffset = Angle(0, 0, 0)
ATT.ActivateElements = {"optic","optic_scope", "optic_thermal"}

ATT.AimDownSightsTimeAdd = 0.06
ATT.VisualRecoilMult = 0.99
ATT.RecoilMult = 0.99

ATT.Sights = {
    {
        Pos = Vector(0, 5.5, -0.925),
        Ang = Angle(0, 0, 0),
        Magnification = 1.15,
        ViewModelFOV = 36,
        IgnoreExtra = false
    },
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 4
ATT.RTScopeFOV = 36 / 3.25
ATT.RTScopeRes = 1024
ATT.RTScopeReticle = Material("hud/arc9_cod2019/reticles/reticle_nvg.png")
ATT.RTScopeReticleScale = 1
ATT.RTScopeShadowIntensity = 24
ATT.RTScopeNoPP = false
ATT.RTScopeColorable = false
ATT.RTScopeNoShadow = true
ATT.RTScopeBlackBox = false
ATT.RTScopeBlackBoxShadow = false

ATT.RTScopeNightVision = true
ATT.RTScopeNightVisionMonochrome = false
ATT.RTScopeNightVisionCC = {
    ["$pp_colour_addr"] = 50/255,
    ["$pp_colour_addg"] = 100/255,
    ["$pp_colour_addb"] = 75/255,
    ["$pp_colour_brightness"] = -0.5,
    ["$pp_colour_contrast"] = 1,
    ["$pp_colour_colour"] = 1,
    ["$pp_colour_mulr"] = 0,
    ["$pp_colour_mulg"] = 0,
    ["$pp_colour_mulb"] = 0
}

ATT.RTScopeNightVisionNoPP = true

ATT.RTScopeFLIR = true
ATT.RTScopeFLIRSolid = false 
ATT.RTScopeFLIRRange = 30000
ATT.RTScopeFLIRMonochrome = true
ATT.RTScopeFLIRBlend = 1
ATT.RTScopeFLIRCCHot = {
    ["$pp_colour_addr"] = 1,
    ["$pp_colour_addg"] = 1,
    ["$pp_colour_addb"] = 0.49,
    ["$pp_colour_brightness"] = 0.1,
    ["$pp_colour_contrast"] = 0.4,
    ["$pp_colour_colour"] = 1,
    ["$pp_colour_mulr"] = 1,
    ["$pp_colour_mulg"] = 1,
    ["$pp_colour_mulb"] = 0
}
ATT.RTScopeFLIRCCCold = {
    ["$pp_colour_addr"] = 185/255,
    ["$pp_colour_addg"] = 90/255,
    ["$pp_colour_addb"] = 0,
    ["$pp_colour_brightness"] = 0.15,
    ["$pp_colour_contrast"] = 0.27,
    ["$pp_colour_colour"] = 0.2,
    ["$pp_colour_mulr"] = 0,
    ["$pp_colour_mulg"] = 0,
    ["$pp_colour_mulb"] = 0
}


local noise = Material("models/cod2019/shared/mw19_thermalnoise")

ATT.RTScopeDrawFunc = function(swep, rtsize)
cam.Start2D()
surface.SetMaterial(noise)
surface.SetDrawColor(255,255,255)
surface.DrawTexturedRectRotated((rtsize / 2) + (rtsize * math.Rand(-0.25, 0.25)), (rtsize / 2) + (rtsize * math.Rand(-0.25, 0.25)), rtsize, rtsize, math.Rand(0, 360))
surface.DrawTexturedRectRotated((rtsize / 2) + (rtsize * math.Rand(-0.5, 0.5)), (rtsize / 2) + (rtsize * math.Rand(-0.5, 0.5)), rtsize * 2, rtsize * 2, math.Rand(0, 360))
cam.End2D()

--DrawBloom( 0.65, 2, 9, 9, 1, 1, 1, 1, 1 )
end

ATT.RTScopeMotionBlur = true

ATT.ScopeScreenRatio = 0.66

ARC9.LoadAttachment(ATT, "cod2019_optic_thermal_west_01")
-------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Merc Thermal Optic"
ATT.CompactName = [[Merc Thermal]]
ATT.Icon = Material("entities/attachs/cod2019_optic_thermal_east.png", "mips smooth")
ATT.Description = [[Light weight 3.25x thermal scope highlights taget's heat signatures and provides visibility in all lighting conditions. Not compatible with Night Vision Goggles.]]

ATT.CustomPros = {
   [ ARC9:GetPhrase("mw19_optic_stat_zoom") ] = "3.25x",
   [ ARC9:GetPhrase("mw19_optic_stat_thermal") ] = "",
}

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Free = false
ATT.Folder = ARC9:GetPhrase("mw19_folder_scope")

ATT.Category = {"cod2019_optic"}

ATT.Model = "models/weapons/cod2019/attachs/sights/attachment_vm_thermal_east.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(-1.5, 0, 0.1)
ATT.ModelAngleOffset = Angle(0, 0, 0)
ATT.ActivateElements = {"optic","optic_scope", "optic_thermal"}

ATT.AimDownSightsTimeAdd = 0.06
ATT.VisualRecoilMult = 0.99
ATT.RecoilMult = 0.99

ATT.Sights = {
    {
        Pos = Vector(0, 6, -0.95),
        Ang = Angle(0, 0, 0),
        Magnification = 1.15,
        ViewModelFOV = 36,
        IgnoreExtra = false
    },
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 2
ATT.RTScopeFOV = 36 / 3.25
ATT.RTScopeReticle = Material("hud/arc9_cod2019/overlays/reticle_thermal_default2.png", "mips")
ATT.RTScopeReticleScale = 1
ATT.RTScopeColorable = false
ATT.RTScopeShadowIntensity = 5
ATT.RTScopeBlackBox = false 
ATT.RTScopeBlackBoxShadow = false  
ATT.RTScopeNoShadow = false  

ATT.RTScopeFLIR = true
ATT.RTScopeFLIRSolid = false -- Solid color FLIR instead of like a shaded look
ATT.RTScopeFLIRCCCold = { -- Color correction drawn only on FLIR targets
    [ "$pp_colour_addr" ] = 0,
    [ "$pp_colour_addg" ] = 0,
    [ "$pp_colour_addb" ] = 0,
    [ "$pp_colour_brightness" ] = 1.54,
    [ "$pp_colour_contrast" ] = 0.1,
    [ "$pp_colour_colour" ] = 0,
    [ "$pp_colour_mulr" ] = 0,
    [ "$pp_colour_mulg" ] = 0,
    [ "$pp_colour_mulb" ] = 0
}
ATT.RTScopeFLIRCCHot = { -- Color correction drawn only on FLIR targets
    ["$pp_colour_addr"] = 1,
    ["$pp_colour_addg"] = 1,
    ["$pp_colour_addb"] = 1,
    ["$pp_colour_brightness"] = -0.59,
    ["$pp_colour_contrast"] = 1,
    ["$pp_colour_colour"] = 0,
    ["$pp_colour_mulr"] = 0,
    ["$pp_colour_mulg"] = 0,
    ["$pp_colour_mulb"] = 0
}

ATT.RTScopeCustomPPFunc = function(swep)
    -- DrawMotionBlur(0.95, 1, 1/21)
    --DrawBloom(0.12, 2, 5.5, 5.5, 0, 0.1, 71/255, 1, 93/255)

    -- DrawSharpen(4, 0.6)
end

ATT.ScopeScreenRatio = 0.66

local noise = Material("models/cod2019/shared/mw19_thermalnoise")

ATT.RTScopeDrawFunc = function(swep, rtsize)
cam.Start2D()
surface.SetMaterial(noise)
surface.SetDrawColor(255,255,255)
surface.DrawTexturedRectRotated((rtsize / 2) + (rtsize * math.Rand(-0.25, 0.25)), (rtsize / 2) + (rtsize * math.Rand(-0.25, 0.25)), rtsize, rtsize, math.Rand(0, 360))
surface.DrawTexturedRectRotated((rtsize / 2) + (rtsize * math.Rand(-0.5, 0.5)), (rtsize / 2) + (rtsize * math.Rand(-0.5, 0.5)), rtsize * 2, rtsize * 2, math.Rand(0, 360))
cam.End2D()

--DrawBloom( 0.65, 2, 9, 9, 1, 1, 1, 1, 1 )
end

ATT.RTScopeMotionBlur = true

ATT.ScopeScreenRatio = 0.66

ARC9.LoadAttachment(ATT, "cod2019_optic_thermal_east")
------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Cronen 2x2 Elite"
ATT.CompactName = [[Cronen 2x2 Elite]]
ATT.Icon = Material("entities/attachs/cod2019_optic_tango21_hybrid.png", "mips smooth")
ATT.Description = [[Advanced optic with 4.0x magnification provides excellent target acquisition.]]

ATT.CustomPros = {
    [ ARC9:GetPhrase("mw19_optic_stat_zoom") ] = "4.0x"
}

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Free = false
ATT.Folder = ARC9:GetPhrase("mw19_folder_scope")

ATT.Category = {"cod2019_optic_big"}
ATT.ActivateElements = {"optic", "optic_scope"}
ATT.ExcludeElements = {"no_optic_hybrid"}

ATT.Model = "models/weapons/cod2019/attachs/sights/attachment_vm_ar_tango21_hybrid.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(-1.5, 0, 0.1)
ATT.ModelAngleOffset = Angle(0, 0, 0)

ATT.AimDownSightsTimeAdd = 0.029
ATT.VisualRecoilMult = 0.99
ATT.RecoilMult = 0.99

ATT.Sights = {
    {
        Pos = Vector(0, 6, -1.25),
        Ang = Angle(0, 0, 0),
        Magnification = 1.15,
        ViewModelFOV = 36,
        IgnoreExtra = false
    },
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 3
ATT.RTScopeFOV = 36 / 4
ATT.RTScopeRes = 512
ATT.RTScopeReticle = Material("hud/arc9_cod2019/overlays/bravo4_crosshair.png", "mips smooth")
ATT.RTScopeReticleScale = 1
ATT.RTScopeShadowIntensity = 2
ATT.RTScopeNoPP = false
ATT.RTScopeColorable = false

ARC9.LoadAttachment(ATT, "cod2019_optic_reflex_west05_hybrid")

------------------------------------------------------------------------- HANDGUN SCOPES
ATT = {}

ATT.PrintName = "VLK 2.5x"
ATT.CompactName = [[VLK 2.5x]]
ATT.Icon = Material("entities/attachs/cod2019_optic_4x_east.png", "mips smooth")
ATT.Description = [[Russian combat optic with 2.5x magnification provides reliable target acquisition.]]

ATT.CustomPros = {
    [ ARC9:GetPhrase("mw19_optic_stat_zoom") ] = "2.5x"
}

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Free = false
ATT.Folder = ARC9:GetPhrase("mw19_folder_scope")

ATT.Category = {"cod2019_optic_pistol"}

ATT.Model = "models/weapons/cod2019/attachs/sights/attachment_vm_4x_east.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(-1, 0, 0.1)
ATT.ModelAngleOffset = Angle(0, 0, 0)
ATT.ActivateElements = {"optic","scope_sniper","optic_scope"}

ATT.AimDownSightsTimeAdd = 0.021
ATT.VisualRecoilMult = 0.99
ATT.RecoilMult = 0.99

ATT.Sights = {
    {
        Pos = Vector(0.11, 7 + 5, -1.01),
        Ang = Angle(0, 0, 0),
        Magnification = 1.15,
        ViewModelFOV = 36,
        IgnoreExtra = false
    },
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 2
ATT.RTScopeFOV = 36 / 2.5
ATT.RTScopeAdjustable = false
-- ATT.RTScopeAdjustmentLevels = 1
-- ATT.RTScopeFOVMin = 15
-- ATT.RTScopeFOVMax = 25
ATT.RTScopeFOV = 16
ATT.RTScopeRes = 512
ATT.RTScopeReticle = Material("hud/arc9_cod2019/overlays/vlk_crosshair.png", "mips")
ATT.RTScopeReticleScale = 1.3
ATT.RTScopeShadowIntensity = 5
ATT.RTScopeNoPP = false
ATT.RTScopeColorable = false

ARC9.LoadAttachment(ATT, "cod2019_optic_vlk3_pistol")
-------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Scout Combat Optic"
ATT.CompactName = [[Scout]]
ATT.Icon = Material("entities/attachs/cod2019_optic_4x_west.png", "mips smooth")
ATT.Description = [[Reflex sight of western origin. Provides higher precision.]]

ATT.CustomPros = {
   [ ARC9:GetPhrase("mw19_optic_stat_zoom") ] = "2.75x"
}

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Free = false
ATT.Folder = ARC9:GetPhrase("mw19_folder_scope")

ATT.Category = {"cod2019_optic_pistol"}

ATT.Model = "models/weapons/cod2019/attachs/sights/attachment_vm_4x_west_tall.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(-1.5, 0, 0.1)
ATT.ModelAngleOffset = Angle(0, 0, 0)
ATT.ActivateElements = {"optic","optic_scope"}

ATT.AimDownSightsTimeAdd = 0.027
ATT.VisualRecoilMult = 0.99
ATT.RecoilMult = 0.99

ATT.Sights = {
    {
        Pos = Vector(0, 6 + 6, -1.12),
        Ang = Angle(0, 0, 0),
        ViewModelFOV = 36,
        Magnification = 1.15,
        IgnoreExtra = false
    },
}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_optic2") .. " II",
        Pos = Vector(0.7, 0, -1.88),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
        Category = "cod2019_optics_pistols_scope",
		Scale = 1,
    },
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 4
ATT.RTScopeFOV = 36 / 3.25
ATT.RTScopeAdjustable = false
-- ATT.RTScopeAdjustmentLevels = 1
-- ATT.RTScopeFOVMin = 25
-- ATT.RTScopeFOVMax = 16
ATT.RTScopeRes = 1024
ATT.RTScopeReticle = Material("hud/arc9_cod2019/reticles/reticle_vzscope_default2.png", "mips smooth")
ATT.RTScopeReticleScale = 1.65
ATT.RTScopeShadowIntensity = 24
ATT.RTScopeNoPP = false
ATT.RTScopeColorable = false
ATT.RTScopeNoShadow = true
ATT.RTScopeBlackBox = false
ATT.RTScopeBlackBoxShadow = false

ARC9.LoadAttachment(ATT, "cod2019_optic_scope_scout_pistol")
-------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Cronen C480 Pro Optic"
ATT.CompactName = [[Cronen]]
ATT.Icon = Material("entities/attachs/cod2019_optic_4x_west02.png", "mips smooth")
ATT.Description = [[Advanced optic with 3.0x magnification for rapid target acquisition.]]

ATT.CustomPros = {
   [ ARC9:GetPhrase("mw19_optic_stat_zoom") ] = "3.0x"
}

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Free = false
ATT.Folder = ARC9:GetPhrase("mw19_folder_scope")

ATT.Category = {"cod2019_optic_pistol"}
ATT.ActivateElements = {"optic","optic_scope"}

ATT.Model = "models/weapons/cod2019/attachs/sights/attachment_vm_4x_west02.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(-1.5, 0, 0.1)
ATT.ModelAngleOffset = Angle(0, 0, 0)

ATT.AimDownSightsTimeAdd = 0.03
ATT.VisualRecoilMult = 0.99
ATT.RecoilMult = 0.99

ATT.Sights = {
    {
        Pos = Vector(0, 6.2 + 6, -1),
        Ang = Angle(0, 0, 0),
        Magnification = 1.15,
        ViewModelFOV = 36,
        IgnoreExtra = false
    },
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 2
ATT.RTScopeFOV = 36 / 3.5
ATT.RTScopeRes = 512
ATT.RTScopeReticle = Material("hud/arc9_cod2019/overlays/acog_crosshair3")
ATT.RTScopeReticleScale = 1.75
ATT.RTScopeShadowIntensity = 5
ATT.RTScopeNoPP = false
ATT.RTScopeColorable = false
ATT.RTScopeNoBlur = true

ARC9.LoadAttachment(ATT, "cod2019_optic_cronen_pistol")