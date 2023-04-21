local ATT = {}

ATT.PrintName = "Default Scope"
ATT.CompactName = [[Default]]
ATT.Icon = Material("entities/attachs/cod2019_optic_kilo98.png", "mips smooth")
ATT.Description = [[Long-range classic combat scope. Provides an improved precision at longer ranges.]]
ATT.Pros = {
    "+ 8x Zoom",
    "+ Clearer sight picture"
}
ATT.Cons = {}
ATT.SortOrder = 4
ATT.Free = false
ATT.Folder = "Scopes"

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_optic_kar98k"}
ATT.ActivateElements = {"scope_kar98k"}

ATT.Model = "models/weapons/cod2019/attachs/scopes/scope_kar98k.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(0, 0, 0)
ATT.ModelAngleOffset = Angle(0, 0, 0)

ATT.ShotgunReload = true
ATT.BoneMerge = true

ATT.Sights = {
    {
        Pos = Vector(0, 15, -0.825),
        Ang = Angle(0, 0, 0),
        ViewModelFOV = 40,
        Magnification = 2,
        IgnoreExtra = true,
		RTScopeFOV = 25,
    },
    {
        Pos = Vector(0, 15, -0.825),
        Ang = Angle(0, 0, 0),
        ViewModelFOV = 40,
        Magnification = 2,
        IgnoreExtra = true,
		RTScopeFOV = 15,
    },
    {
        Pos = Vector(0, 15, -0.825),
        Ang = Angle(0, 0, 0),
        ViewModelFOV = 40,
        Magnification = 2,
        IgnoreExtra = true
    },
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 2
ATT.RTScopeFOV = 8
ATT.RTScopeRes = 512
ATT.RTScopeReticle = Material("hud/arc9_cod2019/overlays/mosin_crosshair.png", "mips smooth")
ATT.RTScopeReticleScale = 1.18
ATT.RTScopeShadowIntensity = 10
ATT.RTScopeNoPP = false
ATT.RTScopeColorable = false

ARC9.LoadAttachment(ATT, "cod2019_optic_scope_kar98k")