AddCSLuaFile()
if CLIENT then
    killicon.Add( "arc9_cod2019_sh_origin12", "vgui/killicons/cod2019_sh_origin12.png", Color(251, 85, 25, 255))
end

SWEP.LoadoutImage = "entities/loadout/arc9_cod2019_sh_origin12.png"

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_shotgun") or "Shotguns"

SWEP.PrintName = ARC9:GetPhrase("mw19_weapon_origin12") or "Origin-12"

SWEP.Class = ARC9:GetPhrase("mw19_class_weapon_shotgun") or "Shotgun"
SWEP.Trivia = {
    [ ARC9:GetPhrase("mw19_country") ] = ARC9:GetPhrase("mw19_country_usa"),
    [ ARC9:GetPhrase("mw19_manufacturer") ] = ARC9:GetPhrase("mw19_manufacturer_forgetac"),
    [ ARC9:GetPhrase("mw19_caliber") ] = ARC9:GetPhrase("mw19_caliber_12gauge"),
    [ ARC9:GetPhrase("mw19_weight") ] = string.format(ARC9:GetPhrase("mw19_weight_val"), 4.2, 4.2 * 2.20),
    [ ARC9:GetPhrase("mw19_weight_projectile") ] = string.format(ARC9:GetPhrase("mw19_weight_projectile_val"), 493),
    -- [ ARC9:GetPhrase("mw19_muzzle_energy") ] = "1,250 ft/s",
    -- [ ARC9:GetPhrase("mw19_muzzle_velocity") ] = "2,319 joules"
}

SWEP.Credits = {
    [ ARC9:GetPhrase("mw19_author") ] = "Twilight Sparkle/Firmeteran",
    [ ARC9:GetPhrase("mw19_assets") ] = "Activision/Infinity Ward"
}

SWEP.Description = ARC9:GetPhrase("mw19_weapon_origin12_desc") or [[Semi-automatic shotgun with large ammo capacity allows for continuous firing. Effective at close range.]]

SWEP.ViewModel = "models/weapons/cod2019/c_shot_origin12.mdl"
SWEP.WorldModel = "models/weapons/w_shot_m3super90.mdl"
SWEP.DefaultBodygroups = "00000000"

SWEP.Slot = 3

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_shot_origin12.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-4.25, 3.5, -7),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-8.5, 5, -5),
    TPIKAng = Angle(-12.5, -1, 165),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 90 / 6 -- Damage done at point blank range
SWEP.DamageMin = 35 / 6 -- Damage done at maximum range

SWEP.Num = 6

SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 10 / ARC9.HUToM
SWEP.RangeMax = 15 / ARC9.HUToM

SWEP.Penetration = 10 -- Units of wood that can be penetrated by this gun.

SWEP.ImpactForce = 2.5

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 1410.76 * 12
SWEP.PhysBulletGravity = 2
SWEP.PhysBulletDrag = 3

SWEP.RicochetChance = 0

-------------------------- MAGAZINE

SWEP.Ammo = "buckshot" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 8 -- Self-explanatory.
SWEP.SupplyLimit = 8 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 2 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true
SWEP.ForceStandardCrosshair = true

SWEP.CustomCrosshair = true
SWEP.CustomCrosshairMaterial = Material("hud/arc9_cod2019/shotguncrosshair.png", "mips smooth")
SWEP.CustomCrosshairSize = 30

-------------------------- FIREMODES

SWEP.RPM = 300

SWEP.Firemodes = {
    {
        Mode = 1,
    },
}

-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 5

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil

SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.3

SWEP.RecoilDissipationRate = 5 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 5 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 5

SWEP.RecoilMultCrouch = 0.9
SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.9

SWEP.RecoilPerShot = 1
SWEP.RecoilMax = 1.5

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilMultSights = 0.2
SWEP.VisualRecoilPunchSights = 75

SWEP.VisualRecoilPunch = 4
SWEP.VisualRecoilUp = 0.3
SWEP.VisualRecoilRoll = 5

SWEP.VisualRecoilSpringPunchDamping = 11
SWEP.VisualRecoilDampingConst = 20
SWEP.VisualRecoilDampingConstSights = 50
SWEP.VisualRecoilSpringMagnitude = 1

-------------------------- SPREAD

SWEP.Spread = 0.1

SWEP.SpreadAddRecoil = 0.01

SWEP.SpreadAddHipFire = SWEP.Spread * 0
SWEP.SpreadAddMove = SWEP.Spread * 0.2
SWEP.SpreadAddMidAir = SWEP.Spread * 0.2
SWEP.SpreadAddCrouch = -SWEP.Spread * 0.1
SWEP.SpreadAddSights = -SWEP.Spread * 0.2

SWEP.SpreadMultRecoil = 1.1
SWEP.RecoilModifierCap = SWEP.RecoilMax
SWEP.RecoilModifierCapMove = 0

-------------------------- HANDLING

SWEP.FreeAimRadius = 0 -- In degrees, how much this gun can free aim in hip fire.
SWEP.Sway = 0 -- How much the gun sways.

SWEP.AimDownSightsTime = 0.3 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.5 -- How long it takes to go from sprinting to being able to fire.

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
    Pos = Vector(-2.11, -1, 0.7),
    Ang = Angle(0, 0, 4.5),
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

SWEP.MovingPos = Vector(-1, -0.8, -1)
SWEP.MovingAng = Angle(0, 0, -10)

SWEP.CrouchPos = Vector(-1, -0.5, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.SprintPos = Vector(1, 0, -1)
SWEP.SprintAng = Angle(0, 0, 25)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(13.5, 30, 4)
SWEP.CustomizeRotateAnchor = Vector(13.5, -2.25, -4)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeNoRotate = false
SWEP.CustomizeSnapshotPos = Vector(-2, 7, 3)

SWEP.PeekMaxFOV = 60

SWEP.PeekPos = Vector(-2, 2, -3.5)
SWEP.PeekAng = Angle(-0.3, 0, -45)

SWEP.PeekPosReloading = Vector(0, 4, -2)
SWEP.PeekAngReloading = Angle(-0.3, 0, -5)

-------------------------- HoldTypes

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeHolstered = "passive"
SWEP.HoldTypeSights = "ar2"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "muzzleflash_shotgun"
SWEP.AfterShotParticle = "AC_muzzle_smoke_barrel"
SWEP.TracerEffect = "cod2019_tracer_slow"
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 4
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_origin12.mdl"
SWEP.ShellSounds = ARC9.COD2019_Shotgun_Table
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 1.2
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_shot_origin12_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_poly_concrete_01.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_poly_concrete_02.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_poly_concrete_03.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_poly_concrete_04.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_poly_concrete_05.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_poly_concrete_06.ogg",
}
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineTime = 0.4
SWEP.DropMagazineQCA = 3
SWEP.DropMagazineAng = Angle(0, -90, -90)

SWEP.EjectDelay = 0.1

-------------------------- SOUNDS

local path = "weapons/cod2019/origin12/"

SWEP.ShootSound = "COD2019.Origin12.Fire"
SWEP.ShootSoundIndoor = "COD2019.Origin12.Fire"

SWEP.ShootSoundSilenced = "COD2019.Origin12.Fire.S"
SWEP.ShootSoundSilencedIndoor = "COD2019.Origin12.Fire.S"

-- Non-Silenced Outside
SWEP.LayerSound = "Layer_Shotgun.Outside"
SWEP.DistantShootSound = "Distant_Sniper.Outside"
-- Inside
SWEP.LayerSoundIndoor = "Layer_Sniper.Inside"
SWEP.DistantShootSoundIndoor = "Distant_Shotgun.Inside"
---------------------------------------------------
-- Silenced Outside
SWEP.LayerSoundSilenced = "Layer_ARSUP.Outside"
SWEP.DistantShootSoundSilenced = "Distant_Shotgun2.Outside"
-- Inside
SWEP.LayerSoundSilencedIndoor = "Layer_ShotgunSUP.Inside"
SWEP.DistantShootSoundSilencedIndoor = "Distant_ShotgunSUP.Inside"
---------------------------------------------------

SWEP.EnterSightsSound = path .. "weap_sh_oscar12_ads_up.ogg"
SWEP.ExitSightsSound = path .. "weap_sh_oscar12_ads_down.ogg"

SWEP.TriggerDelay = 0.025 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayCancellable = false
SWEP.TriggerDelayTime = 0.025 -- Time until weapon fires.

SWEP.TriggerDownSound = "weapons/cod2019/origin12/weap_oscar12_fire_first_plr_01.ogg"
SWEP.TriggerUpSound = "weapons/cod2019/model680/weap_romeo870_disconnector_plr_01.ogg"

SWEP.BulletBones = {
    [1] = "j_shell01",
}

--SWEP.ReloadHideBonesFirstPerson = true
SWEP.HideBones  = {
    [1] = "j_mag2",
}


SWEP.Animations = {
	["enter_sights"] = {
		Source = "idle",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
	},
    ["fire"] = {
        Source = "shoot1",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
    },
    ["reload"] = {
        Source = "reload_short",
		MinProgress = 0.925,
		RefillProgress = 0.525,
		PeekProgress = 0.85,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.65, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sh_oscar12_reload_start.ogg", t = 0.0},
            {s = path .. "wfoly_plr_sh_oscar12_reload_pull.ogg", t = 0.433},
			{s = path .. "wfoly_plr_sh_oscar12_reload_magout_01.ogg", t = 0.6},
			{s = path .. "wfoly_plr_sh_oscar12_reload_magin_v2_01.ogg", t = 1.033},
			{s = path .. "wfoly_plr_sh_oscar12_reload_magin_v2_02.ogg", t = 1.333},
			{s = path .. "wfoly_plr_sh_oscar12_reload_end.ogg", t = 1.567},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.95,
		RefillProgress = 0.75,
		PeekProgress = 0.55,
		FireASAP = true,
		MagSwapTime = 0.9,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.65, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_start.ogg", t = 0.0},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_magout_01.ogg", t = 0.1},
            {s = path .. "wfoly_plr_sh_oscar12_reload_empty_tilt.ogg", t = 0.667},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_magin_v2_01.ogg", t = 0.967},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_magin_v2_02.ogg", t = 1.6},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_hands.ogg", t = 1.833},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_charge_01.ogg", t = 2.467},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_end.ogg", t = 2.767},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast2",
		MinProgress = 0.9,
		RefillProgress = 0.55,
		PeekProgress = 0.85,
		FireASAP = true,
		MagSwapTime = 0.7,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.6, lhik = 0, rhik = 0 },
            { t = 0.75, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sh_oscar12_reload_fast_start.ogg", t = 0.033},
			{s = path .. "wfoly_plr_sh_oscar12_reload_fast_magout_01.ogg", t = 0.35},
			{s = path .. "wfoly_plr_sh_oscar12_reload_fast_magin_01.ogg", t = 1.033},
			{s = path .. "wfoly_plr_sh_oscar12_reload_fast_end.ogg", t = 1.267},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.95,
		RefillProgress = 0.75,
		PeekProgress = 0.85,
		FireASAP = true,
		DropMagAt = 0.7,
		MagSwapTime = 0.7,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.6, lhik = 0, rhik = 0 },
            { t = 0.75, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_fast_start.ogg", t = 0.0},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_fast_magout_01.ogg", t = 0.133},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_fast_arm.ogg", t = 0.633},
            {s = path .. "wfoly_plr_sh_oscar12_reload_empty_fast_magin_v2_01.ogg", t = 0.9},
            {s = path .. "wfoly_plr_sh_oscar12_reload_empty_fast_magin_v2_02.ogg", t = 1.1},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_fast_xmag_charge_01.ogg", t = 1.333},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_fast_end.ogg", t = 1.5},
        },
    },
    ["reload_xmag"] = {
        Source = "reload_xmag",
		MinProgress = 0.925,
		RefillProgress = 0.525,
		PeekProgress = 0.85,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.65, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sh_oscar12_reload_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_magout_01.ogg", t = 18/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_magin_v2_01.ogg", t = 32/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_magin_v2_02.ogg", t = 40/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_end.ogg", t = 49/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_pull.ogg", t = 51/30},
        },
    },
    ["reload_xmag_empty"] = {
        Source = "reload_xmag_empty",
		MinProgress = 0.95,
		RefillProgress = 0.75,
		PeekProgress = 0.55,
		FireASAP = true,
		MagSwapTime = 0.9,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.65, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_magout_01.ogg", t = 4/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_magin_v2_01.ogg", t = 29/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_magin_v2_02.ogg", t = 48/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_hands.ogg", t = 45/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_tilt.ogg", t = 53/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_charge_01.ogg", t = 73/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_end.ogg", t = 87/30},
        },
    },
    ["reload_xmag_fast"] = {
        Source = "reload_xmag_fast",
		MinProgress = 0.9,
		RefillProgress = 0.55,
		PeekProgress = 0.85,
		FireASAP = true,
		MagSwapTime = 0.7,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.6, lhik = 0, rhik = 0 },
            { t = 0.75, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_magout_01.ogg", t = 7/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_magin_v2_01.ogg", t = 25/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_end.ogg", t = 48/30},
        },
    },
    ["reload_xmag_fast_empty"] = {
        Source = "reload_xmag_fast_empty",
		MinProgress = 0.95,
		RefillProgress = 0.75,
		PeekProgress = 0.85,
		FireASAP = true,
		DropMagAt = 0.7,
		MagSwapTime = 0.7,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.6, lhik = 0, rhik = 0 },
            { t = 0.75, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_magout_01.ogg", t = 4/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_magin_v2_02.ogg", t = 34/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_charge_01.ogg", t = 40/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_end.ogg", t = 52/30},
        },
    },
    ["reload_drum"] = {
        Source = "reload_drum",
		MinProgress = 0.925,
		RefillProgress = 0.525,
		PeekProgress = 0.85,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.65, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sh_oscar12_reload_fast_drum_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_fast_drum_drumout_01.ogg", t = 11/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_fast_drum_drumin_01.ogg", t = 32/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_magin_v2_02.ogg", t = 48/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_fast_drum_end.ogg", t = 56/30},
        },
    },
    ["reload_drum_empty"] = {
        Source = "reload_drum_empty",
		MinProgress = 0.95,
		RefillProgress = 0.75,
		PeekProgress = 0.55,
		FireASAP = true,
		MagSwapTime = 0.9,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.65, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_fast_drum_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_fast_drum_drumout_01.ogg", t = 8/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_fast_drum_drumin_01.ogg", t = 32/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_magin_v2_02.ogg", t = 48/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_hands.ogg", t = 45/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_fast_drum_tilt.ogg", t = 53/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_fast_drum_charge_01.ogg", t = 74/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_fast_drum_end.ogg", t = 87/30},
        },
    },
    ["reload_drum_fast"] = {
        Source = "reload_drum_fast",
		MinProgress = 0.9,
		RefillProgress = 0.55,
		PeekProgress = 0.85,
		FireASAP = true,
		MagSwapTime = 0.7,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.6, lhik = 0, rhik = 0 },
            { t = 0.75, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sh_oscar12_reload_fast_drum_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_fast_drum_drumout_01.ogg", t = 8/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_fast_drum_drumin_01.ogg", t = 27/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_fast_drum_end.ogg", t = 45/30},
        },
    },
    ["reload_drum_fast_empty"] = {
        Source = "reload_drum_fast_empty",
		MinProgress = 0.95,
		RefillProgress = 0.75,
		PeekProgress = 0.85,
		FireASAP = true,
		DropMagAt = 0.7,
		MagSwapTime = 0.7,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.6, lhik = 0, rhik = 0 },
            { t = 0.75, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_fast_drum_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_fast_drum_drumout_01.ogg", t = 8/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_fast_drum_drumin_01.ogg", t = 27/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_fast_drum_tilt.ogg", t = 33/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_fast_drum_charge_01.ogg", t = 39/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_fast_drum_end.ogg", t = 45/30},
        },
    },
    ["ready"] = {
        Source = {"draw"},
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 1 },
            { t = 0.5, lhik = 0, rhik = 1 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_plr_sh_oscar12_raise_first_start.ogg", t = 0.033},
			{s = path .. "wfoly_plr_sh_oscar12_raise_first_magin_01.ogg", t = 0.4},
			{s = path .. "wfoly_plr_sh_oscar12_raise_first_end_hit.ogg", t = 0.767},
			{s = path .. "wfoly_plr_sh_oscar12_raise_first_end.ogg", t = 1.133},
        },
    },
    ["ready_xmag"] = {
        Source = {"draw_xmag"},
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 1 },
            { t = 0.5, lhik = 0, rhik = 1 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_plr_sh_oscar12_raise_first_start.ogg", t = 0.033},
			{s = path .. "wfoly_plr_sh_oscar12_raise_first_magin_01.ogg", t = 0.4},
			{s = path .. "wfoly_plr_sh_oscar12_raise_first_end_hit.ogg", t = 0.767},
			{s = path .. "wfoly_plr_sh_oscar12_raise_first_end.ogg", t = 1.133},
        },
    },
    ["ready_drum"] = {
        Source = {"draw_drum"},
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 1 },
            { t = 0.5, lhik = 0, rhik = 1 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_plr_sh_oscar12_raise_first_start.ogg", t = 0.033},
			{s = path .. "wfoly_plr_sh_oscar12_raise_first_magin_01.ogg", t = 0.4},
			{s = path .. "wfoly_plr_sh_oscar12_raise_first_end_hit.ogg", t = 0.767},
			{s = path .. "wfoly_plr_sh_oscar12_raise_first_end.ogg", t = 1.133},
        },
    },
    ["draw"] = {
        Source = "draw_short",
        MinProgress = 0.4,
        FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 0 },
	            { t = 0.5, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_plr_sh_oscar12_raise_first_start.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.8, lhik = 0, rhik = 0 },
        },
        EventTable = {
            {s = path .. "wfoly_plr_sh_oscar12_drop_down.ogg", t = 0/30},
        },
    },
    ["idle"] = {
        Source = "idle",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
    },
    ["idle_sprint"] = {
        Source = "sprint",
    },
    ["exit_sprint"] = {
        Source = "sprint_out",
		Mult = 2,
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
		Mult = 2,
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
            { t = 0.08, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 0, rhik = 0 },
            { t = 0.95, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sh_oscar12_inspect_01.ogg", t = 0.0},
			{s = path .. "wfoly_sh_oscar12_inspect_02.ogg", t = 1.5},
			{s = path .. "wfoly_sh_oscar12_inspect_03.ogg", t = 2.533},
			{s = path .. "wfoly_sh_oscar12_inspect_04.ogg", t = 3.533},
			{s = path .. "wfoly_sh_oscar12_inspect_05.ogg", t = 4.367},
        },
    },
    ["bash"] = {
        Source = {"melee", "melee2","melee3"},
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.6, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 1, rhik = 1 },
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

--- 15 & 25-Round (Drum) Mags ---
local Translate_XMag = {
    ["reload"] = "reload_xmag",
    ["reload_empty"] = "reload_xmag_empty",
	["ready"] = "ready_xmag",
}
local Translate_XMag_Fast = {
    ["reload"] = "reload_xmag_fast",
    ["reload_empty"] = "reload_xmag_fast_empty",
	["ready"] = "ready_xmag",
}
local Translate_Drum = {
    ["reload"] = "reload_drum",
    ["reload_empty"] = "reload_drum_empty",
	["ready"] = "ready_drum",
}
local Translate_Drum_Fast = {
    ["reload"] = "reload_drum_fast",
    ["reload_empty"] = "reload_drum_fast_empty",
	["ready"] = "ready_drum",
}

--- Fast & Tac. Sprint ---
local Translate_Fast = {
    ["reload"] = "reload_fast",
    ["reload_empty"] = "reload_fast_empty",
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
    local xmag = wep:HasElement("mag_xmag")
    local drum = wep:HasElement("mag_drum")
    local ammoex = wep:HasElement("ammo_extend")

    if ammoex and speedload and Translate_Fast[anim] then
        return Translate_Fast[anim]
    elseif ammoex and Translate_XMag[anim] then
        return Translate_XMag[anim]
    elseif super_sprint and Translate_TacSprint[anim] then
        return Translate_TacSprint[anim]
    end

    if speedload then
        if drum then
            if Translate_Drum_Fast[anim] then
                return Translate_Drum_Fast[anim]
            end
        elseif xmag then
			if Translate_XMag_Fast[anim] then
				return Translate_XMag_Fast[anim]
            end
        else
            if Translate_Fast[anim] then
                return Translate_Fast[anim]
            end
        end
    else 
        if drum then
            if Translate_Drum[anim] then
                return Translate_Drum[anim]
        elseif xmag then
            if Translate_XMag[anim] then
                return Translate_XMag[anim]
            end
        end
    end
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
    ModelOffset = Vector(11.3, -0.55, 0.69),
	ModelAngleOffset = Angle(0, 0, 0),
	Scale = 0.8,
    },
    ["go_supp_shitvo"] = {
	ModelAngleOffset = Angle(0, 0, 180),
    },
    ["cod2019_grips_none"] = {
	ModelOffset = Vector(-4, 0, -0.7),
	ModelAngleOffset = Angle(0, 0, 180),
    },
    ["cod2019_origin12_grip_none2"] = {
	ModelOffset = Vector(-4.2, 0, 1.35),
	ModelAngleOffset = Angle(0, 0, 180),
    },
}

SWEP.AttachmentElements = {
    ["body_none"] = {
        Bodygroups = {
            {0,1},
        },
    },
    ["mag_none"] = {
        Bodygroups = {
            {1,1},
        },
    },
    ["stock_none"] = {
        Bodygroups = {
            {3,1},
        },
    },
    ["stock_retracted"] = {
	AttPosMods = { [6] = { Pos = Vector(1.25, 0, 0), } }	
    },
    ["sights"] = {
        Bodygroups = {
            {2,1},
        },
    },
    ["grip_none"] = {
        Bodygroups = {
            {5,1},
        },
    },
    ["barrel_long"] = {
        Bodygroups = {
            {6,1},
        },
    },
    ["barrel_small"] = {
        Bodygroups = {
            {6,2},
        },
    },
    ["barrel_none"] = {
        Bodygroups = {
            {6,3},
        },
    },
}

-- SWEP.Hook_ModifyBodygroups = function(wep, data)
    -- local model = data.model
    -- if wep:HasElement("stock_retract") then model:SetBodygroup(4,0) end
-- end

SWEP.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_barrel"),
		DefaultIcon = Material("arc9/def_att_icons/barrel.png", "mips smooth"),
        DefaultAttName = "Standard Barrel",
        Category = "cod2019_origin12_barrel",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_optic"),
		DefaultIcon = Material("arc9/def_att_icons/optic.png", "mips smooth"),
        Bone = "tag_holo",
        Pos = Vector(1.5, 0, -0.1),
        Ang = Angle(0, 0, 0),
        Category = {"cod2019_optic",},
        CorrectiveAng = Angle(0, 0, 0),
		InstalledElements = {"sights"},
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_muzzle"),
        DefaultAttName = "Standard Muzzle",
        Category = "cod2019_muzzle_shot",
        Bone = "tag_silencer",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		--InstalledElements = {"muzzle"},
		Scale = 1,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_laser"),
        DefaultAttName = "Default",
        Category = "cod2019_tac",
        Bone = "tag_laser_attach",
        Pos = Vector(1.5, 0, -0.1),
        Ang = Angle(0, 0, 180),
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_underbarrel"),
        DefaultAttName = "Default",
        Category = {"cod2019_grip","cod2019_grip_none","cod2019_origin12_grip"},
        Bone = "tag_grip_attach",
        Pos = Vector(-3.5, 0, 0),
        Ang = Angle(0, 0, 180),
		Scale = 1,
		InstalledElements = {"grip_none","grip_bottom"},
		-- ExcludeElements = {"grip_side"},
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_underbarrel"),
        DefaultAttName = "Default",
        Category = {"cod2019_grips_side","cod2019_origin12_grips"},
        Category = {"cod2019_grips_side"},
        Bone = "tag_grip_attach",
        Pos = Vector(-2.5, -1.1, 1.8),
        Ang = Angle(0, 0, 180),
		Scale = 1,
		InstalledElements = {"grip_none","grip_side"},
		-- ExcludeElements = {"grip_bottom"},
        RejectAttachments = {
			["cod2019_attach_grip_foregrip_side"] = true,
        },
		Hidden = true,
        MergeSlots = {5},
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_stock"),
		DefaultIcon = Material("arc9/def_att_icons/stock_ak.png", "mips smooth"),
        DefaultAttName = "Standard Stock",
        Category = "cod2019_tube",
        Bone = "tag_stock_attach",
        Pos = Vector(0.05, 0, -0.03),
        Ang = Angle(0, 0, 0),
		InstalledElements = {"stock_none"},
		Scale = 1,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_ammo"),
		DefaultIcon = Material("arc9/def_att_icons/ammotype.png", "mips smooth"),
        Bone = "j_mag1",
        Category = {"cod2019_ammo_sg"},
        Pos = Vector(0, -1.5, -1.5),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_magazine"),
		DefaultIcon = Material("arc9/def_att_icons/mag_ar.png", "mips smooth"),
		Bone = "tag_mag_attach",
        Category = {"cod2019_mag","cod2019_origin12_mag"},
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_perk"),
        Category = {"cod2019_perks","cod2019_perks_soh","cod2019_perks_ss"}
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_skins"),
        --Bone = "v_weapon.Clip",
        Category = "go_skins_cx9",
		CosmeticOnly = true,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_camouflage"),
        Category = {"universal_camo"},
        CosmeticOnly = true,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/shot_origin12_decal_a.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/shot_origin12_decal_b.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/shot_origin12_decal_c.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/shot_origin12_decal_d.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_charm"),
        Category = "charm",
        Bone = "tag_attachments",
        Pos = Vector(0.5, -0.75, -0.5),
        Ang = Angle(0, 0, 0),
		Scale = 1,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_stats"),
        Category = {"killcounter","killcounter2"},
        Bone = "tag_attachments",
        Pos = Vector(4, -0.8, -0.5),
        Ang = Angle(0, 0, 0),
		CosmeticOnly = true,
    },
}

SWEP.GripPoseParam = 3
SWEP.GripPoseParam2 = 0.5
SWEP.CodStubbyGripPoseParam = 26
SWEP.CodStubbyTallGripPoseParam = 26
SWEP.CodAngledGripPoseParam = 4.1

-- Warzone-esque Stats; Add here to change only when using Warzone Stats variable.
if GetConVar("arc9_mw19_stats_warzone"):GetBool() then
-------------------------- DAMAGE PROFILE
SWEP.DamageMax = 24
SWEP.DamageMin = 10

SWEP.Num = 8

SWEP.RangeMin = 7.6 / ARC9.HUToM
SWEP.RangeMax = 21.9 / ARC9.HUToM

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 1,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.625,
    [HITGROUP_RIGHTLEG] = 0.625,
}

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 300 / ARC9.HUToM

end
