local ATT = {}

ATT.PrintName = "Default Scope"
ATT.CompactName = [[Default]]
ATT.Icon = Material("entities/attachs/cod2019_optic_pila.png", "mips smooth")
ATT.Description = [[Long-range combat scope. Provides an improved precision at longer ranges.]]
ATT.Pros = {
    "+ 8x Zoom",
    "+ Clearer sight picture"
}
ATT.Cons = {}
ATT.SortOrder = 4
ATT.Free = false
-- ATT.Folder = ARC9:GetPhrase("mw19_folder_other2")

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_optic_pila"}
ATT.ActivateElements = {"sights_scope"}

ATT.Model = "models/weapons/cod2019/attachs/scopes/scope_pila.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(0, 0, 0)
ATT.ModelAngleOffset = Angle(0, 0, 90)
ATT.BoneMerge = true

ATT.Sights = {
    {
        Pos = Vector(1, 16, -0.35),
        Ang = Angle(22.3, -18.7, -18),
        ViewModelFOV = 15,
        Magnification = 1.5,
        IgnoreExtra = true,
		CrosshairInSights = false
    },
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 1
ATT.RTScopeAdjustable = true
ATT.RTScopeAdjustmentLevels = 2
ATT.RTScopeFOVMin = 10
ATT.RTScopeFOVMax = 25
ATT.RTScopeFOV = 26
ATT.RTScopeRes = 512
-- ATT.RTScopeSurface = Material("models/weapons/arc9/mw3/mw3_optics/hamr_lens")
ATT.RTScopeReticle = Material("hud/arc9_cod2019/overlays/mk4_crosshair.png", "mips smooth")
ATT.RTScopeReticleScale = 1
ATT.RTScopeShadowIntensity = 0
ATT.RTScopeNoPP = false
ATT.RTScopeColorable = false

ARC9.LoadAttachment(ATT, "cod2019_optic_scope_pila")