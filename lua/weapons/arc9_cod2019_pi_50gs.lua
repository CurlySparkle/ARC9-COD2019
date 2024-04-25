AddCSLuaFile()
if CLIENT then
    killicon.Add( "arc9_cod2019_pi_50gs", "vgui/killicons/cod2019_pi_50gs.png", Color(251, 85, 25, 255))
    killicon.Add( "arc9_cod2019_pi_50gs_akimbo", "vgui/killicons/cod2019_pi_akimbo_50gs.png", Color(251, 85, 25, 255))
end

SWEP.LoadoutImage = "entities/loadout/arc9_cod2019_pi_50gs.png"

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_handgun") or "Handguns"

SWEP.PrintName = ARC9:GetPhrase("mw19_weapon_deagle") or ".50 GS"

SWEP.Class = ARC9:GetPhrase("mw19_class_weapon_handgun") or "Handgun"
SWEP.Trivia = {
    [ ARC9:GetPhrase("mw19_country") ] = ARC9:GetPhrase("mw19_country_usa"),
    [ ARC9:GetPhrase("mw19_manufacturer") ] = ARC9:GetPhrase("mw19_manufacturer_forgetac"),
    [ ARC9:GetPhrase("mw19_caliber") ] = ARC9:GetPhrase("mw19_caliber_50pistol"),
    [ ARC9:GetPhrase("mw19_weight") ] = string.format(ARC9:GetPhrase("mw19_weight_val"), 2, 2 * 2.20),
    [ ARC9:GetPhrase("mw19_weight_projectile") ] = string.format(ARC9:GetPhrase("mw19_weight_projectile_val"), 300),
    -- [ ARC9:GetPhrase("mw19_muzzle_energy") ] = "1,542 ft/s",
    -- [ ARC9:GetPhrase("mw19_muzzle_velocity") ] = "2,148 joules"
}

SWEP.Credits = {
    [ ARC9:GetPhrase("mw19_author") ] = "Twilight Sparkle/Firmeteran",
    [ ARC9:GetPhrase("mw19_assets") ] = "Activision/Infinity Ward"
}

SWEP.Description = ARC9:GetPhrase("mw19_weapon_deagle_desc") or [[The most powerful semi-automatic handgun available, deals heavy damage up to intermediate ranges.]]

SWEP.ViewModel = "models/weapons/cod2019/c_pist_50gs.mdl"
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"

SWEP.Slot = 1

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_pist_50gs.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-10, 3.25, -4.5),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-14, 1.5, -4.5),
    TPIKAng = Angle(-5, 0, 175),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 59 -- Damage done at point blank range
SWEP.DamageMin = 28 -- Damage done at maximum range

SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 10 / ARC9.HUToM
SWEP.RangeMax = 30 / ARC9.HUToM

SWEP.Penetration = 4 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.35

SWEP.ImpactForce = 8

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 1.615,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 0.9,
    [HITGROUP_RIGHTARM] = 0.9,
    [HITGROUP_LEFTLEG] = 0.9,
    [HITGROUP_RIGHTLEG] = 0.9,
}

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 470 / ARC9.HUToM
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.5

-------------------------- MAGAZINE

SWEP.Ammo = "357" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 7 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 10 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 200

SWEP.Firemodes = {
    {
        Mode = 1,
    },
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 3

SWEP.RecoilSeed = 4445523

SWEP.RecoilPatternDrift = 35

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.1

SWEP.RecoilDissipationRate = 10 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 1 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 5

SWEP.RecoilMultCrouch = 0.8

SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 1

SWEP.RecoilPerShot = 2.5
SWEP.RecoilMax = 5

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilPunch = 1
SWEP.VisualRecoilUp = 2

-------------------------- SPREAD

SWEP.Spread = 0.0325

SWEP.SpreadAddRecoil = 0.01

SWEP.SpreadAddHipFire = 0
SWEP.SpreadAddMove = 0.025
SWEP.SpreadAddMidAir = 0.045
SWEP.SpreadAddCrouch = -0.03
SWEP.SpreadAddSights = -(SWEP.Spread * 1.2)

SWEP.SpreadMultRecoil = 1.1
SWEP.RecoilModifierCap = 3
SWEP.RecoilModifierCapMove = 0
SWEP.RecoilModifierCapSights = 0

-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.23 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.2 -- How long it takes to go from sprinting to being able to fire.

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
    Pos = Vector(-1.85, 0, 1.675),
    Ang = Angle(0, 0, 0),
    Magnification = 1.15,
	CrosshairInSights = false
}

SWEP.ViewModelFOVBase = 64

SWEP.SprintMidPoint = {
    Pos = Vector(0, -1, -0.15),
    Ang = Angle(0, 0, 0)
}

SWEP.MovingMidPoint = {
    Pos = Vector(0, -0.5, -0.5),
    Ang = Angle(0, 0, 0)
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.MovingPos = Vector(0, -0.5, -0.5)
SWEP.MovingAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-1, -0.5, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.SprintPos = Vector(1, 0, -1)
SWEP.SprintAng = Angle(0, 0, 25)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(15, 25, 4.5)
SWEP.CustomizeRotateAnchor = Vector(15, -1.75, -4.5)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeSnapshotPos = Vector(2.5, 0, 0)
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeNoRotate = false

SWEP.PeekMaxFOV = SWEP.ViewModelFOVBase

SWEP.PeekPos = Vector(-1.7, -3, -4)
SWEP.PeekAng = Angle(0, 0, -45)

SWEP.PeekPosReloading = Vector(1.5, 0, -2)
SWEP.PeekAngReloading = Angle(0, 0, 0)

-------------------------- HoldTypes

SWEP.HoldType = "revolver"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeSights = "revolver"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "AC_muzzle_desert_fp"
SWEP.AfterShotParticle = "AC_muzzle_smoke_barrel"
SWEP.TracerEffect = "cod2019_tracer_small"
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 4
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_9mm_hr.mdl"
SWEP.ShellSounds = ARC9.COD2019_9mm_Table
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 0.075
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_pist_50gs_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_metal_concrete_01.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_metal_concrete_02.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_metal_concrete_03.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_metal_concrete_04.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_metal_concrete_05.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_metal_concrete_06.ogg",
}
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineTime = 0.4
SWEP.DropMagazineQCA = 3
SWEP.DropMagazineAng = Angle(0, -90, 0)

-------------------------- SOUNDS

local path = "weapons/cod2019/50gs/"

SWEP.ShootSound = "COD2019.50GS.Fire"
SWEP.ShootSoundIndoor = "COD2019.50GS.Fire"

SWEP.ShootSoundSilenced = "COD2019.50GS.Fire.S"
SWEP.ShootSoundSilencedIndoor = "COD2019.50GS.Fire.S"

-- Non-Silenced
SWEP.LayerSound = "Layer_Pistol.Outside"
SWEP.DistantShootSound = "Distant_Pistol_Mag.Outside"
-- Inside
SWEP.LayerSoundIndoor = "Layer_Shotgun.Inside"
SWEP.DistantShootSoundIndoor = "Distant_Shotgun.Inside"
---------------------------------------------------
-- Silenced
SWEP.LayerSoundSilenced = "Layer_ARSUP.Outside"
SWEP.DistantShootSoundSilenced = "Distant_Pistol_Mag_Sup.Outside"
-- Inside
SWEP.LayerSoundSilencedIndoor = "Layer_ARSUP.Inside"
SWEP.DistantShootSoundSilencedIndoor = "Distant_Pistol_Sup.Inside"
---------------------------------------------------

SWEP.EnterSightsSound = path .. "wfoly_pi_decho_ads_up.ogg"
SWEP.ExitSightsSound = path .. "wfoly_pi_decho_ads_down.ogg"

SWEP.TriggerDelay = 0.03 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayCancellable = false
SWEP.TriggerDelayTime = 0.03 -- Time until weapon fires.

SWEP.TriggerDownSound = path .. "weap_decho_fire_first_plr_01.ogg"
SWEP.TriggerUpSound = path .. "weap_decho_disconnector_plr_01.ogg"

SWEP.BulletBones = {
    [1] = "j_bullet01",
    [2] = "j_bullet02",
	[3] = "j_bullet03",
	[4] = "j_bullet04",
}

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
		RefillProgress = 0.6,
		PeekProgress = 0.8,
		FireASAP = true,
		MagSwapTime = 3.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_decho_reload_raise.ogg", t = 0.033},
			{s = path .. "wfoly_pi_decho_reload_magout_01.ogg", t = 0.56},
			{s = path .. "wfoly_pi_decho_reload_magin_v2_01.ogg", t = 1.03},
			{s = path .. "wfoly_pi_decho_reload_magin_v2_02.ogg", t = 1.23},
			{s = path .. "wfoly_pi_decho_reload_end.ogg", t = 1.5},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.925,
		PeekProgress = 0.775,
		RefillProgress = 0.7,
		FireASAP = true,
		DropMagAt = 0.8,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.75, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_pi_decho_reload_empty_shake.ogg", t = 0/30},
			{s = path .. "wfoly_pi_decho_reload_empty_magout_01.ogg", t = 5/30},
			{s = path .. "wfoly_pi_decho_reload_empty_magin_v2_01.ogg", t = 24/30},
			{s = path .. "wfoly_pi_decho_reload_empty_magin_v2_02.ogg", t = 31/30},
            {s = path .. "wfoly_pi_decho_reload_empty_mvmnt.ogg", t = 31/30},
			{s = path .. "wfoly_pi_decho_reload_empty_end.ogg", t = 44/30},
            {s = path .. "wfoly_pi_decho_reload_empty_charge_01.ogg", t = 44/30},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.8,
		PeekProgress = 0.75,
		RefillProgress = 0.5,
		FireASAP = true,
		MagSwapTime = 1.5,
		DropMagAt = 0.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.45, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_decho_fast_reload_raise.ogg", t = 0.033},
			{s = path .. "wfoly_pi_decho_fast_reload_magout_01.ogg", t = 0.2},
			{s = path .. "wfoly_pi_decho_fast_reload_magin_v2_01.ogg", t = 0.53},
			{s = path .. "wfoly_pi_decho_fast_reload_magin_v2_02.ogg", t = 0.66},
			{s = path .. "wfoly_pi_decho_fast_reload_end.ogg", t = 0.73},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.8,
		PeekProgress = 0.75,
		RefillProgress = 0.625,
		FireASAP = true,
		MagSwapTime = 1.5,
		DropMagAt = 0.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.45, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_decho_fast_reload_empty_raise.ogg", t = 0},
			{s = path .. "wfoly_pi_decho_fast_reload_empty_magout_01.ogg", t = 0.23},
			{s = path .. "wfoly_pi_decho_fast_reload_empty_magin_v2_01.ogg", t = 0.44},
			{s = path .. "wfoly_pi_decho_fast_reload_empty_magin_v2_02.ogg", t = 0.64},
			{s = path .. "wfoly_pi_decho_fast_reload_empty_slide_01.ogg", t = 0.75},
			{s = path .. "wfoly_pi_decho_fast_reload_empty_end.ogg", t = 0.96},
        },
    },
    ["reload_xmag"] = {
        Source = "reload_xmag",
		MinProgress = 0.925,
		RefillProgress = 0.6,
		PeekProgress = 0.8,
		FireASAP = true,
		MagSwapTime = 3.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_decho_reload_raise.ogg", t = 0/30},
			{s = path .. "wfoly_pi_decho_reload_magout_01.ogg", t = 15/30},
			{s = path .. "wfoly_pi_decho_reload_magin_v2_01.ogg", t = 30/30},
			{s = path .. "wfoly_pi_decho_reload_magin_v2_02.ogg", t = 36/30},
			{s = path .. "wfoly_pi_decho_reload_end.ogg", t = 42/30},
        },
    },
    ["reload_empty_xmag"] = {
        Source = "reload_xmag_empty",
		MinProgress = 0.925,
		PeekProgress = 0.775,
		RefillProgress = 0.7,
		FireASAP = true,
		DropMagAt = 0.8,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.75, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_decho_reload_empty_mvmnt.ogg", t = 0/30},
			{s = path .. "wfoly_pi_decho_reload_empty_magout_01.ogg", t = 4/30},
			{s = path .. "wfoly_pi_decho_reload_empty_magin_v2_01.ogg", t = 23/30},
			{s = path .. "wfoly_pi_decho_reload_empty_magin_v2_02.ogg", t = 30/30},
			{s = path .. "wfoly_pi_decho_reload_empty_shake.ogg", t = 30/30},
			{s = path .. "wfoly_pi_decho_reload_empty_charge_01.ogg", t = 43/30},
			{s = path .. "wfoly_pi_decho_reload_empty_end.ogg", t = 44/30},
        },
    },
    ["reload_xmag_fast"] = {
        Source = "reload_xmag_fast",
		MinProgress = 0.8,
		PeekProgress = 0.75,
		RefillProgress = 0.5,
		FireASAP = true,
		MagSwapTime = 1.5,
		DropMagAt = 0.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.45, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_decho_reload_raise.ogg", t = 0/30},
			{s = path .. "wfoly_pi_decho_reload_magout_01.ogg", t = 4/30},
			{s = path .. "wfoly_pi_decho_reload_magin_v2_01.ogg", t = 14/30},
			{s = path .. "wfoly_pi_decho_reload_magin_v2_02.ogg", t = 20/30},
			{s = path .. "wfoly_pi_decho_reload_end.ogg", t = 24/30},
        },
    },
    ["reload_xmag_fast_empty"] = {
        Source = "reload_xmag_fast_empty",
		MinProgress = 0.8,
		PeekProgress = 0.75,
		RefillProgress = 0.625,
		FireASAP = true,
		MagSwapTime = 1.5,
		DropMagAt = 0.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.45, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_decho_reload_empty_mvmnt.ogg", t = 0/30},
			{s = path .. "wfoly_pi_decho_reload_empty_magout_01.ogg", t = 4/30},
			{s = path .. "wfoly_pi_decho_reload_empty_magin_v2_01.ogg", t = 14/30},
			{s = path .. "wfoly_pi_decho_reload_empty_magin_v2_02.ogg", t = 21/30},
			{s = path .. "wfoly_pi_decho_reload_empty_charge_01.ogg", t = 25/30},
			{s = path .. "wfoly_pi_decho_reload_empty_end.ogg", t = 25/30},
        },
    },
    ["reload_xmaglrg"] = {
        Source = "reload_xmaglrg",
		MinProgress = 0.925,
		RefillProgress = 0.6,
		PeekProgress = 0.8,
		FireASAP = true,
		MagSwapTime = 3.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_decho_reload_raise.ogg", t = 0/30},
			{s = path .. "wfoly_pi_decho_reload_magout_01.ogg", t = 15/30},
			{s = path .. "wfoly_pi_decho_reload_magin_v2_01.ogg", t = 30/30},
			{s = path .. "wfoly_pi_decho_reload_magin_v2_02.ogg", t = 36/30},
			{s = path .. "wfoly_pi_decho_reload_end.ogg", t = 42/30},
        },
    },
    ["reload_xmaglrg_empty"] = {
        Source = "reload_xmaglrg_empty",
		MinProgress = 0.925,
		PeekProgress = 0.775,
		RefillProgress = 0.7,
		FireASAP = true,
		DropMagAt = 0.8,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.75, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_decho_reload_empty_mvmnt.ogg", t = 0/30},
			{s = path .. "wfoly_pi_decho_reload_empty_magout_01.ogg", t = 4/30},
			{s = path .. "wfoly_pi_decho_reload_empty_magin_v2_01.ogg", t = 23/30},
			{s = path .. "wfoly_pi_decho_reload_empty_magin_v2_02.ogg", t = 30/30},
			{s = path .. "wfoly_pi_decho_reload_empty_shake.ogg", t = 30/30},
			{s = path .. "wfoly_pi_decho_reload_empty_charge_01.ogg", t = 43/30},
			{s = path .. "wfoly_pi_decho_reload_empty_end.ogg", t = 44/30},
        },
    },
    ["reload_xmaglrg_fast"] = {
        Source = "reload_xmaglrg_fast",
		MinProgress = 0.8,
		PeekProgress = 0.75,
		RefillProgress = 0.5,
		FireASAP = true,
		MagSwapTime = 1.5,
		DropMagAt = 0.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.45, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_decho_reload_raise.ogg", t = 0/30},
			{s = path .. "wfoly_pi_decho_reload_magout_01.ogg", t = 4/30},
			{s = path .. "wfoly_pi_decho_reload_magin_v2_01.ogg", t = 14/30},
			{s = path .. "wfoly_pi_decho_reload_magin_v2_02.ogg", t = 20/30},
			{s = path .. "wfoly_pi_decho_reload_end.ogg", t = 24/30},
        },
    },
    ["reload_xmaglrg_fast_empty"] = {
        Source = "reload_xmaglrg_fast_empty",
		MinProgress = 0.8,
		PeekProgress = 0.75,
		RefillProgress = 0.625,
		FireASAP = true,
		MagSwapTime = 1.5,
		DropMagAt = 0.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.45, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_decho_reload_empty_mvmnt.ogg", t = 0/30},
			{s = path .. "wfoly_pi_decho_reload_empty_magout_01.ogg", t = 4/30},
			{s = path .. "wfoly_pi_decho_reload_empty_magin_v2_01.ogg", t = 14/30},
			{s = path .. "wfoly_pi_decho_reload_empty_magin_v2_02.ogg", t = 21/30},
			{s = path .. "wfoly_pi_decho_reload_empty_charge_01.ogg", t = 25/30},
			{s = path .. "wfoly_pi_decho_reload_empty_end.ogg", t = 25/30},
        },
    },
    ["ready"] = {
        Source = "draw",
		MinProgress = 0.8,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_pi_decho_first_raise_mvmnt.ogg", t = 0.1},
            {s = path .. "wfoly_pi_decho_first_raise_safetyoff.ogg", t = 0.44},
			{s = path .. "wfoly_pi_decho_first_raise_end.ogg", t = 0.7},
        },
    },
    ["draw"] = {
        Source = "draw_short",
		MinProgress = 0.2,
        FireASAP = true,
        EventTable = {
            {s = path .. "wfoly_pi_decho_raise_mvmnt.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            {s = path .. "wfoly_pi_decho_drop_mvmnt.ogg", t = 0/30},
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
		Time = 0.25,
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
		Time = 0.25,
    },
    ["super_sprint_idle"] = {
        Source = "super_sprint",
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 1 },
        },
    },
    ["super_sprint_in"] = {
        Source = "super_sprint_in",
		Time = 1.25,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.35, lhik = 1, rhik = 1 },
            { t = 1, lhik = 0, rhik = 1 },
        },
    },
    ["super_sprint_out"] = {
        Source = "super_sprint_out",
		Time = 2.5,
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
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 1.1, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_pi_decho_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_pi_decho_inspect_02.ogg", t = 60/30},
			{s = path .. "wfoly_pi_decho_inspect_03.ogg", t = 110/30},
        },
    },
    ["bash"] = {
        Source = {"melee","melee2","melee3"},
    },
}

-------------------------- ATTACHMENTS

--- 13 Round & Extended Mags ---
local Translate_XMag = {
    ["reload"] = "reload_xmag",
    ["reload_empty"] = "reload_xmag_empty",
}
local Translate_XMag_Fast = {
    ["reload"] = "reload_xmag_fast",
    ["reload_empty"] = "reload_xmag_fast_empty",
}
local Translate_XMagslrg = {
    ["reload"] = "reload_xmaglrg",
    ["reload_empty"] = "reload_xmaglrg_empty",
}
local Translate_XMagslrg_Fast = {
    ["reload"] = "reload_xmaglrg_fast",
    ["reload_empty"] = "reload_xmaglrg_fast_empty",
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
    local xmagslrg = wep:HasElement("mag_xmagslrg") or wep:HasElement("mag_xmaglrg")

    if super_sprint and Translate_TacSprint[anim] then
        return Translate_TacSprint[anim]
    end

    if speedload then
        if xmag then
            if Translate_XMag_Fast[anim] then
                return Translate_XMag_Fast[anim]
            end
        elseif xmagslrg then
            if Translate_XMagslrg_Fast[anim] then
                return Translate_XMagslrg_Fast[anim]
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
        elseif xmagslrg then
            if Translate_XMagslrg[anim] then
                return Translate_XMagslrg[anim]
            end
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

SWEP.DefaultBodygroups = "00000000000000"

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model
	local attached = data.elements
    local camo = 0
    if attached["universal_camo"] then
        camo = 1
    end
    model:SetSkin(camo)
end

SWEP.AttachmentTableOverrides = {
    ["cod2019_trigger_light"] = {
    Model = "models/weapons/cod2019/attachs/weapons/50gs/attachment_vm_pi_decho_trigcust.mdl",
    },
    ["cod2019_trigger_heavy"] = {
    Model = "models/weapons/cod2019/attachs/weapons/50gs/attachment_vm_pi_decho_trigcust02.mdl",
    },
    ["cod2019_trigger_match"] = {
    Model = "models/weapons/cod2019/attachs/weapons/50gs/attachment_vm_pi_decho_trigcust03.mdl",
    },
    ["cod2019_attach_compensator_pstl01"] = {
    Model = "models/weapons/cod2019/attachs/weapons/50gs/attachment_vm_pi_decho_comp.mdl",
    },
    ["cod2019_attach_muzzlebrake_pstl01"] = {
    Model = "models/weapons/cod2019/attachs/weapons/50gs/attachment_vm_pi_decho_muzzlebrake.mdl",
    },
}

SWEP.AttachmentElements = {
    ["mag_none"] = {
        Bodygroups = {
            {1,1},
        },
    },
    ["slide_none"] = {
        Bodygroups = {
            {2,1},
        },
    },
    ["grip_none"] = {
        Bodygroups = {
            {3,1},
        },
    },
    ["trigger_none"] = {
        Bodygroups = {
            {4,1},
        },
    },
}

SWEP.Attachments = {
    { -- 1
        PrintName = ARC9:GetPhrase("mw19_category_muzzle"),
        Category = "cod2019_muzzle_pistols",
        DefaultIcon = Material("entities/defattachs/muzzle-ar.png", "mips smooth"),
		Bone = "tag_silencer",
        Pos = Vector(0, 0, 0),
    },
    { -- 2
        PrintName = ARC9:GetPhrase("mw19_category_barrel"),
		DefaultIcon = Material("entities/defattachs/barrel-ar.png", "mips smooth"),
        Category = "cod2019_50gs_slide",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(-2, 0, 1),
    },
    { -- 3
        PrintName = ARC9:GetPhrase("mw19_category_laser"),
		DefaultIcon = Material("entities/defattachs/laser-ar.png", "mips smooth"),
        Category = {"cod2019_tac_pistols","cod2019_grip_pistols"},
        Bone = "tag_laser_attach",
        Pos = Vector(0, 0, 0),
		ExcludeElements = {"barrel_smg"},
    },
    { -- 4
        PrintName = ARC9:GetPhrase("mw19_category_optic"),
		DefaultIcon = Material("entities/defattachs/optic.png", "mips smooth"),
        Bone = "tag_reflex",
        Pos = Vector(1, 0, -0.1),
        Category = {"cod2019_optic_pistol"},
    },
    { -- 5
        PrintName = ARC9:GetPhrase("mw19_category_triggeraction"),
		-- DefaultIcon = Material("entities/defattachs/stock-ar.png", "mips smooth"),
        Category = {"cod2019_trigger"},
        Bone = "j_trigger",
        Pos = Vector(0, 0, 0),
    },
    { -- 6
        PrintName = ARC9:GetPhrase("mw19_category_magazine"),
		DefaultIcon = Material("entities/defattachs/magazine-ar.png", "mips smooth"),
		Bone = "tag_mag_attach",
        Category = {"cod2019_mag","cod2019_50gs_mag"},
        Pos = Vector(0, 0, 0),
    },
    { -- 7
        PrintName = ARC9:GetPhrase("mw19_category_ammo"),
		DefaultIcon = Material("arc9/def_att_icons/ammotype.png", "mips smooth"),
        Bone = "tag_mag_attach",
		Category = {"cod2019_ammo"},
		Pos = Vector(-1.5, 0, 0),
    },
    { -- 8
        PrintName = ARC9:GetPhrase("mw19_category_reargrip"),
		DefaultIcon = Material("entities/defattachs/reargrip-ar.png", "mips smooth"),
        Category = "cod2019_50gs_grip",
        Bone = "tag_stock_attach",
        Pos = Vector(0, 0, 0),
    },
    { -- 9
        PrintName = ARC9:GetPhrase("mw19_category_perk"),
        Category = {"cod2019_perks","cod2019_perks_soh","cod2019_perks_ss"},
        Bone = "tag_pistol_attachments",
        Pos = Vector(3, 0, -1.5),
    },
	
	-- Unofficial
    { -- 10
        PrintName = ARC9:GetPhrase("mw19_category_receiver"),
        Category = "cod2019_50gs_receiver",
        Bone = "tag_pistol_attachments",
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(0, 0, 1),
		Hidden = false,
    },
	
	-- Cosmetics
    { -- 11
        PrintName = ARC9:GetPhrase("mw19_category_skins"),
        Bone = "tag_cosmetic",
        Pos = Vector(3, 0, 1.5),
        Category = "cod2019_skins_50gs",
		CosmeticOnly = true,
    },
    { -- 12
        PrintName = ARC9:GetPhrase("mw19_category_camouflage"),
        Category = {"universal_camo"},
        Bone = "tag_cosmetic",
        Pos = Vector(2, 0, 1.5),
        CosmeticOnly = true,
    },
    { -- 13
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/pist_50gs_decal_a.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(1, 0, 1.5),
    },
    { -- 14
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/pist_50gs_decal_b.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(0, 0, 1.5),
    },
    { -- 15
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/pist_50gs_decal_c.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-1, 0, 1.5),
    },
    { -- 16
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/pist_50gs_decal_d.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-2, 0, 1.5),
    },
    { -- 17
        PrintName = ARC9:GetPhrase("mw19_category_charm"),
        CosmeticOnly = true,
        Category = {"charm"},
        Bone = "tag_cosmetic",
        Pos = Vector(0.5, 0, 0),
		Icon_Offset = Vector(-3.5, 0, 1.5),
		Scale = 1.5,
    },
    { -- 18
        PrintName = ARC9:GetPhrase("mw19_category_stats"),
        Category = "killcounter",
        Bone = "tag_cosmetic",
        Pos = Vector(-1.5, -0.05, -0),
		Icon_Offset = Vector(-2.5, 0.05, 1.5),
		CosmeticOnly = true,
    },
}

SWEP.GripPoseParam = 4.6
SWEP.GripPoseParam2 = 0.6

-- Warzone-esque Stats; Add here to change only when using Warzone Stats variable.
if GetConVar("arc9_mw19_stats_warzone"):GetBool() then

-------------------------- DAMAGE PROFILE
SWEP.DamageMax = 91 -- Damage done at point blank range
SWEP.DamageMin = 65 -- Damage done at maximum range

SWEP.RangeMin = 16 / ARC9.HUToM
SWEP.RangeMax = 17 / ARC9.HUToM

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 1.615,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 1,
    [HITGROUP_RIGHTLEG] = 1,
}

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 470 / ARC9.HUToM

-------------------------- FIREMODES

SWEP.RPM = 167

-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.23 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.078 -- How long it takes to go from sprinting to being able to fire.

end
