local ATT = {}

ATT.PrintName = "Default Scope"
ATT.CompactName = [[Default]]
ATT.Icon = Material("entities/attachs/cod2019_optic_strela.png", "mips smooth")
ATT.Description = [[Default targetting sight for the Strela.]]
ATT.Pros = {
    "+ 8x Zoom",
    "+ Clearer sight picture"
}
ATT.Cons = {}
ATT.SortOrder = 4
ATT.Free = false
ATT.Folder = "SCOPE"

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_optic_strela"}
ATT.ActivateElements = {"sights_scope"}

ATT.Model = "models/weapons/cod2019/attachs/scopes/scope_strela.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(-0.3, 0, 0)
ATT.ModelAngleOffset = Angle(0, 0, 90)

ATT.Sights = {
    {
        Pos = Vector(1.412, 4, -1.23),
        Ang = Angle(0, 2, -0),
        ViewModelFOV = 56,
        Magnification = 1.5,
        IgnoreExtra = true,
		CrosshairInSights = false
    },
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 1
ATT.RTScopeFOV = 8
ATT.RTScopeRes = 512
-- ATT.RTScopeSurface = Material("models/weapons/arc9/mw3/mw3_optics/hamr_lens")
ATT.RTScopeReticle = Material("hud/arc9_csgo/scopes/specter_overlay.png", "mips smooth")
ATT.RTScopeReticleScale = 1
ATT.RTScopeShadowIntensity = 0
ATT.RTScopeNoPP = false
ATT.RTScopeColorable = false

ARC9.LoadAttachment(ATT, "cod2019_optic_scope_strela")