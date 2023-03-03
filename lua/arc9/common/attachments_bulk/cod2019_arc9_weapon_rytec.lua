local ATT = {}

----------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Short Barrel"
ATT.CompactName = "Short"
ATT.Description = [[Short-length barrel. Offers superior handling at the cost of performance.]]
ATT.SortOrder = 0

ATT.Icon = Material("entities/attachs/cod2019_rytec_barrel_short.png", "mips smooth")
ATT.AutoStats = true

ATT.Free = false

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_rytec_barrel"}
ATT.ActivateElements = {"barrel_short"}

ATT.AimDownSightsTimeMult = 0.85
ATT.SprintToFireTimeMult = 0.85
ATT.RecoilMult = 1.25

ATT.RangeMaxMult = 0.85
ATT.RangeMinMult = 0.85
ATT.PhysBulletMuzzleVelocityMult = 0.9

ARC9.LoadAttachment(ATT, "cod2019_rytec_barrel_short")
----------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Long Barrel"
ATT.CompactName = "Long"
ATT.Description = [[Short-length barrel. Offers superior handling at the cost of performance.]]
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/cod2019_rytec_barrel_long.png", "mips smooth")
ATT.AutoStats = true

ATT.Free = false

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_rytec_barrel"}
ATT.ActivateElements = {"barrel_long"}

ATT.AimDownSightsTimeMult = 1.25
ATT.SprintToFireTimeMult = 1.25
ATT.RecoilMult = 0.85

ATT.RangeMaxMult = 1.25
ATT.RangeMinMult = 1.25
ATT.PhysBulletMuzzleVelocityMult = 1.25

ARC9.LoadAttachment(ATT, "cod2019_rytec_barrel_long")
----------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = [[10-Rounder]]
ATT.CompactName = [[10-Round]]
ATT.Icon = Material("entities/attachs/cod2019_rytec_mag_10.png")
ATT.Description = [[Long magazine with 10 rounds. Improves handling.]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 1
ATT.Free = false

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_rytec_mag"}
ATT.ActivateElements = {"mag"}
ATT.ClipSizeOverride = 10
ATT.ReloadTimeMult = 1.15
ATT.AimDownSightsTimeMult = 1.15
ATT.SprintToFireTimeMult = 1.15

ARC9.LoadAttachment(ATT, "cod2019_rytec_mag_10")