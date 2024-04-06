local ATT = {}
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "ZLR Sabre"
ATT.CompactName = "ZLR Sabre"
ATT.Description = [["Custom extended suppressor from ZLR greatly increases the muzzle velocity and reduces recoil to help with long range precision"]]
ATT.Icon = Material("entities/attachs/sm/vector/cod2019_sm_vector_suppressor.png", "mips smooth")

ATT.SortOrder = 1
ATT.AutoStats = true
ATT.Category = "cod2019_muzzle"
ATT.Folder = ARC9:GetPhrase("mw19_folder_suppressor")
ATT.ActivateElements = {"muzzle"}

ATT.Model = "models/weapons/cod2019/attachs/weapons/vector/attachment_vm_sm_victor_suppressor.mdl"

ATT.AimDownSightsTimeAdd = 0.013,
ATT.VisualRecoilMult = 0.97,
ATT.RecoilMult = 0.97,

ATT.Silencer = true
ATT.MuzzleParticleOverride = "muzzleflash_suppressed"
ATT.MuzzleDevice_Priority = 5
ATT.MuzzleDevice = true

ARC9.LoadAttachment(ATT, "cod2019_vector_suppresor")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "ZLR 16\" Apex"
ATT.CompactName = "ZLR 16\""
ATT.Description = [[Heavy duty extended barrel extends muzzle velocity and range to the max, but hinders mobility.]]

ATT.Icon = Material("entities/attachs/sm/vector/cod2019_sm_vector_barlong.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/vector/attachment_vm_sm_victor_barlong.mdl"
ATT.BoneMerge = false

ATT.SortOrder = 0
ATT.Category = "cod2019_vector_barrel"
ATT.ActivateElements = {"barrel_none","muzzle_none"}

ATT.MuzzleDevice = true -- set to true if you want to use this to emit particles
ATT.MuzzleDevice_Priority = 2

ATT.SprintToFireTimeMult = 1.15
ATT.AimDownSightsTimeMult = 1.15
ATT.RecoilMult = 1.1

ATT.RangeMaxMult = 1.25
ATT.RangeMinMult = 1.25

ATT.Element = {
    AttPosMods = {
        [2] = { -- slot of the weapon's attachment
            Pos = Vector(9.5, 0, 0),
            Ang = Angle(0,0,0),
        }
    }
}

ARC9.LoadAttachment(ATT, "cod2019_vector_barrel_long")
---------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "40 Round Drums"
ATT.CompactName = "40 Round"
ATT.Description = [[Drum magazines hold 40 rounds of .45 ACP, maximizing ammo capacity at the expense of mobility.]]
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/sm/vector/cod2019_sm_vector_drummag.png", "mips smooth")
ATT.AutoStats = true
ATT.Free = false

ATT.Model = "models/weapons/cod2019/attachs/weapons/vector/attachment_vm_sm_victor_drummag.mdl"
ATT.DropMagazineModel = "models/weapons/cod2019/attachs/weapons/vector/attachment_vm_sm_victor_drummag.mdl"
ATT.BoneMerge = true

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_vector_mag"}
ATT.ActivateElements = {"mag_none","mag_drum"}

ATT.AimDownSightsTimeMult = 1.05
ATT.SprintToFireTimeMult = 1.05
ATT.RecoilMult = 1.1

ATT.ClipSizeOverride = 40
ATT.ReloadTimeMult = 1.1

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

ARC9.LoadAttachment(ATT, "cod2019_vector_mag_drum")