local ATT = {}
----------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "AN-94 Factory X-438mm"
ATT.CompactName = "X-438mm"
ATT.Description = [[Experimental 438mm extended barrel pushes the operational limit of this weapon with progressive rate springs and a case hardened chrome-moly bore.]]

ATT.Icon = Material("entities/attachs/ar/an94/cod2019_ar_anov94_barlong.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/an94/attachment_vm_ar_anov94_barlong.mdl"
ATT.BoneMerge = true

ATT.SortOrder = 0
ATT.Category = "cod2019_an94_barrel"
ATT.ActivateElements = {"barrel_none","muzzle_none"}

ATT.MuzzleDevice = true -- set to true if you want to use this to emit particles
ATT.MuzzleDevice_Priority = 2

ATT.SprintToFireTimeMult = 1.15
ATT.AimDownSightsTimeMult = 1.15
ATT.RecoilMult = 0.9

ATT.RangeMaxMult = 1.25
ATT.RangeMinMult = 1.25

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["muzzle"] then
        model:SetBodygroup(1,1)
    end
end

ATT.Element = {
    AttPosMods = {
        [3] = { -- slot of the weapon's attachment
            Pos = Vector(1.9, 0, 0),
            Ang = Angle(0,0,0),
        }
    }
}

ARC9.LoadAttachment(ATT, "cod2019_an94_barrel_long")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "AN-94 Factory 330mm"
ATT.CompactName = "330mm"
ATT.Description = [[Factory installed 330mm barrel has a higher tension spring to compensate for the recoil dampening system's reduced travel. Designed for closer engagements.]]

ATT.Icon = Material("entities/attachs/ar/an94/cod2019_ar_anov94_barshort.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/an94/attachment_vm_ar_anov94_barshort.mdl"
ATT.BoneMerge = true

ATT.SortOrder = 0
ATT.Category = "cod2019_an94_barrel"
ATT.ActivateElements = {"barrel_none","muzzle_none"}

ATT.MuzzleDevice = true -- set to true if you want to use this to emit particles
ATT.MuzzleDevice_Priority = 2

ATT.SprintToFireTimeMult = 0.9
ATT.AimDownSightsTimeMult = 0.9
ATT.RecoilMult = 1.15

ATT.RangeMaxMult = 0.9
ATT.RangeMinMult = 0.9

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["muzzle"] then
        model:SetBodygroup(1,1)
    end
end

ATT.Element = {
    AttPosMods = {
        [3] = { -- slot of the weapon's attachment
            Pos = Vector(-1.9, 0, 0),
            Ang = Angle(0,0,0),
        }
    }
}

ARC9.LoadAttachment(ATT, "cod2019_an94_barrel_short")
----------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Skeleton Stock"
ATT.CompactName = "Skeleton Stock"
ATT.Description = [[Ultralight stock speeds up weapon handling and movement at the expense of aiming stability.]]
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/ar/an94/cod2019_ar_anov94_stockskel.png", "mips smooth")
ATT.AutoStats = true
ATT.Free = false

ATT.Model = "models/weapons/cod2019/attachs/weapons/an94/attachment_vm_ar_anov94_stockskel.mdl"
ATT.BoneMerge = true

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_an94_stock"}
ATT.ActivateElements = {"stock_none"}

ATT.AimDownSightsTimeMult = 0.9
ATT.SprintToFireTimeMult = 0.9
ATT.RecoilMult = 1.1

ARC9.LoadAttachment(ATT, "cod2019_an94_stockskel")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "45 Round Mags"
ATT.CompactName = "45-Round"
ATT.Description = [[High capacity magazines hold 45 rounds with a moderate weight increase.]]

ATT.Icon = Material("entities/attachs/ar/an94/cod2019_ar_famas_xmags.png", "mips smooth")

ATT.ClipSizeOverride = 45
ATT.ReloadTimeMult = 1.1
ATT.SprintToFireTimeMult = 1.05
ATT.AimDownSightsTimeMult = 1.05

ATT.SortOrder = 0
ATT.Category = {"cod2019_an94_mag"}
ATT.ActivateElements = {"mag_none","mag_xmag"}

ATT.Model = "models/weapons/cod2019/attachs/weapons/an94/attachment_vm_ar_anov94_xmags.mdl"
ATT.DropMagazineModel = "models/weapons/cod2019/attachs/weapons/an94/attachment_vm_ar_anov94_xmags.mdl"
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

ARC9.LoadAttachment(ATT, "cod2019_an94_mag_45")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "60 Round Casket Mags"
ATT.CompactName = "60-Round"
ATT.Description = [[High capacity magazines hold 60 rounds with a moderate weight increase.]]

ATT.Icon = Material("entities/attachs/ar/an94/cod2019_ar_famas_xmags2.png", "mips smooth")

ATT.ClipSizeOverride = 60
ATT.ReloadTimeMult = 1.15
ATT.SprintToFireTimeMult = 1.1
ATT.AimDownSightsTimeMult = 1.1

ATT.SortOrder = 0
ATT.Category = {"cod2019_an94_mag"}
ATT.ActivateElements = {"mag_none","mag_xmagslrg"}

ATT.Model = "models/weapons/cod2019/attachs/weapons/an94/attachment_vm_ar_anov94_xmagslrg.mdl"
ATT.DropMagazineModel = "models/weapons/cod2019/attachs/weapons/an94/attachment_vm_ar_anov94_xmagslrg.mdl"
ATT.BoneMerge = true
--ATT.ModelOffset = Vector(1, 0, 1)

ATT.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_metal_concrete_01.ogg", 
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_metal_concrete_02.ogg", 
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_metal_concrete_03.ogg",
}

ATT.BulletBones = {
    [1] = {"j_bullet1","j_ammo1","j_magextbullet01"},
    [2] = {"j_bullet2","j_ammo2","j_magextbullet02"},
	[3] = {"j_bullet3","j_ammo3","j_magextbullet03"},
	[4] = {"j_bullet4","j_ammo4","j_magextbullet04"},
}

ARC9.LoadAttachment(ATT, "cod2019_an94_mag_60")
