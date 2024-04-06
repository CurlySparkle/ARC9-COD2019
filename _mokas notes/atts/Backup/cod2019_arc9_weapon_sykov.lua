local ATT = {}
----------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Sorokin 140mm Auto"
ATT.CompactName = "140mm Auto"
ATT.Description = [[]]

ATT.SortOrder = 1
ATT.Icon = Material("entities/attachs/pi/sykov/cod2019_pi_sykov_barauto.png", "mips smooth")
ATT.AutoStats = true
ATT.Free = false

ATT.Model = "models/weapons/cod2019/attachs/weapons/sykov/attachment_vm_pi_mike_barauto.mdl"
ATT.BoneMerge = true

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_sykov_slide"}
ATT.ActivateElements = {"slide_none","slide_auto"}

ATT.MuzzleDevice_Priority = 1
ATT.MuzzleDevice = true

ATT.AimDownSightsTimeMult = 1.1
ATT.SprintToFireTimeMult = 1.1
ATT.DeployTimeMult = 1.1
ATT.RecoilKickMult = 1.3

ATT.RecoilMult = 0.95
ATT.RangeMaxMult = 1.15
ATT.RangeMinMult = 1.15
ATT.PhysBulletMuzzleVelocityMult = 1.15

ATT.RPM = 800

ATT.FiremodesOverride = {
    {
        Mode = -1,
		RPM = 1200,
    },
}

ATT.Element = {
    AttPosMods = {
        [2] = { -- slot of the weapon's attachment
            Pos = Vector(1.6, 0, 0),
            Ang = Angle(0,0,0),
        }
    }
}

ARC9.LoadAttachment(ATT, "cod2019_sykov_slide_auto")
----------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "20 Round Mags"
ATT.CompactName = "20 Round"
ATT.Description = [[]]

ATT.SortOrder = 1
ATT.Icon = Material("entities/attachs/pi/sykov/cod2019_pi_sykov_xmags.png", "mips smooth")
ATT.AutoStats = true
ATT.Free = false

ATT.Model = "models/weapons/cod2019/attachs/weapons/sykov/attachment_vm_pi_mike_xmags.mdl"
ATT.DropMagazineModel = "models/weapons/cod2019/attachs/weapons/sykov/attachment_vm_pi_mike_xmags.mdl"
ATT.BoneMerge = true

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_sykov_mag"}
ATT.ActivateElements = {"mag_none","mag_xmag"}

ATT.AimDownSightsTimeMult = 1.1
ATT.ReloadTimeMult = 1.1
ATT.ClipSizeOverride = 20

ATT.BulletBones = {
    [1] = {"j_bullet1","j_bullet1_l"},
    [2] = {"j_bullet2","j_bullet2_l"},
    [3] = {"j_bullet3","j_bullet3_l"},
    [4] = {"j_bullet4","j_bullet4_l"},
    [5] = {"j_bullet5","j_bullet5_l"},
    [6] = {"j_bullet6","j_bullet6_l"},
    [7] = {"j_bullet7","j_bullet7_l"},
    [8] = {"j_bullet8","j_bullet8_l"},
    [9] = {"j_bullet9","j_bullet9_l"},
    [10] = {"j_bullet10","j_bullet10_l"},
}

ARC9.LoadAttachment(ATT, "cod2019_sykov_mag_xmag")