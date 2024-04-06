local ATT = {}
----------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "FSS 24.0\" Factory"
ATT.CompactName = "FSS 24.0\""
ATT.Description = [[24.0" barrel extends muzzle velocity and range to the max, but hinders mobility.]]

ATT.Icon = Material("entities/attachs/mm/mk2/cod2019_mm_mk2_barlong.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/mk2/attachment_vm_sn_sbeta_barlong.mdl"
ATT.BoneMerge = true

ATT.SortOrder = 0
ATT.Category = "cod2019_mk2_barrel"
ATT.ActivateElements = {"barrel_none","sight_none"}

ATT.MuzzleDevice = true -- set to true if you want to use this to emit particles
ATT.MuzzleDevice_Priority = 2

ATT.RangeMinMult = 1.1
ATT.RangeMaxMult = 1.1
ATT.AimDownSightsTimeMult = 1.1

ATT.Element = {
    AttPosMods = {
        [2] = { -- slot of the weapon's attachment
            Pos = Vector(5.5, 0, 0),
            Ang = Angle(0,0,0),
        }
    }
}

ARC9.LoadAttachment(ATT, "cod2019_mk2_barrel_long")
----------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "FSS 20.0\" Factory"
ATT.CompactName = "FSS 20.0\""
ATT.Description = [[20.0" barrel is a perfect balance of increased muzzle velocity and increased weight.]]

ATT.Icon = Material("entities/attachs/mm/mk2/cod2019_mm_mk2_barmid.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/mk2/attachment_vm_sn_sbeta_barmid.mdl"
ATT.BoneMerge = true

ATT.SortOrder = 0
ATT.Category = "cod2019_mk2_barrel"
ATT.ActivateElements = {"barrel_none","sight_none"}

ATT.MuzzleDevice = true -- set to true if you want to use this to emit particles
ATT.MuzzleDevice_Priority = 2

ATT.RangeMinMult = 1.05
ATT.RangeMaxMult = 1.05
ATT.AimDownSightsTimeMult = 1.05

ATT.Element = {
    AttPosMods = {
        [2] = { -- slot of the weapon's attachment
            Pos = Vector(3, 0, 0),
            Ang = Angle(0,0,0),
        }
    }
}

ARC9.LoadAttachment(ATT, "cod2019_mk2_barrel_mid")
----------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "FSS MK2 Precision Comb"
ATT.CompactName = "Precision Comb"
ATT.Description = [[Heavy duty comb add-on provides exceptional precision while aiming.]]

ATT.Icon = Material("entities/attachs/mm/mk2/cod2019_mm_mk2_stock_tactical.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/mk2/attachment_vm_sn_sbeta_stock_tactical.mdl"
ATT.BoneMerge = true

ATT.SortOrder = 0
ATT.Category = "cod2019_mk2_stock"
--ATT.ActivateElements = {"barrel_none"}

ATT.RecoilMult = 1.1
ATT.AimDownSightsTimeMult = 1.1

ARC9.LoadAttachment(ATT, "cod2019_mk2_stock_tactical")
------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "Alternative View"
ATT.CompactName = "Alt View"
ATT.Description = [[Changes the view.]]

--ATT.Icon = Material("entities/attachs/go_g3_stock_collapsible.png", "mips smooth")

ATT.SortOrder = 0
ATT.Category = "cod2019_mk2_view"

ATT.ActivePos = Vector(0, 2, 0)
ATT.ActiveAng = Angle(0, 0, 0)

ARC9.LoadAttachment(ATT, "cod2019_mk2_alt_view")