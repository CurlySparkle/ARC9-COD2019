local ATT = {}
-----------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW19 Attachments"
ATT.PrintName = "FORGE TAC Sentry"
ATT.CompactName = "FTAC Sentry"
ATT.Description = [[Heavy duty tapered barrels tightens pellet spread and slightly extends range with only a minor increase to weight.]]

ATT.Icon = Material("entities/attachs/sh/r90/cod2019_sh_r90_barlong.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/r90/attachment_vm_sh_dpapa12_barlong.mdl"

ATT.MuzzleDevice = true -- set to true if you want to use this to emit particles
ATT.MuzzleDevice_Priority = 2

ATT.SpreadMult = 0.8
ATT.RangeMaxMult = 1.2
ATT.RangeMinMult = 1.2

ATT.AimDownSightsTimeMult = 1.15
ATT.SprintToFireTimeMult = 1.15

ATT.SortOrder = 0
ATT.Category = "cod2019_r90_barrel"
ATT.ActivateElements = {"barrel_none"}

ARC9.LoadAttachment(ATT, "cod2019_r90_barrel_long")
-----------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW19 Attachments"
ATT.PrintName = "FORGE TAC Gemini"
ATT.CompactName = "FTAC Gemini"
ATT.Description = [[Dual thin-walled smooth bore barrels widen pellet spread and improve agility with only a minor decrease to range.]]

ATT.Icon = Material("entities/attachs/sh/r90/cod2019_sh_r90_barshort.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/r90/attachment_vm_sh_dpapa12_barshort.mdl"

ATT.SpreadMult = 1.15
ATT.RangeMaxMult = 0.9
ATT.RangeMinMult = 0.9

ATT.AimDownSightsTimeMult = 0.9
ATT.SprintToFireTimeMult = 0.9

ATT.SortOrder = 0
ATT.Category = "cod2019_r90_barrel"
ATT.ActivateElements = {"barrel_none"}

ATT.Element = {
    AttPosMods = {
        [2] = { -- slot of the weapon's attachment
            Pos = Vector(0.95, 0, 0),
            Ang = Angle(0,0,0),
        }
    }
}

ARC9.LoadAttachment(ATT, "cod2019_r90_barrel_short")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "FTAC Ultralight Pump"
ATT.CompactName = "FTAC Ultralight Pump"
ATT.Description = [[Lightweight composite pump allows faster movement while staying on target.]]

ATT.Icon = Material("entities/attachs/sh/r90/cod2019_sh_r90_pump_light.png", "mips smooth")

ATT.DrawTimeMult = 0.85
ATT.HolsterTimeMult = 0.85
ATT.AimDownSightsTimeMult = 0.9
ATT.RecoilSideMult = 1.1


ATT.SortOrder = 0
ATT.Category = {"cod2019_r90_pump"}
ATT.ActivateElements = {"pump_none"}

ATT.Model = "models/weapons/cod2019/attachs/weapons/r90/attachment_vm_sh_dpapa12_pump_light.mdl"
ATT.BoneMerge = true

ARC9.LoadAttachment(ATT, "cod2019_r90_pump_light")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "FSS R9-0 Bulldog"
ATT.CompactName = "FSS Bulldog"
ATT.Description = [[ustom heavy-duty pump provides a more stable sight picture.]]

ATT.Icon = Material("entities/attachs/sh/r90/cod2019_sh_r90_pump_stable.png", "mips smooth")

ATT.DrawTimeMult = 0.85
ATT.HolsterTimeMult = 0.85
ATT.AimDownSightsTimeMult = 0.9
ATT.RecoilSideMult = 1.1


ATT.SortOrder = 0
ATT.Category = {"cod2019_r90_pump"}
ATT.ActivateElements = {"pump_none"}

ATT.Model = "models/weapons/cod2019/attachs/weapons/r90/attachment_vm_sh_dpapa12_pump_stable.mdl"
ATT.BoneMerge = true

ARC9.LoadAttachment(ATT, "cod2019_r90_pump_stable")