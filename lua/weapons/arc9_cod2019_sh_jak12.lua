AddCSLuaFile()
if CLIENT then
    killicon.Add( "arc9_cod2019_sh_jak12", "vgui/killicons/cod2019_sh_jak12.png", Color(251, 85, 25, 255))
end

SWEP.LoadoutImage = "entities/loadout/arc9_cod2019_sh_jak12.png"

SWEP.Base = "arc9_cod2019_base"

SWEP.CustomCrosshair = true
SWEP.CustomCrosshairMaterial = Material("hud/arc9_cod2019/shotguncrosshair")
SWEP.CustomCrosshairSize = 30

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_shotgun") or "Shotguns"

SWEP.PrintName = ARC9:GetPhrase("mw19_weapon_aa12") or "JAK-12"

SWEP.Class = ARC9:GetPhrase("mw19_class_weapon_shotgun") or "Shotgun"
SWEP.Trivia = {
    [ ARC9:GetPhrase("mw19_country") ] = ARC9:GetPhrase("mw19_country_usa"),
    [ ARC9:GetPhrase("mw19_manufacturer") ] = ARC9:GetPhrase("mw19_manufacturer_xrk"),
    [ ARC9:GetPhrase("mw19_caliber") ] = ARC9:GetPhrase("mw19_caliber_12gauge"),
    [ ARC9:GetPhrase("mw19_weight") ] = string.format(ARC9:GetPhrase("mw19_weight_val"), 5.5, 5.5 * 2.20),
    [ ARC9:GetPhrase("mw19_weight_projectile") ] = string.format(ARC9:GetPhrase("mw19_weight_projectile_val"), 493),
    -- [ ARC9:GetPhrase("mw19_muzzle_energy") ] = "1,100 ft/s",
    -- [ ARC9:GetPhrase("mw19_muzzle_velocity") ] = "1,796 joules"
}

SWEP.Credits = {
    [ ARC9:GetPhrase("mw19_author") ] = "Twilight Sparkle/Firmeteran",
    [ ARC9:GetPhrase("mw19_assets") ] = "Activision/Infinity Ward"
}

SWEP.Description = ARC9:GetPhrase("mw19_weapon_aa12_desc") or [[Fully automatic open bolt shotgun with a recoil reducing gas blowback system. This combat shotgun unloads high volumes of lead down range at a steady rate.]]

SWEP.ViewModel = "models/weapons/cod2019/c_shot_jak12.mdl"
SWEP.WorldModel = "models/weapons/cod2019/w_shot_jak12.mdl"

SWEP.Slot = 3

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_shot_jak12.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-3, 3, -7.25),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-5, 5, -3),
    TPIKAng = Angle(-12.5, -1, 165),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 60 / 6 -- Damage done at point blank range
SWEP.DamageMin = 35 / 6 -- Damage done at maximum range
SWEP.DistributeDamage = false

SWEP.Num = 6

SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 10 / ARC9.HUToM
SWEP.RangeMax = 15 / ARC9.HUToM

SWEP.Penetration = 1 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.1

SWEP.ImpactForce = 6.5

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 1710.76 * 12
SWEP.PhysBulletGravity = 2
SWEP.PhysBulletDrag = 3

SWEP.RicochetChance = 0

-------------------------- MAGAZINE

SWEP.Ammo = "buckshot" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 8 -- Self-explanatory.
SWEP.SupplyLimit = 12 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 2 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true
SWEP.ForceStandardCrosshair = true

SWEP.CustomCrosshair = true
SWEP.CustomCrosshairMaterial = Material("hud/arc9_cod2019/shotguncrosshair")
SWEP.CustomCrosshairSize = 30

-------------------------- FIREMODES

SWEP.RPM = 300

SWEP.Firemodes = {
    {
        Mode = -1,
    },
}

-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 2

SWEP.RecoilSeed = 1158

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 2 -- Multiplier for vertical recoil

SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.3

SWEP.RecoilDissipationRate = 10 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 5 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 3

SWEP.RecoilMultCrouch = 0.8
SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.9

SWEP.RecoilPerShot = 1
SWEP.RecoilMax = 3

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilMultSights = 0.5
SWEP.VisualRecoilPunchSights = 75
SWEP.VisualRecoilPunch = 5
SWEP.VisualRecoilUp = 0
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

SWEP.Spread = 0.075

SWEP.SpreadAddRecoil = 0.01

SWEP.SpreadAddHipFire = SWEP.Spread * 0
SWEP.SpreadAddMove = SWEP.Spread * 0.2
SWEP.SpreadAddMidAir = SWEP.Spread * 0.5
SWEP.SpreadAddCrouch = -SWEP.Spread * 0.1
SWEP.SpreadAddSights = -SWEP.Spread * 0.25

SWEP.SpreadMultRecoil = 1.1
SWEP.RecoilModifierCap = SWEP.RecoilMax
SWEP.RecoilModifierCapMove = 0

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
    Pos = Vector(-2.38, -2, -0.05),
    Ang = Angle(0, 0, -2),
    Magnification = 1.1,
    ViewModelFOV = 56,
    CrosshairInSights = false
}

SWEP.ViewModelFOVBase = 64

SWEP.SprintMidPoint = {
    Pos = Vector(0, -1, 0),
    Ang = Angle(-2.5, 0, 2.5)
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.MovingMidPoint = {
    Pos = Vector(-0.5, -0.5, -0.5),
    Ang = Angle(0, 0, -5)
}

SWEP.MovingPos = Vector(-0.8, -0.8, -0.8)
SWEP.MovingAng = Angle(0, 0, -11)

SWEP.CrouchPos = Vector(-1, -0.5, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.SprintPos = Vector(1, 0, -1)
SWEP.SprintAng = Angle(0, 0, 25)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(10, 50, 5)
SWEP.CustomizeRotateAnchor = Vector(10, -2.25, -4)
SWEP.CustomizeSnapshotFOV = 65
SWEP.CustomizeNoRotate = false
SWEP.CustomizeSnapshotPos = Vector(0, 25, 2.5)

SWEP.PeekMaxFOV = 50

SWEP.PeekPos = Vector(-2, 5, -3.5)
SWEP.PeekAng = Angle(-0.3, 0, -45)

SWEP.PeekPosReloading = Vector(0, 4, -1)
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
SWEP.AfterShotParticle = "barrel_smoke"
SWEP.TracerEffect = "cod2019_tracer_slow"
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 4
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_jak12.mdl"
SWEP.ShellSounds = ARC9.COD2019_Shotgun_Table
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 1.1
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_shot_jak12_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ak_poly_concrete_01.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ak_poly_concrete_02.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ak_poly_concrete_03.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ak_poly_concrete_04.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ak_poly_concrete_05.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ak_poly_concrete_06.ogg",
}
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineTime = 1.1
SWEP.DropMagazineQCA = 3
SWEP.DropMagazineAng = Angle(0, -90, -90)

SWEP.NoShellEject = true

-------------------------- SOUNDS

local path = "weapons/cod2019/jak12/"

SWEP.ShootSound = "COD2019.JAK12.Fire"
SWEP.ShootSoundIndoor = "COD2019.JAK12.Fire"

SWEP.ShootSoundSilenced = "COD2019.JAK12.Fire.S"
SWEP.ShootSoundSilencedIndoor = "COD2019.JAK12.Fire.S"

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

SWEP.EnterSightsSound = path .. "wfoly_sh_aalpha12_ads_up.ogg"
SWEP.ExitSightsSound = path .. "wfoly_sh_aalpha12_ads_down.ogg"

SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayCancellable = false
SWEP.TriggerDelayTime = 0.1 -- Time until weapon fires.
SWEP.TriggerDownSound = "weapons/cod2019/jak12/weap_aalpha12_prefire_plr_01.ogg"
SWEP.TriggerUpSound = ""

SWEP.HideBones  = {
    [1] = "j_mag2",
}

SWEP.BulletBones = {
    [1] = "j_ammoshell1",
    [2] = "j_ammoshell2",
}

SWEP.Animations = {
	["enter_sights"] = {
		Source = "idle",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
	},
    ["fire"] = {
        Source = "shoot1",
		EjectAt = 0.1,
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
    },
    ["reload"] = {
        Source = "reload_short",
		MinProgress = 0.85,
		RefillProgress = 0.6,
		PeekProgress = 0.825,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.725, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_sh_aalpha12_reload_raise.ogg", t = 0.0},
			{s = path .. "wfoly_sh_aalpha12_reload_mvmnt.ogg", t = 0.4},
			{s = path .. "wfoly_sh_aalpha12_reload_magout.ogg", t = 0.833},
			{s = path .. "wfoly_sh_aalpha12_reload_maghits.ogg", t = 1.367},
			{s = path .. "wfoly_sh_aalpha12_reload_magin.ogg", t = 1.5},
			{s = path .. "wfoly_sh_aalpha12_reload_end.ogg", t = 1.767},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.9,
		RefillProgress = 0.75,
		PeekProgress = 0.85,
		FireASAP = true,
		DropMagAt = 1.2,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.775, lhik = 0, rhik = 0 },
            { t = 0.875, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_sh_aalpha12_reload_empty_boltpull.ogg", t = 0.033},
			{s = path .. "wfoly_sh_aalpha12_reload_empty_magout.ogg", t = 0.733},
			{s = path .. "wfoly_sh_aalpha12_reload_empty_magin.ogg", t = 1.733},
			{s = path .. "wfoly_sh_aalpha12_reload_empty_boltforward.ogg", t = 2.333},
			{s = path .. "wfoly_sh_aalpha12_reload_empty_end.ogg", t = 2.733},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.85,
		RefillProgress = 0.55,
		PeekProgress = 0.8,
		FireASAP = true,
		DropMagAt = 0.525,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.65, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_sh_aalpha12_reload_fast_raise.ogg", t = 0.0},
			{s = path .. "wfoly_sh_aalpha12_reload_fast_magout.ogg", t = 0.233},
			{s = path .. "wfoly_sh_aalpha12_reload_fast_magin.ogg", t = 1.033},
			{s = path .. "wfoly_sh_aalpha12_reload_fast_end.ogg", t = 1.467},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.9,
		RefillProgress = 0.7,
		PeekProgress = 0.85,
		FireASAP = true,
		DropMagAt = 0.525,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_sh_aalpha12_reload_empty_fast_magout.ogg", t = 0.0},
            {s = path .. "wfoly_sh_aalpha12_reload_empty_fast_mvmnt.ogg", t = 0.433},
			{s = path .. "wfoly_sh_aalpha12_reload_empty_fast_magin.ogg", t = 1.133},
			{s = path .. "wfoly_sh_aalpha12_reload_empty_fast_bolt.ogg", t = 1.6},
			{s = path .. "wfoly_sh_aalpha12_reload_empty_fast_end.ogg", t = 2.233},
        },
    },
    ["reload_drum"] = {
        Source = "reload_drum",
		MinProgress = 0.85,
		RefillProgress = 0.615,
		PeekProgress = 0.8,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.725, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_sh_aalpha12_reload_raise.ogg", t = 0.0},
			{s = path .. "wfoly_sh_aalpha12_reload_magout.ogg", t = 0.4},
			{s = path .. "wfoly_sh_aalpha12_reload_maghits.ogg", t = 1.43},
			{s = path .. "wfoly_sh_aalpha12_reload_magin.ogg", t = 1.73},
            {s = path .. "wfoly_sh_aalpha12_reload_mvmnt.ogg", t = 1.93},
			{s = path .. "wfoly_sh_aalpha12_reload_end.ogg", t = 2.1},
        },
    },
    ["reload_drum_empty"] = {
        Source = "reload_drum_empty",
		MinProgress = 0.9,
		RefillProgress = 0.75,
		PeekProgress = 0.85,
		FireASAP = true,
		DropMagAt = 1.2,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.775, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_sh_aalpha12_reload_empty_boltpull.ogg", t = 0.1},
			{s = path .. "wfoly_sh_aalpha12_reload_empty_magout.ogg", t = 0.8},
			{s = path .. "wfoly_sh_aalpha12_reload_empty_magin.ogg", t = 1.95},
			{s = path .. "wfoly_sh_aalpha12_reload_empty_boltforward.ogg", t = 2.6},
			{s = path .. "wfoly_sh_aalpha12_reload_empty_end.ogg", t = 3},
        },
    },
    ["reload_drum_fast"] = {
        Source = "reload_drum_fast",
		MinProgress = 0.85,
		RefillProgress = 0.55,
		PeekProgress = 0.8,
		FireASAP = true,
		DropMagAt = 0.525,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.15, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_sh_aalpha12_reload_raise.ogg", t = 0/30},
			{s = path .. "wfoly_sh_aalpha12_reload_magout.ogg", t = 6/30},
			{s = path .. "wfoly_sh_aalpha12_reload_maghits.ogg", t = 31/30},
			{s = path .. "wfoly_sh_aalpha12_reload_magin.ogg", t = 38/30},
			{s = path .. "wfoly_sh_aalpha12_reload_end.ogg", t = 41/30},
        },
    },
    ["reload_drum_fast_empty"] = {
        Source = "reload_drum_fast_empty",
		MinProgress = 0.9,
		RefillProgress = 0.7,
		PeekProgress = 0.85,
		FireASAP = true,
		DropMagAt = 0.525,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_sh_aalpha12_reload_empty_magout.ogg", t = 8/30},
			{s = path .. "wfoly_sh_aalpha12_reload_empty_magin.ogg", t = 35/30},
			{s = path .. "wfoly_sh_aalpha12_reload_empty_boltpull.ogg", t = 52/30},
			{s = path .. "wfoly_sh_aalpha12_reload_empty_boltforward.ogg", t = 58/30},
			{s = path .. "wfoly_sh_aalpha12_reload_empty_end.ogg", t = 68/30},
        },
    },
    ["ready"] = {
        Source = "draw",
		MinProgress = 0.85,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sh_aalpha12_raise_first_up.ogg", t = 0.0},
			{s = path .. "wfoly_sh_aalpha12_raise_first_bolt.ogg", t = 0.167},
			{s = path .. "wfoly_sh_aalpha12_raise_first_end.ogg", t = 0.867},
        },
    },
    ["draw"] = {
        Source = "draw_short",
		MinProgress = 0.4,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sh_aalpha12_raise.ogg", t = 0/30},
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
            {s = path .. "wfoly_sh_aalpha12_reload_raise.ogg", t = 0/30},
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
            { t = 0.45, lhik = 0, rhik = 0 },
            { t = 0.55, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sh_aalpha12_inspect_01.ogg", t = 0.0},
			{s = path .. "wfoly_sh_aalpha12_inspect_02.ogg", t = 0.4},
			{s = path .. "wfoly_sh_aalpha12_inspect_03.ogg", t = 1.8},
			{s = path .. "wfoly_sh_aalpha12_inspect_04.ogg", t = 1.867},
			{s = path .. "wfoly_sh_aalpha12_inspect_05.ogg", t = 2.0},
			{s = path .. "wfoly_sh_aalpha12_inspect_06.ogg", t = 3.633},
        },
    },
    ["inspect_drum"] = {
        Source = "lookat01_drum",
        MinProgress = 0.1,
        FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.475, lhik = 0, rhik = 0 },
            { t = 0.575, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sh_aalpha12_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_sh_aalpha12_inspect_02.ogg", t = 12/30},
			{s = path .. "wfoly_sh_aalpha12_inspect_03.ogg", t = 59/30},
			{s = path .. "wfoly_sh_aalpha12_inspect_04.ogg", t = 70/30},
			{s = path .. "wfoly_sh_aalpha12_inspect_05.ogg", t = 108/30},
			{s = path .. "wfoly_sh_aalpha12_inspect_06.ogg", t = 110/30},
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

--- 32-Round Drum Mags ---
local Translate_Drum = {
    ["reload"] = "reload_drum",
    ["reload_empty"] = "reload_drum_empty",
    ["inspect"] = "inspect_drum",
}
local Translate_Drum_Fast = {
    ["reload"] = "reload_drum_fast",
    ["reload_empty"] = "reload_drum_fast_empty",
    ["inspect"] = "inspect_drum",
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
    local drum = wep:HasElement("mag_drum")

    if super_sprint and Translate_TacSprint[anim] then
        return Translate_TacSprint[anim]
    end

    if speedload then
        if drum then
            if Translate_Drum_Fast[anim] then
                return Translate_Drum_Fast[anim]
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

SWEP.DefaultBodygroups = "000000000000"

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(4.9, -0.3, 0.25),
	ModelAngleOffset = Angle(0, 0, 0),
	Scale = 0.8,
    },
    ["go_grip_angled"] = {
    ModelOffset = Vector(0, 0, 0.1),
    },
    ["cod2019_griptape_01"] = {
    Model = "models/weapons/cod2019/attachs/weapons/jak12/attachment_vm_sh_aalpha12_griptape.mdl",
    },
    ["cod2019_griptape_02"] = {
    Model = "models/weapons/cod2019/attachs/weapons/jak12/attachment_vm_sh_aalpha12_griptape.mdl",
    },
    ["cod2019_griptape_03"] = {
    Model = "models/weapons/cod2019/attachs/weapons/jak12/attachment_vm_sh_aalpha12_griptape.mdl",
    },
    ["cod2019_trigger_light"] = {
    Model = "models/weapons/cod2019/attachs/weapons/m19/attachment_vm_pi_papa320_trigcust.mdl",
	BoneMerge = false,
	ModelOffset = Vector(0.8, 0, 0.2),
    },
    ["cod2019_trigger_heavy"] = {
    Model = "models/weapons/cod2019/attachs/weapons/m19/attachment_vm_pi_papa320_trigcust02.mdl",
	BoneMerge = false,
	ModelOffset = Vector(0.8, 0, 0.2),
    },
    ["cod2019_trigger_match"] = {
    Model = "models/weapons/cod2019/attachs/weapons/m19/attachment_vm_pi_papa320_trigcust03.mdl",
	BoneMerge = false,
	ModelOffset = Vector(0.8, 0, 0.2),
    },
}

SWEP.AttachmentElements = {
    ["base_none"] = {
        Bodygroups = {
            {0,1},
        },
    },
    ["body_none"] = {
        Bodygroups = {
            {1,1},
        },
    },
    ["mag_none"] = {
        Bodygroups = {
            {2,1},
        },
    },
    ["barrel_none"] = {
        Bodygroups = {
            {3,1},
        },
    },
    ["sight_none"] = {
        Bodygroups = {
            {4,1},
        },
    },
    ["stock_none"] = {
        Bodygroups = {
            {5,1},
        },
    },
    ["rail_sidegrip"] = {
        Bodygroups = {
            {6,1},
        },
    },
    ["trigger_none"] = {
        Bodygroups = {
            {7,1},
        },
    },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model
    if wep:HasElement("barrel_long") then model:SetBodygroup(6,0) end
end

SWEP.Attachments = {
    { -- 1
        PrintName = ARC9:GetPhrase("mw19_category_muzzle"),
        Category = "cod2019_muzzle_shot",
        DefaultIcon = Material("entities/defattachs/muzzle-ar.png", "mips smooth"),
		Bone = "tag_silencer",
        Pos = Vector(0, 0, 0),
    },
    { -- 2
        PrintName = ARC9:GetPhrase("mw19_category_barrel"),
		DefaultIcon = Material("entities/defattachs/barrel-ar.png", "mips smooth"),
        Category = "cod2019_jak12_barrel",
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
        Bone = "tag_holo",
        Pos = Vector(1.5, 0, -0.1),
        Category = {"cod2019_optic"},
		InstalledElements = {"sight_none"},
    },
    { -- 5
        PrintName = ARC9:GetPhrase("mw19_category_stock"),
		DefaultIcon = Material("entities/defattachs/stock-ar.png", "mips smooth"),
        Category = {"cod2019_jak12_stock"},
        Bone = "tag_stock_attach",
        Pos = Vector(0, 0, 0),
    },
    { -- 6
        PrintName = ARC9:GetPhrase("mw19_category_underbarrel"),
		DefaultIcon = Material("entities/defattachs/grip.png", "mips smooth"),
        Category = "cod2019_grip",
        Bone = "tag_grip_attach",
        Pos = Vector(-1.5, 0, 0),
        Ang = Angle(0, 0, 180),
    },
    { -- 7
        PrintName = ARC9:GetPhrase("mw19_category_magazine"),
		DefaultIcon = Material("entities/defattachs/magazine-ar.png", "mips smooth"),
		Bone = "tag_mag_attach",
        Category = {"cod2019_mag","cod2019_jak12_mag"},
        Pos = Vector(0, 0, 0),
    },
    { -- 8
        PrintName = ARC9:GetPhrase("mw19_category_ammo"),
		DefaultIcon = Material("arc9/def_att_icons/ammotype.png", "mips smooth"),
        Bone = "tag_mag_attach",
		Category = {"cod2019_ammo_sg"},
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
        PrintName = ARC9:GetPhrase("mw19_category_triggeraction"),
		-- DefaultIcon = Material("entities/defattachs/stock-ar.png", "mips smooth"),
        Category = {"cod2019_trigger"},
        Bone = "j_trigger",
        Pos = Vector(0, 0, 0),
    },
    { -- 11
        PrintName = ARC9:GetPhrase("mw19_category_perk"),
        Category = {"cod2019_perks","cod2019_perks_soh","cod2019_perks_ss"},
        Bone = "tag_attachments",
        Pos = Vector(3.5, 0, -4.5),
    },
	
	-- Unofficial
    { -- 12
        PrintName = ARC9:GetPhrase("mw19_category_receiver"),
        Category = "cod2019_jak12_receiver",
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
        Category = "cod2019_skins_jak12",
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
        StickerModel = "models/weapons/cod2019/stickers/shot_jak12_decal_a.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(3, 0, 3),
    },
    { -- 16
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/shot_jak12_decal_b.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(1, 0, 3),
    },
    { -- 17
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/shot_jak12_decal_c.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-1, 0, 3),
    },
    { -- 18
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/shot_jak12_decal_d.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-3, 0, 3),
    },
    { -- 19
        PrintName = ARC9:GetPhrase("mw19_category_charm"),
        CosmeticOnly = true,
        Category = {"charm"},
        Bone = "tag_cosmetic",
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(-5, 0, 3),
		Scale = 1.3,
    },
    { -- 20
        PrintName = ARC9:GetPhrase("mw19_category_stats"),
        Category = {"killcounter","killcounter2"},
        Bone = "tag_cosmetic",
        Pos = Vector(1.5, 0.1, -1),
		Icon_Offset = Vector(-8.5, 0, 4),
		CosmeticOnly = true,
    },
    -- { -- 21
        -- PrintName = "SideGrips",
        -- Category = {"cod2019_grips_side"},
        -- Bone = "tag_grip_attach",
        -- Pos = Vector(-2, -1.41, 1.12),
		-- Ang = Angle(0, 0, 180),
		-- Hidden = true,
		-- MergeSlots = {6}, -- Underbarrel
    -- },
}

SWEP.GripPoseParam = 4.2
SWEP.GripPoseParam2 = 0.7
SWEP.CodAngledGripPoseParam = 28
SWEP.CodStubbyGripPoseParam = 18
SWEP.CodStubbyTallGripPoseParam = 24

-- Warzone-esque Stats; Add here to change only when using Warzone Stats variable.
if GetConVar("arc9_mw19_stats_warzone"):GetBool() then
-------------------------- DAMAGE PROFILE
SWEP.DamageMax = 24
SWEP.DamageMin = 10

SWEP.Num = 8

SWEP.RangeMin = 3.3 / ARC9.HUToM
SWEP.RangeMax = 23.1 / ARC9.HUToM

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

-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.33 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.25 -- How long it takes to go from sprinting to being able to fire.

end
