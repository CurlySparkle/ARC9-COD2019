AddCSLuaFile()
if CLIENT then
    killicon.Add( "arc9_cod2019_ar_scar", "vgui/killicons/cod2019_ar_scar.png", Color(251, 85, 25, 255))
end

SWEP.LoadoutImage = "entities/loadout/arc9_cod2019_ar_scar.png"

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.NotForNPCs = false
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_ar") or "Assault Rifles"
SWEP.ARC9WeaponCategory = 4

SWEP.PrintName = ARC9:GetPhrase("mw19_weapon_scar") or "FN Scar 17"

SWEP.Class = ARC9:GetPhrase("mw19_class_weapon_ar") or "Assault Rifle"

SWEP.Trivia = {
    [ ARC9:GetPhrase("mw19_country") ] = ARC9:GetPhrase("mw19_country_belgium"),
    [ ARC9:GetPhrase("mw19_manufacturer") ] = ARC9:GetPhrase("mw19_manufacturer_forgetac"),
    [ ARC9:GetPhrase("mw19_caliber") ] = ARC9:GetPhrase("mw19_caliber_762"),
    [ ARC9:GetPhrase("mw19_weight") ] = string.format(ARC9:GetPhrase("mw19_weight_val"), 3.58, 3.58 * 2.2),
    [ ARC9:GetPhrase("mw19_weight_projectile") ] = string.format(ARC9:GetPhrase("mw19_weight_projectile_val"), 144),
}

SWEP.Credits = {
    [ ARC9:GetPhrase("mw19_author") ] = "Twilight Sparkle/Firmeteran",
    [ ARC9:GetPhrase("mw19_assets") ] = "Activision/Infinity Ward"
}

SWEP.Description = ARC9:GetPhrase("mw19_weapon_scar_desc") or [[Large caliber, fully automatic assault rifle that provides high damage over long ranges.]]

SWEP.ViewModel = "models/weapons/cod2019/c_rif_scar.mdl"
SWEP.WorldModel = "models/weapons/cod2019/w_rif_scar.mdl"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_rif_scar.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-3.5, 3, -6),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-9.5, 4.5, -4),
    TPIKAng = Angle(-12.5, -1, 165),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 36 -- Damage done at point blank range
SWEP.DamageMin = 17 -- Damage done at maximum range

SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 22 / ARC9.HUToM
SWEP.RangeMax = 49 / ARC9.HUToM

SWEP.Penetration = 8 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.15

SWEP.ImpactForce = 8

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 1.6,
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
SWEP.PhysBulletDrag = 1.15

-------------------------- MAGAZINE

SWEP.Ammo = "ar2" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 20 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 10 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 571

SWEP.Firemodes = {
    {
        Mode = -1,
		PoseParam = 0,
    },
    {
        Mode = 1,
		PoseParam = 1,
    },
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1.2

SWEP.RecoilSeed = 984135

SWEP.RecoilPatternDrift = 5

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.2
SWEP.RecoilRandomSide = 0.1

SWEP.RecoilDissipationRate = 10 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 1 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 2.5

SWEP.RecoilMultCrouch = 0.8

SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.85

SWEP.RecoilPerShot = 1
SWEP.RecoilMax = 3.5

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilPunch = 1.7
SWEP.VisualRecoilUp = 0.3

SWEP.VisualRecoilMultSights = 0.5
SWEP.VisualRecoilPunchSights = 15
SWEP.VisualRecoilRollSights = 5
SWEP.VisualRecoilSideSights = 0
SWEP.VisualRecoilUpSights = 0

SWEP.VisualRecoilRoll = 50
SWEP.VisualRecoilSide = 0.3

SWEP.VisualRecoilSpringPunchDamping = 11
SWEP.VisualRecoilDampingConst = 40
SWEP.VisualRecoilDampingConstSights = 80

SWEP.VisualRecoilDoingFunc = function(up, side, roll, punch, recamount)
    if recamount > 5 then
        recamount = 1.65 - math.Clamp((recamount - 2) / 3.5, 0, 1)
        
        local fakerandom = 1 + (((69+recamount%5*CurTime()%3)*2420)%4)/10 
        
        return up, side * fakerandom, roll, punch
    end

    return up, side, roll, punch
end

-------------------------- SPREAD

SWEP.Spread = 0.03

SWEP.SpreadAddRecoil = 0.01

SWEP.SpreadAddHipFire = 0
SWEP.SpreadAddMove = 0.03
SWEP.SpreadAddMidAir = 0.045
SWEP.SpreadAddCrouch = -0.03
SWEP.SpreadAddSights = -(SWEP.Spread * 2.75)

SWEP.SpreadMultRecoil = 1.2
SWEP.RecoilModifierCap = 3
SWEP.RecoilModifierCapMove = 0
SWEP.RecoilModifierCapSights = 0.05

-------------------------- HANDLING

SWEP.SpeedMult = 1 -- Walk speed multiplier
SWEP.SpeedMultSights = 0.9 -- When aiming
SWEP.SpeedMultShooting = 0.9

SWEP.AimDownSightsTime = 0.3 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.375 -- How long it takes to go from sprinting to being able to fire.

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.2

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 255, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-2.65, -2.25, 0.05),
    Ang = Angle(0, 0.1, -0),
    Magnification = 1.15,
    ViewModelFOV = 56,
	CrosshairInSights = false
}

SWEP.ViewModelFOVBase = 64

SWEP.SprintMidPoint = {
    Pos = Vector(0, -1, -0.15),
    Ang = Angle(0, 0, 0)
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.MovingMidPoint = {
    Pos = Vector(-0.5, -0.5, -0.5),
    Ang = Angle(0, 0, -5)
}

SWEP.MovingPos = Vector(-0.8, -0.8, -0.8)
SWEP.MovingAng = Angle(0, 0, -8)

SWEP.CrouchPos = Vector(-1, -0.5, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.SprintPos = Vector(1, 0, -1)
SWEP.SprintAng = Angle(0, 0, 25)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(15, 50, 3)
SWEP.CustomizeRotateAnchor = Vector(14.5, -2.75, -4)
SWEP.CustomizeSnapshotFOV = 65
SWEP.CustomizeSnapshotPos = Vector(-1, 25, 5)
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeNoRotate = false

SWEP.PeekPos = Vector(-1.5, 2, -3)
SWEP.PeekAng = Angle(-0.3, 0, -45)

SWEP.PeekMaxFOV = 54

SWEP.PeekPosReloading = Vector(0, 2, -1)
SWEP.PeekAngReloading = Angle(-0.3, 0, -10)

-------------------------- HoldTypes

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeHolstered = "passive"
SWEP.HoldTypeSights = "ar2"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"
SWEP.HoldTypeNPC = "ar2"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "muzzleflash_ar"
SWEP.AfterShotParticle = "barrel_smoke"
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 4
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_762_hr.mdl"
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 0.085
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)
SWEP.ShellSounds = ARC9.COD2019_556_Table

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_rif_scar_mag_2.mdl" -- Set to a string or table to drop this magazine when reloading.
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

-------------------------- SOUNDS

local path = "weapons/cod2019/scar/"
local pathub = "weapons/cod2019/shared/ubgl/"
local pathubs = "weapons/cod2019/model680/"

SWEP.ShootSound = "COD2019.Scar.Fire"
SWEP.ShootSoundIndoor = "COD2019.Scar.Fire"

SWEP.ShootSoundSilenced = "COD2019.Scar.Fire.S"
SWEP.ShootSoundSilencedIndoor = "COD2019.Scar.Fire.S"

-- Non-Silenced
SWEP.LayerSound = "Layer_AR.Outside"
SWEP.DistantShootSound = "Distant_LMG.Outside"
-- Inside
SWEP.LayerSoundIndoor = "Layer_AR.Inside"
SWEP.DistantShootSoundIndoor = "Distant_LMG.Inside"
---------------------------------------------------
-- Silenced
SWEP.LayerSoundSilenced = "Layer_ARSUP.Outside"
SWEP.DistantShootSoundSilenced = "Distant_AR_Sup.Outside"
-- Inside
SWEP.LayerSoundSilencedIndoor = "Layer_ARSUP.Inside"
SWEP.DistantShootSoundSilencedIndoor = "Distant_AR_Sup.Inside"
---------------------------------------------------

SWEP.EnterSightsSound = "weapons/cod2019/scar/wfoly_ar_scharlie_ads_up.ogg"
SWEP.ExitSightsSound = "weapons/cod2019/scar/wfoly_ar_scharlie_ads_down.ogg"

SWEP.BulletBones = {
    [1] = "j_bullet01",
    [2] = "j_bullet02",
	[3] = "j_bullet03",
	[4] = "j_bullet04",
}

SWEP.HideBones  = {
    [1] = "j_mag2",
}

SWEP.TriggerDelay = 0.025 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayCancellable = false
SWEP.TriggerDelayTime = 0.025 -- Time until weapon fires.

SWEP.TriggerDownSound = "weapons/cod2019/scar/weap_scharlie_fire_first_plr_01.ogg"
SWEP.TriggerUpSound = "weapons/cod2019/scar/weap_scharlie_disconnector_plr_01.ogg"

-- Jammed

SWEP.Malfunction = true 
SWEP.MalfunctionNeverLastShoot = true 
SWEP.MalfunctionMeanShotsToFail = 300*2
SWEP.MalfunctionMeanShotsToFailMultHot = -0.1*2

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
		MinProgress = 0.9,
		PeekProgress = 0.815,
		RefillProgress = 0.625,
		FireASAP = true,
		MagSwapTime = 3.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.65, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_ar_scharlie_reload_rotate.ogg", t = 0.033},
			{s = path .. "wfoly_ar_scharlie_reload_magout.ogg", t = 0.63},
			{s = path .. "wfoly_ar_scharlie_reload_magin_v2_01.ogg", t = 1.13},
			{s = path .. "wfoly_ar_scharlie_reload_magin_v2_02.ogg", t = 1.43},
			{s = path .. "wfoly_ar_scharlie_reload_end.ogg", t = 1.66},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.9,
		PeekProgress = 0.85,
		RefillProgress = 0.75,
		FireASAP = true,
		DropMagAt = 1.05,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.15, lhik = 1, rhik = 0 },
            { t = 0.3, lhik = 0, rhik = 0 },
            { t = 0.75, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_ar_scharlie_reload_empty_rotate.ogg", t = 0.066},
			{s = path .. "wfoly_ar_scharlie_reload_empty_magout.ogg", t = 0.36},
			{s = path .. "wfoly_ar_scharlie_reload_empty_magin_v2_01.ogg", t = 1.46},
			{s = path .. "wfoly_ar_scharlie_reload_empty_magin_v2_02.ogg", t = 1.76},
			{s = path .. "wfoly_ar_scharlie_reload_empty_bolt_release.ogg", t = 2.16},
			{s = path .. "wfoly_ar_scharlie_reload_empty_end.ogg", t = 2.23},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.85,
		PeekProgress = 0.815,
		RefillProgress = 0.625,
		FireASAP = true,
		MagSwapTime = 0.5,
		DropMagAt = 0.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.65, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_ar_scharlie_reload_fast_shake.ogg", t = 0.066},
			{s = path .. "wfoly_ar_scharlie_reload_fast_magout.ogg", t = 0.36},
			{s = path .. "wfoly_ar_scharlie_reload_fast_magin_v2_01.ogg", t = 0.76},
			{s = path .. "wfoly_ar_scharlie_reload_fast_magin_v2_02.ogg", t = 1.03},
			{s = path .. "wfoly_ar_scharlie_reload_fast_end.ogg", t = 1.3},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.9,
		PeekProgress = 0.825,
		RefillProgress = 0.725,
		FireASAP = true,
		MagSwapTime = 0.5,
		DropMagAt = 0.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_ar_scharlie_reload_fast_empty_rotate.ogg", t = 0.033},
			{s = path .. "wfoly_ar_scharlie_reload_fast_empty_magout.ogg", t = 0.16},
			{s = path .. "wfoly_ar_scharlie_reload_fast_empty_magin_v2_01.ogg", t = 0.8},
			{s = path .. "wfoly_ar_scharlie_reload_fast_empty_magin_v2_02.ogg", t = 1.03},
			{s = path .. "wfoly_ar_scharlie_reload_fast_empty_bolt_release.ogg", t = 1.4},
			{s = path .. "wfoly_ar_scharlie_reload_fast_empty_end.ogg", t = 1.66},
        },
    },
    ["reload_xmags"] = {
        Source = "reload_xmags",
		MinProgress = 0.9,
		PeekProgress = 0.8,
		RefillProgress = 0.625,
		FireASAP = true,
		MagSwapTime = 3.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.65, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_ar_scharlie_reload_rotate.ogg", t = 0/30},
			{s = path .. "wfoly_ar_scharlie_reload_magout.ogg", t = 19/30},
			{s = path .. "wfoly_ar_scharlie_reload_magin_v2_01.ogg", t = 33/30},
			{s = path .. "wfoly_ar_scharlie_reload_magin_v2_02.ogg", t = 44/30},
			{s = path .. "wfoly_ar_scharlie_reload_end.ogg", t = 49/30},
        },
    },
    ["reload_xmags_fast"] = {
        Source = "reload_xmags_fast",
		MinProgress = 0.85,
		PeekProgress = 0.825,
		RefillProgress = 0.625,
		FireASAP = true,
		MagSwapTime = 0.5,
		DropMagAt = 0.55,
		DropMagAt = 0.45,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.65, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_ar_scharlie_reload_fast_shake.ogg", t = 0/30},
			{s = path .. "wfoly_ar_scharlie_reload_fast_magout.ogg", t = 0/30},
			{s = path .. "wfoly_ar_scharlie_reload_fast_magin_v2_01.ogg", t = 25/30},
			{s = path .. "wfoly_ar_scharlie_reload_fast_magin_v2_02.ogg", t = 31/30},
			{s = path .. "wfoly_ar_scharlie_reload_fast_end.ogg", t = 35/30},
        },
    },
    ["reload_dmr"] = {
        Source = "reload_dmr",
		MinProgress = 0.9,
		PeekProgress = 0.815,
		RefillProgress = 0.625,
		FireASAP = true,
		MagSwapTime = 3.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.65, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_ar_scharlie_reload_rotate.ogg", t = 0/30},
			{s = path .. "wfoly_ar_scharlie_reload_magout.ogg", t = 19/30},
			{s = path .. "wfoly_ar_scharlie_reload_magin_v2_01.ogg", t = 33/30},
			{s = path .. "wfoly_ar_scharlie_reload_magin_v2_02.ogg", t = 44/30},
			{s = path .. "wfoly_ar_scharlie_reload_end.ogg", t = 49/30},
        },
    },
    ["reload_dmr_empty"] = {
        Source = "reload_dmr_empty",
		MinProgress = 0.9,
		PeekProgress = 0.875,
		RefillProgress = 0.75,
		FireASAP = true,
		DropMagAt = 1.05,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.15, lhik = 1, rhik = 0 },
            { t = 0.3, lhik = 0, rhik = 0 },
            { t = 0.75, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_ar_scharlie_reload_empty_rotate.ogg", t = 0/30},
			{s = path .. "wfoly_ar_scharlie_reload_empty_magout.ogg", t = 10/30},
			{s = path .. "wfoly_ar_scharlie_reload_empty_magin_v2_01.ogg", t = 44/30},
			{s = path .. "wfoly_ar_scharlie_reload_empty_magin_v2_02.ogg", t = 54/30},
			{s = path .. "wfoly_ar_scharlie_reload_empty_bolt_release.ogg", t = 64/30},
			{s = path .. "wfoly_ar_scharlie_reload_empty_end.ogg", t = 67/30},
        },
    },
    ["reload_dmr_fast"] = {
        Source = "reload_dmr_fast",
		MinProgress = 0.85,
		PeekProgress = 0.815,
		RefillProgress = 0.625,
		FireASAP = true,
		MagSwapTime = 0.5,
		DropMagAt = 0.55,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.65, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_ar_scharlie_reload_fast_shake.ogg", t = 0/30},
			{s = path .. "wfoly_ar_scharlie_reload_fast_magout.ogg", t = 0/30},
			{s = path .. "wfoly_ar_scharlie_reload_fast_magin_v2_01.ogg", t = 25/30},
			{s = path .. "wfoly_ar_scharlie_reload_fast_magin_v2_02.ogg", t = 31/30},
			{s = path .. "wfoly_ar_scharlie_reload_fast_end.ogg", t = 36/30},
        },
    },
    ["reload_dmr_fast_empty"] = {
        Source = "reload_dmr_fast_empty",
		MinProgress = 0.9,
		PeekProgress = 0.825,
		RefillProgress = 0.7,
		FireASAP = true,
		MagSwapTime = 0.5,
		DropMagAt = 0.55,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_ar_scharlie_reload_empty_rotate.ogg", t = 0/30},
			{s = path .. "wfoly_ar_scharlie_reload_empty_magout.ogg", t = 0/30},
			{s = path .. "wfoly_ar_scharlie_reload_empty_magin_v2_01.ogg", t = 25/30},
			{s = path .. "wfoly_ar_scharlie_reload_empty_magin_v2_02.ogg", t = 31/30},
			{s = path .. "wfoly_ar_scharlie_reload_empty_bolt_release.ogg", t = 40/30},
			{s = path .. "wfoly_ar_scharlie_reload_empty_end.ogg", t = 45/30},
        },
    },
    ["reload_ar"] = {
        Source = "reload_ar",
		MinProgress = 0.9,
		PeekProgress = 0.8,
		RefillProgress = 0.625,
		FireASAP = true,
		MagSwapTime = 3.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.65, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_ar_scharlie_reload_rotate.ogg", t = 0/30},
			{s = path .. "wfoly_ar_scharlie_reload_empty_magout.ogg", t = 12/30},
			{s = path .. "wfoly_ar_scharlie_reload_magin_v2_01.ogg", t = 33/30},
			{s = path .. "wfoly_ar_scharlie_reload_magin_v2_02.ogg", t = 41/30},
			{s = path .. "wfoly_ar_scharlie_reload_end.ogg", t = 48/30},
        },
    },
    ["reload_ar_empty"] = {
        Source = "reload_ar_empty",
		MinProgress = 0.9,
		PeekProgress = 0.85,
		RefillProgress = 0.75,
		FireASAP = true,
		DropMagAt = 0.95,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.15, lhik = 1, rhik = 0 },
            { t = 0.3, lhik = 0, rhik = 0 },
            { t = 0.75, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_ar_scharlie_reload_empty_rotate.ogg", t = 0.066},
			{s = path .. "wfoly_ar_scharlie_reload_empty_magout.ogg", t = 0.36},
			{s = path .. "wfoly_ar_scharlie_reload_empty_magin_v2_01.ogg", t = 1.3},
			{s = path .. "wfoly_ar_scharlie_reload_empty_magin_v2_02.ogg", t = 1.6},
			{s = path .. "p05_ar_schotel_reload_drum_empty_charge.ogg", t = 1.9},
			{s = path .. "wfoly_ar_scharlie_reload_empty_end.ogg", t = 2.23},
        },
    },
    ["reload_ar_fast"] = {
        Source = "reload_ar_fast",
		MinProgress = 0.85,
		PeekProgress = 0.815,
		RefillProgress = 0.625,
		FireASAP = true,
		MagSwapTime = 0.5,
		DropMagAt = 0.45,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.35, lhik = 0, rhik = 0 },
            { t = 0.65, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_ar_scharlie_reload_fast_shake.ogg", t = 0.066},
			{s = path .. "wfoly_ar_scharlie_reload_fast_magout.ogg", t = 0.36},
			{s = path .. "wfoly_ar_scharlie_reload_fast_magin_v2_01.ogg", t = 0.76},
			{s = path .. "wfoly_ar_scharlie_reload_fast_magin_v2_02.ogg", t = 1.06},
			{s = path .. "wfoly_ar_scharlie_reload_fast_end.ogg", t = 1.36},
        },
    },
    ["reload_ar_fast_empty"] = {
        Source = "reload_ar_fast_empty",
		MinProgress = 0.9,
		PeekProgress = 0.825,
		RefillProgress = 0.725,
		FireASAP = true,
		MagSwapTime = 0.5,
		DropMagAt = 0.45,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.35, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_ar_scharlie_reload_fast_empty_rotate.ogg", t = 0.033},
			{s = path .. "wfoly_ar_scharlie_reload_fast_empty_magout.ogg", t = 0.16},
			{s = path .. "wfoly_ar_scharlie_reload_fast_empty_magin_v2_01.ogg", t = 0.8},
			{s = path .. "wfoly_ar_scharlie_reload_fast_empty_magin_v2_02.ogg", t = 1.03},
			{s = path .. "wfoly_ar_scharlie_reload_fast_empty_bolt_release.ogg", t = 1.4},
			{s = path .. "wfoly_ar_scharlie_reload_fast_empty_end.ogg", t = 1.8},
        },
    },
    ["reload_drum"] = {
        Source = "reload_drum",
		MinProgress = 0.95,
		PeekProgress = 0.85,
		RefillProgress = 0.75,
		FireASAP = true,
		MagSwapTime = 3.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "p05_ar_schotel_reload_drum_raise.ogg", t = 0/30},
			{s = path .. "p05_ar_schotel_reload_drum_magout.ogg", t = 20/30},
			{s = path .. "p05_ar_schotel_reload_drum_rattle.ogg", t = 36/30},
			{s = path .. "p05_ar_schotel_reload_drum_magin.ogg", t = 58/30},
			{s = path .. "p05_ar_schotel_reload_drum_end.ogg", t = 78/30},
        },
    },
    ["reload_drum_empty"] = {
        Source = "reload_drum_empty",
		MinProgress = 0.95,
		PeekProgress = 0.875,
		RefillProgress = 0.8,
		FireASAP = true,
		DropMagAt = 1.35,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.3, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.95, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "p05_ar_schotel_reload_drum_empty_raise.ogg", t = 0/30},
			{s = path .. "p05_ar_schotel_reload_drum_empty_magrelease.ogg", t = 11/30},
			{s = path .. "p05_ar_schotel_reload_drum_empty_magout.ogg", t = 32/30},
			{s = path .. "p05_ar_schotel_reload_drum_empty_rattle.ogg", t = 40/30},
			{s = path .. "p05_ar_schotel_reload_drum_empty_magin.ogg", t = 65/30},
			{s = path .. "p05_ar_schotel_reload_drum_empty_charge.ogg", t = 90/30},
			{s = path .. "p05_ar_schotel_reload_drum_empty_end.ogg", t = 89/30},
        },
    },
    ["reload_drum_fast"] = {
        Source = "reload_drum_fast",
		MinProgress = 0.925,
		PeekProgress = 0.875,
		RefillProgress = 0.725,
		FireASAP = true,
		MagSwapTime = 0.5,
		DropMagAt = 1,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.95, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "p05_ar_schotel_reload_drum_fast_raise.ogg", t = 0/30},
			{s = path .. "p05_ar_schotel_reload_drum_fast_magout.ogg", t = 20/30},
			{s = path .. "p05_ar_schotel_reload_drum_fast_magin.ogg", t = 47/30},
			{s = path .. "p05_ar_schotel_reload_drum_fast_end.ogg", t = 59/30},
        },
    },
    ["reload_drum_fast_empty"] = {
        Source = "reload_drum_fast_empty",
		MinProgress = 0.925,
		PeekProgress = 0.875,
		RefillProgress = 0.75,
		FireASAP = true,
		MagSwapTime = 0.5,
		DropMagAt = 1,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.95, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "p05_ar_schotel_reload_drum_fast_empty_raise.ogg", t = 0/30},
			{s = path .. "p05_ar_schotel_reload_drum_fast_empty_magout.ogg", t = 18/30},
			{s = path .. "p05_ar_schotel_reload_drum_fast_empty_rattle.ogg", t = 35/30},
			{s = path .. "p05_ar_schotel_reload_drum_fast_empty_magin.ogg", t = 47/30},
			{s = path .. "p05_ar_schotel_reload_drum_fast_empty_charge.ogg", t = 68/30},
			{s = path .. "p05_ar_schotel_reload_drum_fast_empty_end.ogg", t = 65/30},
        },
    },
    ["reload_glaunch"] = {
        Source = "reload_gl",
		MinProgress = 0.9,
		PeekProgress = 0.815,
		RefillProgress = 0.625,
		FireASAP = true,
		MagSwapTime = 3.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.65, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_ar_scharlie_reload_rotate.ogg", t = 0.033},
			{s = path .. "wfoly_ar_scharlie_reload_magout.ogg", t = 0.63},
			{s = path .. "wfoly_ar_scharlie_reload_magin_v2_01.ogg", t = 1.13},
			{s = path .. "wfoly_ar_scharlie_reload_magin_v2_02.ogg", t = 1.43},
			{s = path .. "wfoly_ar_scharlie_reload_end.ogg", t = 1.66},
        },
    },
    ["reload_empty_glaunch"] = {
        Source = "reload_empty_gl",
		MinProgress = 0.9,
		PeekProgress = 0.85,
		RefillProgress = 0.75,
		FireASAP = true,
		DropMagAt = 1.05,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.15, lhik = 1, rhik = 0 },
            { t = 0.3, lhik = 0, rhik = 0 },
            { t = 0.75, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_ar_scharlie_reload_empty_rotate.ogg", t = 0.066},
			{s = path .. "wfoly_ar_scharlie_reload_empty_magout.ogg", t = 0.36},
			{s = path .. "wfoly_ar_scharlie_reload_empty_magin_v2_01.ogg", t = 1.46},
			{s = path .. "wfoly_ar_scharlie_reload_empty_magin_v2_02.ogg", t = 1.76},
			{s = path .. "wfoly_ar_scharlie_reload_empty_bolt_release.ogg", t = 2.16},
			{s = path .. "wfoly_ar_scharlie_reload_empty_end.ogg", t = 2.23},
        },
    },
    ["reload_fast_glaunch"] = {
        Source = "reload_fast_gl",
		MinProgress = 0.85,
		PeekProgress = 0.815,
		RefillProgress = 0.625,
		FireASAP = true,
		MagSwapTime = 0.5,
		DropMagAt = 0.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.65, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_ar_scharlie_reload_fast_shake.ogg", t = 0.066},
			{s = path .. "wfoly_ar_scharlie_reload_fast_magout.ogg", t = 0.36},
			{s = path .. "wfoly_ar_scharlie_reload_fast_magin_v2_01.ogg", t = 0.76},
			{s = path .. "wfoly_ar_scharlie_reload_fast_magin_v2_02.ogg", t = 1.03},
			{s = path .. "wfoly_ar_scharlie_reload_fast_end.ogg", t = 1.3},
        },
    },
    ["reload_fast_empty_glaunch"] = {
        Source = "reload_fast_empty_gl",
		MinProgress = 0.9,
		PeekProgress = 0.825,
		RefillProgress = 0.725,
		FireASAP = true,
		MagSwapTime = 0.5,
		DropMagAt = 0.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_ar_scharlie_reload_fast_empty_rotate.ogg", t = 0.033},
			{s = path .. "wfoly_ar_scharlie_reload_fast_empty_magout.ogg", t = 0.16},
			{s = path .. "wfoly_ar_scharlie_reload_fast_empty_magin_v2_01.ogg", t = 0.8},
			{s = path .. "wfoly_ar_scharlie_reload_fast_empty_magin_v2_02.ogg", t = 1.03},
			{s = path .. "wfoly_ar_scharlie_reload_fast_empty_bolt_release.ogg", t = 1.4},
			{s = path .. "wfoly_ar_scharlie_reload_fast_empty_end.ogg", t = 1.66},
        },
    },
    ["reload_xmags_glaunch"] = {
        Source = "reload_xmags_gl",
		MinProgress = 0.9,
		PeekProgress = 0.8,
		RefillProgress = 0.625,
		FireASAP = true,
		MagSwapTime = 3.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.65, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_ar_scharlie_reload_rotate.ogg", t = 0/30},
			{s = path .. "wfoly_ar_scharlie_reload_magout.ogg", t = 19/30},
			{s = path .. "wfoly_ar_scharlie_reload_magin_v2_01.ogg", t = 33/30},
			{s = path .. "wfoly_ar_scharlie_reload_magin_v2_02.ogg", t = 44/30},
			{s = path .. "wfoly_ar_scharlie_reload_end.ogg", t = 49/30},
        },
    },
    ["reload_xmags_empty_glaunch"] = {
        Source = "reload_xmags_empty_gl",
		MinProgress = 0.9,
		PeekProgress = 0.85,
		RefillProgress = 0.75,
		FireASAP = true,
		DropMagAt = 1.05,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.15, lhik = 1, rhik = 0 },
            { t = 0.3, lhik = 0, rhik = 0 },
            { t = 0.75, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_ar_scharlie_reload_empty_rotate.ogg", t = 0.066},
			{s = path .. "wfoly_ar_scharlie_reload_empty_magout.ogg", t = 0.36},
			{s = path .. "wfoly_ar_scharlie_reload_empty_magin_v2_01.ogg", t = 1.46},
			{s = path .. "wfoly_ar_scharlie_reload_empty_magin_v2_02.ogg", t = 1.76},
			{s = path .. "wfoly_ar_scharlie_reload_empty_bolt_release.ogg", t = 2.16},
			{s = path .. "wfoly_ar_scharlie_reload_empty_end.ogg", t = 2.23},
        },
    },
    ["reload_argl"] = {
        Source = "reload_armag_gl",
		MinProgress = 0.9,
		PeekProgress = 0.8,
		RefillProgress = 0.625,
		FireASAP = true,
		MagSwapTime = 3.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.65, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_ar_scharlie_reload_rotate.ogg", t = 0/30},
			{s = path .. "wfoly_ar_scharlie_reload_empty_magout.ogg", t = 12/30},
			{s = path .. "wfoly_ar_scharlie_reload_magin_v2_01.ogg", t = 33/30},
			{s = path .. "wfoly_ar_scharlie_reload_magin_v2_02.ogg", t = 41/30},
			{s = path .. "wfoly_ar_scharlie_reload_end.ogg", t = 48/30},
        },
    },
    ["reload_argl_empty"] = {
        Source = "reload_armag_empty_gl",
		MinProgress = 0.9,
		PeekProgress = 0.85,
		RefillProgress = 0.75,
		FireASAP = true,
		DropMagAt = 0.95,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.15, lhik = 1, rhik = 0 },
            { t = 0.3, lhik = 0, rhik = 0 },
            { t = 0.75, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_ar_scharlie_reload_empty_rotate.ogg", t = 0.066},
			{s = path .. "wfoly_ar_scharlie_reload_empty_magout.ogg", t = 0.36},
			{s = path .. "wfoly_ar_scharlie_reload_empty_magin_v2_01.ogg", t = 1.45},
			{s = path .. "wfoly_ar_scharlie_reload_empty_magin_v2_02.ogg", t = 1.675},
			{s = path .. "wfoly_ar_scharlie_reload_empty_bolt_release.ogg", t = 2.1},
			{s = path .. "wfoly_ar_scharlie_reload_empty_end.ogg", t = 2.23},
        },
    },
    ["reload_argl_fast"] = {
        Source = "reload_armag_fast_gl",
		MinProgress = 0.85,
		PeekProgress = 0.815,
		RefillProgress = 0.625,
		FireASAP = true,
		MagSwapTime = 0.5,
		DropMagAt = 0.45,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.35, lhik = 0, rhik = 0 },
            { t = 0.65, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_ar_scharlie_reload_fast_shake.ogg", t = 0.066},
			{s = path .. "wfoly_ar_scharlie_reload_fast_magout.ogg", t = 0.36},
			{s = path .. "wfoly_ar_scharlie_reload_fast_magin_v2_01.ogg", t = 0.76},
			{s = path .. "wfoly_ar_scharlie_reload_fast_magin_v2_02.ogg", t = 1.06},
			{s = path .. "wfoly_ar_scharlie_reload_fast_end.ogg", t = 1.36},
        },
    },
    ["reload_argl_fast_empty"] = {
        Source = "reload_armag_fast_empty_gl",
		MinProgress = 0.9,
		PeekProgress = 0.825,
		RefillProgress = 0.725,
		FireASAP = true,
		MagSwapTime = 0.5,
		DropMagAt = 0.45,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.35, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_ar_scharlie_reload_fast_empty_rotate.ogg", t = 0.033},
			{s = path .. "wfoly_ar_scharlie_reload_fast_empty_magout.ogg", t = 0.16},
			{s = path .. "wfoly_ar_scharlie_reload_fast_empty_magin_v2_01.ogg", t = 0.8},
			{s = path .. "wfoly_ar_scharlie_reload_fast_empty_magin_v2_02.ogg", t = 1.03},
			{s = path .. "wfoly_ar_scharlie_reload_fast_empty_bolt_release.ogg", t = 1.4},
			{s = path .. "wfoly_ar_scharlie_reload_fast_empty_end.ogg", t = 1.8},
        },
    },
    ["ready"] = {
        Source = "draw",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_ar_scharlie_raise_first_rotate.ogg", t = 0.066},
            {s = path .. "wfoly_ar_scharlie_raise_first_charge.ogg", t = 0.13},
			{s = path .. "wfoly_ar_scharlie_raise_first_end.ogg", t = 0.96},
        },
    },
    ["1_ready"] = {
        Source = "draw2",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_ar_scharlie_raise_first_rotate.ogg", t = 0/30},
            {s = path .. "wfoly_ar_scharlie_jam_charge.ogg", t = 10/30},
			{s = path .. "wfoly_ar_scharlie_raise_first_end.ogg", t = 21/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
		MinProgress = 0.5,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 0 },
            { t = 0.3, lhik = 0, rhik = 0 },
            { t = 0.6, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_ar_scharlie_raise_movment.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.4, lhik = 0, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_ar_scharlie_drop_mvmnt.ogg", t = 0/30},
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
		Time = 1,
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 1 },
            { t = 0.1, lhik = 0, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        },
    },
    ["inspect"] = {
        Source = "lookat01",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.4, lhik = 0, rhik = 0 },
            { t = 0.6, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_ar_scharlie_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_ar_scharlie_inspect_02.ogg", t = 39/30},
			{s = path .. "wfoly_ar_scharlie_inspect_03.ogg", t = 66/30},
			{s = path .. "wfoly_ar_scharlie_inspect_04.ogg", t = 124/30},
        },
    },
    ["bash"] = {
        Source = {"melee","melee2","melee3"},
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.6, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 1, rhik = 1 },
        },
    },
    ["firemode_1"] = {
        Source = "semi_on",
        EventTable = {
            {s = path .. "weap_scharlie_selector_on.ogg", t = 0/30},
        },
    },
    ["firemode_2"] = {
        Source = "semi_off",
        EventTable = {
            {s = path .. "weap_scharlie_selector_off.ogg", t = 0/30},
        },
    },
    ["jam"] = {
        Source = "jam",
        MinProgress = 0.4,
        FireASAP = true,
        EventTable = {
            {s = path .. "wfoly_ar_scharlie_jam_stuck.ogg", t = 0/30},
        },
    },
    ["fix"] = {
        Source = "unjam",
		EjectAt = 0.4,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_ar_scharlie_raise_first_rotate.ogg", t = 0/30},
            {s = path .. "wfoly_ar_scharlie_jam_charge.ogg", t = 7/30},
			{s = path .. "wfoly_ar_scharlie_raise_first_end.ogg", t = 23/30},
        },
    },
    ["enter_bipod"] = {
        Source = "bipod_in",
    },
    ["exit_bipod"] = {
        Source = "bipod_out",
    },
    ["hybrid_on"] = {
        Source = "hybrid_off",
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
        Source = "hybrid_on",
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
-- UBGL Animations
	["enter_sights_ubgl"] = {
		Source = "ubgl_idle",
		IKTimeLine = { { t = 0,  lhik = 0, rhik = 0} },
	},
    ["fire_ubgl"] = {
        Source = "ubgl_fire",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
    },
    ["reload_ubgl"] = {
        Source = "ubgl_reload",
		MinProgress = 0.95,
		FireASAP = true,
		RefillProgress = 0.75,
		EventTable = {
			{s = path .. "wpn_iw8_scar17s_gl_open.ogg", t = 4/30},
			{s = path .. "wpn_iw8_scar17s_gl_shell_in.ogg", t = 26/30},
			{s = path .. "wpn_iw8_scar17s_gl_close.ogg", t = 59.5/30},
            {s = path .. "wpn_iw8_scar17s_gl_end.ogg", t = 60.5/30},
		}
	},
    ["reload_fast_ubgl"] = {
        Source = "ubgl_reload_fast",
		MinProgress = 0.95,
		FireASAP = true,
		RefillProgress = 0.75,
		EventTable = {
			{s = path .. "wpn_iw8_scar17s_gl_open.ogg", t = 0/30},
			{s = path .. "wpn_iw8_scar17s_gl_shell_in.ogg", t = 14/30},
            {s = path .. "wpn_iw8_scar17s_gl_end.ogg", t = 42/30},
			{s = path .. "wpn_iw8_scar17s_gl_close.ogg", t = 46/30},
		}
	},
    ["enter_ubgl"] = {
        Source = "ubgl_up",
		Mult = 1.4,
		MinProgress = 0.3,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 1, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
        },
		EventTable = {
			{s = path .. "wpn_iw8_scar17s_to_gl.ogg", t = 0/30},
		}
	},
    ["exit_ubgl"] = {
        Source = "ubgl_down",
		Mult = 1.4,
		MinProgress = 0.3,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 0 },
        },
        EventTable = {
			{s = path .. "wpn_iw8_scar17s_out_gl.ogg", t = 0/30},
        },
    },
    ["draw_ubgl"] = {
        Source = "ubgl_raise",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
    },
    ["holster_ubgl"] = {
        Source = "ubgl_drop",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
        EventTable = {
            {s = path .. "wfoly_ar_scharlie_drop_mvmnt.ogg", t = 0/30},
        },
    },
    ["idle_ubgl"] = {
        Source = "ubgl_idle",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
    },
    ["idle_ubgl_sprint"] = {
        Source = "ubgl_sprint",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
    },
    ["exit_sprint_ubgl"] = {
        Source = "ubgl_sprint_out",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
		Time = 1,
    },
    ["enter_sprint_ubgl"] = {
        Source = "ubgl_sprint_in",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
		Time = 1,
    },
    ["super_sprint_idle_ubgl"] = {
        Source = "ubgl_super_sprint",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
    },
    ["super_sprint_in_ubgl"] = {
        Source = "ubgl_super_sprint_in",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
		Time = 1,
    },
    ["super_sprint_out_ubgl"] = {
        Source = "ubgl_super_sprint_in",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
		Reverse = true,
		Time = 1,
    },
    ["bash_ubgl"] = {
        Source = {"ubgl_melee", "ubgl_melee2", "ubgl_melee3"},
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
    },
    ["inspect_ubgl"] = {
        Source = "ubgl_lookat01",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
        EventTable = {
            {s = path .. "wfoly_ar_scharlie_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_ar_scharlie_inspect_02.ogg", t = 39/30},
			{s = path .. "wfoly_ar_scharlie_inspect_03.ogg", t = 66/30},
			{s = path .. "wfoly_ar_scharlie_inspect_04.ogg", t = 124/30},
        },
    },
-- UBGL Shotgun Animations
	["enter_sights_ubgl_shotgun"] = {
		Source = "ubgl_sh_idle",
		IKTimeLine = { { t = 0,  lhik = 0, rhik = 0} },
	},
    ["fire_ubgl_shotgun"] = {
        Source = "ubgl_sh_fire",
		Mult = 0.66,
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
    },
    ["reload_ubgl_start"] = {
        Source = "ubgl_sh_reload_start",
		RestoreAmmo = 1,
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
		EventTable = {
            {s = pathubs .. "wfoly_sh_romeo870_reload_start_twist.ogg", t = 0.0},
			{s = pathubs .. "wfoly_sh_romeo870_reload_start_shellin_01.ogg", t = 0.533},
		}
	},
    ["reload_ubgl_insert"] = {
        Source = "ubgl_sh_reload_loop",
		MinProgress = 0.875,
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
		EventTable = {
            {s = pathubs .. "wfoly_sh_romeo870_reload_start_twist.ogg", t = 0.0},
			{s = pathubs .. "wfoly_sh_romeo870_reload_start_shellin_01.ogg", t = 0.49},
		}
	},
    ["reload_ubgl_finish"] = {
        Source = "ubgl_sh_reload_end",
		MinProgress = 0.85,
		FireASAP = true,
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
		EventTable = {
			{s = pathubs .. "wfoly_sh_romeo870_reload_end_turnover.ogg", t = 0.0},
		}
	},
    ["reload_ubgl_fast_start"] = {
        Source = "ubgl_sh_reload_start",
		Mult = 0.8,
		RestoreAmmo = 1,
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
		EventTable = {
            {s = pathubs .. "wfoly_sh_romeo870_reload_start_twist.ogg", t = 0.0},
			{s = pathubs .. "wfoly_sh_romeo870_reload_start_shellin_01.ogg", t = 0.533},
		}
	},
    ["reload_ubgl_fast_insert"] = {
        Source = "ubgl_sh_reload_loop",
		Mult = 0.66,
		MinProgress = 0.875,
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
		EventTable = {
            {s = pathubs .. "wfoly_sh_romeo870_reload_start_twist.ogg", t = 0.0},
			{s = pathubs .. "wfoly_sh_romeo870_reload_start_shellin_01.ogg", t = 0.33},
		}
	},
    ["reload_ubgl_fast_finish"] = {
        Source = "ubgl_sh_reload_end",
		Mult = 0.8,
		MinProgress = 0.85,
		FireASAP = true,
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
		EventTable = {
			{s = pathubs .. "wfoly_sh_romeo870_reload_end_turnover.ogg", t = 0.0},
		}
	},
    ["enter_ubgl_shotgun"] = {
        Source = "ubgl_sh_up",
		Mult = 1.3,
		MinProgress = 0.3,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 1, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
        },
		EventTable = {
			{s = pathub .. "ubgl_to_grenade.ogg", t = 0/30},
		}
	},
    ["exit_ubgl_shotgun"] = {
        Source = "ubgl_sh_down",
		Mult = 1.3,
		MinProgress = 0.3,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 0 },
        },
        EventTable = {
			{s = pathub .. "ubgl_from_grenade.ogg", t = 0/30},
        },
    },
    ["draw_ubgl_shotgun"] = {
        Source = "ubgl_sh_raise",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
    },
    ["holster_ubgl_shotgun"] = {
        Source = "ubgl_sh_drop",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
        EventTable = {
            {s = pathub .. "ubgl_drop.ogg", t = 0/30},
        },
    },
    ["idle_ubgl_shotgun"] = {
        Source = "ubgl_sh_idle",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
    },
    ["idle_ubgl_shotgun_sprint"] = {
        Source = "ubgl_sh_sprint",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
    },
    ["exit_sprint_ubgl_shotgun"] = {
        Source = "ubgl_sh_sprint_out",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
		Time = 1,
    },
    ["enter_sprint_ubgl_shotgun"] = {
        Source = "ubgl_sh_sprint_in",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
		Time = 1,
    },
    ["super_sprint_idle_ubgl_shotgun"] = {
        Source = "ubgl_sh_super_sprint",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
    },
    ["super_sprint_in_ubgl_shotgun"] = {
        Source = "ubgl_sh_super_sprint_in",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
		Time = 1,
    },
    ["super_sprint_out_ubgl_shotgun"] = {
        Source = "ubgl_sh_super_sprint_in",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
		Reverse = true,
		Time = 1,
    },
    ["bash_ubgl_shotgun"] = {
        Source = {"ubgl_sh_melee", "ubgl_sh_melee2", "ubgl_sh_melee3"},
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
    },
    ["inspect_ubgl_shotgun"] = {
        Source = "ubgl_sh_lookat01",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
        EventTable = {
            {s = path .. "wfoly_ar_scharlie_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_ar_scharlie_inspect_02.ogg", t = 39/30},
			{s = path .. "wfoly_ar_scharlie_inspect_03.ogg", t = 66/30},
			{s = path .. "wfoly_ar_scharlie_inspect_04.ogg", t = 124/30},
        },
    },
}

-------------------------- ATTACHMENTS

--- 30 & 10 (DMR) Round Mags ---
local Translate_Drum = {
    ["reload"] = "reload_drum",
    ["reload_empty"] = "reload_drum_empty",
}
local Translate_Drum_Fast = {
    ["reload"] = "reload_drum_fast",
    ["reload_empty"] = "reload_drum_fast_empty",
    ["reload_ubgl"] = "reload_fast_ubgl",
}
local Translate_AR = {
    ["reload"] = "reload_ar",
    ["reload_empty"] = "reload_ar_empty",
}
local Translate_AR_Fast = {
    ["reload"] = "reload_ar_fast",
    ["reload_empty"] = "reload_ar_fast_empty",
    ["reload_ubgl"] = "reload_fast_ubgl",
}
local Translate_XMags = {
    ["reload"] = "reload_xmags",
    ["reload_empty"] = "reload_empty",
}
local Translate_XMags_Fast = {
    ["reload"] = "reload_xmags_fast",
    ["reload_empty"] = "reload_fast_empty",
    ["reload_ubgl"] = "reload_fast_ubgl",
}
local Translate_DMR = {
    ["reload"] = "reload_dmr",
    ["reload_empty"] = "reload_dmr_empty",
}
local Translate_DMR_Fast = {
    ["reload"] = "reload_dmr_fast",
    ["reload_empty"] = "reload_dmr_fast_empty",
    ["reload_ubgl"] = "reload_fast_ubgl",
}

--- Fast & Tac. Sprint ---
local Translate_Fast = {
    ["reload"] = "reload_fast",
    ["reload_empty"] = "reload_fast_empty",
    ["reload_ubgl"] = "reload_fast_ubgl",
}
local Translate_TacSprint = {
    ["idle_sprint"] = "super_sprint_idle",
    ["enter_sprint"] = "super_sprint_in",
    ["exit_sprint"] = "super_sprint_out",
    ["idle_ubgl_sprint"] = "super_sprint_idle_ubgl",
    ["enter_sprint_ubgl"] = "super_sprint_in_ubgl",
    ["exit_sprint_ubgl"] = "super_sprint_out_ubgl",
}

--- GL Reloads ---
local Translate_GL = {
    ["reload"] = "reload_glaunch",
    ["reload_empty"] = "reload_empty_glaunch",
}
local Translate_GL_Fast = {
    ["reload"] = "reload_fast_glaunch",
    ["reload_empty"] = "reload_fast_empty_glaunch",
    ["reload_ubgl"] = "reload_fast_ubgl",
}
local Translate_XMags_GL = {
    ["reload"] = "reload_xmags_glaunch",
    ["reload_empty"] = "reload_empty_glaunch",
}
local Translate_XMags_GL_Fast = {
    ["reload"] = "reload_fast_glaunch",
    ["reload_empty"] = "reload_fast_empty_glaunch",
    ["reload_ubgl"] = "reload_fast_ubgl",
}
local Translate_AR_GL = {
    ["reload"] = "reload_argl",
    ["reload_empty"] = "reload_argl_empty",
}

local Translate_AR_GL_Fast = {
    ["reload"] = "reload_argl_fast",
    ["reload_empty"] = "reload_argl_fast_empty",
}

--- UB Shotgun ---
local Translate_UBGLS = {
    ["enter_sights_ubgl"] = "enter_sights_ubgl_shotgun",
    ["fire_ubgl"] = "fire_ubgl_shotgun",
    ["enter_ubgl"] = "enter_ubgl_shotgun",
    ["exit_ubgl"] = "exit_ubgl_shotgun",
    ["draw_ubgl"] = "draw_ubgl_shotgun",
    ["holster_ubgl"] = "holster_ubgl_shotgun",
    ["idle_ubgl"] = "idle_ubgl_shotgun",
    ["idle_ubgl_sprint"] = "idle_ubgl_shotgun_sprint",
    ["exit_sprint_ubgl"] = "exit_sprint_ubgl_shotgun",
    ["enter_sprint_ubgl"] = "enter_sprint_ubgl_shotgun",
    ["super_sprint_idle_ubgl"] = "super_sprint_idle_ubgl_shotgun",
    ["super_sprint_in_ubgl"] = "super_sprint_in_ubgl_shotgun",
    ["super_sprint_out_ubgl"] = "super_sprint_out_ubgl_shotgun",
    ["bash_ubgl"] = "bash_ubgl_shotgun",
    ["inspect_ubgl"] = "inspect_ubgl_shotgun",
}

local Translate_UBGLS_Fast = {
    ["enter_sights_ubgl"] = "enter_sights_ubgl_shotgun",
    ["fire_ubgl"] = "fire_ubgl_shotgun",
    ["enter_ubgl"] = "enter_ubgl_shotgun",
    ["exit_ubgl"] = "exit_ubgl_shotgun",
    ["draw_ubgl"] = "draw_ubgl_shotgun",
    ["holster_ubgl"] = "holster_ubgl_shotgun",
    ["idle_ubgl"] = "idle_ubgl_shotgun",
    ["idle_ubgl_sprint"] = "idle_ubgl_shotgun_sprint",
    ["exit_sprint_ubgl"] = "exit_sprint_ubgl_shotgun",
    ["enter_sprint_ubgl"] = "enter_sprint_ubgl_shotgun",
    ["super_sprint_idle_ubgl"] = "super_sprint_idle_ubgl_shotgun",
    ["super_sprint_in_ubgl"] = "super_sprint_in_ubgl_shotgun",
    ["super_sprint_out_ubgl"] = "super_sprint_out_ubgl_shotgun",
    ["bash_ubgl"] = "bash_ubgl_shotgun",
    ["inspect_ubgl"] = "inspect_ubgl_shotgun",
    ["reload_ubgl_start"] = "reload_ubgl_fast_start",
    ["reload_ubgl_insert"] = "reload_ubgl_fast_insert",
    ["reload_ubgl_finish"] = "reload_ubgl_fast_finish",
}

SWEP.Hook_TranslateAnimation = function(wep, anim)
    --local attached = self:GetElements()

    local speedload = wep:HasElement("perk_speedreload")
    local super_sprint = wep:HasElement("perk_super_sprint")
    local xmags = wep:HasElement("mag_xmags")
    local armag = wep:HasElement("mag_armag")
    local drummag = wep:HasElement("mag_drum")
    local dmr = wep:HasElement("mag_dmr")
    local gl = wep:HasElement("m203")
	local masterkey = wep:HasElement("shotgun")

    if super_sprint and Translate_TacSprint[anim] then
        return Translate_TacSprint[anim]
    end

    if speedload then
		if masterkey then
			if Translate_UBGLS_Fast[anim] then
				return Translate_UBGLS_Fast[anim]
			end
		end
        if drummag then
			if gl then
				if Translate_Xmags_GL_Fast[anim] then
					return Translate_Xmags_GL_Fast[anim]
				end
			else
				if Translate_Drum_Fast[anim] then
					return Translate_Drum_Fast[anim]
				end
			end
        elseif armag then
			if gl then
				if Translate_AR_GL_Fast[anim] then
					return Translate_AR_GL_Fast[anim]
				end
			else
				if Translate_AR_Fast[anim] then
					return Translate_AR_Fast[anim]
				end
			end
        elseif dmr then
            if Translate_DMR_Fast[anim] then
                return Translate_DMR_Fast[anim]
            end
        elseif xmags then
			if gl then
				if Translate_Xmags_GL_Fast[anim] then
					return Translate_Xmags_GL_Fast[anim]
				end
			else
				if Translate_XMags_Fast[anim] then
					return Translate_XMags_Fast[anim]
				end
			end
        else
			if gl then
				if Translate_GL_Fast[anim] then
					return Translate_GL_Fast[anim]
				end
			else
				if Translate_Fast[anim] then
					return Translate_Fast[anim]
				end
			end
        end
    else
		if masterkey then
			if Translate_UBGLS[anim] then
				return Translate_UBGLS[anim]
			end
		end
	    if drummag then
            if Translate_Drum[anim] then
                return Translate_Drum[anim]
            end
        end
	    if armag then
			if gl then
				if Translate_AR_GL[anim] then
					return Translate_AR_GL[anim]
				end
			else
				if Translate_AR[anim] then
					return Translate_AR[anim]
				end
			end
        end
	    if dmr then
            if Translate_DMR[anim] then
                return Translate_DMR[anim]
			end
		end
        if xmags then
            if Translate_XMags[anim] then
                return Translate_XMags[anim]
            end
		end
        if gl then
            if Translate_GL[anim] then
                return Translate_GL[anim]
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

-- SWEP.Hook_Think	= function(wep)
--     local vm = wep:GetOwner():GetViewModel()
--     if wep:Clip1() == 0 then
--         vm:SetPoseParameter("empty", 1)
--     else
--         vm:SetPoseParameter("empty", 0)
--     end

--     local vm = wep:GetOwner():GetViewModel()
--     local delta = wep:GetSightDelta()
--     local coolilove = math.cos(delta * (math.pi / 2))
--     vm:SetPoseParameter( "aim_blend", Lerp(coolilove, 1, 0) )
-- end

SWEP.DefaultBodygroups = "0000000000000000000"

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(14, -0.85, -1.24),
	ModelAngleOffset = Angle(0, 0, 0),
	Scale = 0.9,
    },
    ["go_grip_angled"] = {
    ModelOffset = Vector(0.9, 0, 0.1),
    },
    ["cod2019_griptape_01"] = {
		Model = "models/weapons/cod2019/attachs/weapons/scar/attachment_vm_ar_scharlie_pistolgrip_tape.mdl",
    },
    ["cod2019_griptape_02"] = {
		Model = "models/weapons/cod2019/attachs/weapons/scar/attachment_vm_ar_scharlie_pistolgrip_tape.mdl",
    },
    ["cod2019_griptape_03"] = {
		Model = "models/weapons/cod2019/attachs/weapons/scar/attachment_vm_ar_scharlie_pistolgrip_tape.mdl",
    },
}

SWEP.AttachmentElements = {
    ["main_none"] = {
        Bodygroups = {
            {0,1},
        },
    },
    ["mag"] = {
        Bodygroups = {
            {1,1},
        },
    },
    ["mag_none"] = {
        Bodygroups = {
            {1,2},
        },
    },
    ["barrel_none"] = {
        Bodygroups = {
            {2,1},
        },
    },
    ["muzzle_none"] = {
        Bodygroups = {
            {4,1},
        },
    },
    ["stock_retract"] = {
        Bodygroups = {
            {3,1},
        },
    },
    ["stock_adapter"] = {
        Bodygroups = {
            {3,2},
        },
    },
    ["stock_none"] = {
        Bodygroups = {
            {3,3},
        },
    },
    ["sight_back_folded"] = {
        Bodygroups = {
            {5,1},
        },
    },
    ["sight_front_folded"] = {
        Bodygroups = {
            {8,1},
        },
    },
    ["sight_back_none"] = {
        Bodygroups = {
            {5,2},
        },
    },
    ["sight_front_none"] = {
        Bodygroups = {
            {8,2},
        },
    },
    ["pistol_grip_none"] = {
        Bodygroups = {
            {6,1},
        },
    },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model
    if wep:HasElement("stock_retract") then 
	model:SetBodygroup(3,1)
	model:SetBodygroup(7,0)
	elseif wep:HasElement("optic_scope") then
	model:SetBodygroup(5,2)
	model:SetBodygroup(8,2)
	end
end

SWEP.Attachments = {
    { -- 1
        PrintName = ARC9:GetPhrase("mw19_category_muzzle"),
        Category = "cod2019_muzzle",
        DefaultIcon = Material("entities/defattachs/muzzle-ar.png", "mips smooth"),
		Bone = "tag_silencer",
        Pos = Vector(0, 0, 0),
		InstalledElements = {"muzzle_none","muzzle"},
    },
    { -- 2
        PrintName = ARC9:GetPhrase("mw19_category_barrel"),
		DefaultIcon = Material("entities/defattachs/barrel-ar.png", "mips smooth"),
        Category = "cod2019_scar_barrel",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
    },
    { -- 3
        PrintName = ARC9:GetPhrase("mw19_category_laser"),
		DefaultIcon = Material("entities/defattachs/laser-ar.png", "mips smooth"),
        Category = "cod2019_tac",
        Bone = "tag_laser_attach",
        Pos = Vector(1.5, 0, -0.1),
        Ang = Angle(0, 0, 180),
		ExcludeElements = {"barrel_smg"},
    },
    { -- 4
        PrintName = ARC9:GetPhrase("mw19_category_optic"),
		DefaultIcon = Material("entities/defattachs/optic.png", "mips smooth"),
        Bone = "tag_holo",
        Pos = Vector(1.5, 0, -0.1),
        Category = {"cod2019_optic", "cod2019_optic_big"},
		InstalledElements = {"sight_back_folded","sight_front_folded"},
    },
    { -- 5
        PrintName = ARC9:GetPhrase("mw19_category_stock"),
		DefaultIcon = Material("entities/defattachs/stock-ar.png", "mips smooth"),
        Category = {"cod2019_tube","cod2019_scar_stock"},
        Bone = "tag_stock_attach",
        Pos = Vector(0, 0, 0),
		InstalledElements = {"stock_adapter"},
    },
    { -- 6
        PrintName = ARC9:GetPhrase("mw19_category_underbarrel"),
		DefaultIcon = Material("entities/defattachs/grip.png", "mips smooth"),
        Category = "cod2019_grip",
        Bone = "tag_grip_attach",
        Pos = Vector(-2.8, 0, 0),
        Ang = Angle(0, 0, 180),
		InstalledElements = {"rail_grip"},
		MergeSlots = {20}, -- Grenade Launcher(s)
    },
    { -- 7
        PrintName = ARC9:GetPhrase("mw19_category_magazine"),
		DefaultIcon = Material("entities/defattachs/magazine-ar.png", "mips smooth"),
		Bone = "tag_mag_attach",
        Category = {"cod2019_mag","cod2019_scar_mag"},
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
        Pos = Vector(12, 0, 1),
    },
	
	-- Unofficial
    { -- 11
        PrintName = ARC9:GetPhrase("mw19_category_receiver"),
        Category = "cod2019_scar_receiver",
        Bone = "tag_attachments",
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(7, 0, 1),
		Hidden = false,
    },
	
	-- Cosmetics
    { -- 12
        PrintName = ARC9:GetPhrase("mw19_category_skins"),
        Bone = "tag_cosmetic",
        Pos = Vector(7, 0, 3),
        Category = "cod2019_skins_scar",
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
        StickerModel = "models/weapons/cod2019/stickers/rif_scar_decal_a.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(3, 0, 3),
    },
    { -- 15
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/rif_scar_decal_b.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(1, 0, 3),
    },
    { -- 16
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/rif_scar_decal_c.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-1, 0, 3),
    },
    { -- 17
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/rif_scar_decal_d.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-3, 0, 3),
    },
    { -- 18
        PrintName = ARC9:GetPhrase("mw19_category_charm"),
        CosmeticOnly = true,
        Category = {"charm"},
        Bone = "tag_cosmetic",
        Pos = Vector(0.5, 0, 0),
		Icon_Offset = Vector(-5.5, 0, 3),
		Scale = 1.2,
    },
    { -- 19
        PrintName = ARC9:GetPhrase("mw19_category_stats"),
        Category = {"killcounter","killcounter2"},
        Bone = "tag_cosmetic",
        Pos = Vector(-6, 0.4, 1.2),
		Icon_Offset = Vector(-1.25, 0, 1.9),
		CosmeticOnly = true,
    },
    { -- 20
        PrintName = "GL",
        Category = {"cod2019_m203"},
        Bone = "tag_attachments",
        Pos = Vector(13, 0, -2.2),
        Ang = Angle(0, 180, 0),
		InstalledElements = {"rail_grip"},
		Hidden = true,
    },
    { -- 21
        PrintName = ARC9:GetPhrase("mw19_category_underbarrel"),
		DefaultIcon = Material("entities/defattachs/grip.png", "mips smooth"),
        Category = {"cod2019_scar_grip"},
        Bone = "tag_grenade_launcher",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		MergeSlots = {6}, -- Grips
		Hidden = true,
    },
}

SWEP.GripPoseParam = 0.7
SWEP.GripPoseParam2 = 0
SWEP.CodStubbyGripPoseParam = 26
SWEP.CodStubbyTallGripPoseParam = 26
SWEP.CodAngledGripPoseParam = 8

-- Warzone-esque Stats; Add here to change only when using Warzone Stats variable.
if GetConVar("arc9_mw19_stats_warzone"):GetBool() then

-------------------------- DAMAGE PROFILE
SWEP.DamageMax = 35 -- Damage done at point blank range
SWEP.DamageMin = 32 -- Damage done at maximum range

SWEP.RangeMin = 30 / ARC9.HUToM
SWEP.RangeMax = 31 / ARC9.HUToM

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 1.6,
    [HITGROUP_CHEST] = 1.085,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 1,
    [HITGROUP_RIGHTLEG] = 1,
}

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 850 / ARC9.HUToM

-------------------------- FIREMODES

SWEP.RPM = 571

-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.3 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.25 -- How long it takes to go from sprinting to being able to fire.

end
