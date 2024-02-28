AddCSLuaFile()
--SWEP.CustomSelectIcon = Material("vgui/selection/cod2019_sh_725.png")
if CLIENT then
    killicon.Add( "arc9_cod2019_sh_725", "vgui/killicons/cod2019_sh_725.png", Color(251, 85, 25, 255))
end

SWEP.LoadoutImage = "entities/loadout/arc9_cod2019_sh_725.png"

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_shotgun") or "Shotguns"

SWEP.PrintName = ARC9:GetPhrase("mw19_weapon_725") or "725"

SWEP.Class = ARC9:GetPhrase("mw19_class_weapon_shotgun") or "Shotgun"
SWEP.Trivia = {
    [ ARC9:GetPhrase("mw19_country") ] = ARC9:GetPhrase("mw19_country_japan"),
    [ ARC9:GetPhrase("mw19_manufacturer") ] = ARC9:GetPhrase("mw19_manufacturer_tempus"),
    [ ARC9:GetPhrase("mw19_caliber") ] = ARC9:GetPhrase("mw19_caliber_12gauge"),
    [ ARC9:GetPhrase("mw19_weight") ] = string.format(ARC9:GetPhrase("mw19_weight_val"), 3.91, 3.91 * 2.20),
    [ ARC9:GetPhrase("mw19_weight_projectile") ] = string.format(ARC9:GetPhrase("mw19_weight_projectile_val"), 493),
    -- [ ARC9:GetPhrase("mw19_muzzle_energy") ] = "1,350 ft/s",
    -- [ ARC9:GetPhrase("mw19_muzzle_velocity") ] = "2,705 joules"
}

SWEP.Credits = {
    [ ARC9:GetPhrase("mw19_author") ] = "Twilight Sparkle/Firmeteran",
    [ ARC9:GetPhrase("mw19_assets") ] = "Activision/Infinity Ward"
}

SWEP.Description = ARC9:GetPhrase("mw19_weapon_725_desc") or [[Break action shotgun with 2 round capacity. A long back-bored barrel and cylindrical choke keeps spread tight and lethal over extended ranges.]]

SWEP.ViewModel = "models/weapons/cod2019/c_shot_725.mdl"
SWEP.WorldModel = "models/weapons/w_shot_m3super90.mdl"
SWEP.DefaultBodygroups = "00000000"

SWEP.Slot = 3

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_shot_725.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-11, 6, -2.5),
    Ang = Angle(-17, 3, 180),
    TPIKPos = Vector(-2, 4, -2),
    TPIKAng = Angle(-8, 0, 180),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 132 / 6 -- Damage done at point blank range
SWEP.DamageMin = 51 / 6 -- Damage done at maximum range

SWEP.DistributeDamage = false

SWEP.Num = 6

SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 20 / ARC9.HUToM
SWEP.RangeMax = 40 / ARC9.HUToM

SWEP.Penetration = 1 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.1

SWEP.ImpactForce = 11

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 1710.76 * 12
SWEP.PhysBulletGravity = 2
SWEP.PhysBulletDrag = 3

SWEP.RicochetChance = 0

-------------------------- MAGAZINE

SWEP.Ammo = "buckshot" -- What ammo type this gun uses.

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 2 -- Self-explanatory.
SWEP.SupplyLimit = 64 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 2 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true
SWEP.ForceStandardCrosshair = true

-------------------------- FIREMODES

SWEP.RPM = 560

SWEP.Firemodes = {
    {
	    PrintName = ARC9:GetPhrase("mw19_firemode_single"),
        Mode = 1,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_firemode_double"),
        Mode = 1,
		AmmoPerShot = 2,
		NumMult = 2,
		RecoilPerShot = 4,
    },
}

-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 4

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 3 -- Multiplier for vertical recoil

SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.3

SWEP.RecoilDissipationRate = 10 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 5 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 4

SWEP.RecoilMultCrouch = 0.8
SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.9

SWEP.RecoilPerShot = 2
SWEP.RecoilMax = 4

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilMultSights = 0.7
SWEP.VisualRecoilPunchSights = 25

SWEP.VisualRecoilPunch = 2
SWEP.VisualRecoilUp = 0.5
SWEP.VisualRecoilRoll = 25

-------------------------- SPREAD

-- SWEP.Spread = 0.035

-- SWEP.SpreadAddRecoil = 0.02 -- Applied per unit of recoil.

-- SWEP.SpreadAddMove = 0.03
-- --SWEP.SpreadAddMidAir = 0
-- SWEP.SpreadAddHipFire = 0.035
-- SWEP.SpreadMultHipFire = 0.9
-- SWEP.SpreadMultSights = 1
-- SWEP.SpreadAddCrouch = -0.004
-- SWEP.SpreadAddSightsMove = -0.1

-- SWEP.Spread = 220 * ARC9.MOAToAcc
-- SWEP.UseDispersion = true
-- SWEP.DispersionSpread = 0.01
-- SWEP.DispersionSpreadAddHipFire = 0.02
--SWEP.DispersionSpreadMultMove = 1.5
--SWEP.DispersionSpreadAddMove = 0.015

SWEP.Spread = 0.075

SWEP.SpreadAddRecoil = 0.01

SWEP.SpreadAddHipFire = SWEP.Spread * 0
SWEP.SpreadAddMove = SWEP.Spread * 0.1
SWEP.SpreadAddMidAir = SWEP.Spread * 1.2
SWEP.SpreadAddCrouch = -SWEP.Spread * 0.1
SWEP.SpreadAddSights = -SWEP.Spread * 0.35

SWEP.SpreadMultRecoil = 1.1
SWEP.RecoilModifierCap = 3
SWEP.RecoilModifierCapMove = 0
SWEP.RecoilModifierCapSights = 0.05

-------------------------- HANDLING

SWEP.FreeAimRadius = 0 -- In degrees, how much this gun can free aim in hip fire.
SWEP.Sway = 0 -- How much the gun sways.

SWEP.AimDownSightsTime = 0.3 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.3 -- How long it takes to go from sprinting to being able to fire.

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.2

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 255, 155) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-3.05, -2, 1),
    Ang = Angle(0, 0, -2),
    Magnification = 1.1,
    ViewModelFOV = 56,
    CrosshairInSights = false
}

SWEP.ViewModelFOVBase = 65

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

SWEP.MovingPos = Vector(-1, -0.5, -1)
SWEP.MovingAng = Angle(0, 0, -10)

SWEP.CrouchPos = Vector(-1, -0.5, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.SprintPos = Vector(1, 0, -1)
SWEP.SprintAng = Angle(0, 0, 25)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(17, 35, 3)
SWEP.CustomizeRotateAnchor = Vector(17, -2.25, -4)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeNoRotate = false
SWEP.CustomizeSnapshotPos = Vector(0, 7, 3)

SWEP.PeekPos = Vector(1.5, 2, -2)
SWEP.PeekAng = Angle(0, 0, -15)

-------------------------- HoldTypes

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeHolstered = "passive"
SWEP.HoldTypeSights = "ar2"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "muzzleflash_shotgun"
SWEP.AfterShotParticle = "AC_muzzle_smoke_barrel"
SWEP.TracerEffect = "cod2019_tracer_slow"
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1
SWEP.CaseEffectQCA = 6

SWEP.CamQCA = 3
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_origin12.mdl"
SWEP.ShellSounds = ARC9.COD2019_Shotgun_Table
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 1.2
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.ShellCorrectAng = Angle(0, 0, 0)

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false

SWEP.DropMagazineModel = "models/weapons/cod2019/shared/shell_origin12.mdl"
SWEP.DropMagazineSounds = {"arc9/casings/casing_12ga_1.wav", "arc9/casings/casing_12ga_2.wav", "arc9/casings/casing_12ga_3.wav"}
SWEP.DropMagazineAmount = 1
SWEP.DropMagazineAmountEmpty = 2
SWEP.DropMagazineTime = 1
SWEP.DropMagazineQCA = 6

SWEP.NoShellEject = true

-------------------------- SOUNDS

local path = "weapons/cod2019/725/"

SWEP.ShootSound = "COD2019.725.Fire"
SWEP.ShootSoundIndoor = "COD2019.725.Fire"

SWEP.ShootSoundSilenced = "COD2019.725.Fire.S"
SWEP.ShootSoundSilencedIndoor = "COD2019.725.Fire.S"

-- Non-Silenced
SWEP.LayerSound = "Layer_Shotgun.Outside"
SWEP.DistantShootSound = "Distant_Sniper.Outside"
-- Inside
SWEP.LayerSoundIndoor = "Layer_Sniper.Inside"
SWEP.DistantShootSoundIndoor = "Distant_Shotgun.Inside"
---------------------------------------------------
-- Silenced
SWEP.LayerSoundSilenced = "Layer_ARSUP.Outside"
SWEP.DistantShootSoundSilenced = "Distant_Shotgun2.Outside"
-- Inside
SWEP.LayerSoundSilencedIndoor = "Layer_ShotgunSUP.Inside"
SWEP.DistantShootSoundSilencedIndoor = "Distant_ShotgunSUP.Inside"
---------------------------------------------------

SWEP.EnterSightsSound = path .. "weap_sh_charlie725_ads_up.ogg"
SWEP.ExitSightsSound = path .. "weap_sh_charlie725_ads_down.ogg"

SWEP.TriggerDelay = 0.025 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayCancellable = false
SWEP.TriggerDelayTime = 0.025 -- Time until weapon fires.

SWEP.TriggerDownSound = "weapons/cod2019/725/weap_charlie725_fire_first_plr_01.ogg"
SWEP.TriggerUpSound = "weapons/cod2019/model680/weap_romeo870_disconnector_plr_01.ogg"

SWEP.Animations = {
	["enter_sights"] = {
		Source = "idle",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
	},
    ["fire"] = {
        Source = "shoot1",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
    },
    ["fire_scope"] = {
        Source = "shoot1_scope",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
    },
    ["reload"] = {
        Source = "reload_short",
		MinProgress = 0.8,
		RefillProgress = 0.65,
		FireASAP = true,
		DropMagAt = 0.6,
		--EjectAt = 0.65,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sh_charlie725_reload_start.ogg", t = 0.0},
			{s = path .. "wfoly_plr_sh_charlie725_reload_open_01.ogg", t = 0.2},
            {s = path .. "wfoly_plr_sh_charlie725_reload_swing.ogg", t = 0.567},
			{s = path .. "wfoly_plr_sh_charlie725_reload_shellin_01.ogg", t = 1.267},
			{s = path .. "wfoly_plr_sh_charlie725_reload_close_01.ogg", t = 1.733},
			{s = path .. "wfoly_plr_sh_charlie725_reload_end.ogg", t = 2.2},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.8,
		RefillProgress = 0.725,
		FireASAP = true,
		DropMagAt = 0.6,
		--EjectAt = 0.65,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.65, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_plr_sh_charlie725_reload_fast_open_01.ogg", t = 0.1},
			{s = path .. "wfoly_plr_sh_charlie725_reload_fast_start.ogg", t = 0.133},
            {s = path .. "wfoly_plr_sh_charlie725_reload_fast_swing.ogg", t = 0.533},
			{s = path .. "wfoly_plr_sh_charlie725_reload_shellin_01.ogg", t = 0.933},
            {s = path .. "wfoly_plr_sh_charlie725_reload_end.ogg", t = 1.367},
			{s = path .. "wfoly_plr_sh_charlie725_reload_close_01.ogg", t = 1.4},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.8,
		RefillProgress = 0.675,
		FireASAP = true,
		DropMagAt = 0.6,
		--EjectAt = 0.7,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sh_charlie725_reload_empty_start.ogg", t = 0.0},
			{s = path .. "wfoly_plr_sh_charlie725_reload_empty_open_01.ogg", t = 0.2},
            {s = path .. "wfoly_plr_sh_charlie725_reload_empty_swing.ogg", t = 0.7},
			{s = path .. "wfoly_plr_sh_charlie725_reload_empty_shellsin_v2_01.ogg", t = 1.167},
			{s = path .. "wfoly_plr_sh_charlie725_reload_empty_shellsin_v2_02.ogg", t = 1.5},
			{s = path .. "wfoly_plr_sh_charlie725_reload_empty_close_01.ogg", t = 2.0},
			{s = path .. "wfoly_plr_sh_charlie725_reload_empty_end.ogg", t = 2.333},
        },
    },
    ["reload_empty_fast"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.8,
		RefillProgress = 0.75,
		FireASAP = true,
		DropMagAt = 0.6,
		--EjectAt = 0.7,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.65, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sh_charlie725_reload_empty_fast_start.ogg", t = 0.0},
			{s = path .. "wfoly_plr_sh_charlie725_reload_empty_fast_open_01.ogg", t = 0.1},
            {s = path .. "wfoly_plr_sh_charlie725_reload_empty_fast_swing.ogg", t = 0.533},
			{s = path .. "wfoly_plr_sh_charlie725_reload_empty_fast_shellsin_01.ogg", t = 1.033},
			{s = path .. "wfoly_plr_sh_charlie725_reload_empty_close_01.ogg", t = 1.533},
            {s = path .. "wfoly_plr_sh_charlie725_reload_empty_fast_end.ogg", t = 1.55},
        },
    },
	
    ["reload_scope"] = {
        Source = "reload_scope",
		MinProgress = 0.8,
		RefillProgress = 0.65,
		FireASAP = true,
		DropMagAt = 0.6,
		--EjectAt = 0.65,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sh_charlie725_reload_start.ogg", t = 0.0},
			{s = path .. "wfoly_plr_sh_charlie725_reload_open_01.ogg", t = 0.2},
            {s = path .. "wfoly_plr_sh_charlie725_reload_swing.ogg", t = 0.567},
			{s = path .. "wfoly_plr_sh_charlie725_reload_shellin_01.ogg", t = 1.267},
			{s = path .. "wfoly_plr_sh_charlie725_reload_close_01.ogg", t = 1.733},
			{s = path .. "wfoly_plr_sh_charlie725_reload_end.ogg", t = 2.2},
        },
    },
    ["reload_fast_scope"] = {
        Source = "reload_fast_scope",
		MinProgress = 0.8,
		RefillProgress = 0.725,
		FireASAP = true,
		DropMagAt = 0.6,
		--EjectAt = 0.65,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.65, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_plr_sh_charlie725_reload_fast_open_01.ogg", t = 0.1},
			{s = path .. "wfoly_plr_sh_charlie725_reload_fast_start.ogg", t = 0.133},
            {s = path .. "wfoly_plr_sh_charlie725_reload_fast_swing.ogg", t = 0.533},
			{s = path .. "wfoly_plr_sh_charlie725_reload_shellin_01.ogg", t = 0.933},
            {s = path .. "wfoly_plr_sh_charlie725_reload_end.ogg", t = 1.367},
			{s = path .. "wfoly_plr_sh_charlie725_reload_close_01.ogg", t = 1.4},
        },
    },
    ["reload_empty_scope"] = {
        Source = "reload_empty_scope",
		MinProgress = 0.8,
		RefillProgress = 0.675,
		FireASAP = true,
		DropMagAt = 0.6,
		--EjectAt = 0.7,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sh_charlie725_reload_empty_start.ogg", t = 0.0},
			{s = path .. "wfoly_plr_sh_charlie725_reload_empty_open_01.ogg", t = 0.2},
            {s = path .. "wfoly_plr_sh_charlie725_reload_empty_swing.ogg", t = 0.7},
			{s = path .. "wfoly_plr_sh_charlie725_reload_empty_shellsin_v2_01.ogg", t = 1.167},
			{s = path .. "wfoly_plr_sh_charlie725_reload_empty_shellsin_v2_02.ogg", t = 1.5},
			{s = path .. "wfoly_plr_sh_charlie725_reload_empty_close_01.ogg", t = 2.0},
			{s = path .. "wfoly_plr_sh_charlie725_reload_empty_end.ogg", t = 2.333},
        },
    },
    ["reload_empty_fast_scope"] = {
        Source = "reload_fast_scope_empty",
		MinProgress = 0.8,
		RefillProgress = 0.725,
		FireASAP = true,
		DropMagAt = 0.6,
		--EjectAt = 0.7,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.65, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sh_charlie725_reload_empty_fast_start.ogg", t = 0.0},
			{s = path .. "wfoly_plr_sh_charlie725_reload_empty_fast_open_01.ogg", t = 0.1},
            {s = path .. "wfoly_plr_sh_charlie725_reload_empty_fast_swing.ogg", t = 0.533},
			{s = path .. "wfoly_plr_sh_charlie725_reload_empty_fast_shellsin_01.ogg", t = 1.033},
			{s = path .. "wfoly_plr_sh_charlie725_reload_empty_close_01.ogg", t = 1.533},
            {s = path .. "wfoly_plr_sh_charlie725_reload_empty_fast_end.ogg", t = 1.55},
        },
    },
    ["ready"] = {
        Source = "draw",
		MinProgress = 0.8,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 1 },
            { t = 0.5, lhik = 0, rhik = 1 },
            { t = 0.65, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_plr_sh_charlie725_raise_first_start.ogg", t = 0.1},
			{s = path .. "wfoly_plr_sh_charlie725_raise_first_close_01.ogg", t = 0.25},
			{s = path .. "wfoly_plr_sh_charlie725_raise_first_end.ogg", t = 0.633},
        },
    },
    ["draw"] = {
        Source = "draw_short",
		MinProgress = 0.3,
        FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_plr_sh_charlie725_raise_up.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.5, lhik = 0, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_plr_sh_charlie725_drop_down.ogg", t = 0/30},
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
		Mult = 2.7,
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
		Mult = 2.7,
    },
    ["super_sprint_idle"] = {
        Source = "super_sprint",
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 1 },
        },
    },
    ["super_sprint_in"] = {
        Source = "super_sprint_in",
		Mult = 2.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.35, lhik = 1, rhik = 1 },
            { t = 1, lhik = 0, rhik = 1 },
        },
    },
    ["super_sprint_out"] = {
        Source = "super_sprint_out",
		Mult = 2.5,
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 1 },
            { t = 0.1, lhik = 0, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        },
    },
    ["inspect"] = {
        Source = "lookat01",
        MinProgress = 0.1,
        FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sh_charlie725_inspect_01.ogg", t = 0.033},
			{s = path .. "wfoly_sh_charlie725_inspect_02.ogg", t = 1.5},
			{s = path .. "wfoly_sh_charlie725_inspect_03.ogg", t = 2.5},
			{s = path .. "wfoly_sh_charlie725_inspect_04.ogg", t = 3.667},
			{s = path .. "wfoly_sh_charlie725_inspect_05.ogg", t = 4.367},
        },
    },
    ["inspect_scope"] = {
        Source = "lookat01_scope",
        MinProgress = 0.1,
        FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sh_charlie725_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_sh_charlie725_inspect_02.ogg", t = 42/30},
			{s = path .. "wfoly_sh_charlie725_inspect_03.ogg", t = 76/30},
			{s = path .. "wfoly_sh_charlie725_inspect_04.ogg", t = 106/30},
			{s = path .. "wfoly_sh_charlie725_inspect_05.ogg", t = 132/30},
        },
    },
    ["bash"] = {
        Source = {"melee","melee2","melee3"},
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
    },
    ["firemode_1"] = {
        Source = "firemode",
        EventTable = {
            {s = path .. "weap_charlie725_fire_first_plr_01.ogg", t = 0/30},
        },
    },
    ["firemode_2"] = {
        Source = "firemode",
        EventTable = {
            {s = path .. "weap_charlie725_fire_first_plr_01.ogg", t = 0/30},
        },
    },
    ["enter_bipod"] = {
        Source = "bipod_in",
    },
    ["exit_bipod"] = {
        Source = "bipod_out",
    },
    ["hybrid_on"] = {
        Source = "hybrid_on",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 1, rhik = 0 },
            { t = 0.5, lhik = 1, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = "Viewmodel.SwitchSight", t = 0/30},
			{s = "switchsights/wpfoly_hybrid_toggle_on.ogg", t = 5/30},
        },
    },
    ["hybrid_off"] = {
        Source = "hybrid_off",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.2, lhik = 0, rhik = 1 },
            { t = 0.5, lhik = 0, rhik = 1 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = "Viewmodel.SwitchSight", t = 0/30},
			{s = "switchsights/wpfoly_hybrid_toggle_off.ogg", t = 5/30},
        },
    },
}

-- SWEP.Hook_Think	= ARC9.COD2019.BlendSights2

-------------------------- ATTACHMENTS

SWEP.Hook_TranslateAnimation = function (wep, anim)
    --local attached = self:GetElements()
	local soh = wep:HasElement("perk_speedreload")
	local scope = wep:HasElement("optic_scope")
	
    if anim == "idle_sprint" and wep:HasElement("perk_super_sprint") then
        return "super_sprint_idle"
    elseif anim == "enter_sprint" and wep:HasElement("perk_super_sprint") then 
        return "super_sprint_in"
    elseif anim == "exit_sprint" and wep:HasElement("perk_super_sprint") then 
        return "super_sprint_out"
    end
	
	if soh then
		if scope and anim == "inspect" then return "inspect_scope" end
		
		if scope then return anim .. "_fast_scope"
		else return anim .. "_fast" end
	end
	
	if scope then
		return anim .. "_scope"
	end

    wep.MWHybridSwitching = nil
    if anim == "switchsights" then
        if wep:HasElement("hybrid_scope") then
            wep.MWHybridSwitching = true
            return wep:GetMultiSight() == 1 and "hybrid_on" or "hybrid_off"
        else
            return false
        end
    end
end

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(1.5, -0.6, 0.6),
	ModelAngleOffset = Angle(0, 0, 0),
	Scale = 0.8,
    },
    ["go_grip_angled"] = {
    ModelOffset = Vector(0, 0, 0.1),
    },
    -- ["csgo_cod2019_laser_01"] = {
    -- Sights = {
    -- {
        -- Pos = Vector(2.2, 15, -0.6),
        -- Ang = Angle(0, 0, -45),
        -- ViewModelFOV = 45,
        -- Magnification = 1.25,
        -- IgnoreExtra = false,
		-- KeepBaseIrons = true,
    -- },
    -- },
    -- },
    -- ["csgo_cod2019_laser_02"] = {
    -- Sights = {
    -- {
        -- Pos = Vector(2.2, 15, -0.6),
        -- Ang = Angle(0, 0, -45),
        -- ViewModelFOV = 45,
        -- Magnification = 1.25,
        -- IgnoreExtra = false,
		-- KeepBaseIrons = true,
    -- },
    -- },
    -- },
    -- ["csgo_cod2019_laser_03"] = {
    -- Sights = {
    -- {
        -- Pos = Vector(2.2, 15, -0.6),
        -- Ang = Angle(0, 0, -45),
        -- ViewModelFOV = 45,
        -- Magnification = 1.25,
        -- IgnoreExtra = false,
		-- KeepBaseIrons = true,
    -- },
    -- },
    -- },
}

SWEP.AttachmentElements = {
    ["base_none"] = {
        Bodygroups = {
            {0,1},
        },
    },
    ["barrel_none"] = {
        Bodygroups = {
            {1,1},
        },
    },
    ["foregrip_none"] = {
        Bodygroups = {
            {2,1},
        },
    },
    ["stock_none"] = {
        Bodygroups = {
            {3,1},
        },
    },
    ["rail_grip"] = {
        Bodygroups = {
            {4,1},
        },
    },
    ["rail_grip_none"] = {
        Bodygroups = {
            {4,1},
        },
    },
    ["rail_sight"] = {
        Bodygroups = {
            {5,1},
        },
    },
    ["rail_none"] = {
        Bodygroups = {
            {5,2},
        },
    },
    ["rail_laser"] = {
        Bodygroups = {
            {6,2},
        },
    },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model
    if wep:HasElement("rail_none") then model:SetBodygroup(5,2) end
    if wep:HasElement("rail_grip_none") then model:SetBodygroup(4,0) end
end

SWEP.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_barrel"),
		DefaultIcon = Material("arc9/def_att_icons/barrel.png", "mips smooth"),
        DefaultAttName = "Standard Barrel",
        Category = "cod2019_725_barrel",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		Icon_Offset = Vector(14, 0, 0.15),
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_muzzle"),
        DefaultAttName = "Standard Muzzle",
        Category = "cod2019_muzzle_shot_db",
        Bone = "tag_silencer",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		--InstalledElements = {"muzzle_none"},
		Scale = 1,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_optic"),
		DefaultIcon = Material("arc9/def_att_icons/optic.png", "mips smooth"),
        Bone = "tag_holo",
        Pos = Vector(1.5, 0, -0.1),
        Ang = Angle(0, 0, 0),
        Category = {"cod2019_optic",},
        CorrectiveAng = Angle(0, 0, 0),
		InstalledElements = {"rail_sight"},
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_laser"),
        DefaultAttName = "Default",
        Category = "cod2019_tac_rail_alt",
        Bone = "tag_laser_attach",
        Pos = Vector(0, -0.85, -0.1),
        Ang = Angle(0, 0, 0),
		--InstalledElements = {"rail_laser"},
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_grip"),
        Category = "cod2019_725_foregrip",
        Bone = "tag_attachments",
        Pos = Vector(3, 0, -1.25),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_underbarrel"),
        DefaultAttName = "Default",
        Category = "cod2019_grip",
        Bone = "tag_grip_attach",
        Pos = Vector(-3, 0, 0),
        Ang = Angle(0, 0, 180),
		Scale = 1,
		InstalledElements = {"rail_grip"},
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_stock"),
		DefaultIcon = Material("arc9/def_att_icons/stock_ak.png", "mips smooth"),
        DefaultAttName = "Standard Stock",
        Category = "cod2019_725_stock",
        Bone = "tag_stock_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		Icon_Offset = Vector(-4, 0, -1),
    },
    -- {
        -- PrintName = ARC9:GetPhrase("mw19_category_underbarrel"),
        -- DefaultAttName = "Default",
        -- Category = "cod2019_grip",
        -- Bone = "tag_grip_attach",
        -- Pos = Vector(-1.5, 0, 0),
        -- Ang = Angle(0, 0, 180),
		-- Scale = 1,
		-- --InstalledElements = {"pump_rail"},
    -- },
    {
        PrintName = ARC9:GetPhrase("mw19_category_ammo"),
		DefaultIcon = Material("arc9/def_att_icons/ammotype.png", "mips smooth"),
        Bone = "tag_sling",
        Category = {"cod2019_ammo_sg"},
        Pos = Vector(0, 0, -1.5),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_perk"),
        Category = {"cod2019_perks","cod2019_perks_soh","cod2019_perks_ss"}
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_skins"),
        --Bone = "v_weapon.Clip",
        Category = "cod2019_skins_725",
		CosmeticOnly = true,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_camouflage"),
        Category = {"universal_camo"},
        CosmeticOnly = true,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/shot_725_decal_a.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/shot_725_decal_b.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/shot_725_decal_c.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/shot_725_decal_d.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/shot_725_decal_e.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/shot_725_decal_f.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_charm"),
        Category = "charm",
        Bone = "tag_cosmetic",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		Scale = 1.5,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_stats"),
        Category = {"killcounter","killcounter2"},
        Bone = "tag_cosmetic",
        Pos = Vector(1.5, 0.1, -1),
        Ang = Angle(0, 0, 0),
		CosmeticOnly = true,
    },
}

SWEP.GripPoseParam = 4.2
SWEP.GripPoseParam2 = 0.3
SWEP.CodStubbyGripPoseParam = 6
SWEP.CodStubbyTallGripPoseParam = 1
SWEP.CodAngledGripPoseParam = 15

-- Warzone-esque Stats; Add here to change only when using Warzone Stats variable.
if GetConVar("arc9_mw19_stats_warzone"):GetBool() then
-------------------------- DAMAGE PROFILE
SWEP.DamageMax = 52
SWEP.DamageMin = 18

SWEP.DistributeDamage = false

SWEP.Num = 8

SWEP.RangeMin = 2 / ARC9.HUToM
SWEP.RangeMax = 16.8 / ARC9.HUToM

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 1.035,
    [HITGROUP_CHEST] = 1.01,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 1,
    [HITGROUP_RIGHTLEG] = 1,
}

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 300 / ARC9.HUToM

-------------------------- FIREMODES

SWEP.RPM = 171

end
