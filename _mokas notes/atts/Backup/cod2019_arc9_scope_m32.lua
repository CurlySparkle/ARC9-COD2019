local ATT = {}

ATT.PrintName = "MGL-32 Grenade Launcher Sight"
ATT.CompactName = [[MGL GLS]]
--ATT.Icon = Material("entities/attachs/go_optic_schmidt.png", "mips smooth")
ATT.Description = [[Default scope for the MGL-32 Grenade Launcher.]]

ATT.SortOrder = 100
ATT.Free = false
-- ATT.Folder = ARC9:GetPhrase("mw19_folder_scope")

ATT.CustomPros = {
    [ ARC9:GetPhrase("mw19_optic_stat_zoom") ] = "3.5x"
}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_optic_m32"}
ATT.ActivateElements = {"scope_m32"}

ATT.Model = "models/weapons/cod2019/attachs/scopes/scope_m32.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(0, 0, 0)
ATT.ModelAngleOffset = Angle(0, 0, 0)

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
-- ATT.RTScopeAdjustable = true
-- ATT.RTScopeAdjustmentLevels = 3
-- ATT.RTScopeFOVMin = 16
-- ATT.RTScopeFOVMax = 8
ATT.RTScopeFOV = 46 / 3.5
ATT.RTScopeRes = 512
ATT.RTScopeReticle = Material("hud/arc9_cod2019/overlays/m32_crosshair.png", "mips smooth")
ATT.RTScopeReticleScale = 1
ATT.RTScopeShadowIntensity = 1
ATT.RTScopeNoPP = false
ATT.RTScopeColorable = false

ARC9.LoadAttachment(ATT, "cod2019_optic_scope_m32")