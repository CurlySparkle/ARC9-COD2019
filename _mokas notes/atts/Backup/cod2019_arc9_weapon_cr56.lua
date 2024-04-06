local ATT = {}
---------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "7.62 Type"
ATT.CompactName = "30-7.62"
ATT.Description = [[]]
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/ar/fal/cod2019_ar_falima_xmags.png", "mips smooth")
ATT.AutoStats = true

ATT.Free = false

ATT.Model = "models/weapons/cod2019/attachs/weapons/cr56amax/attachment_vm_ar_falima_mag.mdl"
ATT.BoneMerge = true

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_cr56_mag"}
ATT.ActivateElements = {"mag_none","mag_xmag"}

ATT.ClipSizeOverride = 30

ATT.ShootSound = "Cod2019.fal.fire"
ATT.ShootSoundIndoor = "Cod2019.fal.fire"

ATT.ShootSoundSilenced = "Cod2019.fal.fire.s"
ATT.ShootSoundSilencedIndoor = "Cod2019.fal.fire.s"

ATT.DropMagazineModel = "models/weapons/cod2019/attachs/weapons/cr56amax/attachment_vm_ar_falima_mag.mdl"

ARC9.LoadAttachment(ATT, "cod2019_cr56_mag_fal")
---------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "5.56 Type"
ATT.CompactName = "30-5.56"
ATT.Description = [[]]
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/ar/grau556/cod2019_ar_sierra552_mags.png", "mips smooth")
ATT.AutoStats = true

ATT.Free = false

ATT.Model = "models/weapons/cod2019/attachs/weapons/cr56amax/attachment_vm_ar_grau556_mag.mdl"
ATT.BoneMerge = true

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_cr56_mag"}
ATT.ActivateElements = {"mag_none","mag_xmag"}

ATT.ClipSizeOverride = 30

ATT.ShootSound = "Cod2019.grau556.fire"
ATT.ShootSoundIndoor = "Cod2019.grau556.fire"

ATT.ShootSoundSilenced = "Cod2019.grau556.fire.s"
ATT.ShootSoundSilencedIndoor = "Cod2019.grau556.fire.s"

ATT.DropMagazineModel = "models/weapons/cod2019/attachs/weapons/cr56amax/attachment_vm_ar_grau556_mag.mdl"

ARC9.LoadAttachment(ATT, "cod2019_cr56_mag_grau552")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "FSS 11.8\" Squall"
ATT.CompactName = "FSS 11.8"
ATT.Description = [[Lightweight shroud and large bore barrel reduce weight for improved handling at the cost of muzzle velocity.]]

ATT.Icon = Material("entities/attachs/ar/cr56armax/cod2019_ar_cr56armax_barlight.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/cr56amax/attachment_vm_ar_galima_barlight.mdl"
ATT.BoneMerge = false

ATT.SortOrder = 0
ATT.Category = "cod2019_cr56_barrel"
ATT.ActivateElements = {"barrel_none","muzzle_none","rail_grip","rail_laser"}
ATT.ModelOffset = Vector(0, 0, 0)

ATT.MuzzleDevice = true -- set to true if you want to use this to emit particles
ATT.MuzzleDevice_Priority = 2

ATT.SprintToFireTimeMult = 0.95
ATT.AimDownSightsTimeMult = 0.95
ATT.SpreadMult = 0.9

ATT.RangeMaxMult = 0.9
ATT.RangeMinMult = 0.9

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["muzzle"] then
        model:SetBodygroup(1,1)
    end
    if swep:GetElements()["grip"] or swep:GetElements()["grip_angled"] then
        model:SetBodygroup(2,1)
    end
end

ATT.Element = {
    AttPosMods = {
        [2] = { -- slot of the weapon's attachment
            Pos = Vector(-0.5, 0, 0),
            Ang = Angle(0,0,0),
        }
    }
}

ARC9.LoadAttachment(ATT, "cod2019_cr56_barrel_light")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "XRK Zodiac S440"
ATT.CompactName = "XRK Zodiac"
ATT.Description = [[Achieve the pinnacle of range with this precision barrel from XRK. Superior muzzle velocity and stabilization at the cost of agility.]]

ATT.Icon = Material("entities/attachs/ar/cr56armax/cod2019_ar_cr56armax_barlong.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/cr56amax/attachment_vm_ar_galima_barlong.mdl"
ATT.BoneMerge = false

ATT.SortOrder = 0
ATT.Category = "cod2019_cr56_barrel"
ATT.ActivateElements = {"barrel_none","muzzle_none","rail_grip","rail_laser"}
ATT.ModelOffset = Vector(0, 0, 0)

ATT.MuzzleDevice = true -- set to true if you want to use this to emit particles
ATT.MuzzleDevice_Priority = 2

ATT.SprintToFireTimeMult = 1.15
ATT.AimDownSightsTimeMult = 1.15
ATT.RecoilMult = 0.9

ATT.RangeMaxMult = 1.15
ATT.RangeMinMult = 1.15

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["muzzle"] then
        model:SetBodygroup(1,1)
    end
end

ATT.Element = {
    AttPosMods = {
        [2] = { -- slot of the weapon's attachment
            Pos = Vector(6, 0, 0),
            Ang = Angle(0,0,0),
        }
    }
}

ARC9.LoadAttachment(ATT, "cod2019_cr56_barrel_long")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "45 Round Mags"
ATT.CompactName = "45-Round"
ATT.Description = [[High capacity magazines hold 45 rounds with a moderate weight increase.]]

ATT.Icon = Material("entities/attachs/ar/cr56armax/cod2019_ar_cr56armax_xmag.png", "mips smooth")

ATT.ClipSizeOverride = 45
ATT.ReloadTimeMult = 1.1
ATT.SprintToFireTimeMult = 1.05
ATT.AimDownSightsTimeMult = 1.05

ATT.SortOrder = 0
ATT.Category = {"cod2019_cr56_mag"}
ATT.ActivateElements = {"mag_none","mag_xmag"}

ATT.Model = "models/weapons/cod2019/attachs/weapons/cr56amax/attachment_vm_ar_galima_xmag.mdl"
ATT.DropMagazineModel = "models/weapons/cod2019/attachs/weapons/cr56amax/attachment_vm_ar_galima_xmag.mdl"
ATT.BoneMerge = true
--ATT.ModelOffset = Vector(1, 0, 1)

ATT.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_metal_concrete_01.ogg", 
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_metal_concrete_02.ogg", 
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_metal_concrete_03.ogg",
}

ATT.BulletBones = {
    [1] = {"j_bullet1","j_ammo1"},
    [2] = {"j_bullet2","j_ammo2"},
	[3] = {"j_bullet3","j_ammo3"},
	[4] = {"j_bullet4","j_ammo4"},
}

ARC9.LoadAttachment(ATT, "cod2019_cr56_mag_xmag")