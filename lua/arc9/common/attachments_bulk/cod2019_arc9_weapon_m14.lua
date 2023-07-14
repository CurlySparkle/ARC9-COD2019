local ATT = {}

ATT = {}

ATT.PrintName = [[Buffer Tube]]
ATT.CompactName = [[Buffer Tube]]
ATT.Icon = Material("entities/attachs/go_stock_none.png")
ATT.Description = [[Aluminium mounting point, allows for using custom stock options.]]
ATT.SortOrder = 0
ATT.Free = false

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_m14_stocks"}
ATT.Model = "models/weapons/cod2019/attachs/ik/m14_ebr_rhik.mdl"

ATT.RHIK_Priority = 5
ATT.RHIK = true

--ATT.Scale = 1
ATT.ModelOffset = Vector(1.6, 0, -0.7)
-- ATT.ModelAngleOffset = Angle(0,-90,0)
--ATT.Folder = "Tube"
ATT.IconOffset = Vector(0, 0, 0)
ATT.ActivateElements = {"stock_adapter"}

ATT.RecoilUpMult = 0.95

ATT.Attachments = {
    {
        PrintName = "Stock",
        Pos = Vector(-1.85, 0, -0.6),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(-3, 0, 0),
        Category = {"cod2019_stocks","csgo_stock"},
		Scale = 1
    }
}

ARC9.LoadAttachment(ATT, "cod2019_m14_stock_tube")
---------------------------------------------------------------------------
-- ATT = {}

-- ATT.PrintName = [[EBR Stock]]
-- ATT.CompactName = [[EBR]]
-- ATT.Icon = Material("entities/attachs/go_stock_none.png")
-- ATT.Description = [[EBR Stock]]
-- ATT.SortOrder = 0
-- ATT.Free = false

-- ATT.MenuCategory = "ARC9 - MW2019 Attachments"
-- ATT.Category = {"cod2019_m14_stocks"}
-- ATT.Model = "models/weapons/cod2019/attachs/weapons/m14/attachment_vm_sn_mike14_stock_ebr.mdl"

-- ATT.RHIK_Priority = 5
-- ATT.RHIK = true
-- ATT.BoneMerge = true

-- ATT.ActivateElements = {"stock_none","stock_ebr"}

-- ATT.RecoilUpMult = 0.95

-- ARC9.LoadAttachment(ATT, "cod2019_m14_stock_ebr")