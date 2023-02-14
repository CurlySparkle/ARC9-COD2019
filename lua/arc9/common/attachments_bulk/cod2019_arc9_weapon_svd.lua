local ATT = {}

ATT = {}

ATT.PrintName = "Short Barrel"
ATT.CompactName = "Short"
ATT.Description = [[Short-length barrel. Offers superior handling at the cost of performance.]]
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/go_famas_barrel_short.png", "mips smooth")
ATT.AutoStats = true

ATT.Free = false

ATT.Category = {"go_svd_barrel"}
ATT.ActivateElements = {"barrel_short"}

ATT.AimDownSightsTimeMult = 0.85
ATT.SprintToFireTimeMult = 0.85
ATT.RecoilMult = 1.25

ATT.RangeMaxMult = 0.85
ATT.RangeMinMult = 0.85
ATT.PhysBulletMuzzleVelocityMult = 0.9

ARC9.LoadAttachment(ATT, "csgo_svd_barrel_short")
------------------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = [[20-Rounder]]
ATT.CompactName = [[20-Round]]
ATT.Icon = Material("entities/attachs/ext_mag.png")
ATT.Description = [[Increased ammo capacity to 20 rounds, at the cost of increased reload time and less handling speed.]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 5
ATT.MenuCategory = "ARC9 - CSGO Attachments"
ATT.Free = false

ATT.Category = {"go_svd_mag"}
ATT.ClipSizeOverride = 20
ATT.ReloadTimeMult = 1.1
ATT.AimDownSightsTimeMult = 1.15
ATT.SprintToFireTimeMult = 1.15

ATT.ActivateElements = {"mag"}

ARC9.LoadAttachment(ATT, "csgo_svd_mag_extended")