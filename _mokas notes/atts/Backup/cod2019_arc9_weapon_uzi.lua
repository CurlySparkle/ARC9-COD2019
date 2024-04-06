local ATT = {}
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = ".41 AE 32-Round Mags"
ATT.CompactName = ".41 AE 32-Round"
ATT.Description = [[Conversion kit to use 32-round magazines of higher caliber .41 AE ammunition for increased range and stopping power.]]

ATT.Icon = Material("entities/attachs/sm/uzi/cod2019_sm_uzi_mag_clip.png", "mips smooth")

ATT.RPM = 504
--ATT.ClipSizeOverride = 32

ATT.DamageMaxMult = 1.15
ATT.DamageMinMult = 1.15
ATT.RangeMinMult = 1.15
ATT.RangeMaxMult = 1.15

ATT.SortOrder = 0
ATT.Category = "cod2019_uzi_mag"
ATT.ActivateElements = {"mag_none","mag_xmag"}

ATT.Model = "models/weapons/cod2019/attachs/weapons/uzi/attachment_vm_sm_uzulu_magcalcust.mdl"
ATT.DropMagazineModel = "models/weapons/cod2019/attachs/weapons/uzi/attachment_vm_sm_uzulu_magcalcust.mdl"
ATT.BoneMerge = true

ATT.BulletBones = {
    [1] = "j_bullet1",
    [2] = "j_bullet2",
	[3] = "j_bullet3",
}

ARC9.LoadAttachment(ATT, "cod2019_uzi_mag_cult")
---------------------------------------------------------------------------------------
-- ATT = {}

-- ATT.MenuCategory = "ARC9 - MW2019 Attachments"
-- ATT.PrintName = "9x19mm 32-Round Mags"
-- ATT.CompactName = "9x19mm 32-Round"
-- ATT.Description = [[Conversion kit to use 32-round magazines of higher caliber 9x19mm type for increased rate of fire but less stopping power.]]

-- ATT.Icon = Material("entities/attachs/cod2019_sm_uzi_mag_clip.png", "mips smooth")

-- ATT.RPM = 600 *1.6
-- ATT.ClipSizeOverride = 32
-- ATT.TriggerDelayTimeMult = 0.75

-- ATT.DamageMaxMult = 0.89
-- ATT.DamageMinMult = 0.89
-- ATT.RangeMinMult = 0.89
-- ATT.RangeMaxMult = 0.89

-- ATT.SortOrder = 0
-- ATT.Category = "cod2019_uzi_mag"
-- ATT.ActivateElements = {"mag_none","mag_xmag"}

-- ATT.Model = "models/weapons/cod2019/attachs/weapons/uzi/attachment_vm_sm_uzulu_magcalcust.mdl"
-- ATT.DropMagazineModel = "models/weapons/cod2019/attachs/weapons/uzi/attachment_vm_sm_uzulu_magcalcust.mdl"
-- ATT.BoneMerge = true

-- ATT.BulletBones = {
    -- [1] = "j_bullet1",
    -- [2] = "j_bullet2",
	-- [3] = "j_bullet3",
-- }

-- ARC9.LoadAttachment(ATT, "cod2019_uzi_mag_cult_9mm")
----------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "16.5 Factory Carbine"
ATT.CompactName = "16.5"
ATT.Description = [[Longer barrel increases muzzle velocity and extends range. Additional weight stabilize shots but hinders mobility.]]

ATT.Icon = Material("entities/attachs/sm/uzi/cod2019_sm_uzi_barlong.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/uzi/attachment_vm_sm_uzulu_barlong.mdl"
ATT.BoneMerge = true

ATT.SortOrder = 0
ATT.Category = "cod2019_uzi_barrel"
ATT.ActivateElements = {"barrel_none"}

ATT.MuzzleDevice = true -- set to true if you want to use this to emit particles
ATT.MuzzleDevice_Priority = 2

ATT.RangeMinMult = 1.07
ATT.RangeMaxMult = 1.07
ATT.AimDownSightsTimeMult = 1.08

ATT.Element = {
    AttPosMods = {
        [2] = { -- slot of the weapon's attachment
            Pos = Vector(2, 0, 0),
            Ang = Angle(0,0,0),
        }
    }
}

ARC9.LoadAttachment(ATT, "cod2019_uzi_barrel_long")
----------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "8.5 Factory Mini"
ATT.CompactName = "8.5"
ATT.Description = [[Short, compact barrel sacrifices accuracy and range for speed and agility. Improves performance in close quarters encounters.]]

ATT.Icon = Material("entities/attachs/sm/uzi/cod2019_sm_uzi_barshort.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/uzi/attachment_vm_sm_uzulu_barshort.mdl"
ATT.BoneMerge = true

ATT.SortOrder = 0
ATT.Category = "cod2019_uzi_barrel"
ATT.ActivateElements = {"barrel_none"}

ATT.MuzzleDevice = true -- set to true if you want to use this to emit particles
ATT.MuzzleDevice_Priority = 2

ATT.RangeMinMult = 0.92
ATT.RangeMaxMult = 0.92
ATT.AimDownSightsTimeMult = 0.87
ATT.DeployTimeMult = 0.9
ATT.HolsterTimeMult = 0.9

ATT.Element = {
    AttPosMods = {
        [2] = { -- slot of the weapon's attachment
            Pos = Vector(-2, 0, 0),
            Ang = Angle(0,0,0),
        }
    }
}

ARC9.LoadAttachment(ATT, "cod2019_uzi_barrel_short")