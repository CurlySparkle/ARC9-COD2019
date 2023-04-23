local ATT = {}
----------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "Alt Ironsight"
ATT.CompactName = "ALT"
ATT.Description = [[Alt Ironsight]]

--ATT.Icon = Material("entities/attachs/go_scar_barrel_short.png", "mips smooth")

--ATT.Model = "models/weapons/csgo/atts/grip_vertical.mdl"

ATT.SortOrder = 0
ATT.Category = "cod2019_sights_m4"
ATT.ActivateElements = {"sight_m13"}

ATT.Sights = {
    {
        Pos = Vector(0, 6, -1.3),
        Ang = Angle(0, -0.2, 0),
        Reticle = nil, -- Same as ATT.RTScopeReticle or HoloSightReticle but this sight only. Better cache material somewhere outside this structure: local Reticle1 = Material("reticle1.png", "mips smooth") and here you type only Reticle1). If not defined, will use ATT.RTScopeReticle/HoloSightReticle
        Magnification = 1.15,
        IsIronSight = true,
        KeepBaseIrons = false
    }
}

ARC9.LoadAttachment(ATT, "cod2019_m4_sight_alt")
----------------------------------------------------------------------------------------