local ATT = {}
----------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "VLK 200mm Osa"
ATT.CompactName = "VLK 200mm"
ATT.Description = [[After-market monolithic integrally suppressed barrel with an aluminum honeycombed shroud significantly increased muzzle velocity and range.]]
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/ar/asval/cod2019_ar_asval_barhvy.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/asval/attachment_vm_ar_valpha_barhvy.mdl"
ATT.BoneMerge = true

ATT.Category = "cod2019_asval_barrel"
ATT.ActivateElements = {"barrel_none","muzzle_none"}

ATT.MuzzleDevice = true -- set to true if you want to use this to emit particles
ATT.MuzzleDevice_Priority = 2

ATT.AimDownSightsTimeMult = 1.15
ATT.RecoilMult = 1.1

ATT.RangeMaxMult = 1.25
ATT.RangeMinMult = 1.25

-- ATT.Element = {
    -- AttPosMods = {
        -- [2] = { -- slot of the weapon's attachment
            -- Pos = Vector(2.5, 0, 0),
            -- Ang = Angle(0,0,0),
        -- }
    -- }
-- }

ARC9.LoadAttachment(ATT, "cod2019_asval_barrel_heavy")
---------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "30-Round Mags"
ATT.CompactName = "30R"
ATT.Description = [[30-round mags for the AS VAL.]]
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/ar/asval/cod2019_ar_asval_xmags.png", "mips smooth")
ATT.AutoStats = true
ATT.Free = false

ATT.Model = "models/weapons/cod2019/attachs/weapons/asval/attachment_vm_ar_valpha_xmags.mdl"
ATT.DropMagazineModel = "models/weapons/cod2019/attachs/weapons/asval/attachment_vm_ar_valpha_xmags.mdl"
ATT.BoneMerge = true

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_asval_mag"}
ATT.ActivateElements = {"mag_none","mag_xmag"}

ATT.AimDownSightsTimeMult = 1.1
ATT.RecoilMult = 1.05

ATT.ClipSizeOverride = 30
ATT.ReloadTimeMult = 1.1

ATT.BulletBones = {
    [1] = "j_bullet1",
    [2] = "j_bullet2",
    [3] = "j_bullet3",
}

ARC9.LoadAttachment(ATT, "cod2019_asval_mag_30")
---------------------------------------------------------------------------------------