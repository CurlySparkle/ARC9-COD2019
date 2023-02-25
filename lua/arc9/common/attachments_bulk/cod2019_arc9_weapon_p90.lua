local ATT = {}
----------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = [[Default Mag]]
ATT.CompactName = [[Default Mag]]
--ATT.Icon = Material("entities/attachs/go_mp5_mag_40.png")
ATT.Description = [[Default Magazine for the P90]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 1
ATT.Free = false
ATT.BoneMerge = true

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_mag_p90"}
ATT.ActivateElements = {"mag_none"}
ATT.Model = "models/weapons/cod2019/attachs/mag/p90_mag.mdl"


ARC9.LoadAttachment(ATT, "cod2019_p90_mag_default")