AddCSLuaFile()
if CLIENT then
    killicon.Add( "arc9_cod2019_lm_pkm", "vgui/killicons/cod2019_lm_pkm.png", Color(251, 85, 25, 255))
end


SWEP.LoadoutImage = "entities/loadout/arc9_cod2019_lm_pkm.png"

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.NotForNPCs = false
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_lmg") or "Light Machine Guns"
SWEP.ARC9WeaponCategory = 4

SWEP.PrintName = ARC9:GetPhrase("mw19_weapon_pkm") or "PKM"

SWEP.Class = ARC9:GetPhrase("mw19_class_weapon_lmg") or "Light Machine Gun"
SWEP.Trivia = {
    [ ARC9:GetPhrase("mw19_country") ] = ARC9:GetPhrase("mw19_country_sovietunion"),
    [ ARC9:GetPhrase("mw19_caliber") ] = ARC9:GetPhrase("mw19_caliber_762mmr"),
    [ ARC9:GetPhrase("mw19_weight") ] = string.format(ARC9:GetPhrase("mw19_weight_val"), 9.2, 9.2 * 2.20),
    [ ARC9:GetPhrase("mw19_weight_projectile") ] = string.format(ARC9:GetPhrase("mw19_weight_projectile_val"), 181),
}

SWEP.Credits = {
    [ ARC9:GetPhrase("mw19_author") ] = "Twilight Sparkle/Firmeteran",
    [ ARC9:GetPhrase("mw19_assets") ] = "Activision/Infinity Ward"
}

SWEP.Description = ARC9:GetPhrase("mw19_weapon_pkm_desc") or [[Fully automatic light machine gun firing 7.62mm ammunition for high damage at a moderate fire rate.]]

SWEP.ViewModel = "models/weapons/cod2019/c_lmg_pkm.mdl"
SWEP.WorldModel = "models/weapons/cod2019/w_lmg_pkm.mdl"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_lmg_pkm.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-5, 4.25, -7.25),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-10, 5.5, -4),
    TPIKAng = Angle(-12.5, -1, 165),
    Scale = 1,
	
	TPIKPosSightOffset = Vector(3, 1, -1),
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 34 -- Damage done at point blank range
SWEP.DamageMin = 27 -- Damage done at maximum range

SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 30 / ARC9.HUToM
SWEP.RangeMax = 55 / ARC9.HUToM

SWEP.Penetration = 15 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.15

SWEP.ImpactForce = 12

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

SWEP.PhysBulletMuzzleVelocity = 825 / ARC9.HUToM
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.5

-------------------------- MAGAZINE

SWEP.Ammo = "ar2" -- What ammo type this gun uses.

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 100 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 10 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 750

SWEP.Firemodes = {
    {
        Mode = -1,
    },
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1.6

SWEP.RecoilSeed = 675846694

SWEP.RecoilPatternDrift = 5

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 0.7 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.1
SWEP.RecoilRandomSide = 0.2

SWEP.RecoilDissipationRate = 10 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 0.5 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 2

SWEP.RecoilMultCrouch = 0.8

SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.9

SWEP.RecoilMax = 3
SWEP.RecoilPerShot = 1

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilMultSights = 0.4
SWEP.VisualRecoilPunchSights = 15
SWEP.VisualRecoilRollSights = 5
SWEP.VisualRecoilSideSights = 0
SWEP.VisualRecoilUpSights = 0

SWEP.VisualRecoilPunch = 3
SWEP.VisualRecoilUp = 0.5
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

SWEP.AimDownSightsTime = 0.42 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.375 -- How long it takes to go from sprinting to being able to fire.

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.4

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 255, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-3.76, -3.5, 0.65),
    Ang = Angle(0.05, 0, 2),
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

SWEP.MovingPos = Vector(-1, -0.8, -1)
SWEP.MovingAng = Angle(0, 0, -10)

SWEP.CrouchPos = Vector(-1, -0.5, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.SprintPos = Vector(1, 0, -1)
SWEP.SprintAng = Angle(0, 0, 25)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(18, 50, 5)
SWEP.CustomizeRotateAnchor = Vector(18, -4, -4)
SWEP.CustomizeSnapshotFOV = 65
SWEP.CustomizeSnapshotPos = Vector(-1.5, 55, 0)
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeNoRotate = false

SWEP.PeekPos = Vector(2, 2, -1)
SWEP.PeekAng = Angle(0, 0, 5)

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

SWEP.MuzzleParticle = "muzzleflash_lmg"
SWEP.AfterShotParticle = "barrel_smoke"
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 4
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_762_hr.mdl"
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 0.065
SWEP.ShellPhysBox = Vector(1, 1, 1)
SWEP.ShellSounds = ARC9.COD2019_556_Table

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_lmg_pkm_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
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
SWEP.DropMagazineAng = Angle(0, -90, -90)

--SWEP.DropMagazineSounds = {}
--SWEP.DropMagazinePos = Vector(0, 0, 0)
--SWEP.DropMagazineAng = Angle(180, 90, 0)
--SWEP.DropMagazineVelocity = Vector(-40, 30, 0)

-------------------------- SOUNDS

local path = "weapons/cod2019/pkm/"

SWEP.ShootSound = "COD2019.PKM.Fire"
SWEP.ShootSoundIndoor = "COD2019.PKM.Fire"

SWEP.ShootSoundSilenced = "COD2019.PKM.Fire.S"
SWEP.ShootSoundSilencedIndoor = "COD2019.PKM.Fire.S"

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

SWEP.EnterSightsSound = path .. "wfoly_lm_pkilo_ads_up.ogg"
SWEP.ExitSightsSound = path .. "wfoly_lm_pkilo_ads_down.ogg"

SWEP.BulletBones = {
    [8] = "j_b_01",
    [7] = "j_b_02",
    [6] = "j_b_03",
    [5] = "j_b_04",
	[4] = "j_b_05",
	[3] = "j_b_06",
	[2] = "j_b_07",
	[1] = "j_b_08",
}

SWEP.HideBones = {
    [1] = "j_mag2",
}

SWEP.ReloadHideBoneTables = {
    [1] = {
        "j_mag2",
    },
	[2] = {
        "j_mag2",
		"j_mag1",
		"j_mag1_rattler",
		"j_ammoboxflap",
		"j_box_lever",
		"j_b_01",
		"j_b_02",
		"j_b_03",
		"j_b_04",
		"j_b_05",
		"j_b_06",
		"j_b_07",
		"j_b_08",
		"j_b_09",
		"j_b_10",
		"j_b_11",
		"j_b_12",
		"j_b_13",
		"j_b_14",
		"j_b_15",
		"j_b_16"
    },
	[3] = {
        "j_mag2",
		"j_b_09",
		"j_b_10",
		"j_b_11",
		"j_b_12",
		"j_b_13",
		"j_b_14",
		"j_b_15",
		"j_b_16"
    },
}

SWEP.TriggerDelay = 0.15 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayCancellable = false
SWEP.TriggerDelayTime = 0.15 -- Time until weapon fires.

SWEP.TriggerDownSound = path .. "weap_pkilo_prefire_plr_01.ogg"
SWEP.TriggerUpSound = ""

SWEP.Overheat = true
SWEP.HeatCapacity = 65
SWEP.HeatDissipation = 22.5
SWEP.HeatDelayTime = 0.25
SWEP.HeatPerShot = 1
SWEP.HeatLockout = false
SWEP.MalfunctionWait = 0.25

SWEP.Animations = {
    ["fire"] = {
        Source = "shoot1",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
    },
    ["reload"] = {
        Source = "reload_short",
		MinProgress = 0.95,
		FireASAP = true,
		RefillProgress = 0.775,
		MagSwapTime = 3,
		DropMagAt = 3.7,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.175, lhik = 1, rhik = 0 },
            { t = 0.225, lhik = 0, rhik = 0 },
            { t = 0.275, lhik = 0, rhik = 0 },
            { t = 0.325, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_lift.ogg", t = 0/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_charge.ogg", t = 21/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_cover_open.ogg", t = 39/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_magout.ogg", t = 99/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_lift.ogg", t = 116/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_magin_v2_01.ogg", t = 144/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_magin_v2_02.ogg", t = 163/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_ammobelt.ogg", t = 168/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_cover_close.ogg", t = 202/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_load_charge.ogg", t = 221/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_end.ogg", t = 244/30},
			{hide = 1, t = 0},
			{hide = 2, t = 3.7},
			{hide = 1, t = 4.5},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.95,
		FireASAP = true,
		RefillProgress = 0.8,
		MagSwapTime = 3.5,
		DropMagAt = 3.7,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 1, rhik = 0 },
            { t = 0.25, lhik = 0, rhik = 0 },
            { t = 0.275, lhik = 0, rhik = 0 },
            { t = 0.325, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_lift.ogg", t = 0/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_charge.ogg", t = 21/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_cover_open.ogg", t = 39/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_magout.ogg", t = 99/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_lift.ogg", t = 116/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_magin_v2_01.ogg", t = 144/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_magin_v2_02.ogg", t = 163/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_ammobelt.ogg", t = 168/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_cover_close.ogg", t = 202/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_load_charge.ogg", t = 221/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_end.ogg", t = 244/30},
			{hide = 3, t = 0},
			{hide = 2, t = 3.7},
			{hide = 1, t = 4.5},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.95,
		FireASAP = true,
		RefillProgress = 0.845,
		MagSwapTime = 3.5,
		DropMagAt = 2.8,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 1, rhik = 0 },
            { t = 0.25, lhik = 0, rhik = 0 },
            { t = 0.275, lhik = 0, rhik = 0 },
            { t = 0.325, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_lm_pkilo_reload_fast_raise.ogg", t = 1/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_fast_charge.ogg", t = 14/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_fast_cover_open.ogg", t = 38/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_fast_magout.ogg", t = 64/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_fast_magin_v2_01.ogg", t = 93/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_fast_magin_v2_02.ogg", t = 105/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_fast_ammobelt.ogg", t = 107/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_fast_cover_close.ogg", t = 136/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_fast_load_charge.ogg", t = 151/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_fast_end.ogg", t = 177/30},
			{hide = 1, t = 0},
			{hide = 2, t = 2.8},
			{hide = 1, t = 3},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.95,
		FireASAP = true,
		RefillProgress = 0.8,
		MagSwapTime = 3.5,
		DropMagAt = 2.8,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 1, rhik = 0 },
            { t = 0.25, lhik = 0, rhik = 0 },
            { t = 0.275, lhik = 0, rhik = 0 },
            { t = 0.325, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_fast_raise.ogg", t = 2/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_fast_charge.ogg", t = 13/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_fast_cover_open.ogg", t = 37/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_fast_magout.ogg", t = 68/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_fast_magin_v2_01.ogg", t = 95/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_fast_magin_v2_02.ogg", t = 105/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_fast_ammobelt.ogg", t = 111/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_fast_cover_close.ogg", t = 137/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_fast_load_charge.ogg", t = 151/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_fast_end.ogg", t = 173/30},
			{hide = 3, t = 0},
			{hide = 2, t = 2.8},
			{hide = 1, t = 3},
        },
    },
    ["ready"] = {
        Source = "draw",
		MinProgress = 0.7,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.95, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_plr_lm_pkilo_raise_first_lift.ogg", t = 0/30},
            {s = path .. "wfoly_plr_lm_pkilo_raise_first_handle.ogg", t = 22/30},
			{s = path .. "wfoly_plr_lm_pkilo_raise_first_charge.ogg", t = 33/30},
			{s = path .. "wfoly_plr_lm_pkilo_raise_first_rattle.ogg", t = 33/30},
			{s = path .. "wfoly_plr_lm_pkilo_raise_first_end.ogg", t = 56/30},
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
            {s = path .. "wfoly_plr_lm_pkilo_raise.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.35, lhik = 1, rhik = 1 },
            { t = 0.65, lhik = 0, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_plr_lm_pkilo_drop.ogg", t = 0/30},
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
		MinProgress = 0.9,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.025, lhik = 1, rhik = 0 },
            { t = 0.15, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_lm_pkilo_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_lm_pkilo_inspect_02.ogg", t = 55/30},
			{s = path .. "wfoly_lm_pkilo_inspect_03.ogg", t = 113/30},
        },
    },
    ["bash"] = {
        Source = {"melee","melee2","melee3"},
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 1, rhik = 1 },
        },
    },
    ["jam"] = {
        Source = "jam",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 1, rhik = 1 },
        },
    },
    ["fix"] = {
        Source = "jam_fix",
		EjectAt = 0.6,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_lift.ogg", t = 0/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_charge.ogg", t = 8/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_cover_open.ogg", t = 14/30},
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

    if super_sprint and Translate_TacSprint[anim] then
        return Translate_TacSprint[anim]
    end

    if speedload then
        if Translate_Fast[anim] then
            return Translate_Fast[anim]
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
    ModelOffset = Vector(17, -0.2, -0.75),
	ModelAngleOffset = Angle(0, 0, 0),
	Scale = 0.9,
    },
    ["go_grip_angled"] = {
    ModelOffset = Vector(0, 0, 0.1),
    },
    ["cod2019_griptape_01"] = {
    Model = "models/weapons/cod2019/attachs/weapons/pkm/attachment_vm_lm_pkilo_pistolgrip_tape.mdl",
    },
    ["cod2019_griptape_02"] = {
    Model = "models/weapons/cod2019/attachs/weapons/pkm/attachment_vm_lm_pkilo_pistolgrip_tape.mdl",
    },
    ["cod2019_griptape_03"] = {
    Model = "models/weapons/cod2019/attachs/weapons/pkm/attachment_vm_lm_pkilo_pistolgrip_tape.mdl",
    },
	["cod2019_optic_reflex_west05_hybrid"] = { ModelOffset = Vector(-3.5, 0, 0.1) },
	["cod2019_optic_hybrid_west02"] = { ModelOffset = Vector(-2.5, 0, 0.1) },
	["cod2019_optic_hybrid_west02_thermal"] = { ModelOffset = Vector(-2.5, 0, 0.1) },
	["cod2019_optic_raal_scope"] = { ModelOffset = Vector(-2.5, 0, 0.1) },
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
    ["stock_adapter"] = {
        Bodygroups = {
            {4,1},
        },
    },    
	["stock_none"] = {
        Bodygroups = {
            {4,2},
        },
    },
	["sight_back_none"] = {
        Bodygroups = {
            {5,1},
        },
    },
	["bullet_none"] = {
        Bodygroups = {
            {6,1},
        },
    },
	["grip_none"] = {
        Bodygroups = {
            {7,1},
        },
    },
	["sight_front_none"] = {
        Bodygroups = {
            {8,1},
        },
    },
    ["barrel_extra_none"] = {
        Bodygroups = {
            {9,1},
        },
    },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model
    if wep:HasElement("cod2019_pkm_grip_bipod") then 
		model:SetBodygroup(7, 0)
	end
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
        Category = "cod2019_pkm_barrel",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
    },
    { -- 3
        PrintName = ARC9:GetPhrase("mw19_category_laser"),
		DefaultIcon = Material("entities/defattachs/laser-ar.png", "mips smooth"),
        Category = "cod2019_tac_rail_cylinder",
        Bone = "tag_laser_attach",
        Pos = Vector(-0.34, -1.34, 0),
    },
    { -- 4
        PrintName = ARC9:GetPhrase("mw19_category_optic"),
		DefaultIcon = Material("entities/defattachs/optic.png", "mips smooth"),
        Category = {"cod2019_optic", "cod2019_optic_big"},
        Bone = "tag_holo",
        Pos = Vector(1.8, 0, -0.1),
		InstalledElements = {"sight_back_none","sight_front_none"},
    },
    { -- 5
        PrintName = ARC9:GetPhrase("mw19_category_stock"),
		DefaultIcon = Material("entities/defattachs/stock-ar.png", "mips smooth"),
        Category = {"cod2019_tube","cod2019_pkm_stock"},
        Bone = "tag_stock_attach",
        Pos = Vector(0, 0, 0),
		InstalledElements = {"stock_adapter"},
    },
    { -- 6
        PrintName = ARC9:GetPhrase("mw19_category_underbarrel"),
		DefaultIcon = Material("entities/defattachs/grip.png", "mips smooth"),
        Category = {"cod2019_grip", "cod2019_pkm_bipod"},
        Bone = "tag_grip_attach",
        Pos = Vector(-2.5, 0, 0),
        Ang = Angle(0, 0, 180),
		InstalledElements = {"grip_none"},
		MergeSlots = {21, 22}, -- Bipod, Side Grips
    },
    { -- 7
        PrintName = ARC9:GetPhrase("mw19_category_magazine"),
		DefaultIcon = Material("entities/defattachs/magazine-ar.png", "mips smooth"),
		Bone = "tag_mag_attach",
        Category = {"cod2019_pkm_mag","cod2019_mag"},
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
        Pos = Vector(3, 0, 1),
    },
	
	-- Unofficial
    { -- 11
        PrintName = ARC9:GetPhrase("mw19_category_receiver"),
        Category = "cod2019_pkm_receiver",
        Bone = "tag_attachments",
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(4.5, 0, 1),
		Hidden = false,
    },
	
	-- Cosmetics
    { -- 12
        PrintName = ARC9:GetPhrase("mw19_category_skins"),
        Bone = "tag_cosmetic",
        Pos = Vector(15, 0, 3),
        Category = "cod2019_skins_pkm",
		CosmeticOnly = true,
    },
    { -- 13
        PrintName = ARC9:GetPhrase("mw19_category_camouflage"),
        Category = {"universal_camo"},
        Bone = "tag_cosmetic",
        Pos = Vector(13, 0, 3),
        CosmeticOnly = true,
    },
    { -- 14
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/lmg_pkm_decal_a.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(11, 0, 3),
    },
    { -- 15
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/lmg_pkm_decal_b.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(9, 0, 3),
    },
    { -- 16
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/lmg_pkm_decal_c.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(7, 0, 3),
    },
    { -- 17
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/lmg_pkm_decal_d.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(5, 0, 3),
    },
    { -- 18
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/lmg_pkm_decal_e.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(3, 0, 3),
    },
    { -- 19
        PrintName = ARC9:GetPhrase("mw19_category_charm"),
        CosmeticOnly = true,
        Category = {"charm"},
        Bone = "tag_cosmetic",
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(0.5, 0, 3.25),
		Scale = 1.3,
    },
    { -- 20
        PrintName = ARC9:GetPhrase("mw19_category_stats"),
        Category = {"killcounter","killcounter2"},
        Bone = "tag_cosmetic",
        Pos = Vector(-1.5, 0, -0.5),
		Icon_Offset = Vector(0.5, 0, 3.5),
		CosmeticOnly = true,
		RejectAttachments = {["arc9_stat_proscreen_main"] = true},
    },
    { -- 21
        PrintName = "Bipod",
        Category = {"cod2019_pkm_bipod"},
        Bone = "tag_bipod_attach",
        Pos = Vector(0, 0, 0),
		Hidden = true,
    },
    { -- 22
        PrintName = "Side Grips",
        Category = {"cod2019_grips_side"},
        Bone = "tag_grip_attach",
        Pos = Vector(0, -1, 1.8),
        Ang = Angle(0, 0, 180),
		InstalledElements = {"grip_none","grip_side"},
		Hidden = true,
    },
}

SWEP.GripPoseParam = 5
SWEP.GripPoseParam2 = 0.5
SWEP.CodAngledGripPoseParam = 40
SWEP.CodStubbyTallGripPoseParam = 22
SWEP.CodStubbyGripPoseParam = 26

-- Warzone-esque Stats; Add here to change only when using Warzone Stats variable.
if GetConVar("arc9_mw19_stats_warzone"):GetBool() then

-------------------------- DAMAGE PROFILE
SWEP.DamageMax = 32 -- Damage done at point blank range
SWEP.DamageMin = 28 -- Damage done at maximum range

SWEP.RangeMin = 36 / ARC9.HUToM
SWEP.RangeMax = 37 / ARC9.HUToM

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

SWEP.PhysBulletMuzzleVelocity = 825 / ARC9.HUToM

-------------------------- FIREMODES

SWEP.RPM = 750

-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.42 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.25 -- How long it takes to go from sprinting to being able to fire.

end
