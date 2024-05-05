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
ATT.RTScopeFOV = 36 / 5.5
ATT.RTScopeRes = 512
ATT.RTScopeReticle = Material("hud/arc9_cod2019/overlays/svd_crosshair.png", "mips smooth")
ATT.RTScopeReticleScale = 1
ATT.RTScopeShadowIntensity = 7.5
ATT.RTScopeNoPP = false
ATT.RTScopeColorable = false

-- if !warzonestats then -- Regular Stats
	-- ATT.AimDownSightsTimeAdd = 0.08
	-- ATT.VisualRecoilMult = 0.99
	-- ATT.RecoilMult = 0.99
-- else -- Warzone Stats
	-- ATT.AimDownSightsTimeAdd = 0.077
	-- ATT.VisualRecoilMult = 0.99
	-- ATT.RecoilMult = 0.99
-- end

ARC9.LoadAttachment(ATT, "cod2019_optic_default_svd")

/////////////////////////// -- HDR
ATT = {}

ATT.PrintName = "HDR Scope"
ATT.Description = ""
ATT.Icon = Material("entities/attachs/sn/hdr/cod2019_sn_hdr_scope.png", "mips smooth")

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_optic_hdr"}
ATT.ActivateElements = {"scope_hdr"}

ATT.Model = "models/weapons/cod2019/attachs/scopes/scope_hdr.mdl"
ATT.ModelOffset = Vector(5, 0, 0)

ATT.Sights = {
    {
        Pos = Vector(0, 16, -1.95),
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
ATT.RTScopeFOV = 15 / 6
-- ATT.RTScopeAdjustable = true
-- ATT.RTScopeAdjustmentLevels = 3
-- ATT.RTScopeFOVMin = 7
-- ATT.RTScopeFOVMax = 36
ATT.RTScopeRes = 1024
ATT.RTScopeReticle = Material("hud/arc9_cod2019/overlays/ax50_crosshair")
ATT.RTScopeReticleScale = 1
ATT.RTScopeShadowIntensity = 7.5
ATT.RTScopeNoPP = false
ATT.RTScopeColorable = false

if !warzonestats then -- Regular Stats
	ATT.AimDownSightsTimeMult = 1.25
else -- Warzone Stats
	-- ATT.AimDownSightsTimeAdd = 0.1
end

ARC9.LoadAttachment(ATT, "cod2019_optic_default_hdr")

/////////////////////////// -- AX50
ATT = {}

ATT.PrintName = "AX50 Scope"
ATT.Description = ""
ATT.Icon = Material("entities/attachs/sn/ax50/cod2019_optic_scope_ax50.png", "mips smooth")

ATT.SortOrder = 4
ATT.Free = false

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_optic_ax50"}
ATT.ActivateElements = {"scope_ax50"}

ATT.Model = "models/weapons/cod2019/attachs/scopes/scope_ax50.mdl"
ATT.BoneMerge = true
ATT.Scale = 1
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
ATT.RTScopeFOV = 35 / 5.5
-- ATT.RTScopeAdjustable = true
-- ATT.RTScopeAdjustmentLevels = 3
-- ATT.RTScopeFOVMin = 7
-- ATT.RTScopeFOVMax = 26
ATT.RTScopeRes = 512
ATT.RTScopeReticle = Material("hud/arc9_cod2019/overlays/ax50_crosshair")
ATT.RTScopeReticleScale = 1.05
ATT.RTScopeShadowIntensity = 7.5
ATT.RTScopeNoPP = false
ATT.RTScopeColorable = false

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

ATT.Model = "models/weapons/cod2019/attachs/scopes/scope_rytec.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(-0.3, 0, 0)
ATT.ModelAngleOffset = Angle(0, 0, 0)

ATT.Sights = {
    {
        Pos = Vector(-0.01, 10, -1.685),
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
ATT.RTScopeFOV = 36 / 4.5
-- ATT.RTScopeAdjustable = false
-- ATT.RTScopeAdjustmentLevels = 3
-- ATT.RTScopeFOVMin = 8
-- ATT.RTScopeFOVMax = 25
ATT.RTScopeRes = 1024
ATT.RTScopeReticle = Material("hud/arc9_cod2019/overlays/rytec_crosshair.png", "mips")
ATT.RTScopeReticleScale = 0.8
ATT.RTScopeShadowIntensity = 7.5
ATT.RTScopeNoPP = false
ATT.RTScopeColorable = false

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
    [ ARC9:GetPhrase("mw19_optic_stat_zoom") ] = "3.0x"
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

ARC9.LoadAttachment(ATT, "cod2019_optic_scope_strela")

//////////////////////////////////////////////// -- MGL-32
/////////////////////////// -- MGL-32
ATT = {}

ATT.PrintName = "MGL-32 Grenade Launcher Sight"
ATT.Description = ""
ATT.Icon = Material("entities/attachs/cod2019_attach_generic.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"

ATT.SortOrder = 0
ATT.Category = "cod2019_optic_m32"
ATT.ActivateElements = {"scope_m32"}

ATT.Model = "models/weapons/cod2019/attachs/scopes/scope_m32.mdl"

ATT.CustomPros = {
    [ ARC9:GetPhrase("mw19_optic_stat_zoom") ] = "3.5x"
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

ARC9.LoadAttachment(ATT, "cod2019_optic_scope_m32")
