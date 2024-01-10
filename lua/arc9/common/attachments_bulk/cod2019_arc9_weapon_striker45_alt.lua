local ATT = {}
----------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "No Clamp"
ATT.CompactName = "No Clamp"
ATT.Description = [[Kill the Clamp for the lulz]]

--ATT.Icon = Material("entities/attachs/cod2019_grip_stubby02.png", "mips smooth")

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