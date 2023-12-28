local ATT = {}
-------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = [[Buffer Tube]]
ATT.CompactName = [[Buffer Tube]]
ATT.Icon = Material("entities/attachs/cod2019_stock_tube.png")
ATT.Description = [[Aluminium mounting point, allows for using custom stock options.]]
ATT.SortOrder = 0
ATT.Free = false

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_tube"}
ATT.Model = "models/weapons/cod2019/attachs/stocks/stock_tube.mdl"
--ATT.Scale = 1
ATT.ModelOffset = Vector(0, 0, 0)
-- ATT.ModelAngleOffset = Angle(0,-90,0)
ATT.Folder = "Tube"
ATT.IconOffset = Vector(0, 0, 0)
ATT.ActivateElements = {"stock_adapter"}

ATT.RecoilUpMult = 0.95

ATT.Attachments = {
    {
        PrintName = "Stock",
        Pos = Vector(-1.3, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(-3, 0, 0),
        Category = {"cod2019_stocks"},
		Scale = 1
    }
}

ARC9.LoadAttachment(ATT, "cod2019_stock_tube")
-------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = [[VLK Tube]]
ATT.CompactName = [[VLK Tube]]
ATT.Icon = Material("entities/attachs/cod2019_stock_tube_vlk.png")
ATT.Description = [[An agile VLK buffer stock with extensive options, allows for using custom stock options.]]
ATT.SortOrder = 0
ATT.Free = false

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_tube"}
ATT.Model = "models/weapons/cod2019/attachs/stocks/stock_tube_vlk.mdl"
--ATT.Scale = 1
ATT.ModelOffset = Vector(0, 0, 0)
-- ATT.ModelAngleOffset = Angle(0,-90,0)
ATT.Folder = "Tube"
ATT.IconOffset = Vector(0, 0, 0)
ATT.ActivateElements = {"stock_adapter"}

ATT.RecoilUpMult = 1.05
ATT.AimDownSightsTimeMult = 0.95

ATT.Attachments = {
    {
        PrintName = "Stock",
        Pos = Vector(-1.3, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(-3, 0, 0),
        Category = {"cod2019_stocks"},
		Scale = 1
    }
}

ARC9.LoadAttachment(ATT, "cod2019_stock_tube_vlk")
-------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = [[FTAC Tube]]
ATT.CompactName = [[FTAC Tube]]
ATT.Icon = Material("entities/attachs/cod2019_stock_tube_origin.png")
ATT.Description = [[Heavy duty buffer stock tube to keeps your aim steady for precision shots.]]
ATT.SortOrder = 0
ATT.Free = false

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_tube"}
ATT.Model = "models/weapons/cod2019/attachs/stocks/stock_tube_origin12.mdl"
--ATT.Scale = 1
ATT.ModelOffset = Vector(0, 0, 0)
-- ATT.ModelAngleOffset = Angle(0,-90,0)
ATT.Folder = "Tube"
ATT.IconOffset = Vector(0, 0, 0)
ATT.ActivateElements = {"stock_adapter"}

ATT.RecoilUpMult = 1.15
ATT.AimDownSightsTimeMult = 0.85
ATT.SpreadMult = 0.9

ATT.Attachments = {
    {
        PrintName = "Stock",
        Pos = Vector(-1.3, 0, -0.05),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(-3, 0, 0),
        Category = {"cod2019_stocks"},
		Scale = 1
    }
}

ARC9.LoadAttachment(ATT, "cod2019_stock_tube_origin12")