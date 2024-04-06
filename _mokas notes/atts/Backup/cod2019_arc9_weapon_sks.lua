local ATT = {}
---------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "PU Scope"
ATT.CompactName = [[PU]]
ATT.Icon = Material("entities/attachs/mm/sks/cod2019_mm_sks_scope.png", "mips smooth")
ATT.Description = [[Long-range combat scope. Provides an improved precision at longer ranges.]]

ATT.CustomPros = {
    [ ARC9:GetPhrase("mw19_optic_stat_zoom") ] = "4.4x"
}

ATT.SortOrder = 4
ATT.Free = false
ATT.Folder = ARC9:GetPhrase("mw19_folder_scope")

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_optic_sks"}
ATT.ActivateElements = {"scope_sks"}

ATT.Model = "models/weapons/cod2019/attachs/scopes/scope_sks.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(-1.5, 0, 0)
ATT.ModelAngleOffset = Angle(0, 0, 0)

ATT.AimDownSightsTimeAdd = 0.08
-- ATT.VisualRecoilMult = 0.99
ATT.RecoilMult = 0.99

ATT.Sights = {
    {
        Pos = Vector(-0.001, 6, -0.58),
        Ang = Angle(0, 0, 0),
        ViewModelFOV = 36,
        Magnification = 1.15,
        IgnoreExtra = true,
    },
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 1
ATT.RTScopeFOV = 36 / 4.4
ATT.RTScopeRes = 512
ATT.RTScopeReticle = Material("hud/arc9_cod2019/overlays/sks_crosshair.png", "mips")
ATT.RTScopeReticleScale = 0.9
ATT.RTScopeShadowIntensity = 15
ATT.RTScopeNoPP = false
ATT.RTScopeColorable = false

ARC9.LoadAttachment(ATT, "cod2019_optic_scope_sks")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "22\" FSS M59/66"
ATT.CompactName = "FSS M59/66"
ATT.Description = [[A modern take from FSS on the classic Yugoslavian sniper barrel. 22.0" barrel greatly increases muzzle velocity and extends range.]]

ATT.Icon = Material("entities/attachs/mm/sks/cod2019_mm_sks_barlong.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/sks/attachment_vm_sn_sksierra_barlong.mdl"
ATT.BoneMerge = false

ATT.SortOrder = 0
ATT.Category = "cod2019_sks_barrel"
ATT.ActivateElements = {"barrel_none","muzzle_none"}

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
        [3] = { -- slot of the weapon's attachment
            Pos = Vector(2.2, 0, 0),
            Ang = Angle(0,0,0),
        }
    }
}

ARC9.LoadAttachment(ATT, "cod2019_sks_barrel_long")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "16\" FSS Para"
ATT.CompactName = "FSS Para"
ATT.Description = [[This compact barrel from FSS is a custom version of the classic SKS paratrooper barrel. Better for sniping on the move.]]

ATT.Icon = Material("entities/attachs/mm/sks/cod2019_mm_sks_barshort.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/sks/attachment_vm_sn_sksierra_barshort.mdl"
ATT.BoneMerge = false

ATT.SortOrder = 0
ATT.Category = "cod2019_sks_barrel"
ATT.ActivateElements = {"barrel_none","muzzle_none"}

ATT.MuzzleDevice = true -- set to true if you want to use this to emit particles
ATT.MuzzleDevice_Priority = 2

ATT.SprintToFireTimeMult = 0.9
ATT.AimDownSightsTimeMult = 0.9
ATT.RecoilMult = 1.1

ATT.RangeMaxMult = 0.9
ATT.RangeMinMult = 0.9

ATT.Element = {
    AttPosMods = {
        [3] = { -- slot of the weapon's attachment
            Pos = Vector(-3.5, 0, 0),
            Ang = Angle(0,0,0),
        }
    }
}

ARC9.LoadAttachment(ATT, "cod2019_sks_barrel_short")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "SKS Rifle Stock"
ATT.CompactName = "SKS Rifle Stock"
ATT.Description = [[Traditional rifle stock provides exceptional control while aiming, at the cost of mobility.]]

ATT.Icon = Material("entities/attachs/mm/sks/cod2019_mm_sks_stockhvy2.png", "mips smooth")

ATT.AimDownSightsTimeMult = 1.1
ATT.SprintToFireTimeMult = 1.1
ATT.RecoilMult = 0.9
ATT.VisualRecoilMult = 0.9

ATT.SortOrder = 0
ATT.Category = "cod2019_sks_stock"
ATT.ActivateElements = {"stock_none"}

ATT.Model = "models/weapons/cod2019/attachs/weapons/sks/attachment_vm_sn_sksierra_stockhvy2.mdl"
ATT.RHIK_Priority = 5
ATT.RHIK = true

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["grip"] or swep:GetElements()["grip_angled"] then
        model:SetBodygroup(1,1)
    end
end

ATT.Element = {
    AttPosMods = {
        [5] = { -- slot of the weapon's attachment
            Pos = Vector(-3, 0, 0),
            Ang = Angle(0,0,180),
        }
    }
}

ARC9.LoadAttachment(ATT, "cod2019_sks_stock_heavy")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "30 Round Mags"
ATT.CompactName = "30-Round"
ATT.Description = [[High capacity magazines hold 30 rounds with a moderate weight increase.]]

ATT.Icon = Material("entities/attachs/ar/famas/cod2019_ar_famas_xmags.png", "mips smooth")

ATT.ClipSizeOverride = 30
-- ATT.ReloadTimeMult = 1.1
-- ATT.SprintToFireTimeMult = 1.05
-- ATT.AimDownSightsTimeMult = 1.05

ATT.SortOrder = 0
ATT.Category = {"cod2019_sks_mag"}
ATT.ActivateElements = {"mag_none","mag_xmag"}

-- ATT.Model = "models/weapons/cod2019/attachs/weapons/an94/attachment_vm_ar_anov94_xmags.mdl"
-- ATT.DropMagazineModel = "models/weapons/cod2019/attachs/weapons/an94/attachment_vm_ar_anov94_xmags.mdl"
-- ATT.BoneMerge = true
--ATT.ModelOffset = Vector(1, 0, 1)

-- ATT.DropMagazineSounds = {
-- "weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_metal_concrete_01.ogg", 
-- "weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_metal_concrete_02.ogg", 
-- "weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_metal_concrete_03.ogg",
-- }

-- ATT.BulletBones = {
    -- [1] = {"j_bullet1","j_ammo1"},
    -- [2] = {"j_bullet2","j_ammo2"},
	-- [3] = {"j_bullet3","j_ammo3"},
	-- [4] = {"j_bullet4","j_ammo4"},
-- }

ARC9.LoadAttachment(ATT, "cod2019_sks_mag_30")