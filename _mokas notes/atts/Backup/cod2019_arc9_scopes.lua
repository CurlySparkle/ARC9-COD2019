local ATT = {}
----------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Dragunov Scope"
ATT.CompactName = [[Dragunov]]
ATT.Icon = Material("entities/attachs/cod2019_optic_scope_svd.png", "mips smooth")
ATT.Description = [[Long-range combat scope. Provides an improved precision at longer ranges.]]

ATT.CustomPros = {
    [ ARC9:GetPhrase("mw19_optic_stat_zoom") ] = "5.5x"
}

ATT.SortOrder = 4
ATT.Free = false
ATT.Folder = ARC9:GetPhrase("mw19_folder_scope")

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_optic_svd"}
ATT.ActivateElements = {"scope_svd"}
ATT.BoneMerge = true

ATT.Model = "models/weapons/cod2019/attachs/scopes/scope_svd.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(0.5, 0, -0.8)
ATT.ModelAngleOffset = Angle(0, 0, 0)

ATT.AimDownSightsTimeAdd = 0.08
ATT.VisualRecoilMult = 0.99
ATT.RecoilMult = 0.99

ATT.Sights = {
    {
        Pos = Vector(0, 9, -1.945),
        Ang = Angle(0, 0, 0),
        ViewModelFOV = 36,
        Magnification = 1.15,
        IgnoreExtra = true
    },
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 2
ATT.RTScopeFOV = 36 / 5.5
ATT.RTScopeAdjustable = false
-- ATT.RTScopeAdjustmentLevels = 3
-- ATT.RTScopeFOVMin = 8
-- ATT.RTScopeFOVMax = 25
ATT.RTScopeRes = 512
-- ATT.RTScopeSurface = Material("models/weapons/arc9/mw3/mw3_optics/hamr_lens")
ATT.RTScopeReticle = Material("hud/arc9_cod2019/overlays/svd_crosshair.png", "mips smooth")
ATT.RTScopeReticleScale = 1
ATT.RTScopeShadowIntensity = 1
ATT.RTScopeNoPP = false
ATT.RTScopeColorable = false

ARC9.LoadAttachment(ATT, "cod2019_optic_scope_svd")
----------------------------------------------------------------------------------------