local ATT = {}

local stats_vlight = {
	SpeedMultSights = 1.17,
	AimDownSightsTimeAdd = -0.016,
	VisualRecoilMult = 1.02,
	RecoilMult = 1.02,
}

local stats_light = {
	AimDownSightsTimeMult = 0.85,
	VisualRecoilMult = 1.1,
	RecoilUpMult = 1.13,
	RecoilSideMult = 1.13,
}

local stats_medium = {
    AimDownSightsTimeAdd = -0.027,
}

local stats_heavy = {
	DeployTimeMult = 1.09,
	AimDownSightsTimeMult = 1.14,
	VisualRecoilMult = 0.9,
	RecoilUpMult = 0.85,
	RecoilSideMult = 0.85,
}

local stats_stalker = {
	DeployTimeMult = 1.05,
	AimDownSightsTimeMult = 1.05,
	VisualRecoilMult = 0.95,
	RecoilUpMult = 0.95,
	RecoilSideMult = 0.95,
}

local stats_vheavy = {
	SpeedMultSights = 0.82,
	VisualRecoilMult = 0.9,
	RecoilMult = 0.9,
}

local stats_none = {
    AimDownSightsTimeAdd = -0.039,
	VisualRecoilMult = 1.3,
	RecoilMult = 1.3,
	SpreadMultMove = 0.94,
	SpeedMult = 1.04,
	SpeedMultSights = 1.2,
}

-------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = [[Light Buffer Tube]]
ATT.CompactName = [[Light Tube]]
ATT.Icon = Material("entities/attachs/cod2019_stock_tube_light.png")
ATT.Description = [[Aluminium mounting point tube, improves sight speed with the cost of recoil.]]
ATT.SortOrder = 0
ATT.Free = false

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_tube"}
ATT.Model = "models/weapons/cod2019/attachs/stocks/stock_light_tube.mdl"
--ATT.Scale = 1
ATT.ModelOffset = Vector(0, 0, 0)
-- ATT.ModelAngleOffset = Angle(0,-90,0)
ATT.Folder = ARC9:GetPhrase("mw19_folder_tube")
ATT.IconOffset = Vector(0, 0, 0)
ATT.ActivateElements = {"stock_adapter"}

ATT.AimDownSightsTimeMult = 0.95
ATT.RecoilMult = 1.05

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_stock2"),
        Pos = Vector(-1.3, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(-3, 0, 0),
        Category = {"cod2019_stocks"},
		Scale = 1
    }
}

ARC9.LoadAttachment(ATT, "cod2019_stock_tube_light")
-------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = [[FSS CQ Buffer tube]]
ATT.CompactName = [[FSS CQ Tube]]
ATT.Icon = Material("entities/attachs/cod2019_stock_tube_medium.png")
ATT.Description = [[Tactical buffer tube streamlined for close quarters combat. Gets you on target faster.]]
ATT.SortOrder = 0.1
ATT.Free = false

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_tube"}
ATT.Model = "models/weapons/cod2019/attachs/stocks/stock_tube_medium.mdl"
--ATT.Scale = 1
ATT.ModelOffset = Vector(0, 0, 0)
-- ATT.ModelAngleOffset = Angle(0,-90,0)
ATT.Folder = ARC9:GetPhrase("mw19_folder_tube")
ATT.IconOffset = Vector(0, 0, 0)
ATT.ActivateElements = {"stock_adapter"}

ATT.AimDownSightsTimeMult = 1.12
ATT.RecoilMult = 0.87

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_stock2"),
        Pos = Vector(-1.3, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(-3, 0, 0),
        Category = {"cod2019_stocks"},
		Scale = 1
    }
}

ARC9.LoadAttachment(ATT, "cod2019_stock_tube_medium")
-------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = [[Singuard Buffer Tube]]
ATT.CompactName = [[Singuard Tube]]
ATT.Icon = Material("entities/attachs/cod2019_stock_tube_singuard.png")
ATT.Description = [[Aluminium mounting point tube, improves sight speed with the cost of recoil.]]
ATT.SortOrder = 0
ATT.Free = false

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_tube"}
ATT.Model = "models/weapons/cod2019/attachs/stocks/attachment_vm_tube_singuard.mdl"
--ATT.Scale = 1
ATT.ModelOffset = Vector(0, 0, 0)
-- ATT.ModelAngleOffset = Angle(0,-90,0)
ATT.Folder = ARC9:GetPhrase("mw19_folder_tube")
ATT.IconOffset = Vector(0, 0, 0)
ATT.ActivateElements = {"stock_adapter"}

ATT.AimDownSightsTimeMult = 0.92
ATT.RecoilMult = 1.07

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_stock2"),
        Pos = Vector(-1.3, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(-3, 0, 0),
        Category = {"cod2019_stocks"},
		Scale = 1
    }
}

ARC9.LoadAttachment(ATT, "cod2019_stock_tube_singuard")
-------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "FORGE TAC Stalker"
ATT.CompactName = [[Stalker]]
ATT.Description = [[Heavy duty stock keeps your aim steady for precision shots.]]
ATT.Icon = Material("entities/attachs/cod2019_stock_heavy.png", "mips smooth")
ATT.SortOrder = 5

ATT.AutoStats = true
ATT.Category = "cod2019_stocks"

ATT.Model = "models/weapons/cod2019/attachs/stocks/attachment_vm_stock_heavy.mdl"

ATT.Scale = 1
ATT.ModelOffset = Vector(-1.3, 0, -0.02)

table.Merge(ATT, stats_stalker)

ARC9.LoadAttachment(ATT, "cod2019_stock_heavy")
-------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "FORGE TAC Ultralight"
ATT.CompactName = [[Ultralight]]
ATT.Description = [[Stock designed for agility while aiming down sights.]]
ATT.Icon = Material("entities/attachs/cod2019_stock_light01.png", "mips smooth")
ATT.SortOrder = 5.1

ATT.AutoStats = true
ATT.Category = "cod2019_stocks"

ATT.Model = "models/weapons/cod2019/attachs/stocks/attachment_vm_stock_light01.mdl"

ATT.Scale = 1
ATT.ModelOffset = Vector(-1.3, 0, -0.02)

table.Merge(ATT, stats_light)

ARC9.LoadAttachment(ATT, "cod2019_stock_light")
-------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "FSS Close Quarters"
ATT.CompactName = [[Close Quarters]]
ATT.Description = [[Tactical stock streamlined for close quarters combat. Gets you on target faster.]]
ATT.Icon = Material("entities/attachs/cod2019_stock_medium01.png", "mips smooth")
ATT.SortOrder = 5.2

ATT.AutoStats = true
ATT.Category = "cod2019_stocks"

ATT.Model = "models/weapons/cod2019/attachs/stocks/attachment_vm_stock_medium01.mdl"

ATT.Scale = 1
ATT.ModelOffset = Vector(-1.3, 0, 0.03)

table.Merge(ATT, stats_medium)

ARC9.LoadAttachment(ATT, "cod2019_stock_medium")
-------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "FTAC Hunter"
ATT.CompactName = [[Hunter]]
ATT.Description = [[Heavy duty stock keeps your aim steady for precision shots.]]
ATT.Icon = Material("entities/attachs/cod2019_stock_heavy02.png", "mips smooth")
ATT.SortOrder = 5.3

ATT.AutoStats = true
ATT.Category = "cod2019_stocks"

ATT.Model = "models/weapons/cod2019/attachs/stocks/attachment_vm_stock_heavy02.mdl"

ATT.Scale = 1
ATT.ModelOffset = Vector(-1.3, 0, 0)

table.Merge(ATT, stats_heavy)

ARC9.LoadAttachment(ATT, "cod2019_stock_heavy02")
-------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "Singuard Arms Invader"
ATT.CompactName = [[Singuard]]
ATT.Description = [[Aluminum core synthetic stock designed for agility while aiming down sights.]]
ATT.Icon = Material("entities/attachs/cod2019_stocks_mike4_stock_v2.png", "mips smooth")
ATT.SortOrder = 5.4

ATT.AutoStats = true
ATT.Category = "cod2019_stocks"

ATT.Model = "models/weapons/cod2019/attachs/stocks/attachment_vm_ar_mike4_stock_v2.mdl"

ATT.Scale = 1
ATT.ModelOffset = Vector(-1.3, 0, 0)

ATT.AimDownSightsTimeAdd = -0.15
ATT.RecoilAdd = 0.13

ARC9.LoadAttachment(ATT, "cod2019_stock_singuard")
-------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "No Stock"
ATT.CompactName = [[No Stock]]
ATT.Description = [[Removes the stock, increases handling speed and sight speed for the cost of more recoil.]]
ATT.Icon = Material("entities/attachs/cod2019_stock_non.png", "mips smooth")
ATT.SortOrder = 5.4

ATT.AutoStats = true
ATT.Category = "cod2019_tube"

ATT.ActivateElements = {"stock_adapter","stock_none2"}
ATT.Model = "models/weapons/cod2019/attachs/stocks/attachment_vm_stock_no.mdl"

ATT.Scale = 1
ATT.ModelOffset = Vector(0, 0, 0)

table.Merge(ATT, stats_none)

ARC9.LoadAttachment(ATT, "cod2019_stock_none")
-------------------------------------------------------------------------------