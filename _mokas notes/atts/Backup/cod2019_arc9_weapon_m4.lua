local ATT = {}
----------------------------------------------------------------------------------------
-- ATT = {}

-- ATT.MenuCategory = "ARC9 - MW2019 Attachments"
-- ATT.PrintName = "Alt Ironsight"
-- ATT.CompactName = "ALT"
-- ATT.Description = [[Alt Ironsight]]

-- --ATT.Icon = Material("entities/attachs/go_scar_barrel_short.png", "mips smooth")

-- --ATT.Model = "models/weapons/csgo/atts/grip_vertical.mdl"

-- ATT.SortOrder = 0
-- ATT.Category = "cod2019_sights_m4"
-- ATT.ActivateElements = {"sight_m13"}

-- ATT.Sights = {
    -- {
        -- Pos = Vector(0, 6, -1.3),
        -- Ang = Angle(0, -0.2, 0),
        -- Reticle = nil, -- Same as ATT.RTScopeReticle or HoloSightReticle but this sight only. Better cache material somewhere outside this structure: local Reticle1 = Material("reticle1.png", "mips smooth") and here you type only Reticle1). If not defined, will use ATT.RTScopeReticle/HoloSightReticle
        -- Magnification = 1.15,
        -- IsIronSight = true,
        -- KeepBaseIrons = false
    -- }
-- }

-- ARC9.LoadAttachment(ATT, "cod2019_m4a1_sight_alt")
----------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "Stock M16 Grenadier"
ATT.CompactName = "M16 Grenadier"
ATT.Description = [[Heavy duty 20.0 inch barrel greatly increases muzzle velocity and extends range. M203 handguard adds substantial weight for smoother handling.]]

ATT.Icon = Material("entities/attachs/ar/m4/cod2019_ar_m4_barmid.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/m4a1/attachment_vm_ar_mike4_mike203barrel.mdl"
ATT.BoneMerge = false

ATT.LHIK_Priority = 10
ATT.LHIK = true

ATT.SortOrder = 0
ATT.Category = "cod2019_m4_barrel"
ATT.ActivateElements = {"barrel_none","sight_front_none","muzzle_none","barrel_m16","barrel_custom"}

ATT.AimDownSightsTimeMult = 1.07
ATT.DeployTimeMult = 1.1
ATT.RangeMaxMult = 1.1
ATT.RangeMinMult = 1.1
ATT.SpreadMult = 0.95

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["muzzle_none2"] then
        model:SetBodygroup(1,1)
    end
    if swep:GetElements()["sight_front_folded"] then
        model:SetBodygroup(2,1)
    end
    if swep:GetElements()["optic_scope"] then
        model:SetBodygroup(2,2)
    end
	
    if swep:GetElements()["grip_angled"] then 
     model:SetPoseParameter("gripstyle", 1)
    elseif swep:GetElements()["grip"] then 
     model:SetPoseParameter("gripstyle", 2)
	 else
	 model:SetPoseParameter("gripstyle", 0)
    end
end

ATT.Element = {
    AttPosMods = {
        [3] = { -- slot of the weapon's attachment
            Pos = Vector(7.7, 0, 0),
            Ang = Angle(0,0,0),
        },
    }
}

ARC9.LoadAttachment(ATT, "cod2019_m4a1_barrel_mid")
----------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "FSS 14.5\" Tac Lite"
ATT.CompactName = "Tac Lite"
ATT.Description = [[Lightweight shroud and large bore barrel reduce weight for improved handling at the cost of muzzle velocity.]]

ATT.Icon = Material("entities/attachs/ar/m4/cod2019_ar_m4_barrel_v03.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/m4a1/attachment_vm_ar_mike4_barrel_v3_alt.mdl"
ATT.BoneMerge = true

ATT.SortOrder = 0
ATT.Category = "cod2019_m4_barrel"
ATT.ActivateElements = {"barrel_none","sight_front_none","muzzle_none","barrel_custom"}

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["sight_front_folded"] then
        model:SetBodygroup(1,1)
    end
	
    if swep:GetElements()["optic_scope"] then
        model:SetBodygroup(1,2)
    end

    if swep:GetElements()["muzzle_none2"] then
        model:SetBodygroup(2,1)
    end
end

ARC9.LoadAttachment(ATT, "cod2019_m4a1_barrel_v3")
----------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "FSS 11.5\" Commando"
ATT.CompactName = "Commando"
ATT.Description = [[Short, compact barrel sacrifices accuracy and range for speed and agility. Good for clearing out tight spaces.]]

ATT.Icon = Material("entities/attachs/ar/m4/cod2019_ar_m4_barshort.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/m4a1/attachment_vm_ar_mike4_shortbarrel.mdl"
ATT.BoneMerge = false

ATT.LHIK_Priority = 10
ATT.LHIK = true

ATT.MuzzleDevice_Priority = 5
ATT.MuzzleDevice = true

ATT.SortOrder = 0
ATT.Category = "cod2019_m4_barrel"
ATT.ActivateElements = {"barrel_none","sight_front_none","muzzle_none","barrel_custom"}

ATT.DrawTimeMult = 0.85
ATT.HolsterTimeMult = 0.85
ATT.AimDownSightsTimeMult = 0.83
ATT.RangeMaxMult = 0.9
ATT.RangeMinMult = 0.9
ATT.RecoilMult = 1.1

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["sight_front_folded"] then
        model:SetBodygroup(2,1)
    end
	
    if swep:GetElements()["optic_scope"] then
        model:SetBodygroup(2,2)
    end

    if swep:GetElements()["muzzle_none2"] then
        model:SetBodygroup(1,1)
    end

    if swep:GetElements()["grip_angled"] then 
     model:SetPoseParameter("gripstyle", 1)
    elseif swep:GetElements()["grip"] then 
     model:SetPoseParameter("gripstyle", 2)
	 else
	 model:SetPoseParameter("gripstyle", 0)
    end
end

ATT.Element = {
    AttPosMods = {
        [3] = { -- slot of the weapon's attachment
            Pos = Vector(-2.7, 0, 0),
            Ang = Angle(0,0,0),
        },
        [4] = {
            Pos = Vector(2, 0, -0.1),
            Ang = Angle(0,0,180),
        },
    }
}

ARC9.LoadAttachment(ATT, "cod2019_m4a1_barrel_short")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "9mm Para 32-Round Mags"
ATT.CompactName = "32-Para"
ATT.Description = [[Conversion kit to use 9mm parabellum ammunition. Cycles at a much higher rate with less recoil.]]

ATT.Icon = Material("entities/attachs/ar/m4/cod2019_ar_m4_calsmg.png", "mips smooth")

ATT.ClipSizeOverride = 32

ATT.DamageMaxMult = 0.8
ATT.DamageMinMult = 0.7
ATT.RangeMaxMult = 0.6
ATT.RangeMinMult = 0.6
ATT.DeployTimeMult = 0.9

ATT.RPMMult = 1.25

ATT.SortOrder = 0
ATT.Category = {"cod2019_m4_mag"}
ATT.ActivateElements = {"mag_none","mag_calsmg"}

ATT.ShellModel = "models/weapons/cod2019/shared/shell_9mm_hr.mdl"
ATT.ShellSounds = ARC9.COD2019_9mm_Table
ATT.ShellScale = 0.065

ATT.Model = "models/weapons/cod2019/attachs/weapons/m4a1/attachment_vm_ar_mike4_calsmg.mdl"
ATT.DropMagazineModel = "models/weapons/cod2019/attachs/weapons/m4a1/attachment_vm_ar_mike4_calsmg_phys.mdl"
ATT.BoneMerge = true

ATT.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_metal_concrete_01.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_metal_concrete_02.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_metal_concrete_03.ogg",
}

-- Outside
ATT.LayerSound = "layer_AR.Outside"
ATT.DistanceSound = "distant_SMG.Outside"
-- Inside
ATT.LayerSoundIndoor = "layer_AR.Inside"
ATT.DistanceSoundIndoor = "distant_SMG.Inside"

local bulletbones = {
    [4] = "j_b_015",
    [3] = "j_b_014",
    [2] = "j_b_016",
    [1] = "j_b_017"
}

local v0 = Vector(0, 0, 0)
local v1 = Vector(1, 1, 1)

ATT.DrawFunc = function(wep, model, wm)
    local clip = wep:GetLoadedRounds()

    local draw = 4 - clip + 1

    for i = 1, 4 do
        local boneid = model:LookupBone(bulletbones[i])
        if i >= draw then
            model:ManipulateBoneScale(boneid, v1)
        else
            model:ManipulateBoneScale(boneid, v0)
        end
    end
end

ARC9.LoadAttachment(ATT, "cod2019_m4_mag_9mm")