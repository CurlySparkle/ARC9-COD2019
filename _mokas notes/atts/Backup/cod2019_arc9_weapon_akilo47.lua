local ATT = {}
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "75 Round Drum Mags"
ATT.CompactName = "75-Round"
ATT.Description = [[Drum magazines hold 75 rounds of 7.62 Soviet, maximizing ammo capacity at the expense of mobility.]]

ATT.Icon = Material("entities/attachs/ar/ak47/cod2019_ar_akilo47_drums.png", "mips smooth")

ATT.ClipSizeOverride = 75
ATT.ReloadTimeMult = 1.15
ATT.ReloadMult = 1.15

ATT.AimDownSightsTimeMult = 1.1

ATT.SortOrder = 0
ATT.Category = "cod2019_akilo47_mag"
ATT.ActivateElements = {"mag_none","mag_drum"}

ATT.Model = "models/weapons/cod2019/attachs/weapons/ak47/attachment_vm_ar_akilo47_drum_mag.mdl"
ATT.DropMagazineModel = "models/weapons/cod2019/attachs/weapons/ak47/attachment_vm_ar_akilo47_drum_mag.mdl"
ATT.BoneMerge = true

ARC9.LoadAttachment(ATT, "cod2019_akilo47_mag_drum")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "40 Round Mag"
ATT.CompactName = "40-Round"
ATT.Description = [[Extended magazines hold 40 rounds of 7.62 Soviet with a slight weight increase.]]

ATT.Icon = Material("entities/attachs/ar/ak47/cod2019_ar_akilo47_smgmag.png", "mips smooth")

ATT.ClipSizeOverride = 40
ATT.ReloadTimeMult = 1.1
ATT.ReloadMult = 1.1
ATT.AimDownSightsTimeMult = 1.1

ATT.SortOrder = 0
ATT.Category = "cod2019_akilo47_mag"
ATT.ActivateElements = {"mag_none","mag_xmag"}

ATT.Model = "models/weapons/cod2019/attachs/weapons/ak47/attachment_vm_xmags_akilo47.mdl"
ATT.DropMagazineModel = "models/weapons/cod2019/attachs/weapons/ak47/attachment_vm_xmags_akilo47.mdl"
ATT.BoneMerge = true

ARC9.LoadAttachment(ATT, "cod2019_akilo47_mag_xmag")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "5.45×39mm Mag"
ATT.CompactName = "30-Round 5.45×39"
ATT.Description = [[Conversion kit to use lower caliber 5.45×39mm ammunition. Shorter range, faster fire rate, and less recoil to dominate close quarters engagements.]]

ATT.Icon = Material("entities/attachs/ar/ak47/cod2019_ar_akilo47_smgmag.png", "mips smooth")

ATT.ShootSound = "Cod2019.ak47.smgcal.fire"
ATT.ShootSoundIndoor = "Cod2019.ak47.smgcal.fire"

-- Non-Silenced Outside
ATT.LayerSound = "Layer_AR.Outside"
ATT.AtmosSound = "Distant_AR3.Outside"
-- Non-Silenced Inside
ATT.LayerSoundIndoor = "Layer_AR.Inside"
ATT.AtmosSoundIndoor = "Distant_AR.Inside"

ATT.ShellScale = 0.06

ATT.ClipSizeOverride = 30
ATT.RPM = 690

ATT.DamageMaxMult = 0.85
ATT.DamageMinMult = 0.85

ATT.RangeMaxMult = 0.8

ATT.SortOrder = 0
ATT.Category = "cod2019_akilo47_mag"
ATT.ActivateElements = {"mag_none","mag_545"}

ATT.Model = "models/weapons/cod2019/attachs/weapons/ak47/attachment_vm_ar_akilo47_smgmag.mdl"
ATT.DropMagazineModel = "models/weapons/cod2019/attachs/weapons/ak47/attachment_vm_ar_akilo47_smgmag.mdl"
ATT.BoneMerge = true

ATT.BulletBones = {
    [1] = "j_ammo1",
    [2] = "j_ammo2",
	[3] = "j_ammo3",
	[4] = "j_ammo4",
}

ARC9.LoadAttachment(ATT, "cod2019_akilo47_mag_smg")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "12-Gauge Mag"
ATT.CompactName = "12-gauge"
ATT.Description = [[Conversion kit to use mid caliber 12-gauge ammunition. Shorter range, faster fire rate, and less recoil to dominate close quarters engagements.]]

ATT.Icon = Material("entities/attachs/sh/origin12/cod2019_sh_origin12_xmags.png", "mips smooth")

--ATT.ShootSound = "Cod2019.ak47.smgcal.fire"
--ATT.ShootSoundIndoor = "Cod2019.ak47.smgcal.fire"

-- Non-Silenced Outside
ATT.LayerSound = "Layer_Shotgun.Outside"
ATT.DistantShootSound = "Distant_Sniper.Outside"
-- Inside
ATT.LayerSoundIndoor = "Layer_Sniper.Inside"
ATT.DistantShootSoundIndoor = "Distant_Shotgun.Inside"
---------------------------------------------------
-- Silenced Outside
ATT.LayerSoundSilenced = "Layer_ARSUP.Outside"
ATT.DistantShootSoundSilenced = "Distant_Shotgun2.Outside"
-- Inside
ATT.LayerSoundSilencedIndoor = "Layer_ShotgunSUP.Inside"
ATT.SoundSilencedIndoor = "Distant_Shotgun2.Outside"
---------------------------------------------------

ATT.ShellScale = 0.07

ATT.ClipSizeOverride = 12
ATT.RPM = 300

ATT.RecoilMult = 2
ATT.RecoilkickMult = 2

ATT.DamageMaxMult = 0.9
ATT.DamageMinMult = 0.9

ATT.RangeMaxMult = 0.8

ATT.DamageMax = 90 -- Damage done at point blank range
ATT.DamageMin = 35 -- Damage done at maximum range

ATT.DistributeDamage = true

ATT.Spread = 175 * ARC9.MOAToAcc
ATT.UseDispersion = true
ATT.DispersionSpread = 0.01
ATT.DispersionSpreadAddHipFire = 0.02
ATT.SpreadMultHipFire = 0.7
ATT.SpreadMultMove = 0.8

ATT.VisualRecoilPunchMult = 2
ATT.VisualRecoilUp = 2

ATT.Num = 6

ATT.SortOrder = 0
ATT.Category = "cod2019_akilo47_mag"
ATT.ActivateElements = {"mag_none"}

ATT.Model = "models/weapons/cod2019/attachs/weapons/ak47/attachment_vm_ar_akilo47_originmag.mdl"
ATT.DropMagazineModel = "models/weapons/cod2019/mags/w_shot_origin12_mag.mdl"
ATT.BoneMerge = true

ATT.ShellModel = "models/weapons/cod2019/shared/shell_origin12.mdl"
ATT.ShellSounds = ARC9.ShotgunShellSoundsTable
ATT.ShellScale = 1.2

ARC9.LoadAttachment(ATT, "cod2019_akilo47_mag_origin12")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "Spetsnaz Elite"
ATT.CompactName = "Spetsnaz Elite"
ATT.Description = [[Heavy weight barrel used by special forces has increased muzzle velocity and improved range with little additional weight.]]

ATT.Icon = Material("entities/attachs/ar/ak47/cod2019_ar_akilo47_custombarrel.png", "mips smooth")

--ATT.DamageMaxMult = 0.9
--ATT.DamageMinMult = 0.9
ATT.AimDownSightsTimeMult = 1.1
ATT.RecoilKickMult = 1.1

ATT.SortOrder = 0
ATT.Category = "cod2019_ak47_barrel"
ATT.ActivateElements = {"barrel_none","barrel_custom"}

ATT.Model = "models/weapons/cod2019/attachs/weapons/ak47/attachment_vm_ar_akilo47_custombarrel.mdl"
ATT.BoneMerge = true

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_optic2"),
        Pos = Vector(-2, 0, -0.75),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
        Category = "cod2019_optic",
		InstalledElements = {"forwardoptic"},
		Scale = 1
    }
}

ARC9.LoadAttachment(ATT, "cod2019_akilo47_barrel_custom")
----------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "8.1\" Compact Barrel"
ATT.CompactName = "8.1\" Compact"
ATT.Description = [[Short, compact barrel sacrifices accuracy and range for speed and agility. Good for clearing out tight spaces.]]

ATT.Icon = Material("entities/attachs/ar/ak47/cod2019_ar_akilo47_barsmg.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/ak47/attachment_vm_smgbarrel_akilo47.mdl"
ATT.BoneMerge = false

ATT.LHIK_Priority = 10
ATT.LHIK = true

ATT.SortOrder = 0
ATT.Category = "cod2019_ak47_barrel"
ATT.ActivateElements = {"barrel_none","barrel_custom","barrel_smg"}

ATT.MuzzleDevice_Priority = 5
ATT.MuzzleDevice = true

ATT.SprintToFireTimeMult = 0.9
ATT.AimDownSightsTimeMult = 0.9
ATT.RecoilMult = 1.1

ATT.RangeMaxMult = 0.9
ATT.RangeMinMult = 0.9

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["muzzle"] then
        model:SetBodygroup(1,1)
    end
    if swep:GetElements()["grip"] then
        model:SetBodygroup(0,1)
    end
    if swep:GetElements()["laser_cylinder"] then
        model:SetBodygroup(2,1)
    end
	
    if swep:GetElements()["grip_angled"] then 
     model:SetPoseParameter("gripstyle", 1)
    elseif swep:GetElements()["grip"] then 
     model:SetPoseParameter("gripstyle", 2)
	 else
	 model:SetPoseParameter("gripstyle", 0)
    end
end

ATT.Element = {
    AttPosMods = {
        [3] = { -- slot of the weapon's attachment
            Pos = Vector(-8.4, 0, -0.1),
            Ang = Angle(0,0,0),
        },
        [5] = { -- slot of the weapon's attachment
            Pos = Vector(-3.5, 0, -0.2),
            Ang = Angle(0,0,180),
        }
    }
}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_laser2"),
        Pos = Vector(-2.5, 1, 0.25),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
        Category = "cod2019_tac_cylinde",
		InstalledElements = {"laser_cylinder"},
		Scale = 1
    }
}

ARC9.LoadAttachment(ATT, "cod2019_akilo47_barrel_smg")
----------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Skeleton Stock"
ATT.CompactName = "Skeleton Stock"
ATT.Description = [[Ultralight stock speeds up weapon handling and movement at the expense of aiming stability.]]
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/ar/ak47/cod2019_ar_akilo47_smgstock_unfolded.png", "mips smooth")
ATT.AutoStats = true
ATT.Free = false

ATT.Model = "models/weapons/cod2019/attachs/weapons/ak47/attachment_vm_smgstock_unfolded_akilo47.mdl"
ATT.BoneMerge = true

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_ak47_stock"}
ATT.ActivateElements = {"stock_none"}

ATT.AimDownSightsTimeMult = 0.9
ATT.SprintToFireTimeMult = 0.9
ATT.RecoilMult = 1.1

ARC9.LoadAttachment(ATT, "cod2019_akilo47_stockskel")