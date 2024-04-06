local ATT = {}
----------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "FORGE TAC 20.0 LB"
ATT.CompactName = "20.0 LB"
ATT.Description = [[]]

ATT.Icon = Material("entities/attachs/ar/scar/cod2019_ar_scar_barrel_long.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/scar/attachment_vm_ar_scharlie_barrel_long.mdl"
ATT.BoneMerge = true

ATT.SortOrder = 0
ATT.Category = "cod2019_scar_barrel"
ATT.ActivateElements = {"barrel_none","sight_front_none","muzzle_none"}

ATT.MuzzleDevice = true -- set to true if you want to use this to emit particles
ATT.MuzzleDevice_Priority = 3

ATT.DeployTimeMult = 1.05
ATT.AimDownSightsTimeMult = 1.1
ATT.RangeMaxMult = 1.1
ATT.RecoilMult = 0.95

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["sight_back_folded"] then
        model:SetBodygroup(2,1)
    end
	
    if swep:GetElements()["optic_scope"] then
        model:SetBodygroup(2,2)
    end

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

ARC9.LoadAttachment(ATT, "cod2019_scar_barrel_long")
----------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "FORGE TAC CQC Pro"
ATT.CompactName = "FTAC CQC"
ATT.Description = [[]]

ATT.Icon = Material("entities/attachs/ar/scar/cod2019_ar_scar_barrel_pdw.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/scar/attachment_vm_ar_scharlie_barrel_pdw.mdl"
ATT.BoneMerge = false

ATT.SortOrder = 0
ATT.Category = "cod2019_scar_barrel"
ATT.ActivateElements = {"barrel_none","sight_front_none","muzzle_none"}

ATT.MuzzleDevice = true -- set to true if you want to use this to emit particles
ATT.MuzzleDevice_Priority = 3

ATT.DeployTimeMult = 0.9
ATT.AimDownSightsTimeMult = 0.9
ATT.RecoilMult = 1.05
ATT.RangeMaxMult = 0.85
ATT.RangeMinMult = 0.85

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["sight_back_folded"] then
        model:SetBodygroup(2,1)
    end
	
    if swep:GetElements()["optic_scope"] then
        model:SetBodygroup(2,2)
    end

    if swep:GetElements()["muzzle"] then
        model:SetBodygroup(1,1)
    end
end

ATT.Element = {
    AttPosMods = {
        [2] = { -- slot of the weapon's attachment
            Pos = Vector(-6.3, 0, 0),
            Ang = Angle(0,0,0),
        },
        [4] = { -- slot of the weapon's attachment
            Pos = Vector(-1, 0, -0.1),
            Ang = Angle(0,0,180),
        }
    }
}

ARC9.LoadAttachment(ATT, "cod2019_scar_barrel_short")
----------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "FTAC Collapsible Stock"
ATT.CompactName = "FTAC Collapsible"
ATT.Description = [[The ultimate run and gun modification when agility is more important than precision. Collapsing the stock greatly increases movement.]]

ATT.Icon = Material("entities/attachs/ar/scar/cod2019_ar_scar_stock_light.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/scar/attachment_vm_ar_scharlie_stock_light.mdl"
ATT.BoneMerge = true

ATT.SortOrder = 0
ATT.Category = "cod2019_scar_stock"
ATT.ActivateElements = {"stock_none"}

ATT.AimDownSightsTimeMult = 0.89
ATT.DrawTimeMult = 0.87
ATT.HolsterTimeMult = 0.87
ATT.RecoilKickMult = 1.25

ARC9.LoadAttachment(ATT, "cod2019_scar_stock_light")
---------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "6.5mm Creedmoor Mag"
ATT.CompactName = "6.5mm 10-Round"
ATT.Description = [[]]
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/ar/scar/cod2019_ar_scar_mag_dmr.png", "mips smooth")
ATT.AutoStats = true

ATT.Free = false

ATT.Model = "models/weapons/cod2019/attachs/weapons/scar/attachment_vm_ar_scharlie_mag_dmr.mdl"
ATT.DropMagazineModel = "models/weapons/cod2019/attachs/weapons/scar/attachment_vm_ar_scharlie_mag_dmr.mdl"
ATT.BoneMerge = true

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_scar_mag"}
ATT.ActivateElements = {"mag_none","mag_dmr"}

ATT.ClipSizeOverride = 10

ATT.RecoilMult = 1.15
ATT.RecoilkickMult = 1.20

ATT.DamageMaxMult = 1.55
ATT.DamageMinMult = 1.55
ATT.PhysBulletMuzzleVelocityMult = 1.15

ATT.BulletBones = {
    [1] = "j_bullet1",
    [2] = "j_bullet2",
	[3] = "j_bullet3",
}

ARC9.LoadAttachment(ATT, "cod2019_scar_mag_dmr")
---------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "30 Round 5.56 NATO Mag"
ATT.CompactName = "30R 5.56"
ATT.Description = "Extended magazines hold 30 rounds of 5.56 NATO with a slight weight increase."
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/ar/famas/cod2019_ar_famas_xmags.png", "mips smooth")
ATT.AutoStats = true

ATT.Free = false

ATT.Model = "models/weapons/cod2019/attachs/weapons/scar/attachment_vm_ar_scharlie_mags_ar.mdl"
ATT.DropMagazineModel = "models/weapons/cod2019/attachs/weapons/scar/attachment_vm_ar_scharlie_mags_ar.mdl"
ATT.ShellScale = 0.075
ATT.BoneMerge = true

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_scar_mag"}
ATT.ActivateElements = {"mag_none","mag_armag"}

ATT.RPM = 625
ATT.ClipSizeOverride = 30
ATT.RecoilMult = 1.1
ATT.DamageMaxMult = 0.95
ATT.DamageMinMult = 0.95
ATT.ReloadTimeMult = 1.1

ATT.BulletBones = {
    [1] = "j_bullet1",
    [2] = "j_bullet2",
	[3] = "j_bullet3",
}

ATT.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_metal_concrete_01.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_metal_concrete_02.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_metal_concrete_03.ogg",
}

ARC9.LoadAttachment(ATT, "cod2019_scar_mag_ar")