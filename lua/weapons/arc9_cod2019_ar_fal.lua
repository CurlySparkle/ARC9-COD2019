AddCSLuaFile()
if CLIENT then
    killicon.Add( "arc9_cod2019_ar_fal", "vgui/killicons/cod2019_ar_fal.png", Color(251, 85, 25, 255))
end

SWEP.LoadoutImage = "entities/loadout/arc9_cod2019_ar_fal.png"

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_ar") or "Assault Rifles"

SWEP.PrintName = ARC9:GetPhrase("mw19_weapon_fal") or "FAL"

SWEP.Class = ARC9:GetPhrase("mw19_class_weapon_ar") or "Assault Rifle"
SWEP.Trivia = {
    [ ARC9:GetPhrase("mw19_country") ] = ARC9:GetPhrase("mw19_country_belgium"),
    [ ARC9:GetPhrase("mw19_caliber") ] = ARC9:GetPhrase("mw19_caliber_762"),
    [ ARC9:GetPhrase("mw19_weight") ] = string.format(ARC9:GetPhrase("mw19_weight_val"), 4.45, 4.45 * 2.2),
    [ ARC9:GetPhrase("mw19_weight_projectile") ] = string.format(ARC9:GetPhrase("mw19_weight_projectile_val"), 144),
    -- [ ARC9:GetPhrase("mw19_muzzle_energy") ] = "2,755.9 ft/s",
    -- [ ARC9:GetPhrase("mw19_muzzle_velocity") ] = "3,293 joules"
}

SWEP.Credits = {
    [ ARC9:GetPhrase("mw19_author") ] = "Twilight Sparkle/Firmeteran",
    [ ARC9:GetPhrase("mw19_assets") ] = "Activision/Infinity Ward"
}

SWEP.Description = ARC9:GetPhrase("mw19_weapon_fal_desc") or [[Semi-automatic battle rifle with a high rate of fire for faster follow up shots.]]

SWEP.ViewModel = "models/weapons/cod2019/c_rif_fal.mdl"
SWEP.WorldModel = "models/weapons/w_rif_m4a1.mdl"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_rif_fal.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-3.5, 3, -6),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-8.5, 4.5, -4.5),
    TPIKAng = Angle(-12.5, -1, 165),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 49 -- Damage done at point blank range
SWEP.DamageMin = 45 -- Damage done at maximum range

SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 20 / ARC9.HUToM
SWEP.RangeMax = 43 / ARC9.HUToM

SWEP.Penetration = 11 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.25

SWEP.ImpactForce = 11

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 1.62,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 1,
    [HITGROUP_RIGHTLEG] = 1,
}

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 850 / ARC9.HUToM
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1

-------------------------- MAGAZINE

SWEP.Ammo = "ar2" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 20 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 6 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 500

SWEP.Firemodes = {
    {
        Mode = 1,
		PoseParam = 1,
    },
    {
        Mode = -1,
		PoseParam = 0,
		RPM = 700,
		DamageMaxMult = 0.65,
		DamageMinMult = 0.65,
		RecoilPerShot = 1,
		RecoilMax = 3,
    },
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 2

SWEP.RecoilSeed = 67498

SWEP.RecoilPatternDrift = 25

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.3

SWEP.RecoilDissipationRate = 10 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 1 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 2

SWEP.RecoilMultCrouch = 0.8
SWEP.RecoilMultMove = 1.25
SWEP.RecoilMultSights = 0.85

SWEP.RecoilPerShot = 2
SWEP.RecoilMax = 4

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilPunch = 3
SWEP.VisualRecoilUp = 1

SWEP.VisualRecoilMultSights = 0.3
SWEP.VisualRecoilPunchSights = 7
SWEP.VisualRecoilRollSights = 20
SWEP.VisualRecoilUpSights = 0.1

SWEP.VisualRecoilRoll = 5
SWEP.VisualRecoilSide = 0.2

SWEP.VisualRecoilDoingFunc = function(up, side, roll, punch, recamount)
    if recamount > 5 then
        recamount = 1.65 - math.Clamp((recamount - 2) / 3.5, 0, 1)
        
        local fakerandom = 1 + (((69+recamount%5*CurTime()%3)*2420)%4)/10 
        
        return up, side * fakerandom, roll, punch
    end

    return up, side, roll, punch
end


-------------------------- SPREAD

SWEP.Spread = 0.05

SWEP.SpreadAddRecoil = 0.01

SWEP.SpreadAddHipFire = 0
SWEP.SpreadAddMove = 0.03
SWEP.SpreadAddMidAir = 0.045
SWEP.SpreadAddCrouch = -0.03
SWEP.SpreadAddSights = -(SWEP.Spread * 2.75)

SWEP.SpreadMultRecoil = 1.1
SWEP.RecoilModifierCap = 3
SWEP.RecoilModifierCapMove = 0
SWEP.RecoilModifierCapSights = 0.05

-------------------------- HANDLING

SWEP.SpeedMult = 1 -- Walk speed multiplier
SWEP.SpeedMultSights = 0.9 -- When aiming
SWEP.SpeedMultShooting = 0.9

SWEP.AimDownSightsTime = 0.26 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.375 -- How long it takes to go from sprinting to being able to fire.

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false

SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.2

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 225, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-2.425, -1, 0.625),
    Ang = Angle(0, 0, -2.25),
    Magnification = 1.1,
	ViewModelFOV = 54,
	CrosshairInSights = false
}

SWEP.ViewModelFOVBase = 64

SWEP.SprintMidPoint = {
    Pos = Vector(0, -1.5, -0.15),
    Ang = Angle(0, 0, 0)
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.MovingMidPoint = {
    Pos = Vector(-0.5, -0.5, -0.5),
    Ang = Angle(0, 0, -5)
}

SWEP.MovingPos = Vector(-1, -0.8, -1)
SWEP.MovingAng = Angle(0, 0, -10)

SWEP.CrouchPos = Vector(-1, -0.5, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.SprintPos = Vector(1, 0, -1)
SWEP.SprintAng = Angle(0, 0, 25)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(16, 35, 3)
SWEP.CustomizeRotateAnchor = Vector(15, -2.25, -4)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeSnapshotPos = Vector(0, 13, 3)
SWEP.CustomizeNoRotate = false

SWEP.PeekPos = Vector(-1, 4, -4)
SWEP.PeekAng = Angle(-0.3, 0, -45)

SWEP.PeekMaxFOV = 55

SWEP.PeekPosReloading = Vector(0, 4, -2)
SWEP.PeekAngReloading = Angle(-0.3, 0, -10)

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

SWEP.MuzzleParticle = "AC_muzzle_rifle_fp"
SWEP.AfterShotParticle = "AC_muzzle_smoke_barrel"
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 4
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_762_hr.mdl"
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 0.07
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)
SWEP.ShellSounds = ARC9.COD2019_556_Table

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_rif_fal_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_metal_concrete_01.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_metal_concrete_02.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_metal_concrete_03.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_metal_concrete_04.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_metal_concrete_05.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_metal_concrete_06.ogg",
}
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineTime = 0.9
SWEP.DropMagazineQCA = 3
SWEP.DropMagazineAng = Angle(0, -90, -90)

SWEP.DropMagazineQCAHook = function(swep, old) 
  local curanim = swep:GetIKAnimation() or ""
  if curanim == "reload_fast" then return 5 end
  if curanim == "reload_xmag_fast" then return 5 end
end

-------------------------- SOUNDS

local path = "weapons/cod2019/fal/"

SWEP.ShootSound = "COD2019.FAL.Fire"
SWEP.ShootSoundIndoor = "COD2019.FAL.Fire"

SWEP.ShootSoundSilenced = "COD2019.FAL.Fire.S"
SWEP.ShootSoundSilencedIndoor = "COD2019.FAL.Fire.S"

-- Non-Silenced
SWEP.LayerSound = "Layer_AR.Outside"
SWEP.DistantShootSound = "Distant_BR1.Outside"
-- Inside
SWEP.LayerSoundIndoor = "Layer_AR.Inside"
SWEP.DistantShootSoundIndoor = "Distant_AR.Inside"
---------------------------------------------------
-- Silenced
SWEP.LayerSoundSilenced = "Layer_ARSUP.Outside"
SWEP.DistantShootSoundSilenced = "Distant_AR_Sup.Outside"
-- Inside
SWEP.LayerSoundSilencedIndoor = "Layer_ARSUP.Inside"
SWEP.DistantShootSoundSilencedIndoor = "Distant_AR_Sup.Inside"
---------------------------------------------------

SWEP.EnterSightsSound = path .. "weap_ar_falima_ads_up.ogg"
SWEP.ExitSightsSound = path .. "weap_ar_falima_ads_down.ogg"

SWEP.BulletBones = {
    [1] = "j_bullet_04",
    [2] = "j_bullet_03",
    [3] = "j_bullet_02",
    [4] = "j_bullet_01",
}

SWEP.HideBones  = {
    [1] = "j_mag2",
}

SWEP.TriggerDelay = 0.025 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayCancellable = false
SWEP.TriggerDelayTime = 0.025 -- Time until weapon fires.

SWEP.TriggerDownSound = "weapons/cod2019/fal/weap_falima_fire_first_plr_01.ogg"
SWEP.TriggerUpSound = "weapons/cod2019/fal/weap_falima_disconnector_plr_01.ogg"

SWEP.Animations = {
	["enter_sights"] = {
		Source = "idle",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
	},
    ["fire"] = {
        Source = "shoot1",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
    },
    ["dryfire"] = {
        Source = "bipod_out",
		MinProgress = 0.01,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
        },
    },
    ["reload"] = {
        Source = "reload_short",
		MinProgress = 0.9,
		PeekProgress = 0.85,
		RefillProgress = 0.65,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.95, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_plr_ar_falima_reload_start.ogg", t = 0.033},
            {s = path .. "wfoly_plr_ar_falima_reload_magout_01.ogg", t = 0.65},
            {s = path .. "wfoly_plr_ar_falima_reload_arm.ogg", t = 0.75},
            {s = path .. "wfoly_plr_ar_falima_reload_elbow.ogg", t = 1.45},
			{s = path .. "wfoly_plr_ar_falima_reload_magin_v2_01.ogg", t = 1.5},
			{s = path .. "wfoly_plr_ar_falima_reload_magin_v2_02.ogg", t = 1.75},
			{s = path .. "wfoly_plr_ar_falima_reload_end.ogg", t = 2.06},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		DropMagAt = 1.5,
		MinProgress = 0.9,
		PeekProgress = 0.825,
		RefillProgress = 0.775,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.125, lhik = 1, rhik = 0 },
            { t = 0.175, lhik = 0, rhik = 0 },
            { t = 0.725, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_plr_ar_falima_reload_empty_start.ogg", t = 0},
            {s = path .. "wfoly_plr_ar_falima_reload_empty_rotate.ogg", t = 0.46},
            {s = path .. "wfoly_plr_ar_falima_reload_empty_magout_01.ogg", t = 0.73},
            {s = path .. "wfoly_plr_ar_falima_reload_empty_shake.ogg", t = 0.93},
            {s = path .. "wfoly_plr_ar_falima_reload_empty_arm.ogg", t = 1.63},
			{s = path .. "wfoly_plr_ar_falima_reload_empty_magin_v2_01.ogg", t = 1.83},
			{s = path .. "wfoly_plr_ar_falima_reload_empty_magin_v2_02.ogg", t = 2.1},
            {s = path .. "wfoly_plr_ar_falima_reload_empty_elbow.ogg", t = 2.2},
			{s = path .. "wfoly_plr_ar_falima_reload_empty_boltopen_01.ogg", t = 2.66},
            {s = path .. "wfoly_plr_ar_falima_reload_empty_boltclose_01.ogg", t = 2.96},
            {s = path .. "wfoly_plr_ar_falima_reload_empty_end.ogg", t = 3},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.875,
		PeekProgress = 0.85,
		RefillProgress = 0.65,
		DropMagAt = 0.9,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.675, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_plr_ar_falima_reload_fast_start.ogg", t = 0},
			{s = path .. "wfoly_plr_ar_falima_reload_fast_magout_01.ogg", t = 0.23},
            {s = path .. "wfoly_plr_ar_falima_reload_fast_rattle.ogg", t = 0.33},
			{s = path .. "wfoly_plr_ar_falima_reload_fast_magin_v2_01.ogg", t = 0.76},
			{s = path .. "wfoly_plr_ar_falima_reload_fast_magin_v2_02.ogg", t = 1.25},
			{s = path .. "wfoly_plr_ar_falima_reload_fast_end.ogg", t = 1.56},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		DropMagAt = 1.5,
		MinProgress = 0.9,
		PeekProgress = 0.875,
		RefillProgress = 0.75,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.15, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.75, lhik = 0, rhik = 0 },
            { t = 0.875, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_plr_ar_falima_reload_empty_fast_start.ogg", t = 0.033},
            {s = path .. "wfoly_plr_ar_falima_reload_empty_fast_rotate.ogg", t = 0.43},
            {s = path .. "wfoly_plr_ar_falima_reload_empty_fast_grabmag.ogg", t = 0.7},
            {s = path .. "wfoly_plr_ar_falima_reload_empty_fast_magout_01.ogg", t = 0.73},
			{s = path .. "wfoly_plr_ar_falima_reload_empty_fast_dropmag.ogg", t = 1.03},
			{s = path .. "wfoly_plr_ar_falima_reload_empty_elbow.ogg", t = 1.46},
			{s = path .. "wfoly_plr_ar_falima_reload_empty_fast_magin_v2_01.ogg", t = 1.57},
			{s = path .. "wfoly_plr_ar_falima_reload_empty_fast_magin_v2_02.ogg", t = 1.77},
			{s = path .. "wfoly_plr_ar_falima_reload_empty_fast_charge_01.ogg", t = 2.15},
			{s = path .. "wfoly_plr_ar_falima_reload_empty_fast_end.ogg", t = 2.36},
        },
    },
    ["reload_xmag"] = {
        Source = "reload_xmag",
		MinProgress = 0.9,
		PeekProgress = 0.8625,
		RefillProgress = 0.65,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.95, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_plr_ar_falima_reload_start.ogg", t = 0/30},
            {s = path .. "wfoly_plr_ar_falima_reload_arm.ogg", t = 5/30},
			{s = path .. "wfoly_plr_ar_falima_reload_magout_01.ogg", t = 22/30},
			{s = path .. "wfoly_plr_ar_falima_reload_magin_v2_01.ogg", t = 42/30},
			{s = path .. "wfoly_plr_ar_falima_reload_magin_v2_02.ogg", t = 52/30},
			{s = path .. "wfoly_plr_ar_falima_reload_elbow.ogg", t = 64/30},
			{s = path .. "wfoly_plr_ar_falima_reload_end.ogg", t = 64/30},
        },
    },
    ["reload_xmag_empty"] = {
        Source = "reload_xmag_empty",
		DropMagAt = 1.5,
		MinProgress = 0.9,
		PeekProgress = 0.775,
		RefillProgress = 0.775,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.125, lhik = 1, rhik = 0 },
            { t = 0.175, lhik = 0, rhik = 0 },
            { t = 0.725, lhik = 0, rhik = 0 },
            { t = 0.875, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_plr_ar_falima_reload_empty_start.ogg", t = 0/30},
            {s = path .. "wfoly_plr_ar_falima_reload_empty_rotate.ogg", t = 0/30},
            {s = path .. "wfoly_plr_ar_falima_reload_empty_shake.ogg", t = 14/30},
            {s = path .. "wfoly_plr_ar_falima_reload_empty_magout_01.ogg", t = 20/30},
			{s = path .. "wfoly_plr_ar_falima_reload_empty_elbow.ogg", t = 31/30},
			{s = path .. "wfoly_plr_ar_falima_reload_empty_arm.ogg", t = 40/30},
			{s = path .. "wfoly_plr_ar_falima_reload_empty_magin_v2_01.ogg", t = 53/30},
			{s = path .. "wfoly_plr_ar_falima_reload_empty_magin_v2_02.ogg", t = 63/30},
			{s = path .. "wfoly_plr_ar_falima_reload_empty_boltopen_01.ogg", t = 77/30},
			{s = path .. "wfoly_plr_ar_falima_reload_empty_boltclose_01.ogg", t = 87/30},
			{s = path .. "wfoly_plr_ar_falima_reload_empty_end.ogg", t = 93/30},
        },
    },
    ["reload_xmag_fast"] = {
        Source = "reload_xmag_fast",
		MinProgress = 0.85,
		RefillProgress = 0.65,
		DropMagAt = 0.81,
		FireASAP = true,
		DropMagazineQCA = 5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.675, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_plr_ar_falima_reload_fast_start.ogg", t = 0/30},
            {s = path .. "wfoly_plr_ar_falima_reload_fast_rattle.ogg", t = 6/30},
			{s = path .. "wfoly_plr_ar_falima_reload_fast_magout_01.ogg", t = 7/30},
			{s = path .. "wfoly_plr_ar_falima_reload_fast_magin_v2_01.ogg", t = 30/30},
			{s = path .. "wfoly_plr_ar_falima_reload_fast_magin_v2_02.ogg", t = 38/30},
			{s = path .. "wfoly_plr_ar_falima_reload_elbow", t = 47/30},
			{s = path .. "wfoly_plr_ar_falima_reload_fast_end.ogg", t = 47/30},
        },
    },
    ["reload_xmag_fast_empty"] = {
        Source = "reload_xmag_fast_empty",
		DropMagAt = 1.4,
		MinProgress = 0.925,
		PeekProgress = 0.825,
		RefillProgress = 0.75,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.15, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.75, lhik = 0, rhik = 0 },
            { t = 0.875, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_plr_ar_falima_reload_empty_fast_start.ogg", t = 0/30},
            {s = path .. "wfoly_plr_ar_falima_reload_empty_fast_rotate.ogg", t = 0/30},
            {s = path .. "wfoly_plr_ar_falima_reload_empty_fast_magout_01.ogg", t = 21/30},
			{s = path .. "wfoly_plr_ar_falima_reload_empty_fast_dropmag.ogg", t = 31/30},
			{s = path .. "wfoly_plr_ar_falima_reload_empty_fast_grabmag.ogg", t = 40/30},
			{s = path .. "wfoly_plr_ar_falima_reload_empty_fast_magin_v2_01.ogg", t = 47/30},
			{s = path .. "wfoly_plr_ar_falima_reload_empty_fast_magin_v2_02.ogg", t = 57/30},
			{s = path .. "wfoly_plr_ar_falima_reload_empty_fast_charge_01.ogg", t = 66/30},
			{s = path .. "wfoly_plr_ar_falima_reload_empty_fast_end.ogg", t = 70/30},
        },
    },
    ["ready"] = {
        Source = "draw",
		MinProgress = 0.7,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.4, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_plr_ar_falima_raise_first_start.ogg", t = 0.033},
            {s = path .. "wfoly_plr_ar_falima_raise_first_cloth.ogg", t = 0.1},
            {s = path .. "wfoly_plr_ar_falima_raise_first_boltopen_01.ogg", t = 0.66},
			{s = path .. "wfoly_plr_ar_falima_raise_first_boltclosed_01.ogg", t = 0.93},
			{s = path .. "wfoly_plr_ar_falima_raise_first_end.ogg", t = 1.3},
        },
    },
    ["draw"] = {
        Source = "draw_short",
		MinProgress = 0.5,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_plr_ar_falima_raise_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_ar_falima_raise_settle.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.3, lhik = 0, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_plr_ar_falima_drop_down.ogg", t = 0/30},
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
        Time = 1.25,
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
        Time = 1.25,
    },
    ["super_sprint_idle"] = {
        Source = "super_sprint",
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 1 },
        },
    },
    ["super_sprint_in"] = {
        Source = "super_sprint_in",
		Time = 1,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.1, lhik = 1, rhik = 1 },
            { t = 1, lhik = 0, rhik = 1 },
        },
    },
    ["super_sprint_out"] = {
        Source = "super_sprint_out",
		Time = 0.75,
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
            { t = 0.1, lhik = 0, rhik = 1 },
            { t = 0.8, lhik = 0, rhik = 1 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_ar_falima_inspect_01.ogg", t = 0},
			{s = path .. "wfoly_ar_falima_inspect_02.ogg", t = 1.3},
			{s = path .. "wfoly_ar_falima_inspect_03.ogg", t = 2.36},
			{s = path .. "wfoly_ar_falima_inspect_04.ogg", t = 3.6},
			{s = path .. "wfoly_ar_falima_inspect_05.ogg", t = 4.1},
        },
    },
    ["bash"] = {
        Source = {"melee","melee2","melee3"},
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
    },
    ["firemode_1"] = {
        Source = "semi_off",
        EventTable = {
            {s = path .. "weap_ar_falima_selector_on.ogg", t = 0/30},
        },
    },
    ["firemode_2"] = {
        Source = "semi_on",
        EventTable = {
            {s = path .. "weap_ar_falima_selector_off.ogg", t = 0/30},
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

-------------------------- ATTACHMENTS

-- SWEP.Hook_Think	= ARC9.COD2019.BlendSights2

--- 30 Round Mags ---
local Translate_XMag = {
    ["reload"] = "reload_xmag",
    ["reload_empty"] = "reload_xmag_empty",
}
local Translate_XMag_Fast = {
    ["reload"] = "reload_xmag_fast",
    ["reload_empty"] = "reload_xmag_fast_empty",
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

    if super_sprint and Translate_TacSprint[anim] then
        return Translate_TacSprint[anim]
    end

    if speedload then
        if xmag then
            if Translate_XMag_Fast[anim] then
                return Translate_XMag_Fast[anim]
            end
        else
            if Translate_Fast[anim] then
                return Translate_Fast[anim]
            end
        end
    else 
        if xmag then
            if Translate_XMag[anim] then
                return Translate_XMag[anim]
            end
        end
    end
	
    --wep.MWHybridSwitching = nil
    if anim == "switchsights" then
        if wep:HasElement("hybrid_scope") then
            wep.MWHybridSwitching = true
            return wep:GetMultiSight() == 1 and "hybrid_on" or "hybrid_off"
        else
            return false
        end
    end
end

SWEP.DefaultBodygroups = "000000000"

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(12.8, -0.7, 0.65),
	ModelAngleOffset = Angle(0, 0, 35),
	Scale = 0.8,
    },
    ["go_grip_angled"] = {
		ModelOffset = Vector(0.7, 0, 0.1),
    },
    ["cod2019_optic_hybrid_west02"] = {
		ModelOffset = Vector(-3.25, 0, 0.1),
    },
    ["cod2019_optic_reflex_west05_hybrid"] = {
		ModelOffset = Vector(-4, 0, 0.1),
    },
    ["cod2019_griptape_01"] = {
		Model = "models/weapons/cod2019/attachs/weapons/fal/attachment_vm_ar_falima_pistolgrip_tape.mdl",
    },
    ["cod2019_griptape_02"] = {
		Model = "models/weapons/cod2019/attachs/weapons/fal/attachment_vm_ar_falima_pistolgrip_tape.mdl",
    },
    ["cod2019_griptape_03"] = {
		Model = "models/weapons/cod2019/attachs/weapons/fal/attachment_vm_ar_falima_pistolgrip_tape.mdl",
    },
}

SWEP.AttachmentElements = {
    ["body_none"] = {
        Bodygroups = {
            {0,1},
        },
    },
    ["foregrip_none"] = {
        Bodygroups = {
            {8,1},
        },
    },
    ["mag_none"] = {
        Bodygroups = {
            {1,2},
        },
    },
    ["stock_skeleton"] = {
        Bodygroups = {
            {2,1},
        },
    },
    ["stock_none"] = {
        Bodygroups = {
            {2,3},
        },
    },
    ["stock_adapter"] = {
        Bodygroups = {
            {2,2},
        },
    },
    ["sights"] = {
        Bodygroups = {
            {3,1},
            {7,1},
        },
    },
    ["sight_adapter_none"] = {
        Bodygroups = {
            {3,2},
            {7,2},
        },
    },
    ["barrel_none"] = {
        Bodygroups = {
            {4,1},
			{5,1},
        },

    },
    ["muzzle"] = {
        Bodygroups = {
			{5,1},
        },
    },
    ["laser_mount"] = {
        Bodygroups = {
            {6,1},
        },
    },
	["grip_angled"] = {
    AttPosMods = { [6] = { Pos = Vector(-2.75, 0, 0), } }	
	}
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model
	local attached = data.elements
	if wep:HasElement("laser_mount") and wep:HasElement("body_none") then
		model:SetBodygroup(6,0)
	end
end

SWEP.Attachments = {
    { -- 1
        PrintName = ARC9:GetPhrase("mw19_category_muzzle"),
        Category = "cod2019_muzzle",
        DefaultIcon = Material("entities/defattachs/muzzle-ar.png", "mips smooth"),
		Bone = "tag_silencer",
        Pos = Vector(0, 0, 0),
		InstalledElements = {"muzzle"},
    },
    { -- 2
        PrintName = ARC9:GetPhrase("mw19_category_barrel"),
		DefaultIcon = Material("entities/defattachs/barrel-ar.png", "mips smooth"),
        Category = "cod2019_fal_barrel",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
    },
    { -- 3
        PrintName = ARC9:GetPhrase("mw19_category_laser"),
		DefaultIcon = Material("entities/defattachs/laser-ar.png", "mips smooth"),
        Category = "cod2019_tac",
        Bone = "tag_laser_attach",
        Pos = Vector(-2.5, -0.225, -1.05),
        Ang = Angle(0, 0, -90),
		InstalledElements = {"laser_mount"},
    },
    { -- 4
        PrintName = ARC9:GetPhrase("mw19_category_optic"),
		DefaultIcon = Material("entities/defattachs/optic.png", "mips smooth"),
        Bone = "tag_holo",
        Pos = Vector(1.5, 0, -0.1),
        Category = {"cod2019_optic", "cod2019_optic_big"},
		InstalledElements = {"sights"},
    },
    { -- 5
        PrintName = ARC9:GetPhrase("mw19_category_stock"),
		DefaultIcon = Material("entities/defattachs/stock-ar.png", "mips smooth"),
        Category = {"cod2019_tube", "cod2019_fal_stock"},
        Bone = "tag_stock_attach",
        Pos = Vector(0, 0, 0),
		InstalledElements = {"stock_adapter"},
    },
    { -- 6
        PrintName = ARC9:GetPhrase("mw19_category_underbarrel"),
		DefaultIcon = Material("entities/defattachs/grip.png", "mips smooth"),
        Category = "cod2019_grip",
        Bone = "tag_grip_attach",
        Pos = Vector(-2.6, 0, 0),
        Ang = Angle(0, 0, 180),
		MergeSlots = {20}, -- Grenade Launcher(s)
    },
    { -- 7
        PrintName = ARC9:GetPhrase("mw19_category_magazine"),
		DefaultIcon = Material("entities/defattachs/magazine-ar.png", "mips smooth"),
		Bone = "tag_mag_attach",
        Category = {"cod2019_fal_mag","cod2019_mag"},
        Pos = Vector(0, 0, 0),
    },
    { -- 8
        PrintName = ARC9:GetPhrase("mw19_category_ammo"),
		DefaultIcon = Material("arc9/def_att_icons/ammotype.png", "mips smooth"),
        Bone = "tag_mag_attach",
		Category = {"cod2019_ammo"},
		Pos = Vector(-1.5, 0, 0),
    },
    { -- 9
        PrintName = ARC9:GetPhrase("mw19_category_reargrip"),
		DefaultIcon = Material("entities/defattachs/reargrip-ar.png", "mips smooth"),
        Category = "cod2019_pistolgrip",
        Bone = "tag_pistolgrip_attach",
        Pos = Vector(0, 0, 0),
    },
    { -- 10
        PrintName = ARC9:GetPhrase("mw19_category_perk"),
        Category = {"cod2019_perks","cod2019_perks_soh","cod2019_perks_ss"},
        Bone = "tag_attachments",
        Pos = Vector(3.5, 0, -4),
    },
	
	-- Unofficial
    { -- 11
        PrintName = ARC9:GetPhrase("mw19_category_receiver"),
        Category = "cod2019_fal_receiver",
        Bone = "tag_attachments",
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(3.5, 0, -1),
		Hidden = false,
    },
	
	-- Cosmetics
    { -- 12
        PrintName = ARC9:GetPhrase("mw19_category_skins"),
        Bone = "tag_cosmetic",
        Pos = Vector(7, 0, 3),
        Category = "cod2019_skins_fal",
		CosmeticOnly = true,
    },
    { -- 13
        PrintName = ARC9:GetPhrase("mw19_category_camouflage"),
        Category = {"universal_camo"},
        Bone = "tag_cosmetic",
        Pos = Vector(5, 0, 3),
        CosmeticOnly = true,
    },
    { -- 14
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/rif_fal_decal_a.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(3, 0, 3),
		ExcludeElements = {"body_none"},
    },
    { -- 15
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/rif_fal_decal_b.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(1, 0, 3),
		ExcludeElements = {"body_none"},
    },
    { -- 16
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/rif_fal_decal_c.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-1, 0, 3),
		ExcludeElements = {"body_none"},
    },
    { -- 17
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/rif_fal_decal_d.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-3, 0, 3),
		ExcludeElements = {"body_none"},
    },
    { -- 18
        PrintName = ARC9:GetPhrase("mw19_category_charm"),
        CosmeticOnly = true,
        Category = {"charm"},
        Bone = "tag_cosmetic",
        Pos = Vector(0.5, 0, 0),
		Icon_Offset = Vector(-5.5, 0, 3),
    },
    { -- 19
        PrintName = ARC9:GetPhrase("mw19_category_stats"),
        Category = {"killcounter","killcounter2"},
        Bone = "tag_attachments",
        Pos = Vector(3.3, -0.75, -0.5),
		Icon_Offset = Vector(-5.5, 0, 2.5),
		CosmeticOnly = true,
    },
    { -- 20
        PrintName = "GL",
        Category = {"cod2019_m203"},
        Bone = "tag_attachments",
        Pos = Vector(14, 0, -2.8),
        Ang = Angle(0, 180, 0),
		-- InstalledElements = {"cod2019_m203_alt"},
		Hidden = true,
    },
}

SWEP.GripPoseParam = 3
SWEP.GripPoseParam2 = 0.3
SWEP.CodAngledGripPoseParam = 43
SWEP.CodStubbyGripPoseParam = 1
SWEP.CodStubbyTallGripPoseParam = 3

-- Warzone-esque Stats; Add here to change only when using Warzone Stats variable.
if GetConVar("arc9_mw19_stats_warzone"):GetBool() then

-------------------------- DAMAGE PROFILE
SWEP.DamageMax = 49 -- Damage done at point blank range
SWEP.DamageMin = 45 -- Damage done at maximum range

SWEP.RangeMin = 20 / ARC9.HUToM
SWEP.RangeMax = 43 / ARC9.HUToM

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 1.62,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 1,
    [HITGROUP_RIGHTLEG] = 1,
}

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 850 / ARC9.HUToM

-------------------------- FIREMODES

SWEP.RPM = 500

-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.26 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.25 -- How long it takes to go from sprinting to being able to fire.

end
