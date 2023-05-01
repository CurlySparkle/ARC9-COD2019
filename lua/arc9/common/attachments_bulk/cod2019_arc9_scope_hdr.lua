local ATT = {}

ATT.PrintName = "Default Scope"
ATT.CompactName = [[Default]]
ATT.Icon = Material("entities/attachs/cod2019_optic_scope_hdr.png", "mips smooth")
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
ATT.Category = {"cod2019_optic_hdr"}
ATT.ActivateElements = {"scope_hdr"}

ATT.Model = "models/weapons/cod2019/attachs/scopes/scope_hdr.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(-0.3, 0, 0)
ATT.ModelAngleOffset = Angle(0, 0, 0)

ATT.Sights = {
    {
        Pos = Vector(0, 15, -1.95),
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

ARC9.LoadAttachment(ATT, "cod2019_optic_scope_hdr")