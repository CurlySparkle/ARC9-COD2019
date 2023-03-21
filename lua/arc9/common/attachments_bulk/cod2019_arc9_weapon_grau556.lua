local ATT = {}
----------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = [[Extended Magazine]]
ATT.CompactName = [[Ext Mag]]
ATT.Icon = Material("entities/attachs/ext_mag.png")
ATT.Description = [[Increased ammo capacity by 50%, at the cost of increased reload time.]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 1
ATT.Free = false
ATT.BoneMerge = true

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_grau556_mag"}

ATT.ActivateElements = {"mag_none"}
ATT.Model = "models/weapons/cod2019/attachs/mag/grau556_xmag.mdl"
ATT.DropMagazineModel = "models/weapons/cod2019/attachs/mag/grau556_xmag.mdl"

ATT.ClipSizeOverride = 50
ATT.ReloadTimeMult = 1.1

ARC9.LoadAttachment(ATT, "cod2019_grau556_xmag")