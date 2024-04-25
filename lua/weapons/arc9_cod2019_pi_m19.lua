AddCSLuaFile()
if CLIENT then
    killicon.Add( "arc9_cod2019_pi_m19", "vgui/killicons/cod2019_pi_m19.png", Color(251, 85, 25, 255))
    killicon.Add( "arc9_cod2019_pi_m19_akimbo", "vgui/killicons/cod2019_pi_akimbo_m19.png", Color(251, 85, 25, 255))
end

SWEP.LoadoutImage = "entities/loadout/arc9_cod2019_pi_m19.png"

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_handgun") or "Handguns"

SWEP.PrintName = ARC9:GetPhrase("mw19_weapon_m19") or "M19"

SWEP.Class = ARC9:GetPhrase("mw19_class_weapon_handgun") or "Handgun"
SWEP.Trivia = {
    [ ARC9:GetPhrase("mw19_country") ] = ARC9:GetPhrase("mw19_country_usa"),
    [ ARC9:GetPhrase("mw19_manufacturer") ] = ARC9:GetPhrase("mw19_manufacturer_corvus"),
    [ ARC9:GetPhrase("mw19_caliber") ] = ARC9:GetPhrase("mw19_caliber_919"),
    [ ARC9:GetPhrase("mw19_weight") ] = string.format(ARC9:GetPhrase("mw19_weight_val"), 0.84, 0.84 * 2.20),
    [ ARC9:GetPhrase("mw19_weight_projectile") ] = string.format(ARC9:GetPhrase("mw19_weight_projectile_val"), 124),
    -- [ ARC9:GetPhrase("mw19_muzzle_energy") ] = "1,198 ft/s",
    -- [ ARC9:GetPhrase("mw19_muzzle_velocity") ] = "536 joules"
}

SWEP.Credits = {
    [ ARC9:GetPhrase("mw19_author") ] = "Twilight Sparkle/Firmeteran",
    [ ARC9:GetPhrase("mw19_assets") ] = "Activision/Infinity Ward"
}

SWEP.Description = ARC9:GetPhrase("mw19_weapon_m19_desc") or [[Semi-automatic 9mm pistol, excellent stability with a rapid cycle rate.]]

SWEP.ViewModel = "models/weapons/cod2019/c_pist_m19.mdl"
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"

SWEP.Slot = 1

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_pist_m19.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-11, 1.5, -5.25),
    Ang = Angle(-5, 0, 190),
    TPIKPos = Vector(-14, 0.5, -4.5),
    TPIKAng = Angle(-5, 0, 195),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 26 -- Damage done at point blank range
SWEP.DamageMin = 18 -- Damage done at maximum range

SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 10 / ARC9.HUToM
SWEP.RangeMax = 28 / ARC9.HUToM

SWEP.Penetration = 2 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.2

SWEP.ImpactForce = 8

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 2,
    [HITGROUP_CHEST] = 1.175,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 0.925,
    [HITGROUP_RIGHTARM] = 0.925,
    [HITGROUP_LEFTLEG] = 0.925,
    [HITGROUP_RIGHTLEG] = 0.925,
}

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 360 / ARC9.HUToM
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.15

-------------------------- MAGAZINE

SWEP.Ammo = "pistol" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 17 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 10 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 600

SWEP.Firemodes = {
    {
        Mode = 1,
    },
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1.1

SWEP.RecoilSeed = 610312

SWEP.RecoilPatternDrift = 35

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 0.1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.2
SWEP.RecoilRandomSide = 0.1

SWEP.RecoilDissipationRate = 10 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 1 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 1.36

SWEP.RecoilMultCrouch = 0.8

SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 1

SWEP.RecoilPerShot = 2
SWEP.RecoilMax = 3

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilMultSights = 0.2
SWEP.VisualRecoilPunchSights = 75
SWEP.VisualRecoilPunch = 2.5
SWEP.VisualRecoilUp = 0.2
SWEP.VisualRecoilRoll = 15
SWEP.VisualRecoilSide = 0.2

SWEP.VisualRecoilSpringPunchDamping = 11
SWEP.VisualRecoilDampingConst = 20
SWEP.VisualRecoilDampingConstSights = 50

SWEP.VisualRecoilDoingFunc = function(up, side, roll, punch, recamount)
    if recamount > 5 then
        recamount = 1.65 - math.Clamp((recamount - 2) / 3.5, 0, 1)
        
        local fakerandom = 1 + (((69+recamount%5*CurTime()%3)*2420)%4)/10 
        
        return up, side * fakerandom, roll, punch
    end

    return up, side, roll, punch
end

-------------------------- SPREAD

SWEP.Spread = 0.02

SWEP.SpreadAddRecoil = 0.01

SWEP.SpreadAddHipFire = 0
SWEP.SpreadAddMove = 0.025
SWEP.SpreadAddMidAir = 0.045
SWEP.SpreadAddCrouch = -0.03
SWEP.SpreadAddSights = -(SWEP.Spread * 1.2)

SWEP.SpreadMultRecoil = 1.1
SWEP.RecoilModifierCap = 1.1
SWEP.RecoilModifierCapMove = 0
SWEP.RecoilModifierCapSights = 0

-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.24 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.24 -- How long it takes to go from sprinting to being able to fire.

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false
SWEP.PreBashTime = 0.15
SWEP.PostBashTime = 0.2

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 255, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-0.42, 0, 2.83),
    Ang = Angle(0.1, 0.35, 9.5),
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

SWEP.SprintPos = Vector(-1, -1, -1)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.CustomizeAng = Angle(90, -10, 0)
SWEP.CustomizePos = Vector(15, 25, 5.25)
SWEP.CustomizeRotateAnchor = Vector(15, -1.75, -5.25)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeSnapshotPos = Vector(1.5, -2.5, 0.25)
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeNoRotate = false

SWEP.PeekPos = Vector(-2.5, -1.5, -3.5)
SWEP.PeekAng = Angle(0, 0, -45)

SWEP.PeekPosReloading = Vector(-1, -2.5, -2)
SWEP.PeekAngReloading = Angle(0, 0, -20)

SWEP.PeekMaxFOV = 64

-------------------------- HoldTypes

SWEP.HoldType = "revolver"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeSights = "revolver"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "AC_muzzle_pistol_fp"
SWEP.AfterShotParticle = "AC_muzzle_smoke_barrel"
SWEP.TracerEffect = "cod2019_tracer_small"
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 4
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_9mm_hr.mdl"
SWEP.ShellSounds = ARC9.COD2019_9mm_Table
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 0.07
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_pist_m19_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_poly_concrete_01.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_poly_concrete_02.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_poly_concrete_03.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_poly_concrete_04.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_poly_concrete_05.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_poly_concrete_06.ogg",
}
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineTime = 0.4
SWEP.DropMagazineQCA = 3
SWEP.DropMagazineAng = Angle(0, -90, 0)

-------------------------- SOUNDS

local path = "weapons/cod2019/m19/"

SWEP.ShootSound = "COD2019.M19.Fire"
SWEP.ShootSoundIndoor = "COD2019.M19.Fire"

SWEP.ShootSoundSilenced = "COD2019.M19.Fire.S"
SWEP.ShootSoundSilencedIndoor = "COD2019.M19.Fire.S"

-- Non-Silenced
SWEP.LayerSound = "Layer_Pistol.Outside"
SWEP.DistantShootSound = "Distant_Pistol.Outside"
-- Inside
SWEP.LayerSoundIndoor = "Layer_Pistol.Inside"
SWEP.DistantShootSoundIndoor = "Distant_Pistol.Inside"
---------------------------------------------------
-- Silenced
SWEP.LayerSoundSilenced = "Layer_ARSUP.Outside"
SWEP.DistantShootSoundSilenced = "Distant_Pistol_Mag_Sup.Outside"
-- Inside
SWEP.LayerSoundSilencedIndoor = "Layer_ARSUP.Inside"
SWEP.DistantShootSoundSilencedIndoor = "Distant_Pistol_Sup.Inside"
---------------------------------------------------

SWEP.EnterSightsSound = path .. "weap_pi_papa320_ads_up.ogg"
SWEP.ExitSightsSound = path .. "weap_pi_papa320_ads_down.ogg"

SWEP.BulletBones = {
    [1] = "j_bullet_01",
    [2] = "j_bullet_02",
	[3] = "j_bullet_03",
	[4] = "j_bullet_04",
}

SWEP.HideBones  = {
    [1] = "j_mag2",
}

SWEP.TriggerDelay = 0.025 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayCancellable = false
SWEP.TriggerDelayTime = 0.025 -- Time until weapon fires.

SWEP.TriggerDownSound = "weapons/cod2019/m19/weap_papa320_fire_first_plr_01.ogg"
SWEP.TriggerUpSound = "weapons/cod2019/m19/weap_papa320_disconnector_plr_01.ogg"

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
		MinProgress = 0.85,
		PeekProgress = 0.775,
		RefillProgress = 0.575,
		FireASAP = true,
		MagSwapTime = 3.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_pi_papa320_reload_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_magout_01.ogg", t = 9/30},
            {s = path .. "wfoly_plr_pi_papa320_reload_wiggle.ogg", t = 19/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_magin_v2_01.ogg", t = 27/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_magin_v2_02.ogg", t = 31/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_end.ogg", t = 36/30},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.9,
		PeekProgress = 0.775,
		RefillProgress = 0.75,
		FireASAP = true,
		DropMagAt = 0.8,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.75, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_magout_01.ogg", t = 10/30},
            {s = path .. "wfoly_plr_pi_papa320_reload_empty_regrip.ogg", t = 14/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_arm.ogg", t = 31/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_magin_v2_01.ogg", t = 32/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_magin_v2_02.ogg", t = 39/30},
            {s = path .. "wfoly_plr_pi_papa320_reload_empty_end.ogg", t = 49/30},
            {s = path .. "wfoly_plr_pi_papa320_reload_empty_charge_01.ogg", t = 49/30},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.8,
		PeekProgress = 0.75,
		RefillProgress = 0.525,
		FireASAP = true,
		MagSwapTime = 1.5,
		DropMagAt = 0.4,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.45, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_pi_papa320_reload_fast_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_fast_magout_01.ogg", t = 6/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_fast_arm.ogg", t = 11/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_fast_magin_01.ogg", t = 16/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_fast_end.ogg", t = 20/30},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.9,
		PeekProgress = 0.775,
		RefillProgress = 0.75,
		FireASAP = true,
		DropMagAt = 0.4,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_fast_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_fast_magout_01.ogg", t = 6/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_fast_arm.ogg", t = 12/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_fast_magin_01.ogg", t = 15/30},
            {s = path .. "wfoly_plr_pi_papa320_reload_empty_fast_charge_01.ogg", t = 24/30},
            {s = path .. "wfoly_plr_pi_papa320_reload_empty_fast_end.ogg", t = 29/30},
        },
    },
    ["reload_xmag"] = {
        Source = "reload_xmag",
		MinProgress = 0.85,
		PeekProgress = 0.775,
		RefillProgress = 0.575,
		FireASAP = true,
		MagSwapTime = 3.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_pi_papa320_reload_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_magout_01.ogg", t = 9/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_magin_v2_01.ogg", t = 24/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_magin_v2_02.ogg", t = 30/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_end.ogg", t = 33/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_wiggle.ogg", t = 36/30},
        },
    },
    ["reload_xmag_empty"] = {
        Source = "reload_xmag_empty",
		MinProgress = 0.9,
		PeekProgress = 0.775,
		RefillProgress = 0.75,
		FireASAP = true,
		DropMagAt = 0.8,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.75, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_magout_01.ogg", t = 8/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_arm.ogg", t = 13/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_regrip.ogg", t = 22/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_magin_v2_01.ogg", t = 31/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_magin_v2_02.ogg", t = 38/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_end.ogg", t = 47/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_charge_01.ogg", t = 48/30},
        },
    },
    ["reload_xmag_fast"] = {
        Source = "reload_xmag_fast",
		MinProgress = 0.8,
		PeekProgress = 0.75,
		RefillProgress = 0.525,
		FireASAP = true,
		MagSwapTime = 1.5,
		DropMagAt = 0.4,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.45, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_magout_01.ogg", t = 7/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_arm.ogg", t = 9/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_regrip.ogg", t = 12/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_magin_v2_01.ogg", t = 15/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_magin_v2_02.ogg", t = 18/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_end.ogg", t = 15/30},
        },
    },
    ["reload_xmag_fast_empty"] = {
        Source = "reload_xmag_fast_empty",
		MinProgress = 0.9,
		PeekProgress = 0.775,
		RefillProgress = 0.75,
		FireASAP = true,
		DropMagAt = 0.4,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_magout_01.ogg", t = 7/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_arm.ogg", t = 9/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_regrip.ogg", t = 12/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_magin_v2_01.ogg", t = 15/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_magin_v2_02.ogg", t = 18/30},
            {s = path .. "wfoly_plr_pi_papa320_reload_empty_end.ogg", t = 20/30},
			{s = path .. "wfoly_plr_pi_papa320_raise_first_close_01.ogg", t = 25/30},
        },
    },
    ["reload_xmaglrg"] = {
        Source = "reload_xmaglrg",
		MinProgress = 0.85,
		PeekProgress = 0.775,
		RefillProgress = 0.575,
		FireASAP = true,
		MagSwapTime = 3.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_pi_papa320_reload_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_magout_01.ogg", t = 9/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_magin_v2_01.ogg", t = 24/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_magin_v2_02.ogg", t = 30/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_end.ogg", t = 33/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_wiggle.ogg", t = 36/30},
        },
    },
    ["reload_xmaglrg_empty"] = {
        Source = "reload_xmaglrg_empty",
		MinProgress = 0.9,
		PeekProgress = 0.775,
		RefillProgress = 0.75,
		FireASAP = true,
		DropMagAt = 0.8,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.75, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_magout_01.ogg", t = 8/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_arm.ogg", t = 13/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_regrip.ogg", t = 22/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_magin_v2_01.ogg", t = 31/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_magin_v2_02.ogg", t = 38/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_end.ogg", t = 47/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_charge_01.ogg", t = 48/30},
        },
    },
    ["reload_xmaglrg_fast"] = {
        Source = "reload_xmaglrg_fast",
		MinProgress = 0.8,
		PeekProgress = 0.75,
		RefillProgress = 0.525,
		FireASAP = true,
		MagSwapTime = 1.5,
		DropMagAt = 0.4,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.45, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_magout_01.ogg", t = 7/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_arm.ogg", t = 9/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_regrip.ogg", t = 12/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_magin_v2_01.ogg", t = 15/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_magin_v2_02.ogg", t = 18/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_end.ogg", t = 15/30},
        },
    },
    ["reload_xmaglrg_fast_empty"] = {
        Source = "reload_xmaglrg_fast_empty",
		MinProgress = 0.9,
		PeekProgress = 0.775,
		RefillProgress = 0.75,
		FireASAP = true,
		DropMagAt = 0.4,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_magout_01.ogg", t = 7/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_arm.ogg", t = 9/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_regrip.ogg", t = 12/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_magin_v2_01.ogg", t = 15/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_magin_v2_02.ogg", t = 18/30},
            {s = path .. "wfoly_plr_pi_papa320_reload_empty_end.ogg", t = 20/30},
			{s = path .. "wfoly_plr_pi_papa320_raise_first_close_01.ogg", t = 25/30},
        },
    },
    ["ready"] = {
        Source = "draw",
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 0 },
            { t = 0.45, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_plr_pi_papa320_raise_first_start.ogg", t = 0/30},
            {s = path .. "wfoly_plr_pi_papa320_raise_first_open_01.ogg", t = 6/30},
			{s = path .. "wfoly_plr_pi_papa320_raise_first_close_01.ogg", t = 18/30},
			{s = path .. "wfoly_plr_pi_papa320_raise_first_end.ogg", t = 21/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
		MinProgress = 0.2,
        FireASAP = true,
        EventTable = {
            {s = path .. "wfoly_plr_pi_papa320_raise_up.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            {s = path .. "wfoly_plr_pi_papa320_drop_down.ogg", t = 0/30},
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
		NoStatAffectors = true
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
		Time = 0.25,
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
		NoStatAffectors = true
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
		Time = 1.25,
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
            {s = path .. "wfoly_pi_papa320_inspect_01.ogg", t = 1/30},
			{s = path .. "wfoly_pi_papa320_inspect_02.ogg", t = 35/30},
			{s = path .. "wfoly_pi_papa320_inspect_03.ogg", t = 62/30},
			{s = path .. "wfoly_pi_papa320_inspect_04.ogg", t = 113/30},
        },
    },
    ["bash"] = {
        Source = {"melee","melee2","melee3"},
    },
    ["enter_bipod"] = {
        Source = "jog_in",
    },
    ["exit_bipod"] = {
        Source = "jog_out",
    },
}

-------------------------- ATTACHMENTS

SWEP.Hook_TranslateAnimation = function (wep, anim)
    --local attached = self:GetElements()

    --------------------------------------------------------------------------
    if anim == "reload" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_xmag") then
        return "reload_xmag_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_xmag") then
        return "reload_xmag_fast_empty"
	--------------------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_xmaglrg") then
        return "reload_xmaglrg_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_xmaglrg") then
        return "reload_xmaglrg_fast_empty"
	--------------------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("perk_speedreload") and wep:HasElement("ammo_extend") then
        return "reload_xmag_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") and wep:HasElement("ammo_extend") then
        return "reload_xmag_fast_empty"
	--------------------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("perk_speedreload") then
        return "reload_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") then
        return "reload_fast_empty"
	--------------------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("mag_xmag") then
        return "reload_xmag"
    elseif anim == "reload_empty" and wep:HasElement("mag_xmag") then
        return "reload_xmag_empty"
	--------------------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("mag_xmaglrg") then
        return "reload_xmaglrg"
    elseif anim == "reload_empty" and wep:HasElement("mag_xmaglrg") then
        return "reload_xmaglrg_empty"
	--------------------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("ammo_extend") then
        return "reload_xmag"
    elseif anim == "reload_empty" and wep:HasElement("ammo_extend") then
        return "reload_xmag_empty"
	--------------------------------------------------------------------------
    end
	
    if anim == "idle_sprint" and wep:HasElement("perk_super_sprint") then
        return "super_sprint_idle"
    elseif anim == "enter_sprint" and wep:HasElement("perk_super_sprint") then 
        return "super_sprint_in"
    elseif anim == "exit_sprint" and wep:HasElement("perk_super_sprint") then 
        return "super_sprint_out"
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

SWEP.AttachmentTableOverrides = {
    ["cod2019_griptape_01"] = {
    Model = "models/weapons/cod2019/attachs/weapons/m19/attachment_vm_pi_papa320_pistolgrip_tape.mdl",
    },
    ["cod2019_griptape_02"] = {
    Model = "models/weapons/cod2019/attachs/weapons/m19/attachment_vm_pi_papa320_pistolgrip_tape.mdl",
    },
    ["cod2019_griptape_03"] = {
    Model = "models/weapons/cod2019/attachs/weapons/m19/attachment_vm_pi_papa320_pistolgrip_tape.mdl",
    },
    ["cod2019_trigger_light"] = {
    Model = "models/weapons/cod2019/attachs/weapons/m19/attachment_vm_pi_papa320_trigcust.mdl",
    },
    ["cod2019_trigger_heavy"] = {
    Model = "models/weapons/cod2019/attachs/weapons/m19/attachment_vm_pi_papa320_trigcust02.mdl",
    },
    ["cod2019_trigger_match"] = {
    Model = "models/weapons/cod2019/attachs/weapons/m19/attachment_vm_pi_papa320_trigcust03.mdl",
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
    ["mag"] = {
        Bodygroups = {
            {1,2},
        },
    },
    ["slide_none"] = {
        Bodygroups = {
            {2,1},
        },
    },
    ["sight_none"] = {
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
        Category = "cod2019_m19_slide",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(-3, 0, 0),
    },
    { -- 3
        PrintName = ARC9:GetPhrase("mw19_category_laser"),
		DefaultIcon = Material("entities/defattachs/laser-ar.png", "mips smooth"),
        Category = {"cod2019_tac_pistols","cod2019_grip_pistols"},
        Bone = "tag_laser_attach",
        Pos = Vector(0, 0, 0),
		InstalledElements = {"rail_laser"},
		RejectAttachments = { 
			["csgo_cod2019_angled"] = true,
			["csgo_cod2019_angled_tactical"] = true ,
		},
    },
    { -- 4
        PrintName = ARC9:GetPhrase("mw19_category_optic"),
		DefaultIcon = Material("entities/defattachs/optic.png", "mips smooth"),
        Bone = "tag_reflex",
        Pos = Vector(1, 0, 0),
        Category = {"cod2019_optics_pistols_alt"},
		InstalledElements = {"sight_none"},
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
        Category = {"cod2019_mag","cod2019_m19_mag"},
        Pos = Vector(0, 0, 0),
    },
    { -- 7
        PrintName = ARC9:GetPhrase("mw19_category_ammo"),
		DefaultIcon = Material("arc9/def_att_icons/ammotype.png", "mips smooth"),
        Bone = "tag_mag_attach",
		Category = {"cod2019_ammo"},
		Pos = Vector(-1, 0, 0),
    },
    { -- 8
        PrintName = ARC9:GetPhrase("mw19_category_reargrip"),
		DefaultIcon = Material("entities/defattachs/reargrip-ar.png", "mips smooth"),
        Category = "cod2019_pistolgrip",
        Bone = "tag_pistolgrip_attach",
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
        Category = "cod2019_m19_receiver",
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
        Category = "cod2019_skins_m19",
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
        StickerModel = "models/weapons/cod2019/stickers/pist_m19_decal_a.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(1, 0, 1.5),
    },
    { -- 14
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/pist_m19_decal_b.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(0, 0, 1.5),
    },
    { -- 15
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/pist_m19_decal_c.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-1, 0, 1.5),
		ExcludeElements = {"cod2019_m19_slide_ext", "cod2019_m19_slide_light"}
    },
    { -- 16
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/pist_m19_decal_d.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-2, 0, 1.5),
    },
    { -- 17
        PrintName = ARC9:GetPhrase("mw19_category_charm"),
        CosmeticOnly = true,
        Category = {"charm"},
        Bone = "tag_cosmetic",
        Pos = Vector(-0.5, 0, 0),
		Icon_Offset = Vector(-2.5, 0, 1.5),
		Scale = 1,
    },
    { -- 18
        PrintName = ARC9:GetPhrase("mw19_category_stats"),
        Category = "killcounter",
        Bone = "tag_weapon",
        Pos = Vector(-5, -0.6, 1.85),
		Icon_Offset = Vector(-4.85, 0.05, 2.3),
		CosmeticOnly = true,
    },
    { -- 19
        PrintName = ARC9:GetPhrase("mw19_category_view"),
        Category = "cod2019_pistols_view",
        Bone = "tag_cosmetic",
        Pos = Vector(-5, 0, 1),
		CosmeticOnly = false,
		ExcludeElements = {"stock"},
    },
}

SWEP.GripPoseParam = 4.6
SWEP.GripPoseParam2 = 0.6
SWEP.CodStubbyGripPoseParam = 23
SWEP.CodStubbyTallGripPoseParam = 23
SWEP.CodAngledGripPoseParam = 36

-- Warzone-esque Stats; Add here to change only when using Warzone Stats variable.
if GetConVar("arc9_mw19_stats_warzone"):GetBool() then

-------------------------- DAMAGE PROFILE
SWEP.DamageMax = 36
SWEP.DamageMin = 30

SWEP.RangeMin = 10 / ARC9.HUToM
SWEP.RangeMax = 19 / ARC9.HUToM

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 2,
    [HITGROUP_CHEST] = 1.175,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 0.925,
    [HITGROUP_RIGHTARM] = 0.925,
    [HITGROUP_LEFTLEG] = 0.925,
    [HITGROUP_RIGHTLEG] = 0.925,
}

-------------------------- PHYS BULLET BALLISTICS
SWEP.PhysBulletMuzzleVelocity = 360 / ARC9.HUToM

-------------------------- FIREMODES
SWEP.RPM = 333

-------------------------- HANDLING
SWEP.AimDownSightsTime = 0.15
SWEP.SprintToFireTime = 0.162

end
