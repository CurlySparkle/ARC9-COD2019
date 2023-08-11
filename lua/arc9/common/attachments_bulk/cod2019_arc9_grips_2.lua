local ATT = {}
------------------------------------------------------------------ SIDE GRIPS
ATT = {}

ATT.PrintName = "Foregrip"
ATT.CompactName = "Foregrip"
ATT.Description = [[Extended foregrip reduces vertical recoil and provides stability from the hip for fast paced guerilla tactics.]]

ATT.Icon = Material("entities/attachs/cod2019_attach_grip_origin.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/grips/grip_origin12.mdl"

ATT.SortOrder = 1
ATT.Category = "cod2019_grips_side"
ATT.MenuCategory = "ARC9 - MW2019 Attachments"

ATT.RecoilAutoControlMult = 1.1
ATT.RecoilMult = 0.9

ATT.AimDownSightsTimeMult = 1.05
ATT.SprintToFireTimeMult = 1.05

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

ATT.LHIK_Priority = 5
ATT.LHIK = true

ATT.ModelOffset = Vector(0, 0, 0)
ATT.ModelAngleOffset = Angle(0, 0, 180)

ARC9.LoadAttachment(ATT, "cod2019_grips_alt_cclamp")
------------------------------------------------------------------ 
ATT = {}

ATT.PrintName = "Kill the C-Clamp"
ATT.CompactName = "No C"
ATT.Description = [[Kills the c-clamp :D]]

ATT.Icon = Material("entities/attachs/cod2019_grip_none.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/grips/grip_noclamp.mdl"

ATT.SortOrder = 0
ATT.Category = "cod2019_grip_noclamp"

ATT.LHIK_Priority = 5
ATT.LHIK = true

ATT.ModelOffset = Vector(0, 0, 0)
ATT.ModelAngleOffset = Angle(0, 0, 180)

ARC9.LoadAttachment(ATT, "cod2019_grips_alt_nocclamp")