local ATT = {}
------------------------------------------------------------------
ATT = {}

ATT.PrintName = [[Extended Rounds]]
ATT.CompactName = [[Ext Rnds]]
ATT.Icon = Material("entities/attachs/cod2019_etc_extended_ammo.png")
ATT.Description = [[Increased rounds capacity by 50%, at the cost of increased reload time.]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 5
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Free = false

ATT.Category = {"cod2019_mag"}
ATT.ClipSizeMult = 1.5
ATT.ReloadTimeMult = 1.1

ATT.ActivateElements = {"ammo_extend","mag"}

ARC9.LoadAttachment(ATT, "cod2019_etc_ammo_extend")
------------------------------------------------------------------