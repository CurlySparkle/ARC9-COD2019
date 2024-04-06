local ATT = {}
----------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "FSS Revolution"
ATT.CompactName = "FSS Revolution"
ATT.Description = [[Extended 280mm chrome-moly barrel with stepped shroud increases muzzle velocity and greatly improves accuracy.]]

ATT.Icon = Material("entities/attachs/sm/iso/cod2019_sm_iso_longbarrel.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/iso/attachment_vm_sm_charlie9_longbarrel.mdl"
ATT.BoneMerge = true

ATT.SortOrder = 0
ATT.Category = "cod2019_iso_barrel"
ATT.ActivateElements = {"barrel_none","sight_front_none","muzzle_none"}

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["sight_back_folded"] then
        model:SetBodygroup(1,1)
    end
	
    if swep:GetElements()["optic_scope"] then
        model:SetBodygroup(1,2)
    end
end

ATT.DeployTimeMult = 1.05
ATT.AimDownSightsTimeMult = 1.05
ATT.RangeMaxMult = 1.1

ATT.Element = {
    AttPosMods = {
        [2] = { -- slot of the weapon's attachment
            Pos = Vector(4.8, 0, 0),
            Ang = Angle(0,0,0),
        },
        [4] = { -- slot of the weapon's attachment
            Pos = Vector(5, -0.55, -0.9),
            Ang = Angle(0,0,-90),
        }
    }
}

ARC9.LoadAttachment(ATT, "cod2019_iso_barrel_long")
----------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "FSS Nightshade"
ATT.CompactName = "FSS Nightshade"
ATT.Description = [[Monolithic integral suppressor keeps weapon silent and increases range for longer distance stealth assaults.]]

ATT.Icon = Material("entities/attachs/sm/iso/cod2019_sm_iso_barsil.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/iso/attachment_vm_sm_charlie9_barsil.mdl"
ATT.BoneMerge = true

ATT.Silencer = true
ATT.MuzzleParticleOverride = "muzzleflash_suppressed"
ATT.MuzzleDevice_Priority = 3
ATT.MuzzleDevice = true

ATT.SortOrder = 0
ATT.Category = "cod2019_iso_barrel"
ATT.ActivateElements = {"barrel_none","sight_front_none","muzzle_none","Barrel_supp"}

ATT.DeployTimeMult = 1.1
ATT.AimDownSightsTimeMult = 1.15
ATT.RangeMaxMult = 1.2

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["sight_back_folded"] then
        model:SetBodygroup(1,1)
    end
	
    if swep:GetElements()["optic_scope"] then
        model:SetBodygroup(1,2)
    end
end

ARC9.LoadAttachment(ATT, "cod2019_iso_barrel_supp")
----------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "FTAC Vagrant"
ATT.CompactName = "FTAC Vagrant"
ATT.Description = [[Tactical stock streamlined for close quarters combat. Gets on you target faster.]]

ATT.Icon = Material("entities/attachs/sm/iso/cod2019_sm_iso_fullstock.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/iso/attachment_vm_sm_charlie9_fullstock.mdl"
ATT.BoneMerge = true

ATT.SortOrder = 0
ATT.Category = "cod2019_iso_stock"
ATT.ActivateElements = {"stock_none"}

ATT.RecoilSideMult = 0.9
ATT.RecoilKickMult = 0.95
ATT.AimDownSightsTimeMult = 1.1
ATT.DeployTimeMult = 1.11

ARC9.LoadAttachment(ATT, "cod2019_iso_stock_full")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "50 Round Drum"
ATT.CompactName = "50-Round"
ATT.Description = [[High capacity magazines hold 50 rounds with a moderate weight increase.]]

ATT.Icon = Material("entities/attachs/sm/vector/cod2019_sm_vector_drummag.png", "mips smooth")

ATT.ClipSizeOverride = 50

ATT.SortOrder = 0
ATT.Category = "cod2019_iso_mag"
ATT.ActivateElements = {"mag_none","mag_drum"}


ATT.Model = "models/weapons/cod2019/attachs/weapons/iso/attachment_vm_sm_charlie9_drummag.mdl"
ATT.DropMagazineModel = "models/weapons/cod2019/attachs/weapons/iso/attachment_vm_sm_charlie9_drummag.mdl"
ATT.BoneMerge = true
ATT.ModelOffset = Vector(1, 0, 1)

ATT.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_01.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_02.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_03.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_04.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_05.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_06.ogg",
}

ARC9.LoadAttachment(ATT, "cod2019_iso_mag_drum")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "30-Round .45 ACP Mag"
ATT.CompactName = "30-R .45 ACP"
ATT.Description = [[Conversion kit to use bigger caliber .45 ACP ammunition. Better Damage but higher recoil.]]

ATT.Icon = Material("entities/attachs/sm/iso/cod2019_sm_iso_xmag.png", "mips smooth")

ATT.ClipSizeOverride = 30
ATT.DamageMaxMult = 1.15
ATT.RecoilMult = 1.15
ATT.RecoilKickMult = 1.1

ATT.SortOrder = 0
ATT.Category = "cod2019_iso_mag"
ATT.ActivateElements = {"mag_none","mag_xmag"}

ATT.Model = "models/weapons/cod2019/attachs/weapons/iso/attachment_vm_sm_charlie9_xmag_vector.mdl"
ATT.DropMagazineModel = "models/weapons/cod2019/attachs/weapons/iso/attachment_vm_sm_charlie9_xmag_vector.mdl"
ATT.BoneMerge = true
ATT.ModelOffset = Vector(1, 0, 1)

ATT.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_poly_concrete_01.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_poly_concrete_02.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_poly_concrete_03.ogg",
}

ARC9.LoadAttachment(ATT, "cod2019_iso_mag_xmag_vector")