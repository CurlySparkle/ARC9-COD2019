local ATT = {}
-------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "XRK 30.0 Sport"
ATT.CompactName = "XRK 30"
ATT.Description = [[Longer barrel with a 10 round tube. Tightens pellet spread, extends range, and carries extra ammo at the cost of agility.]]
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/sh/model680/cod2019_sh_model680_barrel_long.png", "mips smooth")
ATT.AutoStats = true

ATT.Free = false

ATT.Model = "models/weapons/cod2019/attachs/weapons/model680/attachment_vm_sh_romeo870_barrel_long.mdl"
ATT.BoneMerge = true

ATT.SpreadMult = 0.9
ATT.ClipSizeOverride = 10
ATT.AimDownSightsTimeMult = 1.15
ATT.RangeMaxMult = 1.1
ATT.RangeMinMult = 1.1

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_model680_barrels"}
ATT.ActivateElements = {"barrel_none","front_sight_none","barrel_long"}

ARC9.LoadAttachment(ATT, "cod2019_model680_barrel_mid")
-------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "12 Gauge 6-R Mags"
ATT.CompactName = [[6-R Mags]]
ATT.Icon = Material("entities/attachs/sh/model680/cod2019_sh_model680_mag.png", "mips smooth")
ATT.Description = [[Custom XRK Eagle's Claw receiver with built in mag well to use 6-round detachable magazines for faster reloads.]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0
ATT.Free = true

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_model680_mag"}
ATT.ActivateElements = {"shot_mag"}

ATT.Model = "models/weapons/cod2019/attachs/weapons/model680/attachment_vm_sh_romeo870_mag.mdl"
ATT.DropMagazineModel = "models/weapons/cod2019/attachs/weapons/model680/attachment_vm_sh_romeo870_mag_phys.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(0, 0, 0)
ATT.ModelAngleOffset = Angle(0, 0, 0)

ATT.ShotgunReload = false
ATT.BoneMerge = true

ATT.ShouldDropMag = false
ATT.ShouldDropMagEmpty = false

ATT.ClipSizeOverride = 6
ATT.AimDownSightsTimeMult = 1.05

ARC9.LoadAttachment(ATT, "cod2019_model680_mag_6")
-------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "12 Gauge 8-R Mags"
ATT.CompactName = [[8-R Mags]]
ATT.Icon = Material("entities/attachs/sh/model680/cod2019_sh_model680_mag.png", "mips smooth")
ATT.Description = [[Custom XRK Eagle's Claw receiver with built in mag well to use 6-round detachable magazines for faster reloads.]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0
ATT.Free = true

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_model680_mag"}
ATT.ActivateElements = {"shot_mag"}

ATT.Model = "models/weapons/cod2019/attachs/weapons/model680/attachment_vm_sh_romeo870_xmag.mdl"
ATT.DropMagazineModel = "models/weapons/cod2019/attachs/weapons/model680/attachment_vm_sh_romeo870_mag_phys.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(0, 0, 0)
ATT.ModelAngleOffset = Angle(0, 0, 0)

ATT.ShotgunReload = false
ATT.BoneMerge = true

ATT.ShouldDropMag = false
ATT.ShouldDropMagEmpty = false

ATT.ClipSizeOverride = 8
ATT.AimDownSightsTimeMult = 1.07

ARC9.LoadAttachment(ATT, "cod2019_model680_mag_8")