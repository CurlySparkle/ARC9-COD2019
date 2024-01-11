local ATT = {}

----------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Bipod"
ATT.CompactName = "Bipod"
ATT.Description = [[Deploys the bipod for better recoil and accuracy.]]

ATT.Icon = Material("entities/attachs/cod2019_lm_raal_bipod.png", "mips smooth")

ATT.SortOrder = 0
ATT.Category = "cod2019_raal_grip"
ATT.MenuCategory = "ARC9 - MW2019 Attachments"

ATT.Model = "models/weapons/cod2019/attachs/weapons/raal/attachment_vm_lm_slima_bipod.mdl"
ATT.BoneMerge = true
ATT.ActivateElements = {"bipod_none"}

ATT.Bipod = true

ATT.AimDownSightsTimeAdd = 0.19
ATT.VisualRecoilMult = 0.8
ATT.RecoilMult = 0.8
ATT.SpeedMult = 0.96
ATT.SpeedMultSights = 0.84
ATT.SpreadBipod = -0.05

ATT.BipodPos = Vector(-1.5, -4, 1)
ATT.BipodAng = Angle(0, 0, 0)

ARC9.LoadAttachment(ATT, "cod2019_raal_grip_bipod")