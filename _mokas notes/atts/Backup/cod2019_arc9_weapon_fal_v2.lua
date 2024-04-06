local ATT = {}
---------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Smooth Dominator"
ATT.CompactName = "Dominator"
ATT.Description = [[Smooth like a criminal]]
ATT.Icon = Material("entities/attachs/ar/fal/cod2019_ar_fal_reciever_v2.png", "mips smooth")
ATT.AutoStats = true
ATT.Free = false
ATT.SortOrder = 1

ATT.Model = "models/weapons/cod2019/attachs/weapons/fal/attachment_vm_ar_falima_reciever_v2.mdl"
ATT.BoneMerge = true

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_fal_reciever"}
ATT.ActivateElements = {"body_none","foregrip_none","sight_adapter_none"}

ATT.Element = {
    AttPosMods = {
        [4] = { -- slot of the weapon's attachment
            Pos = Vector(-1, -0.6, -0.93),
            Ang = Angle(0,0,0),
        },
    }
}

ARC9.LoadAttachment(ATT, "cod2019_fal_body_v2")
---------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Smooth Dominator"
ATT.CompactName = "Dominator"
ATT.Description = [[Smooth like a criminal]]
ATT.Icon = Material("entities/attachs/ar/fal/cod2019_ar_fal_stock_v2.png", "mips smooth")
ATT.AutoStats = true
ATT.Free = false
ATT.SortOrder = 1

ATT.Model = "models/weapons/cod2019/attachs/weapons/fal/attachment_vm_ar_falima_stock_v2.mdl"
ATT.BoneMerge = true

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_fal_stock"}
ATT.ActivateElements = {"stock_none"}


ARC9.LoadAttachment(ATT, "cod2019_fal_stock_v2")