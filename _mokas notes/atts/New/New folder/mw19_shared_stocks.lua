local ATT = {}
//////////////////////////////////////////////// -- Stock Attachments
/////////////////////////// -- Shared
local warzonestats = GetConVar("arc9_mw19_stats_warzone"):GetBool() -- Warzone Stat Variable

//////////////////////////////////////////////// -- Buffer Tubes
/////////////////////////// -- cod2019_stock_tube_light
ATT = {}

ATT.PrintName = "Light Buffer Tube"
ATT.Description = ""
ATT.Icon = Material("entities/attachs/cod2019_stock_tube_light.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"

ATT.SortOrder = 1
ATT.Category = "cod2019_tube"
ATT.Folder = ARC9:GetPhrase("mw19_folder_tube")
ATT.ActivateElements = {"stock_adapter"}

ATT.Model = "models/weapons/cod2019/attachs/stocks/stock_light_tube.mdl"

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

if !warzonestats then -- Regular Stats
	ATT.AimDownSightsTimeMult = 0.95
	ATT.RecoilMult = 1.05
else -- Warzone Stats

end

ARC9.LoadAttachment(ATT, "cod2019_stock_tube_light")

/////////////////////////// -- cod2019_stock_tube_medium
ATT = {}

ATT.PrintName = "FSS CQ Buffer Tube"
ATT.Description = ""
ATT.Icon = Material("entities/attachs/cod2019_stock_tube_medium.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"

ATT.SortOrder = 1.1
ATT.Category = "cod2019_tube"
ATT.Folder = ARC9:GetPhrase("mw19_folder_tube")
ATT.ActivateElements = {"stock_adapter"}

ATT.Model = "models/weapons/cod2019/attachs/stocks/stock_tube_medium.mdl"

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

if !warzonestats then -- Regular Stats
	ATT.AimDownSightsTimeMult = 1.12
	ATT.RecoilMult = 0.87
else -- Warzone Stats

end

ARC9.LoadAttachment(ATT, "cod2019_stock_tube_medium")

/////////////////////////// -- cod2019_stock_tube_singuard
ATT = {}

ATT.PrintName = "Singuard Buffer Tube"
ATT.Description = ""
ATT.Icon = Material("entities/attachs/cod2019_stock_tube_singuard.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"

ATT.SortOrder = 1.1
ATT.Category = "cod2019_tube"
ATT.Folder = ARC9:GetPhrase("mw19_folder_tube")
ATT.ActivateElements = {"stock_adapter"}

ATT.Model = "models/weapons/cod2019/attachs/stocks/attachment_vm_tube_singuard.mdl"

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

if !warzonestats then -- Regular Stats
	ATT.AimDownSightsTimeMult = 0.92
	ATT.RecoilMult = 1.07
else -- Warzone Stats

end

ARC9.LoadAttachment(ATT, "cod2019_stock_tube_singuard")

//////////////////////////////////////////////// -- Stocks

local stats_vlight = { -- Shared stats for Stocks
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

local stats_light = { -- Shared stats for Muzzle Brake
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

local stats_medium = { -- Shared stats for Muzzle Brake
	gmod = {
		AimDownSightsTimeAdd = -0.027,
	},
	wz = {
		AimDownSightsTimeAdd = -0.027,
	},
}

local stats_heavy = { -- Shared stats for Muzzle Brake
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

local stats_vheavy = { -- Shared stats for Muzzle Brake
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

local stats_none = { -- Shared stats for Muzzle Brake
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

/////////////////////////// -- cod2019_stock_heavy
ATT = {}

ATT.PrintName = "FORGE TAC Stalker"
ATT.Description = ""
ATT.Icon = Material("entities/attachs/cod2019_stock_heavy.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"

ATT.SortOrder = 4
ATT.Category = "cod2019_stocks"

ATT.Model = "models/weapons/cod2019/attachs/stocks/attachment_vm_stock_heavy.mdl"
ATT.ModelOffset = Vector(-1.3, 0, -0.02)

if !warzonestats then -- Regular Stats
	ATT.DeployTimeMult = 1.05
	ATT.AimDownSightsTimeMult = 1.05
	ATT.VisualRecoilMult = 0.95
	ATT.RecoilUpMult = 0.95
	ATT.RecoilSideMult = 0.95
else -- Warzone Stats
	ATT.DeployTimeMult = 1.05
	ATT.AimDownSightsTimeMult = 1.05
	ATT.VisualRecoilMult = 0.95
	ATT.RecoilUpMult = 0.95
	ATT.RecoilSideMult = 0.95
end

ARC9.LoadAttachment(ATT, "cod2019_stock_heavy")

/////////////////////////// -- cod2019_stock_light
ATT = {}

ATT.PrintName = "FORGE TAC Ultralight"
ATT.Description = ""
ATT.Icon = Material("entities/attachs/cod2019_stock_light01.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"

ATT.SortOrder = 2
ATT.Category = "cod2019_stocks"

ATT.Model = "models/weapons/cod2019/attachs/stocks/attachment_vm_stock_light01.mdl"
ATT.ModelOffset = Vector(-1.3, 0, -0.02)

if !warzonestats then -- Regular Stats
	table.Merge(ATT, stats_light.gmod)
else -- Warzone Stats
	table.Merge(ATT, stats_light.wz)
end

ARC9.LoadAttachment(ATT, "cod2019_stock_light")

/////////////////////////// -- cod2019_stock_medium
ATT = {}

ATT.PrintName = "FSS Close Quarters"
ATT.Description = ""
ATT.Icon = Material("entities/attachs/cod2019_stock_medium01.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"

ATT.SortOrder = 3
ATT.Category = "cod2019_stocks"

ATT.Model = "models/weapons/cod2019/attachs/stocks/attachment_vm_stock_medium01.mdl"
ATT.ModelOffset = Vector(-1.3, 0, -0.03)

if !warzonestats then -- Regular Stats
	table.Merge(ATT, stats_medium.gmod)
else -- Warzone Stats
	table.Merge(ATT, stats_medium.wz)
end

ARC9.LoadAttachment(ATT, "cod2019_stock_medium")

/////////////////////////// -- cod2019_stock_heavy02
ATT = {}

ATT.PrintName = "FTAC Hunter"
ATT.Description = ""
ATT.Icon = Material("entities/attachs/cod2019_stock_heavy02.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"

ATT.SortOrder = 4
ATT.Category = "cod2019_stocks"

ATT.Model = "models/weapons/cod2019/attachs/stocks/attachment_vm_stock_heavy02.mdl"
ATT.ModelOffset = Vector(-1.3, 0, 0)

if !warzonestats then -- Regular Stats
	table.Merge(ATT, stats_heavy.gmod)
else -- Warzone Stats
	table.Merge(ATT, stats_heavy.wz)
end

ARC9.LoadAttachment(ATT, "cod2019_stock_heavy02")

/////////////////////////// -- cod2019_stock_singuard
ATT = {}

ATT.PrintName = "Singuard Arms Invader"
ATT.Description = ""
ATT.Icon = Material("entities/attachs/cod2019_stocks_mike4_stock_v2.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"

ATT.SortOrder = 3
ATT.Category = "cod2019_stocks"

ATT.Model = "models/weapons/cod2019/attachs/stocks/attachment_vm_ar_mike4_stock_v2.mdl"
ATT.ModelOffset = Vector(-1.3, 0, 0)

if !warzonestats then -- Regular Stats
	table.Merge(ATT, stats_medium.gmod)
else -- Warzone Stats
	table.Merge(ATT, stats_medium.wz)
end

ARC9.LoadAttachment(ATT, "cod2019_stock_singuard")

/////////////////////////// -- cod2019_stock_none
ATT = {}

ATT.PrintName = "No Stock"
ATT.Description = ""
ATT.Icon = Material("entities/attachs/cod2019_stock_non.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"

ATT.SortOrder = 1
ATT.Category = "cod2019_tube"
ATT.ActivateElements = {"stock_adapter","stock_none2"}

ATT.Model = "models/weapons/cod2019/attachs/stocks/attachment_vm_stock_no.mdl"
ATT.ModelOffset = Vector(0, 0, 0)

if !warzonestats then -- Regular Stats
	table.Merge(ATT, stats_none.gmod)
else -- Warzone Stats
	table.Merge(ATT, stats_none.wz)
end

ARC9.LoadAttachment(ATT, "cod2019_stock_none")
