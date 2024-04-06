local ATT = {}

ATT.PrintName = "Strela-P Scope"
ATT.CompactName = "Strela-P"
ATT.Icon = Material("entities/attachs/cod2019_optic_strela.png", "mips smooth")
ATT.Description = [[Default targetting sight for the Strela.]]

ATT.CustomPros = {
    [ ARC9:GetPhrase("mw19_optic_stat_zoom") ] = "4.4x"
}

ATT.SortOrder = 4
ATT.Free = false
ATT.Folder = ARC9:GetPhrase("mw19_folder_scope")

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_optic_strela"}
ATT.ActivateElements = {"sights_scope"}

ATT.Model = "models/weapons/cod2019/attachs/scopes/scope_strela.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(-0.3, 0, 0)
ATT.ModelAngleOffset = Angle(0, 0, 90)

ATT.Sights = {
    {
        Pos = Vector(1.415, 5, -1.265),
        Ang = Angle(0, -1, -90),
        ViewModelFOV = 44,
        Magnification = 1.25,
        IgnoreExtra = true,
		CrosshairInSights = false
    },
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 1
-- ATT.RTScopeAdjustable = true
-- ATT.RTScopeAdjustmentLevels = 2
-- ATT.RTScopeFOVMin = 10
-- ATT.RTScopeFOVMax = 25
ATT.RTScopeFOV = 44 / 4.4
ATT.RTScopeRes = 512
ATT.RTScopeReticle = Material("hud/arc9_cod2019/overlays/strela_crosshair.png", "mips")
ATT.RTScopeReticleScale = 1
ATT.RTScopeShadowIntensity = 5
ATT.RTScopeNoPP = false
ATT.RTScopeColorable = false

ARC9.LoadAttachment(ATT, "cod2019_optic_scope_strela")