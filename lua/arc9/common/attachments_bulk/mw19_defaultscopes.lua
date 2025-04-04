local ATT = {}
//////////////////////////////////////////////// -- Scope Attachments
/////////////////////////// -- Shared
local warzonestats = GetConVar("arc9_mw19_stats_warzone"):GetBool() -- Warzone Stat Variable

//////////////////////////////////////////////// -- Sniper Scopes
/////////////////////////// -- Dragunov
ATT = {}

ATT.PrintName = "Dragunov Scope"
ATT.Description = ""
ATT.Icon = Material("entities/attachs/cod2019_optic_scope_svd.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"

ATT.SortOrder = 5.5
ATT.Category = {"cod2019_optic_svd"}
ATT.ActivateElements = {"scope_svd"}

ATT.Model = "models/weapons/cod2019/attachs/scopes/scope_svd.mdl"
ATT.BoneMerge = true
ATT.ModelOffset = Vector(0.5, 0, -0.8)

ATT.Sights = {
    {
        Pos = Vector(0, 9, -1.945),
        Ang = Angle(0, 0, 0),
        ViewModelFOV = 36,
        Magnification = 1.15,
        IgnoreExtra = true
    },
}

ATT.CustomPros = {
   [ ARC9:GetPhrase("mw19_optic_stat_zoom2") ] = "5.5x"
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 2
ATT.RTScopeMagnification = 5.5
ATT.ScopeScreenRatio = 575/1080
ATT.RTScopeReticle = Material("hud/arc9_cod2019/overlays/svd_crosshair.png", "mips smooth")
ATT.RTScopeReticleScale = 1
ATT.RTScopeShadowIntensity = 7.5
ATT.RTScopeNoPP = false
ATT.RTScopeColorable = false

if !warzonestats then -- Regular Stats
	ATT.AimDownSightsTimeAdd = 0.08
	ATT.RecoilMult = 0.99
else -- Warzone Stats
	ATT.AimDownSightsTimeAdd = 0.08
	ATT.RecoilMult = 0.99
end

ARC9.LoadAttachment(ATT, "cod2019_optic_default_svd")

/////////////////////////// -- HDR
ATT = {}

ATT.PrintName = "HDR Scope"
ATT.Description = ""
ATT.Icon = Material("entities/attachs/sn/hdr/cod2019_sn_hdr_scope.png", "mips smooth")

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_optic_hdr"}
ATT.ActivateElements = {"scope_hdr"}

ATT.Model = "models/weapons/cod2019/attachs/weapons/hdr/attachment_vm_sn_hdromeo_snprscope.mdl"
ATT.BoneMerge = true
ATT.ModelOffset = Vector(0, 0, 0)

ATT.Sights = {
    {
        Pos = Vector(.006, 11, -1.875),
        Ang = Angle(0, 0, 0),
        ViewModelFOV = 15,
        Magnification = 2,
        IgnoreExtra = true
    },
}

ATT.CustomPros = {
   [ ARC9:GetPhrase("mw19_optic_stat_zoom2") ] = "6x"
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 1
ATT.RTScopeMagnification = 6
ATT.ScopeScreenRatio = 675/1080
ATT.RTScopeReticle = Material("hud/arc9_cod2019/overlays/ax50_crosshair")
ATT.RTScopeReticleScale = 1
ATT.RTScopeShadowIntensity = 7.5
ATT.RTScopeNoPP = false
ATT.RTScopeColorable = false

if !warzonestats then -- Regular Stats
	ATT.AimDownSightsTimeAdd = 0.08
	ATT.RecoilMult = 0.99
else -- Warzone Stats
	ATT.AimDownSightsTimeAdd = 0.08
	ATT.RecoilMult = 0.99
end

ARC9.LoadAttachment(ATT, "cod2019_optic_default_hdr")

/////////////////////////// -- AX50
ATT = {}

ATT.PrintName = "AX50 Scope"
ATT.Description = ""
ATT.Icon = Material("entities/attachs/sn/ax50/cod2019_sn_ax50_scope_v4.png", "mips smooth")
ATT.SortOrder = 4
ATT.Free = false

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_optic_ax50"}
ATT.ActivateElements = {"scope_ax50"}

ATT.Model = "models/weapons/cod2019/attachs/scopes/scope_ax50.mdl"
ATT.BoneMerge = true
ATT.ModelOffset = Vector(0, 0, 0)
ATT.ModelAngleOffset = Angle(0, 0, 0)

ATT.Sights = {
    {
        Pos = Vector(0, 9, -1.86),
        Ang = Angle(0, 0, 0),
        ViewModelFOV = 35,
        Magnification = 2,
        IgnoreExtra = true,
    },
}

ATT.CustomPros = {
   [ ARC9:GetPhrase("mw19_optic_stat_zoom2") ] = "5.5x"
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 1
ATT.RTScopeMagnification = 5.5
ATT.ScopeScreenRatio = 725/1080
ATT.RTScopeReticle = Material("hud/arc9_cod2019/overlays/ax50_crosshair")
ATT.RTScopeReticleScale = 1.05
ATT.RTScopeShadowIntensity = 7.5
ATT.RTScopeNoPP = false
ATT.RTScopeColorable = false

if !warzonestats then -- Regular Stats
	ATT.AimDownSightsTimeAdd = 0.08
	ATT.RecoilMult = 0.99
else -- Warzone Stats
	ATT.AimDownSightsTimeAdd = 0.08
	ATT.RecoilMult = 0.99
end

ARC9.LoadAttachment(ATT, "cod2019_optic_default_ax50")

/////////////////////////// -- Rytec AMR
ATT = {}

ATT.PrintName = "Rytec Scope"
ATT.Description = ""
ATT.Icon = Material("entities/attachs/sn/rytec/cod2019_sn_rytec_scope.png", "mips smooth")
ATT.SortOrder = 4
ATT.Free = false

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_optic_rytec"}
ATT.ActivateElements = {"scope_rytec"}

ATT.Model = "models/weapons/cod2019/attachs/weapons/rytec/attachment_vm_sn_xmike109_scope.mdl"
ATT.BoneMerge = true
ATT.ModelOffset = Vector(-0.3, 0, 0)

ATT.Sights = {
    {
        Pos = Vector(-0.005, 10, -1.685),
        Ang = Angle(0, 0, 0),
        ViewModelFOV = 36,
        Magnification = 1.15,
        IgnoreExtra = true,
    },
}

ATT.CustomPros = {
   [ ARC9:GetPhrase("mw19_optic_stat_zoom2") ] = "4.5x"
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 1
ATT.RTScopeMagnification = 4.5
ATT.ScopeScreenRatio = 800/1080
ATT.RTScopeReticle = Material("hud/arc9_cod2019/overlays/rytec_crosshair.png", "mips")
ATT.RTScopeReticleScale = 0.8
ATT.RTScopeShadowIntensity = 7.5
ATT.RTScopeNoPP = false
ATT.RTScopeColorable = false

if !warzonestats then -- Regular Stats
	ATT.AimDownSightsTimeAdd = 0.08
	ATT.RecoilMult = 0.99
else -- Warzone Stats
	ATT.AimDownSightsTimeAdd = 0.08
	ATT.RecoilMult = 0.99
end

ARC9.LoadAttachment(ATT, "cod2019_optic_default_rytec")

//////////////////////////////////////////////// -- Launcher Sights
/////////////// -- Strela-P
ATT = {}

ATT.PrintName = "Strela-P Scope"
ATT.Description = ""
ATT.Icon = Material("entities/attachs/cod2019_optic_strela.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"

ATT.SortOrder = 0
ATT.Category = "cod2019_optic_strela"
ATT.ActivateElements = {"sights_scope"}

ATT.Model = "models/weapons/cod2019/attachs/scopes/scope_strela.mdl"
ATT.ModelOffset = Vector(-0.3, 0, 0)
ATT.ModelAngleOffset = Angle(0, 0, 90)

ATT.CustomPros = {
    [ ARC9:GetPhrase("mw19_optic_stat_zoom2") ] = "3.0x"
}

ATT.Sights = {
    {
        Pos = Vector(1.415, 4.5, -1.255),
        Ang = Angle(0, -1, -91),
        ViewModelFOV = 54,
        Magnification = 1.25,
        IgnoreExtra = true
    },
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 2
ATT.RTScopeFOV = 44 / 3
ATT.RTScopeRes = 512
ATT.RTScopeReticle = Material("hud/arc9_cod2019/overlays/strela_crosshair.png", "mips")
ATT.RTScopeReticleScale = 1
ATT.RTScopeShadowIntensity = 10
ATT.RTScopeNoPP = false
ATT.RTScopeColorable = false

if !warzonestats then -- Regular Stats
	
else -- Warzone Stats
	
end

ARC9.LoadAttachment(ATT, "cod2019_optic_default_strela")

//////////////////////////////////////////////// -- MGL-32
/////////////////////////// -- MGL-32
ATT = {}

ATT.PrintName = "MGL-32 Grenade Launcher Sight"
ATT.Description = ""
ATT.Icon = Material("entities/attachs/la/m32/cod2019_la_mike32_scope.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"

ATT.SortOrder = 0
ATT.Category = "cod2019_optic_m32"
ATT.ActivateElements = {"scope_m32"}

ATT.Model = "models/weapons/cod2019/attachs/scopes/scope_m32.mdl"

ATT.CustomPros = {
    [ ARC9:GetPhrase("mw19_optic_stat_zoom2") ] = "3.5x"
}

ATT.Sights = {
    {
        Pos = Vector(-0.01, 5.5, -1.085),
        Ang = Angle(0, 0, 0.5),
        ViewModelFOV = 46,
        Magnification = 1.25,
        IgnoreExtra = true
    },
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 2
ATT.RTScopeFOV = 46 / 3.5
ATT.RTScopeRes = 512
ATT.RTScopeReticle = Material("hud/arc9_cod2019/overlays/m32_crosshair.png", "mips smooth")
ATT.RTScopeReticleScale = 1
ATT.RTScopeShadowIntensity = 7.5
ATT.RTScopeNoPP = false
ATT.RTScopeColorable = false

if !warzonestats then -- Regular Stats
	
else -- Warzone Stats
	
end

ARC9.LoadAttachment(ATT, "cod2019_optic_default_m32")

/////////////////////////// -- Pila Scope
ATT = {}

ATT.PrintName = "PILA Scope"
ATT.CompactName = "PILA"
ATT.Description = [[Default targetting sight for the Pila.]]

ATT.CustomPros = {
    [ ARC9:GetPhrase("mw19_optic_stat_zoom2") ] = "3.0x"
}

ATT.SortOrder = 4
ATT.Free = true
ATT.Folder = ARC9:GetPhrase("mw19_folder_scope")

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_pila_optic"}
ATT.ActivateElements = {"scope_pila"}

ATT.Model = "models/weapons/cod2019/attachs/scopes/scope_pila.mdl"
ATT.BoneMerge = true

ATT.Sights = {
    {
        Pos = Vector(-0.508, 0.2, 1.037),
        Ang = Angle(2.5, -10, 0.675),
        ViewModelFOV = 54,
        Magnification = 1.25,
        IgnoreExtra = true,
		CrosshairInSights = false
    },
    {
        Pos = Vector(-0.53, 1, 1.025),
        Ang = Angle(2.5, -10, 0.675),
        ViewModelFOV = 54,
        Magnification = 1.1,
        IgnoreExtra = true,
		CrosshairInSights = false
    },
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 1
ATT.RTScopeFOV = 36 / 3
ATT.RTScopeRes = 1024
ATT.RTScopeReticle = Material("hud/arc9_cod2019/overlays/mk4_crosshair.png", "mips")
ATT.RTScopeReticleScale = 1.1
ATT.RTScopeShadowIntensity = 1
ATT.RTScopeNoPP = false
ATT.RTScopeColorable = false

ARC9.LoadAttachment(ATT, "cod2019_optic_default_pila")

/////////////////////////// -- Jokr Scope
ATT = {}

ATT.PrintName = "Jokr Sight"
ATT.CompactName = "Jokr"
ATT.Description = [[Default targetting sight for the JOKR.]]

ATT.CustomPros = {
    [ ARC9:GetPhrase("mw19_optic_stat_zoom2") ] = "3.0x"
}

ATT.SortOrder = 4
ATT.Free = true
ATT.Folder = ARC9:GetPhrase("mw19_folder_scope")

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_jokr_optic"}
ATT.ActivateElements = {"scope_jokr"}

ATT.Model = "models/weapons/cod2019/attachs/scopes/scope_jokr.mdl"
ATT.BoneMerge = true

ATT.Sights = {
    {
        Pos = Vector(1.3625, 1, -3.265),
        Ang = Angle(15, -21, 0.675),
        ViewModelFOV = 64,
        Magnification = 1.25,
        IgnoreExtra = true,
		CrosshairInSights = false
    },
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 2
ATT.RTScopeFOV = 56 / 2
ATT.RTScopeRes = 1024
ATT.RTScopeReticle = Material("hud/arc9_cod2019/overlays/jokr_crosshair.png")
ATT.RTScopeColorable = false
ATT.RTScopeShadowIntensity = 0
ATT.RTScopeNoShadow = true
ATT.RTScopeBlackBox = false
ATT.RTScopeBlackBoxShadow = false
ATT.ScopeScreenRatio = 1
ATT.RTScopeReticleScale = 1

ATT.RTScopeFLIR = true
ATT.RTScopeFLIRSolid = false -- Solid color FLIR instead of like a shaded look
ATT.RTScopeFLIRCCCold = { -- Color correction drawn only on FLIR targets
    [ "$pp_colour_addr" ] = 0,
    [ "$pp_colour_addg" ] = 0,
    [ "$pp_colour_addb" ] = 0,
    [ "$pp_colour_brightness" ] = 0.1,
    [ "$pp_colour_contrast" ] = 0.7,
    [ "$pp_colour_colour" ] = 0.1,
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

local noise = Material("models/cod2019/shared/mw19_thermalnoise")

ATT.RTScopeDrawFunc = function(swep, rtsize)
cam.Start2D()
surface.SetMaterial(noise)
surface.SetDrawColor(255, 255, 255, 255)
surface.DrawTexturedRect(ScrW() * 0, ScrH() * 0, ScrW() * 1, ScrH() * 1)
cam.End2D()

--DrawBloom( 0.65, 2, 9, 9, 1, 1, 1, 1, 1 )
end

ARC9.LoadAttachment(ATT, "cod2019_optic_default_jokr")
