local ATT = {}

local stats_vlight = {
	SpeedMultSights = 1.17,
	AimDownSightsTimeAdd = -0.016,
	VisualRecoilMult = 1.02,
	RecoilMult = 1.02,
}

local stats_light = {
	SpeedMultSights = 1.15,
	VisualRecoilMult = 1.025,
	RecoilMult = 1.025,
}

local stats_medium = {
    AimDownSightsTimeAdd = -0.027,
}

local stats_heavy = {
	SpeedMultSights = 0.89,
	VisualRecoilMult = 0.95,
	RecoilMult = 0.95,
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

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "VLK Stock"
ATT.CompactName = [[VLK]]
ATT.Description = [[VLK stock that helps on aiming speed and has little of recoil control.]]
ATT.Icon = Material("entities/attachs/cod2019_stock_vlk.png", "mips smooth")
ATT.SortOrder = 5.4
ATT.Desc_Pros = {
}
ATT.Desc_Cons = {
}
ATT.AutoStats = true
ATT.Category = "cod2019_stocks"

ATT.Model = "models/weapons/cod2019/attachs/stocks/stock_vlk.mdl"

table.Merge(ATT, stats_light)

ATT.Scale = 1
ATT.ModelOffset = Vector(0, 0, 0.03)

ARC9.LoadAttachment(ATT, "cod2019_stock_vlk")
-------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "AMAX Stock"
ATT.CompactName = [[AMAX]]
ATT.Description = [[AMAX stock that helps even more on aiming speed/recoil with the cost of handling speed.]]
ATT.Icon = Material("entities/attachs/cod2019_stock_amax.png", "mips smooth")
ATT.SortOrder = 5.5
ATT.Desc_Pros = {
}
ATT.Desc_Cons = {
}
ATT.AutoStats = true
ATT.Category = "cod2019_stocks"

ATT.Model = "models/weapons/cod2019/attachs/stocks/stock_amax.mdl"

table.Merge(ATT, stats_vlight)

ATT.Scale = 1
ATT.ModelOffset = Vector(0, 0, 0.05)

ARC9.LoadAttachment(ATT, "cod2019_stock_amax")
-------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "Slima Stock"
ATT.CompactName = [[Slima]]
ATT.Description = [[Slima stock that improves aiming speed with the cost of more recoil and less handling.]]
ATT.Icon = Material("entities/attachs/cod2019_stock_slima.png", "mips smooth")
ATT.SortOrder = 6
ATT.Desc_Pros = {
}
ATT.Desc_Cons = {
}
ATT.AutoStats = true
ATT.Category = "cod2019_stocks"

ATT.Model = "models/weapons/cod2019/attachs/stocks/stock_slima.mdl"

table.Merge(ATT, stats_medium)

ATT.Scale = 1
ATT.ModelOffset = Vector(0, 0, 0.1)

ARC9.LoadAttachment(ATT, "cod2019_stock_slima")
-------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "M4 Stock"
ATT.CompactName = [[M4]]
ATT.Description = [[M4 stock that improves recoil with the cost of less speed.]]
ATT.Icon = Material("entities/attachs/cod2019_stock_m4.png", "mips smooth")
ATT.SortOrder = 6.5
ATT.Desc_Pros = {
}
ATT.Desc_Cons = {
}
ATT.AutoStats = true
ATT.Category = "cod2019_stocks"

ATT.Model = "models/weapons/cod2019/attachs/stocks/stock_m4.mdl"

table.Merge(ATT, stats_heavy)

ATT.Scale = 1
ATT.ModelOffset = Vector(0, 0, 0)

ARC9.LoadAttachment(ATT, "cod2019_stock_m4")
-------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "Origin Stock"
ATT.CompactName = [[Origin]]
ATT.Description = [[Origin stock that improves ADS speed with the cost of more recoil.]]
ATT.Icon = Material("entities/attachs/cod2019_stock_origin12.png", "mips smooth")
ATT.SortOrder = 6.5
ATT.Desc_Pros = {
}
ATT.Desc_Cons = {
}
ATT.AutoStats = true
ATT.Category = "cod2019_stocks"

ATT.Model = "models/weapons/cod2019/attachs/stocks/stock_origin12.mdl"

table.Merge(ATT, stats_light)

ATT.Scale = 1
ATT.ModelOffset = Vector(0, 0, 0)

ARC9.LoadAttachment(ATT, "cod2019_stock_origin12")