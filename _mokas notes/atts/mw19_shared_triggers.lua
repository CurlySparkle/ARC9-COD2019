local ATT = {}
//////////////////////////////////////////////// -- Stock Attachments
/////////////////////////// -- Shared
local warzonestats = GetConVar("arc9_mw19_stats_warzone"):GetBool() -- Warzone Stat Variable

//////////////////////////////////////////////// -- Trigger Actions
/////////////////////////// -- cod2019_trigger_light
ATT = {}

ATT.PrintName = "Lightweight Trigger"
ATT.Description = ""
-- ATT.Icon = Material("entities/attachs/cod2019_pistolgrip_tape01.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Free = false

ATT.SortOrder = 1
ATT.Category = "cod2019_trigger"
ATT.ActivateElements = {"trigger_none"}

--ATT.Model = ""
ATT.BoneMerge = true

if !warzonestats then -- Regular Stats
	ATT.RPMMult = 1.13
	ATT.PostBurstDelayMult = 0.9
	ATT.TriggerDelayTimeMult = 0.25
	ATT.RecoilMult = 1.17
else -- Warzone Stats
	ATT.RPMMult = 1.25
	ATT.PostBurstDelayMult = 0.9
	ATT.TriggerDelayTimeMult = 0.05
end

ARC9.LoadAttachment(ATT, "cod2019_trigger_light")

/////////////////////////// -- cod2019_trigger_heavy
ATT = {}

ATT.PrintName = "Heavy Duty Trigger"
ATT.Description = ""
-- ATT.Icon = Material("entities/attachs/cod2019_pistolgrip_tape01.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Free = false

ATT.SortOrder = 1
ATT.Category = "cod2019_trigger"
ATT.ActivateElements = {"trigger_none"}

--ATT.Model = ""
ATT.BoneMerge = true

if !warzonestats then -- Regular Stats
	ATT.RPMMult = 0.75
	ATT.PostBurstDelayMult = 1.05
	ATT.TriggerDelayTimeMult = 1.1
	ATT.RecoilMult = 0.87
else -- Warzone Stats
	ATT.RPMMult = 0.75
	ATT.PostBurstDelayMult = 1.05
	ATT.TriggerDelayTimeMult = 1.1
end

ARC9.LoadAttachment(ATT, "cod2019_trigger_heavy")

/////////////////////////// -- cod2019_trigger_match
ATT = {}

ATT.PrintName = "Match Grade Trigger"
ATT.Description = ""
-- ATT.Icon = Material("entities/attachs/cod2019_pistolgrip_tape01.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Free = false

ATT.SortOrder = 1
ATT.Category = "cod2019_trigger"
ATT.ActivateElements = {"trigger_none"}

--ATT.Model = ""
ATT.BoneMerge = true

if !warzonestats then -- Regular Stats
	ATT.RPMMult = 1.15
	ATT.PostBurstDelayMult = 0.95
	ATT.SpreadMoveAdd = 1
	ATT.TriggerDelayTimeMult = 0.45
	ATT.RecoilMult = 1.11
else -- Warzone Stats
	ATT.RPMMult = 1.15
	ATT.PostBurstDelayMult = 0.95
	ATT.SpreadMoveAdd = 1
	ATT.TriggerDelayTimeMult = 0.45
end

ARC9.LoadAttachment(ATT, "cod2019_trigger_match")

//////////////////////////////////////////////// -- Sykov Trigger Actions
/////////////////////////// -- cod2019_sykov_trigger_light
ATT = {}

ATT.PrintName = "Lightweight Single-Action"
ATT.Description = ""
-- ATT.Icon = Material("entities/attachs/cod2019_pistolgrip_tape01.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Free = false

ATT.SortOrder = 1
ATT.Category = "cod2019_sykov_trigger"
ATT.ActivateElements = {"trigger_none"}

ATT.Model = "models/weapons/cod2019/attachs/weapons/m19/attachment_vm_pi_papa320_trigcust.mdl"
ATT.BoneMerge = false

if !warzonestats then -- Regular Stats
	ATT.RPMMult = 1.13
	ATT.PostBurstDelayMult = 0.9
	ATT.TriggerDelayTimeMult = 0.25
	ATT.RecoilMult = 1.17
else -- Warzone Stats
	ATT.RPMMult = 1.25
	ATT.PostBurstDelayMult = 0.9
	ATT.TriggerDelayTimeMult = 0.05
end

ARC9.LoadAttachment(ATT, "cod2019_sykov_trigger_light")

/////////////////////////// -- cod2019_sykov_trigger_heavy
ATT = {}

ATT.PrintName = "Heavyweight Double-Action"
ATT.Description = ""
-- ATT.Icon = Material("entities/attachs/cod2019_pistolgrip_tape01.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Free = false

ATT.SortOrder = 1
ATT.Category = "cod2019_sykov_trigger"
ATT.ActivateElements = {"trigger_none"}

ATT.Model = "models/weapons/cod2019/attachs/weapons/m19/attachment_vm_pi_papa320_trigcust02.mdl"
ATT.BoneMerge = false

if !warzonestats then -- Regular Stats
	ATT.RPMMult = 0.75
	ATT.PostBurstDelayMult = 1.05
	ATT.TriggerDelayTimeMult = 1.1
	ATT.RecoilMult = 0.87
else -- Warzone Stats
	ATT.RPMMult = 0.75
	ATT.PostBurstDelayMult = 1.05
	ATT.TriggerDelayTimeMult = 1.1
end

ARC9.LoadAttachment(ATT, "cod2019_sykov_trigger_heavy")

/////////////////////////// -- cod2019_sykov_trigger_match
ATT = {}

ATT.PrintName = "Lightweight Double-Action"
ATT.Description = ""
-- ATT.Icon = Material("entities/attachs/cod2019_pistolgrip_tape01.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Free = false

ATT.SortOrder = 1
ATT.Category = "cod2019_sykov_trigger"
ATT.ActivateElements = {"trigger_none"}

ATT.Model = "models/weapons/cod2019/attachs/weapons/m19/attachment_vm_pi_papa320_trigcust03.mdl"
ATT.BoneMerge = false

if !warzonestats then -- Regular Stats
	ATT.RPMMult = 1.15
	ATT.PostBurstDelayMult = 0.95
	ATT.SpreadMoveAdd = 1
	ATT.TriggerDelayTimeMult = 0.45
	ATT.RecoilMult = 1.11
else -- Warzone Stats
	ATT.RPMMult = 1.15
	ATT.PostBurstDelayMult = 0.95
	ATT.SpreadMoveAdd = 1
	ATT.TriggerDelayTimeMult = 0.45
end

ARC9.LoadAttachment(ATT, "cod2019_sykov_trigger_match")
