local ATT = {}
-----------------------------------------------------------
ATT = {}

--ATT.MenuCategory = "ARC9 - CSGO Attachments"
ATT.PrintName = "Alt Ironsight"
ATT.CompactName = "ALT"
ATT.Description = [[Removes the sight mount.]]

--ATT.Icon = Material("entities/attachs/go_scar_barrel_short.png", "mips smooth")

--ATT.Model = "models/weapons/csgo/atts/grip_vertical.mdl"

ATT.SortOrder = 0
ATT.Category = "cod2019_model680_optic"
ATT.ActivateElements = {"rail_sight_none"}

ATT.Sights = {
    {
        Pos = Vector(0, 6.5, 0.1),
        Ang = Angle(0, 1.5, 0),
        Reticle = nil, -- Same as ATT.RTScopeReticle or HoloSightReticle but this sight only. Better cache material somewhere outside this structure: local Reticle1 = Material("reticle1.png", "mips smooth") and here you type only Reticle1). If not defined, will use ATT.RTScopeReticle/HoloSightReticle


        Magnification = 1.15,
        IsIronSight = true,
        KeepBaseIrons = false
    }
}

ARC9.LoadAttachment(ATT, "cod2019_model680_iron")
