AddCSLuaFile()
if CLIENT then
    killicon.Add( "arc9_cod2019_lm_holger", "vgui/killicons/cod2019_lm_holger36.png", Color(251, 85, 25, 255))
end

SWEP.LoadoutImage = "entities/loadout/arc9_cod2019_lm_holger.png"

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_lmg") or "Light Machine Guns"

SWEP.PrintName = ARC9:GetPhrase("mw19_weapon_holger") or "Holger-26"

SWEP.Class = ARC9:GetPhrase("mw19_class_weapon_lmg") or "Light Machine Gun"
SWEP.Trivia = {
    [ ARC9:GetPhrase("mw19_country") ] = ARC9:GetPhrase("mw19_country_germany"),
    [ ARC9:GetPhrase("mw19_manufacturer") ] = ARC9:GetPhrase("mw19_manufacturer_forgetac"),
    [ ARC9:GetPhrase("mw19_caliber") ] = ARC9:GetPhrase("mw19_caliber_556"),
    [ ARC9:GetPhrase("mw19_weight") ] = string.format(ARC9:GetPhrase("mw19_weight_val"), 3.63, 3.63 * 2.20),
    [ ARC9:GetPhrase("mw19_weight_projectile") ] = string.format(ARC9:GetPhrase("mw19_weight_projectile_val"), 62),
    -- [ ARC9:GetPhrase("mw19_muzzle_energy") ] = "3,018 ft/s",
    -- [ ARC9:GetPhrase("mw19_muzzle_velocity") ] = "1,700 joules"
}

SWEP.Credits = {
    [ ARC9:GetPhrase("mw19_author") ] = "Twilight Sparkle/Firmeteran",
    [ ARC9:GetPhrase("mw19_assets") ] = "Activision/Infinity Ward"
}

SWEP.Description = ARC9:GetPhrase("mw19_weapon_holger_desc") or [[A versatile fully automatic 5.56mm light machine gun. Modular design can be configured for a broad range of engagements.]]

SWEP.ViewModel = "models/weapons/cod2019/c_lmg_holger.mdl"
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_lmg_holger.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-5, 3.25, -6.75),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-8.5, 4, -4),
    TPIKAng = Angle(-12.5, -1, 165),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 28 -- Damage done at point blank range
SWEP.DamageMin = 12 -- Damage done at maximum range

SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 25 / ARC9.HUToM
SWEP.RangeMax = 47 / ARC9.HUToM

SWEP.Penetration = 13 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.15

SWEP.ImpactForce = 11

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 1.5,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 1,
    [HITGROUP_RIGHTLEG] = 1,
}

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 810 / ARC9.HUToM
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.25

-------------------------- MAGAZINE

SWEP.Ammo = "ar2" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 100 -- Self-explanatory.
SWEP.SupplyLimit = 3 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 10 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 704

SWEP.Firemodes = {
    {
        Mode = -1,
		PoseParam = 1,
    },
    {
        Mode = 1,
		RPM = 500,
		PoseParam = 0,
    },
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1.2

SWEP.RecoilSeed = 142375

SWEP.RecoilPatternDrift = 45

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.1
SWEP.RecoilRandomSide = 0.5

SWEP.RecoilDissipationRate = 10 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 1 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 1.6

SWEP.RecoilMultCrouch = 0.8

SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.9

SWEP.RecoilPerShot = 1
SWEP.RecoilMax = 2.25

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilPunch = 2
SWEP.VisualRecoilUp = 0.5
SWEP.VisualRecoilRoll = 25
SWEP.VisualRecoilSide = 0.2

SWEP.VisualRecoilMultSights = 0.4
SWEP.VisualRecoilPunchSights = 15
SWEP.VisualRecoilRollSights = 5
SWEP.VisualRecoilSideSights = 0
SWEP.VisualRecoilUpSights = 0

SWEP.VisualRecoilDoingFunc = function(up, side, roll, punch, recamount)
    if recamount > 5 then
        recamount = 1.65 - math.Clamp((recamount - 2) / 3.5, 0, 1)
        
        local fakerandom = 1 + (((69+recamount%5*CurTime()%3)*2420)%4)/10 
        
        return up, side * fakerandom, roll, punch
    end

    return up, side, roll, punch
end

-------------------------- SPREAD

SWEP.Spread = 0.0325

SWEP.SpreadAddRecoil = 0.01

SWEP.SpreadAddHipFire = 0
SWEP.SpreadAddMove = 0.02
SWEP.SpreadAddMidAir = 0.045
SWEP.SpreadAddCrouch = -0.03
SWEP.SpreadAddSights = -(SWEP.Spread * 2.75)

SWEP.SpreadMultRecoil = 1.2
SWEP.RecoilModifierCap = 3
SWEP.RecoilModifierCapMove = 0
SWEP.RecoilModifierCapSights = 0

-------------------------- HANDLING

SWEP.SpeedMult = 0.95 -- Walk speed multiplier
SWEP.SpeedMultSights = 0.8 -- When aiming
SWEP.SpeedMultShooting = 0.8

SWEP.AimDownSightsTime = 0.5 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.5 -- How long it takes to go from sprinting to being able to fire.

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.25

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 255, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-2.56, -2, 0.45),
    Ang = Angle(0, 0, 2),
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
SWEP.CustomizePos = Vector(13.5, 50, 3)
SWEP.CustomizeRotateAnchor = Vector(13.5, -3, -4)
SWEP.CustomizeSnapshotFOV = 65
SWEP.CustomizeSnapshotPos = Vector(1.5, 25, 2.5)
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeNoRotate = false

SWEP.PeekMaxFOV = 45

SWEP.PeekPos = Vector(-1.5, 3, -3.2)
SWEP.PeekAng = Angle(-0.5, 1, -45)

SWEP.PeekPosReloading = Vector(0, 4, -1.5)
SWEP.PeekAngReloading = Angle(-0.3, 0, -2.5)

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
SWEP.ShellScale = 0.075
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)
SWEP.ShellSounds = ARC9.COD2019_556_Table

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_lmg_holger_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_01.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_02.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_03.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_04.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_05.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_06.ogg",
}
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineTime = 0.4
SWEP.DropMagazineQCA = 3
SWEP.DropMagazineAng = Angle(0, -90, 0)

-------------------------- SOUNDS

local path = "weapons/cod2019/holger/"
local path2 = "weapons/cod2019/kilo141/"
local path3 = "weapons/cod2019/ak47/"

SWEP.ShootSound = "COD2019.Holger.Fire"
SWEP.ShootSoundIndoor = "COD2019.Holger.Fire"

SWEP.ShootSoundSilenced = "COD2019.Holger.Fire.S"
SWEP.ShootSoundSilencedIndoor = "COD2019.Holger.Fire.S"

-- Non-Silenced Outside
SWEP.LayerSound = "Layer_AR.Outside"
SWEP.DistantShootSound = "Distant_LMG.Outside"
-- Inside
SWEP.LayerSoundIndoor = "Layer_Shotgun.Inside"
SWEP.DistantShootSoundIndoor = "Distant_LMG.Inside"
---------------------------------------------------
-- Silenced Outside
SWEP.LayerSoundSilenced = "Layer_ARSUP.Outside"
SWEP.DistantShootSoundSilenced = "Distant_AR_Sup.Outside"
-- Inside
SWEP.LayerSoundSilencedIndoor = "Layer_ARSUP.Inside"
SWEP.DistantShootSoundSilencedIndoor = "Distant_AR_Sup.Inside"
---------------------------------------------------

SWEP.EnterSightsSound = "weapons/cod2019/ak47/wfoly_ar_akilo47_ads_up.ogg"
SWEP.ExitSightsSound = "weapons/cod2019/ak47/wfoly_ar_akilo47_ads_down.ogg"

SWEP.BulletBones = {
    [1] = "j_bullet01",
    [2] = "j_bullet02",
	[3] = "j_bullet03",
	[4] = "j_bullet04",
}

SWEP.HideBones  = {
    [1] = "j_mag2",
}

SWEP.TriggerDelay = 0.015 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayCancellable = false
SWEP.TriggerDelayTime = 0.015 -- Time until weapon fires.

SWEP.TriggerDownSound = "weapons/cod2019/holger/weap_mgolf36_fire_first_plr_01.ogg"
SWEP.TriggerUpSound = "weapons/cod2019/holger/weap_mgolf36_disconnector_plr_01.ogg"

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
		MagSwapTime = 3.5,
		RefillProgress = 0.725,
		PeekProgress = 0.85,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.75, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_lm_mgolf36_reload_lift.ogg", t = 3/30},
			{s = path .. "wfoly_lm_mgolf36_reload_drum_out.ogg", t = 25/30},
			{s = path .. "wfoly_lm_mgolf36_reload_arm_up.ogg", t = 46/30},
			{s = path .. "wfoly_lm_mgolf36_reload_drum_hit_well.ogg", t = 59/30},
			{s = path .. "wfoly_lm_mgolf36_reload_drum_in.ogg", t = 76/30},
			{s = path .. "wfoly_lm_mgolf36_reload_drum_smack.ogg", t = 86/30},
			{s = path .. "wfoly_lm_mgolf36_reload_end.ogg", t = 97/30},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.9,
		DropMagAt = 1.2,
		RefillProgress = 0.8,
		PeekProgress = 0.85,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.725, lhik = 0, rhik = 0 },
            { t = 0.95, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_lm_mgolf36_reload_empty_lift.ogg", t = 2/30},
			{s = path .. "wfoly_lm_mgolf36_reload_empty_drum_mag_out.ogg", t = 24/30},
			{s = path .. "wfoly_lm_mgolf36_reload_empty_drum_mag_hit_well.ogg", t = 47/30},
			{s = path .. "wfoly_lm_mgolf36_reload_empty_drum_mag_in.ogg", t = 76/30},
			{s = path .. "wfoly_lm_mgolf36_reload_empty_drum_smack.ogg", t = 87/30},
			{s = path .. "wfoly_lm_mgolf36_reload_empty_bolt_lever.ogg", t = 103/30},
			{s = path .. "wfoly_lm_mgolf36_reload_empty_charge.ogg", t = 107/30},
			{s = path .. "wfoly_lm_mgolf36_reload_empty_end.ogg", t = 121/30},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.8,
		MagSwapTime = 3.5,
		RefillProgress = 0.65,
		DropMagAt = 0.86,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.6, lhik = 0, rhik = 0 },
            { t = 0.75, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_lm_mgolf36_reload_fast_lift.ogg", t = 4/30},
			{s = path .. "wfoly_lm_mgolf36_reload_fast_drum_magout.ogg", t = 8/30},
			{s = path .. "wfoly_lm_mgolf36_reload_fast_drum_mag_hit_well.ogg", t = 40/30},
			{s = path .. "wfoly_lm_mgolf36_reload_fast_drum_magin.ogg", t = 49/30},
			{s = path .. "wfoly_lm_mgolf36_reload_fast_end.ogg", t = 53/30},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.9,
		DropMagAt = 0.8,
		RefillProgress = 0.7,
		PeekProgress = 0.85,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_lm_mgolf36_reload_empty_fast_lift.ogg", t = 3/30},
			{s = path .. "wfoly_lm_mgolf36_reload_empty_fast_drum_mag_out.ogg", t = 13/30},
            {s = path .. "wfoly_lm_mgolf36_reload_empty_fast_armup.ogg", t = 26/30},
			{s = path .. "wfoly_lm_mgolf36_reload_empty_fast_drum_mag_hit_well.ogg", t = 40/30},
			{s = path .. "wfoly_lm_mgolf36_reload_empty_fast_drum_magin.ogg", t = 48/30},
			{s = path .. "wfoly_lm_mgolf36_reload_empty_fast_charge.ogg", t = 62/30},
			{s = path .. "wfoly_lm_mgolf36_reload_empty_fast_end.ogg", t = 76/30},
        },
    },
    ["reload_ar"] = {
        Source = "reload_armag",
		MinProgress = 0.8,
		MagSwapTime = 3.5,
		RefillProgress = 0.6,
		PeekProgress = 0.825,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.15, lhik = 0, rhik = 0 },
            { t = 0.65, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_lm_mgolf36_reload_lift.ogg", t = 0/30},
			{s = path .. "wfoly_lm_mgolf36_reload_armag_magout.ogg", t = 21/30},
			{s = path .. "wfoly_lm_mgolf36_reload_arm_up.ogg", t = 25/30},
			{s = path .. "wfoly_lm_mgolf36_reload_armag_hit_mag_well.ogg", t = 42/30},
			{s = path .. "wfoly_lm_mgolf36_reload_armag_magin.ogg", t = 47/30},
			{s = path .. "wfoly_lm_mgolf36_reload_armag_end.ogg", t = 69/30},
        },
    },
    ["reload_empty_ar"] = {
        Source = "reload_armag_empty",
		MinProgress = 0.9,
		DropMagAt = 0.95,
		RefillProgress = 0.725,
		PeekProgress = 0.825,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.15, lhik = 0, rhik = 0 },
            { t = 0.725, lhik = 0, rhik = 0 },
            { t = 0.825, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_lm_mgolf36_reload_lift.ogg", t = 0/30},
			{s = path .. "wfoly_lm_mgolf36_reload_armag_magout.ogg", t = 15/30},
			{s = path .. "wfoly_lm_mgolf36_reload_arm_up.ogg", t = 19/30},
			{s = path .. "wfoly_lm_mgolf36_reload_armag_hit_mag_well.ogg", t = 52/30},
			{s = path .. "wfoly_lm_mgolf36_reload_armag_magin.ogg", t = 57/30},
			{s = path .. "wfoly_lm_mgolf36_reload_empty_charge.ogg", t = 79/30},
			{s = path .. "wfoly_lm_mgolf36_reload_armag_end.ogg", t = 96/30},
        },
    },
    ["reload_ar_fast"] = {
        Source = "reload_armag_fast",
		MinProgress = 0.8,
		MagSwapTime = 3.5,
		DropMagAt = 0.6,
		RefillProgress = 0.55,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.575, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_lm_mgolf36_reload_lift.ogg", t = 0/30},
			{s = path .. "wfoly_lm_mgolf36_reload_armag_magout.ogg", t = 9/30},
			{s = path .. "wfoly_lm_mgolf36_reload_arm_up.ogg", t = 14/30},
			{s = path .. "wfoly_lm_mgolf36_reload_armag_hit_mag_well.ogg", t = 31/30},
			{s = path .. "wfoly_lm_mgolf36_reload_armag_magin.ogg", t = 36/30},
			{s = path .. "wfoly_lm_mgolf36_reload_armag_end.ogg", t = 53/30},
        },
    },
    ["reload_ar_fast_empty"] = {
        Source = "reload_armag_fast_empty",
		MinProgress = 0.9,
		DropMagAt = 0.8,
		RefillProgress = 0.6,
		PeekProgress = 0.825,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.15, lhik = 0, rhik = 0 },
            { t = 0.6, lhik = 0, rhik = 0 },
            { t = 0.75, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_lm_mgolf36_reload_lift.ogg", t = 0/30},
			{s = path .. "wfoly_lm_mgolf36_reload_armag_magout.ogg", t = 9/30},
			{s = path .. "wfoly_lm_mgolf36_reload_arm_up.ogg", t = 14/30},
			{s = path .. "wfoly_lm_mgolf36_reload_armag_hit_mag_well.ogg", t = 33/30},
			{s = path .. "wfoly_lm_mgolf36_reload_armag_magin.ogg", t = 38/30},
			{s = path .. "wfoly_lm_mgolf36_reload_empty_charge.ogg", t = 48/30},
			{s = path .. "wfoly_lm_mgolf36_reload_armag_end.ogg", t = 67/30},
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
            {s = path .. "wfoly_lm_mgolf36_raise_first_lift.ogg", t = 1/30},
            {s = path .. "wfoly_lm_mgolf36_raise_first_bolt_pull.ogg", t = 20/30},
			{s = path .. "wfoly_lm_mgolf36_raise_first_bolt_release.ogg", t = 36/30},
			{s = path .. "wfoly_lm_mgolf36_raise_first_down_grab.ogg", t = 38/30},
			{s = path .. "wfoly_lm_mgolf36_raise_first_end.ogg", t = 57/30},
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
            {s = path .. "wfoly_lm_mgolf36_raise.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.3, lhik = 0, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_lm_mgolf36_drop.ogg", t = 0/30},
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
            { t = 0.35, lhik = 1, rhik = 1 },
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
        MinProgress = 0.1,
        FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.75, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_lm_mgolf36_inspect_01.ogg", t = 1/30},
			{s = path .. "wfoly_lm_mgolf36_inspect_02.ogg", t = 51/30},
			{s = path .. "wfoly_lm_mgolf36_inspect_03.ogg", t = 113/30},
        },
    },
    ["inspect_ar"] = {
        Source = "lookat01_ar",
        MinProgress = 0.1,
        FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_lm_mgolf36_ar_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_lm_mgolf36_ar_inspect_02.ogg", t = 69/30},
			{s = path .. "wfoly_lm_mgolf36_ar_inspect_03.ogg", t = 126/30},
        },
    },
    ["bash"] = {
        Source = {"melee","melee2","melee3"},
	    IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.6, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
    },
    ["firemode_1"] = {
        Source = "semi_off",
        EventTable = {
            {s = path3 .. "weap_akilo47_selector_off.ogg", t = 0/30},
        },
    },
    ["firemode_2"] = {
        Source = "semi_on",
        EventTable = {
            {s = path3 .. "weap_akilo47_selector_on.ogg", t = 0/30},
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
}

-------------------------- ATTACHMENTS

-- SWEP.Hook_Think	= ARC9.COD2019.BlendSights2

--- 30, 50, & 60 (AR) Round Mags ---
local Translate_AR = {
    ["reload"] = "reload_ar",
    ["reload_empty"] = "reload_empty_ar",
	["inspect"] = "inspect_ar",
}
local Translate_AR_Fast = {
    ["reload"] = "reload_ar_fast",
    ["reload_empty"] = "reload_ar_fast_empty",
	["inspect"] = "inspect_ar",
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
    local ar = wep:HasElement("mag_armag")
    local xmag = wep:HasElement("mag_xmag")

    if xmag and speedload and Translate_AR_Fast[anim] then 
        return Translate_AR_Fast[anim]
    elseif xmag and Translate_AR[anim] then 
        return Translate_AR[anim]
    elseif super_sprint and Translate_TacSprint[anim] then
        return Translate_TacSprint[anim]
    end

    if speedload then
		if ar then
            if Translate_AR_Fast[anim] then
                return Translate_AR_Fast[anim]
            end
        else 
            if Translate_Fast[anim] then
                return Translate_Fast[anim]
            end
        end
    else
		if ar then
            if Translate_AR[anim] then
                return Translate_AR[anim]
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

SWEP.DefaultBodygroups = "00000000000000"

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(1, 0, 0),
	ModelAngleOffset = Angle(0, 0, 0),
	Scale = 0.9,
    },
    ["go_grip_angled"] = {
    ModelOffset = Vector(1, 0, 0.1),
    },
    ["cod2019_attach_xmag_50"] = {
		Model = "models/weapons/cod2019/attachs/weapons/holger36/attachment_vm_ar_mcharlie_xmags.mdl",
		ClipSizeAdd = -50,
    },
    ["cod2019_attach_xmag_60"] = {
		Model = "models/weapons/cod2019/attachs/weapons/holger36/attachment_vm_ar_mcharlie_xmags2.mdl",
		ClipSizeAdd = -40,
    },
    ["cod2019_griptape_01"] = {
    Model = "models/weapons/cod2019/attachs/weapons/holger36/attachment_vm_lm_mgolf36_griptape.mdl",
    },
    ["cod2019_griptape_02"] = {
    Model = "models/weapons/cod2019/attachs/weapons/holger36/attachment_vm_lm_mgolf36_griptape.mdl",
    },
    ["cod2019_griptape_03"] = {
    Model = "models/weapons/cod2019/attachs/weapons/holger36/attachment_vm_lm_mgolf36_griptape.mdl",
    },
}

SWEP.AttachmentElements = {
    ["body_none"] = {
        Bodygroups = {
            {0,1},
        },
    },
    ["pistgrip_none"] = {
        Bodygroups = {
            {6,1},
        },
    },
    ["mag_none"] = {
        Bodygroups = {
            {1,1},
        },
    },
    ["barrel_none"] = {
        Bodygroups = {
            {2,1},
        },
    },
    ["muzzle_none"] = {
        Bodygroups = {
            {3,1},
        },
    },
    ["stock_retract"] = {
        Bodygroups = {
            {4,1},
        },
    },
    ["stock_adapter"] = {
        Bodygroups = {
            {4,2},
        },
    },
    ["stock_none"] = {
        Bodygroups = {
            {4,3},
        },
    },
    ["sights_none"] = {
        Bodygroups = {
            {5,1},
        },
    },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model
    if wep:HasElement("stock_retract") then model:SetBodygroup(4,1) end
end

SWEP.Attachments = {
    { -- 1
        PrintName = ARC9:GetPhrase("mw19_category_muzzle"),
        Category = "cod2019_muzzle",
        DefaultIcon = Material("entities/defattachs/muzzle-ar.png", "mips smooth"),
		Bone = "tag_silencer",
        Pos = Vector(0, 0, 0),
		InstalledElements = {"muzzle_none"},
    },
    { -- 2
        PrintName = ARC9:GetPhrase("mw19_category_barrel"),
		DefaultIcon = Material("entities/defattachs/barrel-ar.png", "mips smooth"),
        Category = "cod2019_holger_barrel",
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
    },
    { -- 4
        PrintName = ARC9:GetPhrase("mw19_category_optic"),
		DefaultIcon = Material("entities/defattachs/optic.png", "mips smooth"),
        Category = {"cod2019_optic", "cod2019_optic_big","cod2019_holger_optic"},
        Bone = "tag_holo",
        Pos = Vector(1.5, 0, -0.1),
		InstalledElements = {"sights_none"},
    },
    { -- 5
        PrintName = ARC9:GetPhrase("mw19_category_stock"),
		DefaultIcon = Material("entities/defattachs/stock-ar.png", "mips smooth"),
        Category = {"cod2019_tube","cod2019_holger_stock"},
        Bone = "tag_stock_attach",
        Pos = Vector(-0.86, 0, 0.23),
    },
    { -- 6
        PrintName = ARC9:GetPhrase("mw19_category_underbarrel"),
		DefaultIcon = Material("entities/defattachs/grip.png", "mips smooth"),
        Category = "cod2019_grip",
        Bone = "tag_grip_attach",
        Pos = Vector(-2.6, 0, 0),
        Ang = Angle(0, 0, 180),
		MergeSlots = {20}, -- Bipod
    },
    { -- 7
        PrintName = ARC9:GetPhrase("mw19_category_magazine"),
		DefaultIcon = Material("entities/defattachs/magazine-ar.png", "mips smooth"),
		Bone = "tag_mag_attach",
        Category = {"cod2019_holger_mag","cod2019_mag_xmag"}, -- Should it really need the universal extended mags?
        -- Category = {"cod2019_holger_mag"},
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
        Category = "cod2019_holger_receiver",
        Bone = "tag_attachments",
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(7, 0, 1),
    },
	
	-- Cosmetics
    { -- 12
        PrintName = ARC9:GetPhrase("mw19_category_skins"),
        Bone = "tag_cosmetic",
        Pos = Vector(7, 0, 3),
        Category = "cod2019_skins_holger",
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
        StickerModel = "models/weapons/cod2019/stickers/lmg_holger_decal_a.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(3, 0, 3),
    },
    { -- 15
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/lmg_holger_decal_b.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(1, 0, 3),
    },
    { -- 16
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/lmg_holger_decal_c.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-1, 0, 3),
    },
    { -- 17
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/lmg_holger_decal_d.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-3, 0, 3),
    },
    { -- 18
        PrintName = ARC9:GetPhrase("mw19_category_charm"),
        CosmeticOnly = true,
        Category = {"charm"},
        Bone = "tag_cosmetic",
        Pos = Vector(0, 0, -0.25),
		Icon_Offset = Vector(-5, 0, 3.25),
		Scale = 1.5,
    },
    { -- 19
        PrintName = ARC9:GetPhrase("mw19_category_stats"),
        Category = {"killcounter","killcounter2"},
        Bone = "tag_cosmetic",
        Pos = Vector(-6.5, 0, -0.5),
		Icon_Offset = Vector(-0.5, 0, 3.5),
		CosmeticOnly = true,
    },
    { -- 20
        PrintName = "Bipod",
        Category = {"cod2019_holger_bipod"},
        Bone = "tag_attachments",
        Pos = Vector(0, 0, 0),
		Hidden = true,
    },
}

SWEP.GripPoseParam = 4
SWEP.GripPoseParam2 = 0.6
SWEP.CodAngledGripPoseParam = 31.8
SWEP.CodStubbyGripPoseParam = 17
SWEP.CodStubbyTallGripPoseParam = 16

-- Warzone-esque Stats; Add here to change only when using Warzone Stats variable.
if GetConVar("arc9_mw19_stats_warzone"):GetBool() then

-------------------------- DAMAGE PROFILE
SWEP.DamageMax = 28 -- Damage done at point blank range
SWEP.DamageMin = 23 -- Damage done at maximum range

SWEP.RangeMin = 48 / ARC9.HUToM
SWEP.RangeMax = 49 / ARC9.HUToM

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 1.515,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 1,
    [HITGROUP_RIGHTLEG] = 1,
}

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 810 / ARC9.HUToM

-------------------------- FIREMODES

SWEP.RPM = 706

-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.36 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.25 -- How long it takes to go from sprinting to being able to fire.

end
