local ATT = {}
----------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "FR 24.4\" Sniper"
ATT.CompactName = "FR 24.4\" Sniper"
ATT.Description = [[Longer barrel increases muzzle velocity and extends range. Additional weight stabilizes grouping but hinders mobility.]]

ATT.Icon = Material("entities/attachs/ar/famas/cod2019_ar_famas_barrellong.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/famas/attachment_vm_ar_falpha_barrellong_alt.mdl"
ATT.BoneMerge = false

ATT.SortOrder = 0
ATT.Category = "cod2019_famas_barrel"
ATT.ActivateElements = {"barrel_none","muzzle_none"}

ATT.MuzzleDevice = true -- set to true if you want to use this to emit particles
ATT.MuzzleDevice_Priority = 2

ATT.SprintToFireTimeMult = 1.1
ATT.AimDownSightsTimeMult = 1.1
ATT.DeployTimeMult = 1.1

ATT.RecoilMult = 1.08
ATT.RangeMaxMult = 1.08
ATT.RangeMinMult = 1.08

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["muzzle"] then
        model:SetBodygroup(1,1)
    end
end

ATT.Element = {
    AttPosMods = {
        [2] = { -- slot of the weapon's attachment
            Pos = Vector(3.3, 0, 0),
            Ang = Angle(0,0,0),
        }
    }
}

ARC9.LoadAttachment(ATT, "cod2019_famas_barrel_long")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "FR 15.9\" Commando"
ATT.CompactName = "15.9\" Commando"
ATT.Description = [[Short, compact barrel sacrifices accuracy and range for speed and agility. Improves close range combat.]]

ATT.Icon = Material("entities/attachs/ar/famas/cod2019_ar_famas_barshort.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/famas/attachment_vm_ar_falpha_barshort.mdl"
ATT.BoneMerge = false

ATT.SortOrder = 0
ATT.Category = "cod2019_famas_barrel"
ATT.ActivateElements = {"barrel_none","muzzle_none"}
ATT.ModelOffset = Vector(0, 0, 0)

ATT.MuzzleDevice = true -- set to true if you want to use this to emit particles
ATT.MuzzleDevice_Priority = 2

ATT.SprintToFireTimeMult = 0.90
ATT.AimDownSightsTimeMult = 0.90

ATT.RecoilMult = 1.1
ATT.RangeMaxMult = 0.95
ATT.RangeMinMult = 0.95

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["muzzle"] then
        model:SetBodygroup(1,1)
    end
end

ATT.Element = {
    AttPosMods = {
        [2] = { -- slot of the weapon's attachment
            Pos = Vector(-2.1, 0, 0),
            Ang = Angle(0,0,0),
        }
    }
}

ARC9.LoadAttachment(ATT, "cod2019_famas_barrel_short")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "FSS Tac-Wrap"
ATT.CompactName = "FSS Tac-Wrap"
ATT.Description = [[Tactical comb add-on streamlined for close quarters combat. Gets you on target faster.]]

ATT.Icon = Material("entities/attachs/ar/famas/cod2019_ar_famas_stock_tactical_v1.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/famas/attachment_vm_ar_falpha_stock_tactical.mdl"
ATT.BoneMerge = true

ATT.SortOrder = 0
ATT.Category = "cod2019_famas_stock"
ATT.ActivateElements = {"stock_tactical"}

ATT.AimDownSightsTimeMult = 0.95
ATT.DeployTimeMult = 1.05
ATT.RecoilMult = 1.05

ARC9.LoadAttachment(ATT, "cod2019_famas_stock_tactical")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "Valorisé"
ATT.CompactName = "Valorisé"
ATT.Description = ""

--ATT.Icon = Material("entities/attachs/cod2019_ar_famas_stock_tactical_v1.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/famas/attachment_vm_ar_falpha_railcust.mdl"
ATT.BoneMerge = true

ATT.SortOrder = 0
ATT.Category = "cod2019_famas_reciever"
ATT.ActivateElements = {"upper_none","bipod_none","railcust"}

ATT.ActivePos = Vector(-0.5, 0, 1)
ATT.ActiveAng = Angle(0, 0, 0)

ATT.SprintPos = Vector(1, 0, 0)
ATT.SprintAng = Angle(0, 0, 25)

-- ATT.Attachments = {
    -- {
        -- PrintName = ARC9:GetPhrase("mw19_category_optic"),
        -- Pos = Vector(-7, 0, -1.37),
        -- Ang = Angle(0, 0, 0),
        -- Icon_Offset = Vector(0, 0, 0),
        -- Category = "cod2019_optic",
		-- Scale = 1
    -- }
-- }

-- ATT.Element = {
    -- AttPosMods = {
        -- [3] = { -- slot of the weapon's attachment
            -- Pos = Vector(1.5, 0, -0.1),
            -- Ang = Angle(0,0,0),
        -- }
    -- }
-- }

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["optic"] then
        model:SetBodygroup(1,1)
    end
end

ARC9.LoadAttachment(ATT, "cod2019_famas_upper_railcust")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "50 Round Mags"
ATT.CompactName = "50-Round"
ATT.Description = [[High capacity magazines hold 50 rounds with a moderate weight increase.]]

ATT.Icon = Material("entities/attachs/ar/famas/cod2019_ar_famas_xmags.png", "mips smooth")

ATT.ClipSizeOverride = 50
ATT.ReloadTimeMult = 1.1
ATT.SprintToFireTimeMult = 1.05
ATT.AimDownSightsTimeMult = 1.05

ATT.SortOrder = 0
ATT.Category = {"cod2019_famas_mag","cod2019_mag_xmag"}
ATT.ActivateElements = {"mag_none","mag_xmag"}

ATT.Model = "models/weapons/cod2019/attachs/weapons/famas/attachment_vm_ar_falpha_xmags.mdl"
ATT.DropMagazineModel = "models/weapons/cod2019/attachs/weapons/famas/attachment_vm_ar_falpha_xmags.mdl"
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

ARC9.LoadAttachment(ATT, "cod2019_attach_xmag_50")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "60 Round Mags"
ATT.CompactName = "60-Round"
ATT.Description = [[High capacity magazines hold 60 rounds with a moderate weight increase.]]

ATT.Icon = Material("entities/attachs/ar/famas/cod2019_ar_famas_xmags2.png", "mips smooth")

ATT.ClipSizeOverride = 60
ATT.ReloadTimeMult = 1.15
ATT.SprintToFireTimeMult = 1.1
ATT.AimDownSightsTimeMult = 1.1
ATT.DeployTimeMult = 1.1

ATT.SortOrder = 0
ATT.Category = {"cod2019_famas_mag","cod2019_mag_xmag"}
ATT.ActivateElements = {"mag_none","mag_xmag"}

ATT.Model = "models/weapons/cod2019/attachs/weapons/famas/attachment_vm_ar_falpha_xmags2.mdl"
ATT.DropMagazineModel = "models/weapons/cod2019/attachs/weapons/famas/attachment_vm_ar_falpha_xmags2.mdl"
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

ARC9.LoadAttachment(ATT, "cod2019_attach_xmag_60")
