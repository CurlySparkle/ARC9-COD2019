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
        Pos = Vector(1.25, 9, -0.9),
        Ang = Angle(0, 1.5, 0),
        Magnification = 1.15,
        IsIronSight = true,
        KeepBaseIrons = false,
		CrosshairInSights = true,
    }
}

ARC9.LoadAttachment(ATT, "cod2019_model680_iron")
