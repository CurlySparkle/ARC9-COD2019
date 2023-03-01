local ATT = {}
----------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = [[40-Rounder]]
ATT.CompactName = [[40-Round]]
ATT.Icon = Material("entities/attachs/go_mp5_mag_40.png")
ATT.Description = [[Long magazine with 40 rounds, at the cost of increased reload time and less handling speed.]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 1
ATT.Free = false

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_mag_cx9"}
ATT.ActivateElements = {"mag_mp5"}
ATT.ClipSizeOverride = 40
ATT.ReloadTimeMult = 1.15
ATT.AimDownSightsTimeMult = 1.15
ATT.SprintToFireTimeMult = 1.15

ARC9.LoadAttachment(ATT, "cod2019_cx9_mag_extend")
----------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Silenced Barrel"
ATT.CompactName = "SB"
ATT.Description = [[Long-length Silenced barrel. Offers superior handling at the cost of performance.]]
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/cod2019_cx9_barrel_silenced.png", "mips smooth")
ATT.AutoStats = true

ATT.Free = false

ATT.Model = "models/weapons/cod2019/attachs/barrels/cx9_barrel_silenced.mdl"
ATT.BoneMerge = true

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_cx9_barrel"}
ATT.ActivateElements = {"barrel_none","barrel_silenced"}

ATT.Silencer = true
ATT.MuzzleParticleOverride = "weapon_muzzle_flash_assaultrifle_silenced2"
ATT.MuzzleParticleOverride_Priority = 10
--ATT.Override_MuzzleEffectAttachment = 1
ATT.MuzzleDevice = true

ATT.AimDownSightsTimeMult = 1.25
ATT.SprintToFireTimeMult = 1.25
ATT.RecoilMult = 0.85

ATT.RangeMaxMult = 1.25
ATT.RangeMinMult = 1.25
ATT.PhysBulletMuzzleVelocityMult = 1.25

ARC9.LoadAttachment(ATT, "cod2019_cx9_barrel_silenced")
---------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = [[Stock Adapter]]
ATT.CompactName = [[Adapter Stock]]
ATT.Icon = Material("entities/attachs/cod2019_cx9_stock_adapter.png")
ATT.Description = [[Aluminium mounting point, allows for using custom stock options.]]
ATT.SortOrder = 0
ATT.Free = false

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_cx9_stock"}
ATT.Model = "models/weapons/cod2019/attachs/stock/cx9_stock_adapter.mdl"
ATT.BoneMerge = true

ATT.IconOffset = Vector(0, 0, 0)
ATT.ActivateElements = {"stock_none"}

ATT.RecoilUpMult = 0.95

ATT.Attachments = {
    {
        PrintName = "Stock",
        Pos = Vector(-0.4, 0, 0.6),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(-3, 0, 0),
        Category = {"csgo_stock"},
		Scale = 1
    }
}

ARC9.LoadAttachment(ATT, "cod2019_cx9_stock_adapter")
---------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = [[Skeletal Stock]]
ATT.CompactName = [[Skeletal]]
ATT.Icon = Material("entities/attachs/cod2019_cx9_stock_skeletal.png")
ATT.Description = [[Skeletal Stock, Provides more handling speed at the cost of recoil.]]
ATT.SortOrder = 0.5
ATT.Free = false

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_cx9_stock"}
ATT.Model = "models/weapons/cod2019/attachs/stock/cx9_stock_skeleton.mdl"
ATT.BoneMerge = true

ATT.IconOffset = Vector(0, 0, 0)
ATT.ActivateElements = {"stock_none"}

ATT.RecoilUpMult = 1.15
ATT.AimDownSightsTimeMult = 0.85
ATT.SprintToFireTimeMult = 0.85

ARC9.LoadAttachment(ATT, "cod2019_cx9_stock_skeleton")