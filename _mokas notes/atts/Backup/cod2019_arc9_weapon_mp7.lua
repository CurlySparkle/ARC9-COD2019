local ATT = {}
----------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "FSS RECON"
ATT.CompactName = "FSS RECON"
ATT.Description = [[Designed for mobile scout operations, 10.5 inch barrel increases muzzle velocity, extends range and adds a moderate weight increase for smoother recoil.]]

ATT.Icon = Material("entities/attachs/sm/mp7/cod2019_sm_mp7_barlong.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/mp7/attachment_vm_sm_mpapa7_barlong.mdl"
ATT.BoneMerge = false

ATT.SortOrder = 0
ATT.Category = "cod2019_mp7_barrel"
ATT.ActivateElements = {"barrel_none","muzzle_none"}

ATT.MuzzleDevice = true -- set to true if you want to use this to emit particles
ATT.MuzzleDevice_Priority = 2

ATT.SprintToFireTimeMult = 1.15
ATT.AimDownSightsTimeMult = 1.15
ATT.RecoilMult = 1.1

ATT.RangeMaxMult = 1.25
ATT.RangeMinMult = 1.25

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["muzzle"] then
        model:SetBodygroup(1,1)
    end
end

ATT.Element = {
    AttPosMods = {
        [2] = { -- slot of the weapon's attachment
            Pos = Vector(2.5, 0, 0),
            Ang = Angle(0,0,0),
        }
    }
}

ARC9.LoadAttachment(ATT, "cod2019_mp7_barrel_long")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "FSS SWAT"
ATT.CompactName = "FSS SWAT"
ATT.Description = [[Designed for police enforcements raids, shorter length and larger bore barrel reduces weight for improved handling at the cost of muzzle velocity.]]

ATT.Icon = Material("entities/attachs/sm/mp7/cod2019_sm_mp7_barlight.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/mp7/attachment_vm_sm_mpapa7_barlight.mdl"
ATT.BoneMerge = false

ATT.SortOrder = 0
ATT.Category = "cod2019_mp7_barrel"
ATT.ActivateElements = {"barrel_none","muzzle_none"}
ATT.ModelOffset = Vector(0, 0, 0)

ATT.MuzzleDevice = true -- set to true if you want to use this to emit particles
ATT.MuzzleDevice_Priority = 2

ATT.SprintToFireTimeMult = 0.9
ATT.AimDownSightsTimeMult = 0.9
ATT.RecoilMult = 1.05

ATT.RangeMaxMult = 0.95
ATT.RangeMinMult = 0.95

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["muzzle"] then
        model:SetBodygroup(1,1)
    end
end

ARC9.LoadAttachment(ATT, "cod2019_mp7_barrel_light")
---------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "50 Round Drums"
ATT.CompactName = "50 Round"
ATT.Description = [[Drum magazines hold 50 rounds of 4.6×30mm, maximizing ammo capacity at the expense of mobility.]]
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/sm/mp7/cod2019_sm_mp7_mmags.png", "mips smooth")
ATT.AutoStats = true
ATT.Free = false

ATT.Model = "models/weapons/cod2019/attachs/weapons/mp7/attachment_vm_sm_mpapa7_mmags.mdl"
ATT.DropMagazineModel = "models/weapons/cod2019/attachs/weapons/mp7/attachment_vm_sm_mpapa7_mmags.mdl"
ATT.BoneMerge = true

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_mp7_mag"}
ATT.ActivateElements = {"mag_none","mag_mmag"}

ATT.AimDownSightsTimeMult = 1.05
ATT.SprintToFireTimeMult = 1.05
ATT.RecoilMult = 1.05

ATT.ClipSizeOverride = 50
ATT.ReloadTimeMult = 1.05

ATT.BulletBones = {
    [1] = "j_bullet1",
    [2] = "j_bullet2",
    [3] = "j_bullet3",
}

ATT.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_metal_concrete_01.ogg", 
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_metal_concrete_02.ogg", 
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_metal_concrete_03.ogg",
}

ARC9.LoadAttachment(ATT, "cod2019_mp7_mag_50")
---------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "60 Round Drums"
ATT.CompactName = "60 Round"
ATT.Description = [[Drum magazines hold 60 rounds of 4.6×30mm, maximizing ammo capacity at the expense of mobility.]]
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/sm/mp7/cod2019_sm_mp7_xmags.png", "mips smooth")
ATT.AutoStats = true
ATT.Free = false

ATT.Model = "models/weapons/cod2019/attachs/weapons/mp7/attachment_vm_sm_mpapa7_xmags.mdl"
ATT.DropMagazineModel = "models/weapons/cod2019/attachs/weapons/mp7/attachment_vm_sm_mpapa7_xmags.mdl"
ATT.BoneMerge = true

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_mp7_mag"}
ATT.ActivateElements = {"mag_none","mag_xmag"}

ATT.AimDownSightsTimeMult = 1.05
ATT.SprintToFireTimeMult = 1.05
ATT.RecoilMult = 1.1

ATT.ClipSizeOverride = 60
ATT.ReloadTimeMult = 1.1

ATT.BulletBones = {
    [1] = "j_bullet1",
    [2] = "j_bullet2",
    [3] = "j_bullet3",
}

ATT.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_metal_concrete_01.ogg", 
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_metal_concrete_02.ogg", 
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_metal_concrete_03.ogg",
}

ARC9.LoadAttachment(ATT, "cod2019_mp7_mag_60")