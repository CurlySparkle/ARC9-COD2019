local ATT = {}

ATT.PrintName = "Default Scope"
ATT.CompactName = [[Default]]
--ATT.Icon = Material("entities/attachs/go_optic_schmidt.png", "mips smooth")
ATT.Description = [[Default scope for the MGL-32 Grenade Launcher.]]
ATT.Pros = {
    "+ 4x Zoom",
    "+ Clearer sight picture"
}
ATT.Cons = {}
ATT.SortOrder = 4
ATT.Free = false
ATT.Folder = "Scopes"

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_optic_m32"}
ATT.ActivateElements = {"scope_m32"}

ATT.Model = "models/weapons/cod2019/attachs/scopes/scope_m32.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(0, 0, 0)
ATT.ModelAngleOffset = Angle(0, 0, 0)

ATT.Sights = {
    {
        Pos = Vector(0, 5.5, -1.1),
        Ang = Angle(0, 0, 0),
        ViewModelFOV = 46,
        Magnification = 1.5,
        IgnoreExtra = true
    },
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 2
ATT.RTScopeFOV = 16
ATT.RTScopeRes = 512
-- ATT.RTScopeSurface = Material("models/weapons/arc9/mw3/mw3_optics/hamr_lens")
ATT.RTScopeReticle = Material("hud/arc9_cod2019/overlays/acog_crosshair.png", "mips smooth")
ATT.RTScopeReticleScale = 1
ATT.RTScopeShadowIntensity = 1
ATT.RTScopeNoPP = false
ATT.RTScopeColorable = false

ARC9.LoadAttachment(ATT, "cod2019_optic_scope_m32")