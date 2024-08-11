AddCSLuaFile()
if CLIENT then
    killicon.Add( "arc9_cod2019_lm_minigun", "vgui/killicons/cod2019_lm_minigun.png", Color(251, 85, 25, 255))
end

SWEP.LoadoutImage = "entities/loadout/arc9_cod2019_lm_minigun.png"

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.NotForNPCs = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_lmg") or "Specials"
SWEP.ARC9WeaponCategory = 2

SWEP.PrintName = ARC9:GetPhrase("mw19_weapon_minigun") or "Minigun"

SWEP.Class = ARC9:GetPhrase("mw19_class_weapon_ar") or "Machine Guns"
SWEP.Trivia = {
    [ ARC9:GetPhrase("mw19_country") ] = ARC9:GetPhrase("mw19_country_usa"),
    [ ARC9:GetPhrase("mw19_manufacturer") ] = ARC9:GetPhrase("mw19_manufacturer_fss"),
    [ ARC9:GetPhrase("mw19_caliber") ] = ARC9:GetPhrase("mw19_caliber_762"),
    [ ARC9:GetPhrase("mw19_weight") ] = string.format(ARC9:GetPhrase("mw19_weight_val"), 19, 19 * 2.20),
    [ ARC9:GetPhrase("mw19_weight_projectile") ] = string.format(ARC9:GetPhrase("mw19_weight_projectile_val"), 147),
}

SWEP.Credits = {
    [ ARC9:GetPhrase("mw19_author") ] = "Twilight Sparkle/Firmeteran",
    [ ARC9:GetPhrase("mw19_assets") ] = "Activision/Infinity Ward"
}

SWEP.Description = ARC9:GetPhrase("mw19_weapon_minigun_desc") or [[A machine gun that appears in a portable form with high rate of fire around 3,000 RPM.]]

SWEP.ViewModel = "models/weapons/cod2019/c_eq_minigun.mdl"
SWEP.WorldModel = "models/weapons/cod2019/w_lmg_minigun.mdl"
SWEP.DefaultBodygroups = "00000000"

SWEP.Slot = 3

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = false
SWEP.WorldModelMirror = "models/weapons/cod2019/c_eq_minigun.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-6, 8, -9),
    Ang = Angle(-17, 3, 180),
    TPIKPos = Vector(-11, 5, -1),
    TPIKAng = Angle(0, 0, 180),
    Scale = 1
}

function SWEP:DrawWorldModel() -- custom func to never draw custommodel when on ground and use regular wm
    local owner = self:GetOwner()

    if IsValid(owner) and owner:GetActiveWeapon() == self then
        self:DrawCustomModel(true)
        self:DoBodygroups(true)
        self:DrawLasers(true)
        self:DoTPIK()
        self:DrawFlashlightsWM()
    else
        self:DrawModel()
    end
end

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 50 -- Damage done at point blank range
SWEP.DamageMin = 18 -- Damage done at maximum range

SWEP.Num = 1

SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 5 / ARC9.HUToM -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 100 / ARC9.HUToM -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 15
SWEP.ImpactForce = 15

SWEP.PhysBulletMuzzleVelocity = 3000 * 12
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.5

-------------------------- MAGAZINE

SWEP.Ammo = "ar2" -- what ammo type the gun uses

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 200 -- Self-explanatory.
SWEP.SupplyLimit = 2 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 10 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 1750

SWEP.Firemodes = {
    {
        Mode = -1,
    },
}

-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1

SWEP.RecoilSeed = 65473

SWEP.RecoilPatternDrift = 12

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1.5 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.3

SWEP.RecoilDissipationRate = 40 -- How much recoil dissipates per second.
SWEP.RecoilDissipationRateSights = 50
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 1 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 2

SWEP.RecoilMultCrouch = 0.8
SWEP.RecoilMultMove = 1.25

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilPunch = 2

-------------------------- SPREAD

SWEP.Spread = 0.08

SWEP.SpreadAddRecoil = 0.01
SWEP.SpreadMultRecoil = 1.21
SWEP.RecoilModifierCap = 0.3

SWEP.SpreadAddMove = 0.05
SWEP.SpreadAddMidAir = 0.1
SWEP.SpreadAddHipFire = 0
SWEP.SpreadAddCrouch = -0.01
SWEP.SpreadAddSights = -0.05

-------------------------- HANDLING

SWEP.SpeedMult = 0.85 -- Walk speed multiplier
SWEP.SpeedMultSights = 0.65 -- When aiming
SWEP.SpeedMultShooting = 0.4

SWEP.AimDownSightsTime = 1 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.5 -- How long it takes to go from sprinting to being able to fire.

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.3

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 255, 155) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-2, -2, 1),
    Ang = Angle(0, 0, 0),
    Magnification = 1.4,
    ViewModelFOV = 44,
    CrosshairInSights = false,
}
SWEP.HasSights = true
SWEP.ViewModelFOVBase = 64

SWEP.SprintMidPoint = {
    Pos = Vector(0, -1, 0),
    Ang = Angle(-2.5, 0, 2.5)
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.MovingMidPoint = {
    Pos = Vector(0, -0.5, -0.5),
    Ang = Angle(0, 0, 0)
}

SWEP.MovingPos = Vector(-1, -1, -1)
SWEP.MovingAng = Angle(0, 0, -10)

SWEP.CrouchPos = Vector(-0.5, -0, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.CrouchPos = Vector(-1, -0.5, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.SprintPos = Vector(1, 0, -1)
SWEP.SprintAng = Angle(0, 0, 15)

SWEP.CustomizeAng = Angle(90, 0, -10)
SWEP.CustomizePos = Vector(24, 50, 11)
SWEP.CustomizeRotateAnchor = Vector(22.5, -4.25, -4)
SWEP.CustomizeSnapshotFOV = 65
SWEP.CustomizeSnapshotPos = Vector(-1, 25, 5)
SWEP.CustomizeNoRotate = false

-------------------------- HoldTypes

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeHolstered = "passive"
SWEP.HoldTypeSights = "ar2"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"
SWEP.HoldTypeNPC = "ar2"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "muzzleflash_lmg"
SWEP.AfterShotParticle = "barrel_smoke_plume"
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.ExplosionEffect = "cod2019_muzzle_he2"

-- SWEP.TracerEffect = "ARC9_tracer" -- The effect to use for hitscan tracers
-- SWEP.TracerColor = Color(255, 185, 0) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.
-- SWEP.TracerSize = 10

SWEP.CamQCA = 4
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_762_hr.mdl"
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 0.1
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)
SWEP.ShellSounds = ARC9.COD2019_556_Table

SWEP.TriggerDelay = 0.45 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayTime = 0.45 -- Time until weapon fires.

-------------------------- SOUNDS

local path = "weapons/cod2019/minigun/"

SWEP.ShootSound = "COD2019.Minigun.Fire"
SWEP.ShootSoundIndoor = "COD2019.Minigun.Fire"

-- Non-Silenced Outside
SWEP.LayerSound = "Layer_AR.Outside"
SWEP.DistantShootSound = "Distant_LMG.Outside"
-- Inside
SWEP.LayerSoundIndoor = "Layer_AR.Inside"
SWEP.DistantShootSoundIndoor = "Distant_LMG.Inside"
---------------------------------------------------

SWEP.EnterSightsSound = "weapons/cod2019/sa87/weap_ar_lima86_ads_up.ogg"
SWEP.ExitSightsSound = "weapons/cod2019/sa87/weap_ar_lima86_ads_down.ogg"

SWEP.BulletBones = {
    [1] = "j_ammo_13",
    [2] = "j_ammo_12",
    [3] = "j_ammo_11",
    [4] = "j_ammo_10",
    [5] = "j_ammo_9",
	[6] = "j_ammo_8",
	[7] = "j_ammo_7",
	[8] = "j_ammo_6",
	[9] = "j_ammo_5",
	[10] = "j_ammo_4",
	[11] = "j_ammo_3",
	[12] = "j_ammo_2",
	[13] = "j_ammo_1",
}

SWEP.Overheat = true
SWEP.HeatCapacity = 125
SWEP.HeatDissipation = 52.5
SWEP.HeatDelayTime = 0.25
SWEP.HeatPerShot = 1
SWEP.HeatLockout = false
SWEP.MalfunctionWait = 0.25

SWEP.Animations = {
    ["fire"] = {
        Source = "shoot1",
        EventTable = {
            {s = path .. "weap_dblmg_spin_plr.ogg", v = 0.2, t = 0/30},
			{s = path .. "weap_dblmg_spindown_plr_01.ogg", v = 0.3, t = 4/30},
        },
    },
    ["trigger"] = {
        Source = {"windup"},
		--MinProgress = 0.8,
        EventTable = {
            {s = path .. "weap_dblmg_spinup_plr_01.ogg", v = 0.5, t = 0/30},
        },
    },
    ["untrigger"] = {
        Source = {"windup"},
		--MinProgress = 0.8,
		Reverse = true,
        EventTable = {
            {s = path .. "wfoly_lm_dblmg_inspect_03.ogg", t = 5/30},
			{s = path .. "weap_dblmg_spindown_plr_01.ogg", v = 0.4, t = 0/30},
        },
    },
    ["reload"] = {
        Source = "reload",
		MinProgress = 0.8,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 1, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_lm_minigun_reload_start.ogg", t = 0.13},
			{s = path .. "wfoly_plr_lm_minigun_reload_belt_out.ogg", t = 1.5},
			{s = path .. "wfoly_plr_lm_minigun_reload_belt_in.ogg", t = 3.5},
			{s = path .. "wfoly_plr_lm_minigun_reload_end.ogg", t = 4.5},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.8,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 1, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_lm_minigun_reload_start.ogg", t = 0.13},
			{s = path .. "wfoly_plr_lm_minigun_reload_belt_out.ogg", t = 0.86},
			{s = path .. "wfoly_plr_lm_minigun_reload_belt_in.ogg", t = 2.5},
			{s = path .. "wfoly_plr_lm_minigun_reload_end.ogg", t = 3},
        },
    },
    ["draw"] = {
        Source = "draw",
		MinProgress = 0.7,
		FireASAP = true,
        EventTable = {
            {s = path .. "wfoly_lm_sierrax_raise.ogg", t = 5/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            {s = path .. "wfoly_lm_sierrax_raise.ogg", t = 0/30},
        },
    },
    ["idle"] = {
        Source = "idle",
    },
    ["idle_sprint"] = {
        Source = "sprint",
    },
    ["exit_sprint"] = {
        Source = "sprint_out",
		Mult = 3,
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
		Mult = 3,
    },
    ["super_sprint_idle"] = {
        Source = "super_sprint",
    },
    ["super_sprint_in"] = {
        Source = "super_sprint_in",
		Mult = 2,
    },
    ["super_sprint_out"] = {
        Source = "super_sprint_out",
		Mult = 2,
    },
    ["inspect"] = {
        Source = "lookat01",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 1.1, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_lm_dblmg_inspect_01.ogg", t = 18/30},
			{s = path .. "wfoly_lm_dblmg_inspect_02.ogg", t = 56/30},
			{s = path .. "wfoly_lm_dblmg_inspect_03.ogg", t = 109/30},
        },
    },
    ["bash"] = {
        Source = "melee",
    },
    ["jam"] = {
        Source = "jam",
    },
    ["fix"] = {
        Source = "jam_fix",
    },
}

--SWEP.Hook_Think	= ARC9.CSGO.BlendCyl

-------------------------- ATTACHMENTS

local Translate_Fast = {
    ["reload"] = "reload_fast",
}
local Translate_TacSprint = {
    ["idle_sprint"] = "super_sprint_idle",
    ["enter_sprint"] = "super_sprint_in",
    ["exit_sprint"] = "super_sprint_out",
}

SWEP.Hook_TranslateAnimation = function(wep, anim)
    --local attached = self:GetElements()

    local speedload = wep:HasElement("perk_speedreload")
    local super_sprint = wep:HasElement("perk_super_sprint")

    if super_sprint and Translate_TacSprint[anim] then
        return Translate_TacSprint[anim]
    end

    if speedload then
        if Translate_Fast[anim] then
            return Translate_Fast[anim]
            end
        end
    end

SWEP.AttachmentElements = {
    -- ["stock_none"] = {
        -- Bodygroups = {
            -- {3,2},
        -- },
    -- },
}

-- SWEP.Hook_ModifyBodygroups = function(wep, data)
    -- local model = data.model
    -- if wep:HasElement("stock_retract") then model:SetBodygroup(3,1) end
-- end

SWEP.Attachments = {
    { -- 1
        PrintName = ARC9:GetPhrase("mw19_category_laser"),
		DefaultIcon = Material("entities/defattachs/laser-ar.png", "mips smooth"),
        Category = "cod2019_tac_rail_alt",
        Bone = "tag_laser_show",
        Pos = Vector(0.15, -0.16, 0),
        Ang = Angle(0, 0, 18),
		LaserCorrectionAngle = Angle(-2.5, 0, -9),
    },
    { -- 2
        PrintName = ARC9:GetPhrase("mw19_category_ammo"),
		DefaultIcon = Material("arc9/def_att_icons/ammotype.png", "mips smooth"),
        Bone = "tag_mag_attach",
		Category = {"cod2019_ammo"},
		Pos = Vector(-1.5, 0, 0),
    },
    { -- 3
        PrintName = ARC9:GetPhrase("mw19_category_perk"),
        Category = {"cod2019_perks","cod2019_perks_soh","cod2019_perks_ss"},
        Bone = "tag_barrel_attach",
        Pos = Vector(4, 0, 0),
    },
	
	-- Unofficial
    -- { -- 4
        -- PrintName = ARC9:GetPhrase("mw19_category_receiver"),
        -- Category = "cod2019_minigun_receiver",
        -- Bone = "tag_barrel_attach",
        -- Pos = Vector(0, 0, 0),
		-- Icon_Offset = Vector(0, 0, 0),
		-- Hidden = true,
    -- },
	
	-- Cosmetics
    -- { -- 5
        -- PrintName = ARC9:GetPhrase("mw19_category_skins"),
        -- Bone = "tag_barrel_attach",
        -- Pos = Vector(7, 0, 3),
        -- Category = "cod2019_skins_minigun",
		-- CosmeticOnly = true,
    -- },
    -- { -- 6
        -- PrintName = ARC9:GetPhrase("mw19_category_camouflage"),
        -- Category = {"universal_camo"},
        -- Bone = "tag_barrel_attach",
        -- Pos = Vector(5, 0, 3),
        -- CosmeticOnly = true,
    -- },
    -- { -- 7
        -- PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        -- StickerModel = "models/weapons/cod2019/stickers/eq_minigun_decal_a.mdl",
        -- Category = "stickers",
        -- Bone = "tag_barrel_attach",
        -- Pos = Vector(3, 0, 3),
    -- },
    -- { -- 8
        -- PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        -- StickerModel = "models/weapons/cod2019/stickers/eq_minigun_decal_b.mdl",
        -- Category = "stickers",
        -- Bone = "tag_barrel_attach",
        -- Pos = Vector(1, 0, 3),
    -- },
    -- { -- 9
        -- PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        -- StickerModel = "models/weapons/cod2019/stickers/eq_minigun_decal_c.mdl",
        -- Category = "stickers",
        -- Bone = "tag_barrel_attach",
        -- Pos = Vector(-1, 0, 3),
    -- },
    -- { -- 10
        -- PrintName = ARC9:GetPhrase("mw19_category_charm"),
        -- CosmeticOnly = true,
        -- Category = {"charm"},
        -- Bone = "tag_barrel_attach",
        -- Pos = Vector(0.5, 0, 0),
		-- Icon_Offset = Vector(-7.5, 0, 3),
		-- Scale = 1.5,
    -- },
    -- { -- 11
        -- PrintName = ARC9:GetPhrase("mw19_category_stats"),
        -- Category = {"killcounter","killcounter2"},
        -- Bone = "tag_barrel_attach",
        -- Pos = Vector(0, 0, 0),
		-- Icon_Offset = Vector(-3.25, 0, 1.9),
		-- CosmeticOnly = true,
    -- },
}

SWEP.GripPoseParam = 3
SWEP.GripPoseParam2 = 0.25

-- Warzone-esque Stats; Add here to change only when using Warzone Stats variable.
if GetConVar("arc9_mw19_stats_warzone"):GetBool() then

end
