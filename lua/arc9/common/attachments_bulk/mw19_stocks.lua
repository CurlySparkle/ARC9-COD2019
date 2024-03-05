local ATT = {}
//////////////////////////////////////////////// -- Stock Attachments
/////////////////////////// -- Shared
local warzonestats = GetConVar("arc9_mw19_stats_warzone"):GetBool() -- Warzone Stat Variable

//////////////////////////////////////////////// -- Stocks

local stats_vlight = { -- Shared stats for Very Light Stocks
	gmod = {
		SpeedMultSights = 1.17,
		AimDownSightsTimeAdd = -0.016,
		VisualRecoilMult = 1.02,
		RecoilMult = 1.02,
	},
	wz = {
		SpeedMultSights = 1.17,
		AimDownSightsTimeAdd = -0.016,
		VisualRecoilMult = 1.02,
		RecoilMult = 1.02,
	},
}

local stats_light = { -- Shared stats for Light Stocks
	gmod = {
		AimDownSightsTimeMult = 0.85,
		VisualRecoilMult = 1.1,
		RecoilUpMult = 1.13,
		RecoilSideMult = 1.13,
	},
	wz = {
		AimDownSightsTimeMult = 0.85,
		VisualRecoilMult = 1.1,
		RecoilUpMult = 1.13,
		RecoilSideMult = 1.13,
	},
}

local stats_medium = { -- Shared stats for Medium Stocks
	gmod = {
		AimDownSightsTimeAdd = -0.027,
	},
	wz = {
		AimDownSightsTimeAdd = -0.027,
	},
}

local stats_heavy = { -- Shared stats for Heavy Stocks
	gmod = {
		DeployTimeMult = 1.09,
		AimDownSightsTimeMult = 1.14,
		VisualRecoilMult = 0.9,
		RecoilUpMult = 0.85,
		RecoilSideMult = 0.85,
	},
	wz = {
		DeployTimeMult = 1.09,
		AimDownSightsTimeMult = 1.14,
		VisualRecoilMult = 0.9,
		RecoilUpMult = 0.85,
		RecoilSideMult = 0.85,
	},
}

local stats_vheavy = { -- Shared stats for Very Heavy Stocks
	gmod = {
		SpeedMultSights = 0.82,
		VisualRecoilMult = 0.9,
		RecoilMult = 0.9,
	},
	wz = {
		SpeedMultSights = 0.82,
		VisualRecoilMult = 0.9,
		RecoilMult = 0.9,
	},
}

local stats_none = { -- Shared stats for "No Stocks"
	gmod = {
		AimDownSightsTimeAdd = -0.039,
		VisualRecoilMult = 1.3,
		RecoilMult = 1.3,
		SpreadMultMove = 0.94,
		SpeedMult = 1.04,
		SpeedMultSights = 1.2,
	},
	wz = {
		AimDownSightsTimeAdd = -0.039,
		VisualRecoilMult = 1.3,
		RecoilMult = 1.3,
		SpreadMultMove = 0.94,
		SpeedMult = 1.04,
		SpeedMultSights = 1.2,
	},
}

/////////////////////////// -- cod2019_stock_vlk
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "VLK Stock"
ATT.CompactName = "VLK"
ATT.Description = "VLK stock that helps on aiming speed and has little of recoil control."
ATT.Icon = Material("entities/attachs/cod2019_stock_vlk.png", "mips smooth")
ATT.SortOrder = 2
ATT.Desc_Pros = {
}
ATT.Desc_Cons = {
}
ATT.AutoStats = true
ATT.Category = "cod2019_stocks"

ATT.Model = "models/weapons/cod2019/attachs/stocks/stock_vlk.mdl"

if !warzonestats then -- Regular Stats
	table.Merge(ATT, stats_light.gmod)
else -- Warzone Stats
	table.Merge(ATT, stats_light.wz)
end

ATT.Scale = 1
ATT.ModelOffset = Vector(0, 0, 0.03)

ARC9.LoadAttachment(ATT, "cod2019_stock_vlk")

/////////////////////////// -- cod2019_stock_amax
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "AMAX Stock"
ATT.CompactName = "AMAX"
ATT.Description = "AMAX stock that helps even more on aiming speed/recoil with the cost of handling speed."
ATT.Icon = Material("entities/attachs/cod2019_stock_amax.png", "mips smooth")
ATT.SortOrder = 1
ATT.Desc_Pros = {
}
ATT.Desc_Cons = {
}
ATT.AutoStats = true
ATT.Category = "cod2019_stocks"

ATT.Model = "models/weapons/cod2019/attachs/stocks/stock_amax.mdl"

if !warzonestats then -- Regular Stats
	table.Merge(ATT, stats_vlight.gmod)
else -- Warzone Stats
	table.Merge(ATT, stats_vlight.wz)
end

ATT.Scale = 1
ATT.ModelOffset = Vector(0, 0, 0.05)

ARC9.LoadAttachment(ATT, "cod2019_stock_amax")

/////////////////////////// -- cod2019_stock_slima
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "Slima Stock"
ATT.CompactName = "Slima"
ATT.Description = "Slima stock that improves aiming speed with the cost of more recoil and less handling."
ATT.Icon = Material("entities/attachs/cod2019_stock_slima.png", "mips smooth")
ATT.SortOrder = 3
ATT.Desc_Pros = {
}
ATT.Desc_Cons = {
}
ATT.AutoStats = true
ATT.Category = "cod2019_stocks"

ATT.Model = "models/weapons/cod2019/attachs/stocks/stock_slima.mdl"

if !warzonestats then -- Regular Stats
	table.Merge(ATT, stats_medium.gmod)
else -- Warzone Stats
	table.Merge(ATT, stats_medium.wz)
end

ATT.Scale = 1
ATT.ModelOffset = Vector(0, 0, 0.1)

ARC9.LoadAttachment(ATT, "cod2019_stock_slima")

/////////////////////////// -- cod2019_stock_m4
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "M4 Stock"
ATT.CompactName = "M4"
ATT.Description = "M4 stock that improves recoil with the cost of less speed."
ATT.Icon = Material("entities/attachs/cod2019_stock_m4.png", "mips smooth")
ATT.SortOrder = 4
ATT.Desc_Pros = {
}
ATT.Desc_Cons = {
}
ATT.AutoStats = true
ATT.Category = "cod2019_stocks"

ATT.Model = "models/weapons/cod2019/attachs/stocks/stock_m4.mdl"

if !warzonestats then -- Regular Stats
	table.Merge(ATT, stats_heavy.gmod)
else -- Warzone Stats
	table.Merge(ATT, stats_heavy.wz)
end

ATT.Scale = 1
ATT.ModelOffset = Vector(0, 0, 0)

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["universal_camo"] then
        model:SetSkin(1)
    else
        model:SetSkin(0)
    end
end

ARC9.LoadAttachment(ATT, "cod2019_stock_m4")

/////////////////////////// -- cod2019_stock_origin12
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "Origin Stock"
ATT.CompactName = "Origin"
ATT.Description = "Origin stock that improves ADS speed with the cost of more recoil."
ATT.Icon = Material("entities/attachs/cod2019_stock_origin12.png", "mips smooth")
ATT.SortOrder = 2
ATT.Desc_Pros = {
}
ATT.Desc_Cons = {
}
ATT.AutoStats = true
ATT.Category = "cod2019_stocks"

ATT.Model = "models/weapons/cod2019/attachs/stocks/stock_origin12.mdl"

if !warzonestats then -- Regular Stats
	table.Merge(ATT, stats_light.gmod)
else -- Warzone Stats
	table.Merge(ATT, stats_light.wz)
end

ATT.Scale = 1
ATT.ModelOffset = Vector(0, 0, 0)

ARC9.LoadAttachment(ATT, "cod2019_stock_origin12")