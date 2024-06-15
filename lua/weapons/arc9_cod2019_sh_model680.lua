AddCSLuaFile()
if CLIENT then
    killicon.Add( "arc9_cod2019_sh_model680", "vgui/killicons/cod2019_sh_model680.png", Color(251, 85, 25, 255))
end

SWEP.LoadoutImage = "entities/loadout/arc9_cod2019_sh_model680.png"

SWEP.Base = "arc9_cod2019_base"

SWEP.CustomCrosshair = true
SWEP.CustomCrosshairMaterial = Material("hud/arc9_cod2019/shotguncrosshair")
SWEP.CustomCrosshairSize = 30

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_shotgun") or "Shotguns"

SWEP.PrintName = ARC9:GetPhrase("mw19_weapon_m680") or "Model 680"

SWEP.Class = ARC9:GetPhrase("mw19_class_weapon_shotgun") or "Shotgun"
SWEP.Trivia = {
    [ ARC9:GetPhrase("mw19_country") ] = ARC9:GetPhrase("mw19_country_usa"),
    [ ARC9:GetPhrase("mw19_manufacturer") ] = ARC9:GetPhrase("mw19_manufacturer_xrk"),
    [ ARC9:GetPhrase("mw19_caliber") ] = ARC9:GetPhrase("mw19_caliber_12gauge"),
    [ ARC9:GetPhrase("mw19_weight") ] = string.format(ARC9:GetPhrase("mw19_weight_val"), 3.2, 3.2 * 2.20),
    [ ARC9:GetPhrase("mw19_weight_projectile") ] = string.format(ARC9:GetPhrase("mw19_weight_projectile_val"), 493),
    -- [ ARC9:GetPhrase("mw19_muzzle_energy") ] = "1,433.73 ft/s",
    -- [ ARC9:GetPhrase("mw19_muzzle_velocity") ] = "3,051 joules"
}

SWEP.Credits = {
    [ ARC9:GetPhrase("mw19_author") ] = "Twilight Sparkle/Firmeteran",
    [ ARC9:GetPhrase("mw19_assets") ] = "Activision/Infinity Ward"
}

SWEP.Description = ARC9:GetPhrase("mw19_weapon_m680_desc") or [[Reliable, well-rounded 12 gauge pump-action shotgun.]]

SWEP.ViewModel = "models/weapons/cod2019/c_shot_model680.mdl"
SWEP.WorldModel = "models/weapons/w_shot_m3super90.mdl"
SWEP.DefaultBodygroups = "000000000000"

SWEP.Slot = 3

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_shot_model680.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-1, 3.5, -5.5),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-5, 5, -4),
    TPIKAng = Angle(-12.5, -1, 165),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 103 / 6 -- Damage done at point blank range
SWEP.DamageMin = 40 / 6 -- Damage done at maximum range

SWEP.Num = 6

SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 15 / ARC9.HUToM
SWEP.RangeMax = 20 / ARC9.HUToM

SWEP.Penetration = 5 -- Units of wood that can be penetrated by this gun.

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

SWEP.ManualAction = true
SWEP.NoLastCycle = true

SWEP.ManualAction = true
SWEP.ManualActionNoLastCycle = true

-------------------------- FIREMODES

SWEP.RPM = 175

SWEP.Firemodes = {
    {
        Mode = 1,
    },
}

-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 8

SWEP.RecoilSeed = 65947

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil

SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.3

SWEP.RecoilDissipationRate = 7.5 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 5 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 4

SWEP.RecoilMultCrouch = 0.8
SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.8

SWEP.RecoilPerShot = 3
SWEP.RecoilMax = 3

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilPunch = 2.5
SWEP.VisualRecoilUp = 1
SWEP.VisualRecoilSide = -0.1

SWEP.VisualRecoilMultSights = 0.3
SWEP.VisualRecoilPunchSights = 55

SWEP.VisualRecoilSpringPunchDamping = 11
SWEP.VisualRecoilDampingConst = 30
SWEP.VisualRecoilDampingConstSights = 50
SWEP.VisualRecoilSpringMagnitude = 1

SWEP.VisualRecoilDoingFunc = function(up, side, roll, punch, recamount)
    if recamount > 5 then
        recamount = 1.65 - math.Clamp((recamount - 2) / 3.5, 0, 1)
        
        local fakerandom = 1 + (((69+recamount%5*CurTime()%3)*2420)%4)/10 
        
        return up, side * fakerandom, roll, punch
    end

    return up, side, roll, punch
end

-------------------------- SPREAD

SWEP.Spread = 0.075

SWEP.SpreadAddRecoil = 0.01

SWEP.SpreadAddHipFire = SWEP.Spread * 0
SWEP.SpreadAddMove = SWEP.Spread * 0.2
SWEP.SpreadAddMidAir = SWEP.Spread * 0.5
SWEP.SpreadAddCrouch = -SWEP.Spread * 0.1
SWEP.SpreadAddSights = -SWEP.Spread * 0.1

SWEP.SpreadMultRecoil = 1.1
SWEP.RecoilModifierCap = SWEP.RecoilMax
SWEP.RecoilModifierCapMove = 0

-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.3 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.3 -- How long it takes to go from sprinting to being able to fire.

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.255

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 255, 155) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-3.18, -2.5, 0.4),
    Ang = Angle(0.95, 1, -5),
    Magnification = 1.1,
    ViewModelFOV = 56,
    CrosshairInSights = false
}

SWEP.ViewModelFOVBase = 64

SWEP.SprintPos = Vector(0, 0, -0.5)
SWEP.SprintAng = Angle(0, 0, 0)

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

SWEP.CrouchPos = Vector(-0.5, -0, -1)
SWEP.CrouchAng = Angle(0.6, 0.3, -5)

SWEP.CustomizeAng = Angle(90, 0, 2)
SWEP.CustomizePos = Vector(11, 42.5, 3)
SWEP.CustomizeRotateAnchor = Vector(11, -3.5, -4)
SWEP.CustomizeSnapshotFOV = 65
SWEP.CustomizeNoRotate = false
SWEP.CustomizeSnapshotPos = Vector(0, 30, 3)

SWEP.PeekPos = Vector(-0.5, 1.5, -4)
SWEP.PeekAng = Angle(0, 0.4, -45)

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

SWEP.MuzzleParticle = "muzzleflash_shotgun"
SWEP.AfterShotParticle = "AC_muzzle_smoke_barrel"
SWEP.TracerEffect = "cod2019_tracer_slow"
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 3
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_origin12.mdl"
SWEP.ShellSounds = ARC9.COD2019_Shotgun_Table
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 1.3
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)
SWEP.NoShellEject = true
SWEP.EjectDelay = 0.15

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.ShotgunReload = true

--SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_pist_50gs_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
--SWEP.DropMagazineSounds = {"physics/metal/weapon_impact_soft1.wav", "physics/metal/weapon_impact_soft2.wav", "physics/metal/weapon_impact_soft3.wav"}
SWEP.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_poly_concrete_01.ogg", 
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_poly_concrete_02.ogg", 
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_poly_concrete_03.ogg", 
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_poly_concrete_04.ogg", 
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_poly_concrete_05.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_poly_concrete_06.ogg", 
}
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineAng = Angle(0, -90, 0)
SWEP.DropMagazineQCA = 4

-------------------------- SOUNDS

local path = "weapons/cod2019/model680/"
local path2 = "weapons/cod2019/m13/"

SWEP.ShootSound = "COD2019.Model680.Fire"
SWEP.ShootSoundIndoor = "COD2019.Model680.Fire"

SWEP.ShootSoundSilenced = "COD2019.Model680.Fire.S"
SWEP.ShootSoundSilencedIndoor = "COD2019.Model680.Fire.S"

-- Non-Silenced Outside
SWEP.LayerSound = "Layer_Shotgun.Outside"
SWEP.DistantShootSound = "Distant_Shotgun.Outside"
-- Inside
SWEP.LayerSoundIndoor = "Layer_Shotgun.Inside"
SWEP.DistantShootSoundIndoor = "Distant_LMG.Inside"
---------------------------------------------------
-- Silenced Outside
SWEP.LayerSoundSilenced = "Layer_ARSUP.Outside"
SWEP.DistantShootSoundSilenced = "Distant_Shotgun2.Outside"
-- Inside
SWEP.LayerSoundSilencedIndoor = "Layer_ShotgunSUP.Inside"
SWEP.DistantShootSoundSilencedIndoor = "Distant_ShotgunSUP.Inside"
---------------------------------------------------

SWEP.EnterSightsSound = path .. "wfoly_sh_romeo870_ads_up.ogg"
SWEP.ExitSightsSound = path .. "wfoly_sh_romeo870_ads_down.ogg"

SWEP.TriggerDelay = 0.01 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayCancellable = false
SWEP.TriggerDelayTime = 0.01 -- Time until weapon fires.

SWEP.TriggerDownSound = "weapons/cod2019/origin12/weap_oscar12_fire_first_plr_01.ogg"
SWEP.TriggerUpSound = "weapons/cod2019/model680/weap_romeo870_disconnector_plr_01.ogg"

SWEP.HideBones  = {
    [1] = "j_shell",
    [2] = "j_shell_fired",
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
    ["cycle"] = {
        Source = "pump",
		--EjectAt = 0.2,
		MinProgress = 0.6,
		FireASAP = true,
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
        EventTable = {
            {s = "COD2019.Model680.Rechamber_A", t = 0},
			{s = "COD2019.Model680.Rechamber_B", t = 0.23},
        },
    },
    ["reload_start"] = {
        Source = "reload_start",
		RestoreAmmo = 1,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.2, lhik = 0, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sh_romeo870_reload_start_twist.ogg", t = 0.0},
			{s = path .. "wfoly_sh_romeo870_reload_start_shellin_01.ogg", t = 0.533},
        },
    },
    ["reload_insert"] = {
        Source = "reload_loop",
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 1 },
            { t = 1, lhik = 0, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_sh_romeo870_reload_loop_loadportstart.ogg", t = 0.0},
			{s = path .. "wfoly_sh_romeo870_reload_loop_loadportend.ogg", t = 0.3},
            {s = "COD2019.Model680.ShellIn", t = 0.333},
        },
    },
    ["reload_finish"] = {
        Source = "reload_end",
		MinProgress = 0.8,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 1 },
            { t = 0.5, lhik = 1, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_sh_romeo870_reload_end_turnover.ogg", t = 0.0},
        },
    },
    ["reload_finish_empty"] = {
        Source = "reload_end_empty",
		EjectAt = 0.4,
		MinProgress = 0.8,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 1 },
            { t = 0.5, lhik = 1, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sh_romeo870_reload_empty_start_twist.ogg", t = 0.0},
            {s = "COD2019.Model680.Rechamber_A", t = 0.367},
			{s = "COD2019.Model680.Rechamber_B", t = 0.6},
            {s = path .. "wfoly_sh_romeo870_reload_empty_start_end.ogg", t = 0.633},
            
        },
    },
    ["reload_start_fast"] = {
        Source = "reload_start_fast",
		RestoreAmmo = 1,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.2, lhik = 0, rhik = 0 },
        },
        EventTable = {
            {s = path .. "wfoly_sh_romeo870_reload_start_fast_twist.ogg", t = 0},
            {s = path .. "wfoly_sh_romeo870_reload_start_fast_shellin_01.ogg", t = 0.5},
        },
    },
    ["reload_insert_fast"] = {
        Source = "reload_loop_fast",
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 0 },
            { t = 1, lhik = 0, rhik = 0 },
        },
        EventTable = {
			{s = path .. "wfoly_sh_romeo870_reload_loop_loadportstart.ogg", t = 0},
            {s = "COD2019.Model680.ShellIn", t = 0.267},
        },
    },
    ["reload_finish_fast"] = {
        Source = "reload_end_fast",
		MinProgress = 0.8,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_sh_romeo870_reload_end_fast_twist.ogg", t = 0.0},
			{s = path .. "wfoly_sh_romeo870_reload_end_fast_shoulder.ogg", t = 0.533},
        },
    },
    ["reload_finish_empty_fast"] = {
        Source = "reload_end_empty_fast",
		EjectAt = 0.4,
		MinProgress = 0.8,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sh_romeo870_reload_end_fast_twist.ogg", t = 0.0},
			{s = "COD2019.Model680.Rechamber_A", t = 0.333},
			{s = "COD2019.Model680.Rechamber_B", t = 0.567},
        },
    },
    ["reload"] = {
        Source = "reload_mag_short",
		MinProgress = 0.95,
		RefillProgress = 0.75,
		PeekProgress = 0.9,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.1, lhik = 0, rhik = 1 },
            { t = 0.7, lhik = 0, rhik = 1 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
		MinProgress = 0.95,
		RefillProgress = 0.75,
		PeekProgress = 0.9,
		FireASAP = true,
        EventTable = {
			{s = path .. "wfoly_sh_romeo870_caldb_reload_raise.ogg", t = 0.133},
			{s = path .. "wfoly_sh_romeo870_caldb_reload_magout.ogg", t = 0.667},
			{s = path .. "wfoly_sh_romeo870_caldb_reload_magup.ogg", t = 1.133},
			{s = path .. "wfoly_sh_romeo870_caldb_reload_maghit.ogg", t = 1.533},
			{s = path .. "wfoly_sh_romeo870_caldb_reload_magin.ogg", t = 1.967},
			{s = path .. "wfoly_sh_romeo870_caldb_reload_end.ogg", t = 2.1},
        },
    },
    ["reload_empty"] = {
        Source = "reload_mag_empty",
		MinProgress = 0.95,
		RefillProgress = 0.775,
		PeekProgress = 0.9,
		FireASAP = true,
		DropMagAt = 1.1,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.125, lhik = 1, rhik = 1 },
            { t = 0.175, lhik = 0, rhik = 1 },
            { t = 0.65, lhik = 0, rhik = 1 },
            { t = 0.75, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_sh_romeo870_caldb_reload_empty_pump_foreend.ogg", t = 0.0},
			{s = path .. "wfoly_sh_romeo870_caldb_reload_empty_raise.ogg", t = 0.367},
			{s = path .. "wfoly_sh_romeo870_caldb_reload_empty_magout.ogg", t = 0.833},
			{s = path .. "wfoly_sh_romeo870_caldb_reload_empty_magup.ogg", t = 1.4},
			{s = path .. "wfoly_sh_romeo870_caldb_reload_empty_maghit.ogg", t = 1.7},
			{s = path .. "wfoly_sh_romeo870_caldb_reload_empty_magin.ogg", t = 2.2},
			{s = path .. "wfoly_sh_romeo870_caldb_reload_empty_chamber.ogg", t = 2.5},
			{s = path .. "wfoly_sh_romeo870_caldb_reload_empty_end.ogg", t = 3.0},
        },
    },
    ["reload_mag_fast"] = {
        Source = "reload_mag_fast_short",
		MinProgress = 0.9,
		RefillProgress = 0.7,
		PeekProgress = 0.825,
		FireASAP = true,
		DropMagAt = 0.6,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.1, lhik = 0, rhik = 1 },
            { t = 0.65, lhik = 0, rhik = 1 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_sh_romeo870_caldb_reload_fast_raise.ogg", t = 0.0},
			{s = path .. "wfoly_sh_romeo870_caldb_reload_fast_magout.ogg", t = 0.3},
			{s = path .. "wfoly_sh_romeo870_caldb_reload_fast_magup.ogg", t = 0.733},
			{s = path .. "wfoly_sh_romeo870_caldb_reload_fast_magin.ogg", t = 1.0},
			{s = path .. "wfoly_sh_romeo870_caldb_reload_fast_end.ogg", t = 1.467},
        },
    },
    ["reload_mag_empty_fast"] = {
        Source = "reload_mag_fast_empty",
		MinProgress = 0.95,
		RefillProgress = 0.775,
		PeekProgress = 0.9,
		FireASAP = true,
		DropMagAt = 0.8,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.125, lhik = 1, rhik = 1 },
            { t = 0.175, lhik = 0, rhik = 1 },
            { t = 0.65, lhik = 0, rhik = 1 },
            { t = 0.75, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_sh_romeo870_caldb_reload_empty_fast_pump_foreend.ogg", t = 0.033},
            {s = path .. "wfoly_sh_romeo870_caldb_reload_empty_fast_magout.ogg", t = 0.5},
            {s = path .. "wfoly_sh_romeo870_caldb_reload_empty_fast_magup.ogg", t = 1.067},
            {s = path .. "wfoly_sh_romeo870_caldb_reload_empty_fast_magin.ogg", t = 1.267},
            {s = path .. "wfoly_sh_romeo870_caldb_reload_empty_fast_chamber.ogg", t = 1.833},
			{s = path .. "wfoly_sh_romeo870_caldb_reload_empty_fast_end.ogg", t = 2.067},
        },
    },
    ["ready"] = {
        Source = "draw",
		MinProgress = 0.7,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 1 },
            { t = 0.5, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sh_romeo870_raise_first_lift.ogg", t = 0.0},
			{s = path .. "wfoly_sh_romeo870_raise_first_chamber_e.ogg", t = 0.2},
			{s = path .. "wfoly_sh_romeo870_raise_first_shoulder.ogg", t = 0.633},
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
            {s = path .. "wfoly_sh_romeo870_raise.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
		Mult = 0.8,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.5, lhik = 0, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sh_romeo870_drop.ogg", t = 0/30},
        },
    },
    ["idle"] = {
        Source = "idle",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
        },
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
    },
    ["super_sprint_in"] = {
        Source = "super_sprint_in",
		Time = 1,
    },
    ["super_sprint_out"] = {
        Source = "super_sprint_out",
		Time = 1,
    },
    ["inspect"] = {
        Source = "lookat01",
        MinProgress = 0.1,
        FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.1, lhik = 0, rhik = 1 },
            { t = 0.875, lhik = 0, rhik = 1 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sh_romeo870_inspect_01.ogg", t = 0.033},
			{s = path .. "wfoly_sh_romeo870_inspect_02.ogg", t = 1.5},
			{s = path .. "wfoly_sh_romeo870_inspect_03.ogg", t = 2.5},
			{s = path .. "wfoly_sh_romeo870_inspect_04.ogg", t = 3.667},
			{s = path .. "wfoly_sh_romeo870_inspect_05.ogg", t = 4.367},
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

--- 6-Round & 8-Round Mags, Fast and Tac. Sprint ---
local Translate_Mag_Fast = {
    ["reload"] = "reload_mag_fast",
    ["reload_empty"] = "reload_mag_empty_fast",
}
local Translate_Fast = {
    ["reload_start"] = "reload_start_fast",
    ["reload_insert"] = "reload_insert_fast",
    ["reload_finish"] = "reload_finish_fast",
    ["reload_finish_empty"] = "reload_finish_empty_fast",
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
    local mag = wep:HasElement("shot_mag")

    if super_sprint and Translate_TacSprint[anim] then
        return Translate_TacSprint[anim]
    end

    if speedload then
	    if mag then
            if Translate_Mag_Fast[anim] then
                return Translate_Mag_Fast[anim]
            end
        else
			if Translate_Fast[anim] then
				return Translate_Fast[anim]
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


SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(4, 0, -1.3),
	ModelAngleOffset = Angle(0, 0, 0),
	Scale = 0.8,
    },
    ["cod2019_griptape_01"] = {
		Model = "models/weapons/cod2019/attachs/weapons/model680/attachment_vm_sh_romeo870_pistolgrip_tape.mdl",
    },
    ["cod2019_griptape_02"] = {
		Model = "models/weapons/cod2019/attachs/weapons/model680/attachment_vm_sh_romeo870_pistolgrip_tape.mdl",
    },
    ["cod2019_griptape_03"] = {
		Model = "models/weapons/cod2019/attachs/weapons/model680/attachment_vm_sh_romeo870_pistolgrip_tape.mdl",
    },
    ["cod2019_etc_ammo_extend"] = {
		ClipSizeMult = 1.35,
    },
}

SWEP.AttachmentElements = {
    ["body_none"] = {
        Bodygroups = {
            {0,1},
        },
    },
    ["barrel_none"] = {
        Bodygroups = {
            {1,2},
        },
    },
    ["pump_rail"] = {
        Bodygroups = {
            {2,1},
        },
    },
    ["pump_none"] = {
        Bodygroups = {
            {2,2},
        },
    },
    ["rail_sight_none"] = {
        Bodygroups = {
            {3,1},
        },
    },
    ["front_sight_none"] = {
        Bodygroups = {
            {4,1},
        },
    },
    ["sight_none"] = {
        Bodygroups = {
            {4,1},
            {6,1},
        },
    },
    ["stock_adapter"] = {
        Bodygroups = {
            {5,1},
        },
    },
    ["stock_none"] = {
        Bodygroups = {
            {5,2},
        },
    },
    ["tag_laser"] = {
        Bodygroups = {
            {8,1},
        },
    },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model
    if wep:HasElement("pump_none") then model:SetBodygroup(2,2) end
    if wep:HasElement("stock_none") then model:SetBodygroup(5,2) end
end

SWEP.Attachments = {
    { -- 1
        PrintName = ARC9:GetPhrase("mw19_category_muzzle"),
        Category = "cod2019_muzzle_shot",
        DefaultIcon = Material("entities/defattachs/muzzle-ar.png", "mips smooth"),
		Bone = "tag_silencer",
        Pos = Vector(0, 0, 0),
		RejectAttachments = { ["cod2019_origin12_silencer"] = true },
    },
    { -- 2
        PrintName = ARC9:GetPhrase("mw19_category_barrel"),
		DefaultIcon = Material("entities/defattachs/barrel-ar.png", "mips smooth"),
        Category = "cod2019_model680_barrel",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(2.5, 0, 0.5),
		ExcludeElements = {"shot_mag"},
    },
    { -- 3
        PrintName = ARC9:GetPhrase("mw19_category_laser"),
		DefaultIcon = Material("entities/defattachs/laser-ar.png", "mips smooth"),
        Category = "cod2019_tac_rail_cylinder",
        Bone = "tag_laser_attach",
        Pos = Vector(-0.34, -1.34, 0),
        Ang = Angle(0, 0, 0),
    },
    { -- 4
        PrintName = ARC9:GetPhrase("mw19_category_optic"),
		DefaultIcon = Material("entities/defattachs/optic.png", "mips smooth"),
        Bone = "tag_holo",
        Pos = Vector(0.5, 0, -0.1),
		CorrectiveAng = Angle(2, 0.1, 0),
        Category = {"cod2019_optic","cod2019_model680_optic"},
		InstalledElements = {"sight_none"},
    },
    { -- 5
        PrintName = ARC9:GetPhrase("mw19_category_stock"),
		DefaultIcon = Material("entities/defattachs/stock-ar.png", "mips smooth"),
        Category = {"cod2019_model680_stock","cod2019_tube"},
        Bone = "tag_stock_attach",
        Pos = Vector(0, 0, 0),
    },
    { -- 6
        PrintName = ARC9:GetPhrase("mw19_category_underbarrel"),
		DefaultIcon = Material("entities/defattachs/grip.png", "mips smooth"),
        Category = "cod2019_grip",
        Bone = "tag_grip_attach",
        Pos = Vector(-3, 0, 0),
        Ang = Angle(0, 0, 180),
		InstalledElements = {"pump_rail"},
    },
    { -- 7
        PrintName = ARC9:GetPhrase("mw19_category_pumpgrip"),
        Category = "cod2019_model680_pump",
        Bone = "tag_guard_attach",
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(6.3, 0, -0.7),
    },
    { -- 8
        PrintName = ARC9:GetPhrase("mw19_category_magazine"),
		DefaultIcon = Material("entities/defattachs/magazine-ar.png", "mips smooth"),
		Bone = "tag_mag_attach",
        Category = {"cod2019_mag","cod2019_model680_mag"},
        Pos = Vector(0, 0, 0),
		InstalledElements = {"nobarrel"},
		-- ExcludeElements = {"cod2019_model680_barrel_mid"},
    },
    { -- 9
        PrintName = ARC9:GetPhrase("mw19_category_ammo"),
		DefaultIcon = Material("arc9/def_att_icons/ammotype.png", "mips smooth"),
        Bone = "tag_mag_attach",
		Category = {"cod2019_ammo_sg"},
		Pos = Vector(-1.5, 0, 0),
    },
    { -- 10
        PrintName = ARC9:GetPhrase("mw19_category_reargrip"),
		DefaultIcon = Material("entities/defattachs/reargrip-ar.png", "mips smooth"),
        Category = "cod2019_pistolgrip",
        Bone = "tag_pistolgrip_attach",
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(0.25, 0, 1),
		ExcludeElements = {"stock_wood","stock_adapter"},
    },
    { -- 11
        PrintName = ARC9:GetPhrase("mw19_category_perk"),
        Category = {"cod2019_perks","cod2019_perks_soh","cod2019_perks_shot","cod2019_perks_ss"},
        Bone = "tag_attachments",
        Pos = Vector(1.5, 0, -1.5),
    },
	
	-- Unofficial
    { -- 12
        PrintName = ARC9:GetPhrase("mw19_category_receiver"),
        Category = "cod2019_model680_receiver",
        Bone = "tag_attachments",
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(3.5, 0, -1),
		Hidden = false,
    },
	
	-- Cosmetics
    { -- 13
        PrintName = ARC9:GetPhrase("mw19_category_skins"),
        Bone = "tag_cosmetic",
        Pos = Vector(7, 0, 3),
        Category = "cod2019_skins_model680",
		CosmeticOnly = true,
    },
    { -- 14
        PrintName = ARC9:GetPhrase("mw19_category_camouflage"),
        Category = {"universal_camo"},
        Bone = "tag_cosmetic",
        Pos = Vector(5, 0, 3),
        CosmeticOnly = true,
    },
    { -- 15
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/shot_model680_decal_a.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(3, 0, 3),
    },
    { -- 16
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/shot_model680_decal_b.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(1, 0, 3),
    },
    { -- 17
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/shot_model680_decal_c.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-1, 0, 3),
    },
    { -- 18
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/shot_model680_decal_d.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-3, 0, 3),
    },
    { -- 19
        PrintName = ARC9:GetPhrase("mw19_category_charm"),
        CosmeticOnly = true,
        Category = {"charm"},
        Bone = "tag_cosmetic",
        Pos = Vector(3, 0, 0),
		Icon_Offset = Vector(-5, 0, 3),
		Scale = 1.5,
    },
    { -- 20
        PrintName = ARC9:GetPhrase("mw19_category_stats"),
        Category = {"killcounter","killcounter2"},
        Bone = "tag_cosmetic",
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(-8.5, 0, 4),
		CosmeticOnly = true,
    },
}

SWEP.GripPoseParam = 4.3
SWEP.GripPoseParam2 = 0.7
SWEP.CodAngledGripPoseParam = 0
SWEP.CodStubbyGripPoseParam = 26
SWEP.CodStubbyTallGripPoseParam = 26

-- Warzone-esque Stats; Add here to change only when using Warzone Stats variable.
if GetConVar("arc9_mw19_stats_warzone"):GetBool() then
-------------------------- DAMAGE PROFILE
SWEP.DamageMax = 51
SWEP.DamageMin = 18

SWEP.Num = 8

SWEP.RangeMin = 3.3 / ARC9.HUToM
SWEP.RangeMax = 15.7 / ARC9.HUToM

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 1.01,
    [HITGROUP_CHEST] = 1.01,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 0.975,
    [HITGROUP_RIGHTARM] = 0.975,
    [HITGROUP_LEFTLEG] = 0.775,
    [HITGROUP_RIGHTLEG] = 0.775,
}

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 300 / ARC9.HUToM

-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.35 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.25 -- How long it takes to go from sprinting to being able to fire.

end
