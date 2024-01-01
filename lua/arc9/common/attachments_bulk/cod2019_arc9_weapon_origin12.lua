local ATT = {}
-----------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW19 Attachments"
ATT.PrintName = "FORGE TAC Precision"
ATT.CompactName = "Precision"
ATT.Description = [[Heavy duty tapered barrel tightens pellet and slightly extends range with only a minor increase to weight.]]

ATT.Icon = Material("entities/attachs/cod2019_sh_origin12_barrelmid.png", "mips smooth")

--ATT.Model = "models/weapons/csgo/atts/grip_vertical.mdl"

ATT.SpreadMult = 0.85
ATT.RangeMaxMult = 1.15
ATT.RangeMinMult = 1.15

ATT.SortOrder = 0
ATT.Category = "cod2019_origin12_barrel"
ATT.ActivateElements = {"barrel_long"}

ATT.Element = {
    AttPosMods = {
        [3] = { -- slot of the weapon's attachment
            Pos = Vector(2.75, 0, 0),
            Ang = Angle(0,0,0),
        }
    }
}

ARC9.LoadAttachment(ATT, "cod2019_origin12_barrel_long")
-----------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW19 Attachments"
ATT.PrintName = "FORGE TAC Wideshot"
ATT.CompactName = "Wideshot"
ATT.Description = [[Lightweight smooth bore barrel widens pellet spread and improves agility with only a minor decrease to range.]]

ATT.Icon = Material("entities/attachs/cod2019_sh_origin12_barrelshort.png", "mips smooth")

--ATT.Model = "models/weapons/csgo/atts/grip_vertical.mdl"

ATT.SpreadMult = 1.15
ATT.RangeMaxMult = 0.9
ATT.RangeMinMult = 0.9

ATT.AimDownSightsTimeMult = 0.9
ATT.SprintToFireTimeMult = 0.9

ATT.SortOrder = 0
ATT.Category = "cod2019_origin12_barrel"
ATT.ActivateElements = {"barrel_small"}

ATT.Element = {
    AttPosMods = {
        [3] = { -- slot of the weapon's attachment
            Pos = Vector(-0.67, 0, 0),
            Ang = Angle(0,0,0),
        }
    }
}

ARC9.LoadAttachment(ATT, "cod2019_origin12_barrel_small")
