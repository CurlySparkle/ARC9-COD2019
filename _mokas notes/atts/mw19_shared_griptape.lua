local ATT = {}
//////////////////////////////////////////////// -- Stock Attachments
/////////////////////////// -- Shared
local warzonestats = GetConVar("arc9_mw19_stats_warzone"):GetBool() -- Warzone Stat Variable

//////////////////////////////////////////////// -- Pistol Grips
/////////////////////////// -- cod2019_griptape_01
ATT = {}

ATT.PrintName = "Granulated Grip Tape"
ATT.Description = ""
ATT.Icon = Material("entities/attachs/cod2019_pistolgrip_tape01.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Free = false

ATT.SortOrder = 1
ATT.Category = "cod2019_pistolgrip"
ATT.ActivateElements = {"pgrip_none","pgrip_01"}

--ATT.Model = ""
ATT.BoneMerge = true

if !warzonestats then -- Regular Stats
	ATT.SpeedSightsMult = 0.996
else -- Warzone Stats
	ATT.SpeedSightsMult = 0.996
end

ARC9.LoadAttachment(ATT, "cod2019_griptape_01")

/////////////// -- cod2019_griptape_02
ATT = {}

ATT.PrintName = "Rubberized Grip Tape"
ATT.Description = ""
ATT.Icon = Material("entities/attachs/cod2019_pistolgrip_tape01.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Free = false

ATT.SortOrder = 2
ATT.Category = "cod2019_pistolgrip"
ATT.ActivateElements = {"pgrip_none","pgrip_02"}

--ATT.Model = ""
ATT.BoneMerge = true

if !warzonestats then -- Regular Stats
	ATT.RecoilMult = 0.994
	ATT.VisualRecoilMult = 0.994
else -- Warzone Stats
	ATT.RecoilMult = 0.994
	ATT.VisualRecoilMult = 0.994
end

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["pgrip_02"] then
        model:SetSkin(1)
    else
        model:SetSkin(0)
    end
end

ARC9.LoadAttachment(ATT, "cod2019_griptape_02")

/////////////// -- cod2019_griptape_03
ATT = {}

ATT.PrintName = "Stippled Grip Tape"
ATT.Description = ""
ATT.Icon = Material("entities/attachs/cod2019_pistolgrip_tape01.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Free = false

ATT.SortOrder = 3
ATT.Category = "cod2019_pistolgrip"
ATT.ActivateElements = {"pgrip_none","pgrip_03"}

--ATT.Model = ""
ATT.BoneMerge = true

if !warzonestats then -- Regular Stats
		ATT.AimDownSightsTimeAdd = -0.011
	ATT.SprintToFireTimeAdd = -0.037
else -- Warzone Stats
	ATT.AimDownSightsTimeAdd = -0.011
	ATT.SprintToFireTimeAdd = -0.037
end

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["pgrip_03"] then
        model:SetSkin(2)
    else
        model:SetSkin(0)
    end
end

ARC9.LoadAttachment(ATT, "cod2019_griptape_03")

//////////////////////////////////////////////// -- Front GripTapes
/////////////////////////// -- cod2019_griptape_front_01
ATT = {}

ATT.PrintName = "Granulated Grip Tape"
ATT.Description = ""
ATT.Icon = Material("entities/attachs/cod2019_pistolgrip_tape01.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Free = false

ATT.SortOrder = 1
ATT.Category = "cod2019_pistolgrip_front"
ATT.ActivateElements = {"pgrip_none","pgrip_01"}

--ATT.Model = ""
ATT.BoneMerge = true

if !warzonestats then -- Regular Stats
	ATT.SpeedSightsMult = 0.996
else -- Warzone Stats
	ATT.SpeedSightsMult = 0.996
end

ARC9.LoadAttachment(ATT, "cod2019_griptape_front_01")

/////////////// -- cod2019_griptape_front_02
ATT = {}

ATT.PrintName = "Rubberized Grip Tape"
ATT.Description = ""
ATT.Icon = Material("entities/attachs/cod2019_pistolgrip_tape01.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Free = false

ATT.SortOrder = 2
ATT.Category = "cod2019_pistolgrip_front"
ATT.ActivateElements = {"pgrip_none","pgrip_02"}

--ATT.Model = ""
ATT.BoneMerge = true

if !warzonestats then -- Regular Stats
	ATT.RecoilMult = 0.994
	ATT.VisualRecoilMult = 0.994
else -- Warzone Stats
	ATT.RecoilMult = 0.994
	ATT.VisualRecoilMult = 0.994
end

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["pgrip_02"] then
        model:SetSkin(1)
    else
        model:SetSkin(0)
    end
end

ARC9.LoadAttachment(ATT, "cod2019_griptape_front_02")

/////////////// -- cod2019_griptape_front_03
ATT = {}

ATT.PrintName = "Stippled Grip Tape"
ATT.Description = ""
ATT.Icon = Material("entities/attachs/cod2019_pistolgrip_tape01.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Free = false

ATT.SortOrder = 3
ATT.Category = "cod2019_pistolgrip_front"
ATT.ActivateElements = {"pgrip_none","pgrip_03"}

--ATT.Model = ""
ATT.BoneMerge = true

if !warzonestats then -- Regular Stats
		ATT.AimDownSightsTimeAdd = -0.011
	ATT.SprintToFireTimeAdd = -0.037
else -- Warzone Stats
	ATT.AimDownSightsTimeAdd = -0.011
	ATT.SprintToFireTimeAdd = -0.037
end

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["pgrip_03"] then
        model:SetSkin(2)
    else
        model:SetSkin(0)
    end
end

ARC9.LoadAttachment(ATT, "cod2019_griptape_front_03")