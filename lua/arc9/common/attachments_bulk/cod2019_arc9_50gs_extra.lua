local ATT = {}

ATT = {}

ATT.PrintName = "rhik"
ATT.CompactName = "rhik"
ATT.Description = [[]]

--ATT.Icon = Material("entities/attachs/holdstyle.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/ik/rhik_50gs.mdl"

--ATT.MenuCategory = "ARC9 - CSGO Attachments"

ATT.SortOrder = 0
ATT.Category = "cod2019_50gs_rhik"

--ATT.LHIK_Priority = 1
--ATT.LHIK = true

ATT.RHIK_Priority = 3
ATT.RHIK = true

ATT.ModelOffset = Vector(0, 0, 0)
ATT.ModelAngleOffset = Angle(0, 0, 180)
--ATT.ModelBodygroups = "22300" 


ARC9.LoadAttachment(ATT, "cod2019_50gs_rhik")