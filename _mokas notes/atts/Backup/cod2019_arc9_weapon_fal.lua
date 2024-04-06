local ATT = {}
---------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "30-Rounds"
ATT.CompactName = "30-R"
ATT.Description = [[High capacity magazines hold 30 rounds with a moderate weight increase.]]
ATT.Icon = Material("entities/attachs/ar/fal/cod2019_ar_fal_xmags.png", "mips smooth")
ATT.AutoStats = true
ATT.Free = false
ATT.SortOrder = 1

ATT.Model = "models/weapons/cod2019/attachs/weapons/fal/attachment_vm_ar_falima_xmags.mdl"
ATT.DropMagazineModel = "models/weapons/cod2019/attachs/weapons/fal/attachment_vm_ar_falima_xmags.mdl"
ATT.BoneMerge = true

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_mag_fal"}
ATT.ActivateElements = {"mag_none","mag_xmag"}

ATT.ClipSizeOverride = 30
ATT.ReloadTimeMult = 1.13
ATT.AimDownSightsTimeMult = 1.1
ATT.DeployTimeMult = 1.05

ARC9.LoadAttachment(ATT, "cod2019_fal_mag_30")