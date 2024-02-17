local statcon = GetConVar("arc9_mw19_stats_warzone"):GetBool()

local ATT = {}
------------------------------------------------------------------ SIDE GRIPS
ATT = {}

ATT.PrintName = "ARC Foregrip"
ATT.CompactName = "ARC"
ATT.Description = [[Extended foregrip reduces vertical recoil and provides stability from the hip for fast paced guerilla tactics.]]

ATT.Icon = Material("entities/attachs/cod2019_attach_grip_origin.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/grips/grip_origin12.mdl"

ATT.SortOrder = 1
ATT.Category = "cod2019_grips_side"
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Folder = ARC9:GetPhrase("mw19_folder_side2")

if statcon then
	ATT.AimDownSightsTimeAdd = 0.011
	ATT.VisualRecoilMult = 0.91
	ATT.RecoilMult = 0.91
	ATT.SpreadMultHipFire = 0.947
	ATT.SpeedMult = 0.98
	ATT.SpeedMultSights = 0.85
	ATT.RecoilRandomSideMult = 0.95
else
	ATT.AimDownSightsTimeAdd = 0.019
	ATT.VisualRecoilMult = 0.8
	ATT.RecoilMult = 0.8
	ATT.SpeedMult = 0.96
	ATT.SpeedMultSights = 0.84
end

ATT.LHIK_Priority = 10
ATT.LHIK = true

ATT.ModelOffset = Vector(0, 0, 0)
ATT.ModelAngleOffset = Angle(0, 0, 180)

ARC9.LoadAttachment(ATT, "cod2019_attach_grip_foregrip_side")
------------------------------------------------------------------ GRIP NONE
ATT = {}

ATT.PrintName = "Alt Hold"
ATT.CompactName = "Alt Hold"
ATT.Description = [[Changes the holding style of the weapon.]]

ATT.Icon = Material("entities/attachs/cod2019_grip_none.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/grips/grip_none.mdl"

ATT.SortOrder = 0
ATT.Category = "cod2019_grip_none"
ATT.Folder = ARC9:GetPhrase("mw19_folder_other2")

ATT.LHIK_Priority = 5
ATT.LHIK = true

ATT.ModelOffset = Vector(0, 0, 0)
ATT.ModelAngleOffset = Angle(0, 0, 180)

ARC9.LoadAttachment(ATT, "cod2019_grips_none")
------------------------------------------------------------------ 
ATT = {}

ATT.PrintName = "C-Clamp Holding"
ATT.CompactName = "C-Clamp"
ATT.Description = [[Changes the holding style of the weapon to a more "tactical" and larping experience aka, the C-clamp.]]

ATT.Icon = Material("entities/attachs/cod2019_grip_none.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/grips/grip_cclamp.mdl"

ATT.SortOrder = 0
ATT.Category = "cod2019_grip_cclamp"
ATT.Folder = ARC9:GetPhrase("mw19_folder_other2")

ATT.LHIK_Priority = 5
ATT.LHIK = true

ATT.ModelOffset = Vector(0, 0, 0)
ATT.ModelAngleOffset = Angle(0, 0, 180)

ARC9.LoadAttachment(ATT, "cod2019_grips_alt_cclamp")
------------------------------------------------------------------ 
ATT = {}

ATT.PrintName = "Kill the C-Clamp"
ATT.CompactName = "No C"
ATT.Description = [[Kills the Clamp :D]]

ATT.Icon = Material("entities/attachs/cod2019_grip_none.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/grips/grip_noclamp.mdl"

ATT.SortOrder = 0
ATT.Category = "cod2019_grip_noclamp"
ATT.Folder = ARC9:GetPhrase("mw19_folder_other2")

ATT.LHIK_Priority = 5
ATT.LHIK = true

ATT.ModelOffset = Vector(0, 0, 0)
ATT.ModelAngleOffset = Angle(0, 0, 180)

ARC9.LoadAttachment(ATT, "cod2019_grips_alt_nocclamp")