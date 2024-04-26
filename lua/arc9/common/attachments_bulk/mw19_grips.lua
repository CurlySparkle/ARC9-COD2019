local ATT = {}
//////////////////////////////////////////////// -- Ammo Types
/////////////////////////// -- Shared
local warzonestats = GetConVar("arc9_mw19_stats_warzone"):GetBool() -- Warzone Stat Variable

//////////////////////////////////////////////// -- Grip Attachments
/////////////////////////// -- cod2019_attach_grip_foregrip_side
ATT = {}

ATT.PrintName = "ARC Foregrip"
ATT.CompactName = "ARC"
ATT.Description = "Extended foregrip reduces vertical recoil and provides stability from the hip for fast paced guerilla tactics."

ATT.Icon = Material("entities/attachs/cod2019_attach_grip_origin.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/grips/grip_origin12.mdl"

ATT.SortOrder = 1
ATT.Category = "cod2019_grips_side"
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Folder = ARC9:GetPhrase("mw19_folder_side2")

if !warzonestats then -- Regular Stats
	ATT.AimDownSightsTimeAdd = 0.019
	ATT.VisualRecoilMult = 0.8
	ATT.RecoilMult = 0.8
	ATT.SpeedMult = 0.96
	ATT.SpeedMultSights = 0.84
else
	ATT.AimDownSightsTimeAdd = 0.011
	ATT.VisualRecoilMult = 0.91
	ATT.RecoilMult = 0.91
	ATT.SpreadMultHipFire = 0.947
	ATT.SpeedMult = 0.98
	ATT.SpeedMultSights = 0.85
	ATT.RecoilRandomSideMult = 0.95
end

ATT.LHIK_Priority = 10
ATT.LHIK = true

ATT.ModelOffset = Vector(0, 0, 0)
ATT.ModelAngleOffset = Angle(0, 0, 180)

ARC9.LoadAttachment(ATT, "cod2019_attach_grip_foregrip_side")

/////////////////////////// -- cod2019_attach_grip_support
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "Grip Support"
ATT.CompactName = "Grip S."
ATT.Description = "Lets you use grips on your pistols. (Why? i dunno but it looks cool???)"

ATT.SortOrder = 1
ATT.AutoStats = true
ATT.Category = "cod2019_grip_pistols"
ATT.Folder = "Grips"

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_underbarrel") .. " (MW19)",
        Pos = Vector(-0.2, 0, 0.05),
        Ang = Angle(0, 0, 180),
        Icon_Offset = Vector(-0.2, 0, 1),
        Category = "cod2019_grip",
		Scale = 1,
		RejectAttachments = { 
		["csgo_cod2019_angled"] = true,
		["csgo_cod2019_angled_tactical"] = true 
		},
    }
}

ARC9.LoadAttachment(ATT, "cod2019_attach_grip_support")

/////////////////////////// -- cod2019_grips_none
ATT = {}

ATT.PrintName = "Alt Hold"
ATT.CompactName = "Alt Hold"
ATT.Description = "Changes the holding style of the weapon."

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

/////////////////////////// -- cod2019_grips_alt_cclamp
ATT = {}

ATT.PrintName = "C-Clamp Holding"
ATT.CompactName = "C-Clamp"
ATT.Description = "Changes the holding style of the weapon to a more \"tactical\" and larping experience aka, the C-clamp."

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

/////////////////////////// -- cod2019_grips_alt_nocclamp
ATT = {}

ATT.PrintName = "Kill the C-Clamp"
ATT.CompactName = "No C"
ATT.Description = "Kills the Clamp :D"

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

/////////////// -- cod2019_striker45_noclamp
ATT = {}

ATT.PrintName = "No Clamp"
ATT.CompactName = "No Clamp"
ATT.Description = "Kill the Clamp for the lulz"

ATT.Model = "models/weapons/cod2019/attachs/ik/striker45_noclamp.mdl"

ATT.Folder = ARC9:GetPhrase("mw19_folder_other2")

ATT.SortOrder = 2.1
ATT.Category = "cod2019_striker45_grip"
ATT.MenuCategory = "ARC9 - MW2019 Attachments"

ATT.LHIK_Priority = 10
ATT.LHIK = true

ATT.ModelOffset = Vector(0, 0, 0)
ATT.ModelAngleOffset = Angle(0, 0, 180)

ARC9.LoadAttachment(ATT, "cod2019_striker45_noclamp")

/////////////////////////// -- cod2019_grips_none2
ATT = {}

ATT.PrintName = "Alt Hold II"
ATT.CompactName = "Alt Hold II"
ATT.Description = "Changes the holding style of the weapon."

ATT.Icon = Material("entities/attachs/cod2019_grip_none.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/origin12/grip_none_origin12_alt.mdl"

ATT.SortOrder = 0
ATT.Category = "cod2019_origin12_grip"
ATT.Folder = ARC9:GetPhrase("mw19_folder_other2")

ATT.LHIK_Priority = 5
ATT.LHIK = true

ATT.ModelOffset = Vector(-4, -0.1, 1.5)
ATT.ModelAngleOffset = Angle(0, 0, 180)

ARC9.LoadAttachment(ATT, "cod2019_grips_none2")
