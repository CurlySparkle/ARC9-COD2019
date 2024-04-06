local ATT = {}
----------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "CX-38S"
ATT.CompactName = "CX-38S"
ATT.Description = [[Fully shrouded monolithic integral suppressor keeps the weapon silent and increases range for longer distance stealth assaults.]]
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/sm/cx9/cod2019_sm_cx9_barsillong.png", "mips smooth")
ATT.AutoStats = true

ATT.Free = false

ATT.Model = "models/weapons/cod2019/attachs/weapons/cx9/cx9_barrel_silenced.mdl"
ATT.BoneMerge = true

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_cx9_barrel"}
ATT.ActivateElements = {"barrel_none","barrel_silenced"}

ATT.Silencer = true
ATT.MuzzleParticleOverride = "muzzleflash_suppressed"
ATT.MuzzleDevice_Priority = 3
ATT.MuzzleDevice = true

ATT.AimDownSightsTimeMult = 1.11
ATT.DeployTimeMult = 1.12
ATT.RecoilMult = 0.91

ATT.RangeMaxMult = 1.12
ATT.RangeMinMult = 1.12

ARC9.LoadAttachment(ATT, "cod2019_cx9_barrel_silenced")
----------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "CX-38"
ATT.CompactName = "CX-38"
ATT.Description = [[412mm barrel with a guard extension increases muzzle velocity and extends range. Additional weight stabilizes shots at a small cost to mobility.]]
ATT.SortOrder = 1
ATT.Icon = Material("entities/attachs/sm/cx9/cod2019_sm_cx9_barlong.png", "mips smooth")
ATT.AutoStats = true
ATT.Free = false

ATT.Model = "models/weapons/cod2019/attachs/weapons/cx9/attachment_vm_sm_secho_barlong.mdl"
ATT.BoneMerge = false

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_cx9_barrel"}
ATT.ActivateElements = {"barrel_none","barrel_long"}

ATT.MuzzleDevice_Priority = 3
ATT.MuzzleDevice = true

ATT.AimDownSightsTimeMult = 1.11
ATT.DeployTimeMult = 1.12

ATT.RangeMaxMult = 1.12
ATT.RangeMinMult = 1.12
ATT.SpreadMult = 0.9

ATT.Element = {
    AttPosMods = {
        [3] = { -- slot of the weapon's attachment
            Pos = Vector(3, 0, 0),
            Ang = Angle(0,0,0),
        }
    }
}

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["muzzle"] then
        model:SetBodygroup(1,1)
    end
end

ARC9.LoadAttachment(ATT, "cod2019_cx9_barrel_long")
----------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "CX-38E"
ATT.CompactName = "CX-38E"
ATT.Description = [[445mm heavy weight polygonal rifled barrel with guard extension maxes out muzzle velocity for superior range.]]
ATT.SortOrder = 1
ATT.Icon = Material("entities/attachs/sm/cx9/cod2019_sm_cx9_barxlong.png", "mips smooth")
ATT.AutoStats = true
ATT.Free = false

ATT.Model = "models/weapons/cod2019/attachs/weapons/cx9/attachment_vm_sm_secho_barxlong.mdl"
ATT.BoneMerge = false

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_cx9_barrel"}
ATT.ActivateElements = {"barrel_none","barrel_long"}

ATT.MuzzleDevice_Priority = 3
ATT.MuzzleDevice = true

ATT.AimDownSightsTimeMult = 1.21
ATT.DeployTimeMult = 1.21

ATT.RangeMaxMult = 1.18
ATT.RangeMinMult = 1.18
ATT.SpreadMult = 0.9

ATT.Element = {
    AttPosMods = {
        [3] = { -- slot of the weapon's attachment
            Pos = Vector(7, 0, 0),
            Ang = Angle(0,0,0),
        }
    }
}

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["muzzle"] then
        model:SetBodygroup(1,1)
    end
end

ARC9.LoadAttachment(ATT, "cod2019_cx9_barrel_xlong")
---------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = [[Skeletal Stock]]
ATT.CompactName = [[Skeletal]]
ATT.Icon = Material("entities/attachs/sm/cx9/cod2019_sm_cx9_stockskel.png")
ATT.Description = [[Provides more handling speed at the cost of recoil.]]
ATT.SortOrder = 0.5
ATT.Free = false

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_cx9_stock"}
ATT.Model = "models/weapons/cod2019/attachs/weapons/cx9/cx9_stock_skeleton.mdl"
ATT.BoneMerge = true

ATT.IconOffset = Vector(0, 0, 0)
ATT.ActivateElements = {"stock_none"}

ATT.RecoilUpMult = 1.15
ATT.AimDownSightsTimeMult = 0.85
ATT.SprintToFireTimeMult = 0.85

ARC9.LoadAttachment(ATT, "cod2019_cx9_stock_skeleton")
---------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "50 Round Drums"
ATT.CompactName = "50 Round"
ATT.Description = [[Drum magazines hold 50 rounds of .45 ACP, maximizing ammo capacity at the expense of mobility.]]
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/sm/cx9/cod2019_sm_cx9_drummags.png", "mips smooth")
ATT.AutoStats = true
ATT.Free = false

ATT.Model = "models/weapons/cod2019/attachs/weapons/cx9/attachment_vm_sm_secho_drummags.mdl"
ATT.DropMagazineModel = "models/weapons/cod2019/attachs/weapons/cx9/attachment_vm_sm_secho_drummags.mdl"
ATT.BoneMerge = true

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_cx9_mag"}
ATT.ActivateElements = {"mag_none","mag_drum"}

ATT.AimDownSightsTimeMult = 1.05
ATT.SprintToFireTimeMult = 1.05
ATT.RecoilMult = 1.1

ATT.ClipSizeOverride = 50

ATT.BulletBones = {
    [1] = "j_bullet1",
    [2] = "j_bullet2",
    [3] = "j_bullet3",
}

ATT.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_01.ogg", 
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_02.ogg", 
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_03.ogg",
}

ARC9.LoadAttachment(ATT, "cod2019_cx9_mag_drum")