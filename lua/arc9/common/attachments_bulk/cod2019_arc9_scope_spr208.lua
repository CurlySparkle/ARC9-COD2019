local ATT = {}

ATT.PrintName = "SPR208 Scope"
ATT.CompactName = [[SPR208 Scope]]
ATT.Icon = Material("entities/attachs/go_optic_schmidt.png", "mips smooth")
ATT.Description = [[Long-range combat scope. Provides an improved precision at longer ranges.]]
ATT.Pros = {
    "+ 8x Zoom",
    "+ Clearer sight picture"
}
ATT.Cons = {}
ATT.SortOrder = 4
ATT.Free = false
ATT.Folder = "Scopes"

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_optic_spr208","cod2019_scope_snipers"}
ATT.ActivateElements = {"scope_spr208"}

ATT.Model = "models/weapons/cod2019/attachs/scopes/scope_spr208.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(-2.5, 0, 0)
ATT.ModelAngleOffset = Angle(0, 0, 0)

ATT.Sights = {
    {
        Pos = Vector(0, 15, -1.27),
        Ang = Angle(0, 0, 0),
        ViewModelFOV = 15,
        Magnification = 2,
        IgnoreExtra = true,
		RTScopeFOV = 25,
    },
    {
        Pos = Vector(0, 15, -1.27),
        Ang = Angle(0, 0, 0),
        ViewModelFOV = 15,
        Magnification = 2,
        IgnoreExtra = true,
		RTScopeFOV = 15,
    },
    {
        Pos = Vector(0, 15, -1.27),
        Ang = Angle(0, 0, 0),
        ViewModelFOV = 15,
        Magnification = 2,
        IgnoreExtra = true
    },
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 1
ATT.RTScopeFOV = 8
ATT.RTScopeRes = 512
ATT.RTScopeReticle = Material("hud/arc9_cod2019/overlays/mk4_crosshair.png", "mips smooth")
ATT.RTScopeReticleScale = 1.15
ATT.RTScopeShadowIntensity = 1
ATT.RTScopeNoPP = false
ATT.RTScopeColorable = false

ARC9.LoadAttachment(ATT, "cod2019_optic_scope_spr208")