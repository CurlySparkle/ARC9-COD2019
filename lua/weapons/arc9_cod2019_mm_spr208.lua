AddCSLuaFile()
if CLIENT then
    killicon.Add( "arc9_cod2019_mm_spr208", "vgui/killicons/cod2019_mm_spr208.png", Color(251, 85, 25, 255))
end

SWEP.LoadoutImage = "entities/loadout/arc9_cod2019_mm_spr208.png"

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_marksman") or "Marksman Rifles"

SWEP.PrintName = ARC9:GetPhrase("mw19_weapon_spr") or "SP-R 208"

SWEP.Class = ARC9:GetPhrase("mw19_class_weapon_marksman") or "Marksman Rifle"
SWEP.Trivia = {
    [ ARC9:GetPhrase("mw19_country") ] = ARC9:GetPhrase("mw19_country_usa"),
    [ ARC9:GetPhrase("mw19_manufacturer") ] = ARC9:GetPhrase("mw19_manufacturer_sloan"),
    [ ARC9:GetPhrase("mw19_caliber") ] = ARC9:GetPhrase("mw19_caliber_300"),
    [ ARC9:GetPhrase("mw19_weight") ] = string.format(ARC9:GetPhrase("mw19_weight_val"), 5, 5 * 2.20),
    [ ARC9:GetPhrase("mw19_weight_projectile") ] = string.format(ARC9:GetPhrase("mw19_weight_projectile_val"), 180),
    -- [ ARC9:GetPhrase("mw19_muzzle_energy") ] = "2,480 ft/s",
    -- [ ARC9:GetPhrase("mw19_muzzle_velocity") ] = "3,333 joules"
}

SWEP.Credits = {
    [ ARC9:GetPhrase("mw19_author") ] = "Twilight Sparkle/Firmeteran",
    [ ARC9:GetPhrase("mw19_assets") ] = "Activision/Infinity Ward"
}

SWEP.Description = ARC9:GetPhrase("mw19_weapon_spr_desc") or [[Reliable, hard-hitting .300 Win bolt action rifle from Sloan Precision. This weapon's extensive military and civilian use gives rise to an abundance of customization.]]

SWEP.ViewModel = "models/weapons/cod2019/c_snip_spr208.mdl"
SWEP.WorldModel = "models/weapons/w_shot_m3super90.mdl"
SWEP.DefaultBodygroups = "00000000"

SWEP.Slot = 3

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_snip_spr208.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-3.75, 4, -6),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-7, 4, -4),
    TPIKAng = Angle(-12.5, -1, 165),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 94 -- Damage done at point blank range
SWEP.DamageMin = 50 -- Damage done at maximum range

SWEP.Num = 1

SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 44 / ARC9.HUToM
SWEP.RangeMax = 73 / ARC9.HUToM

SWEP.Penetration = 15 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.5

SWEP.ImpactForce = 15

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 3.19,
    [HITGROUP_CHEST] = 1.8,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 1,
    [HITGROUP_RIGHTLEG] = 1,
}

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 580 / ARC9.HUToM
SWEP.PhysBulletGravity = 0.5
SWEP.PhysBulletDrag = 1

-------------------------- MAGAZINE

SWEP.Ammo = "SniperPenetratedRound" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 5 -- Self-explanatory.
SWEP.SupplyLimit = 8 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 2 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

SWEP.ManualAction = true
SWEP.NoLastCycle = true
SWEP.ManualActionNoLastCycle = true

--SWEP.ShotgunReload = true
--SWEP.ManualActionChamber = 1

SWEP.BarrelLength = 20

-------------------------- FIREMODES

SWEP.RPM = 328

SWEP.Firemodes = {
    {
        Mode = 1,
    },
}

-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 5

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 3 -- Multiplier for vertical recoil

SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.3

SWEP.RecoilDissipationRate = 2.5 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 5 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 3

SWEP.RecoilMultCrouch = 0.8
SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.75

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilPunch = 2
SWEP.VisualRecoilUp = 0.3
SWEP.VisualRecoilMultSights = 1
SWEP.VisualRecoilPunchSights = 15

SWEP.VisualRecoilSpringPunchDamping = 11
SWEP.VisualRecoilDampingConst = 5
SWEP.VisualRecoilDampingConstSights = 50
SWEP.VisualRecoilSpringMagnitude = 1

-------------------------- SPREAD

SWEP.Spread = 0.05

SWEP.SpreadAddRecoil = 0.05

SWEP.SpreadAddHipFire = 0
SWEP.SpreadAddMove = 0.03
SWEP.SpreadAddMidAir = 0.045
SWEP.SpreadAddCrouch = -0.03
SWEP.SpreadAddSights = -(SWEP.Spread)

SWEP.SpreadMultRecoil = 1.1
SWEP.RecoilModifierCap = 3
SWEP.RecoilModifierCapMove = 0
SWEP.RecoilModifierCapSights = 0.05

-------------------------- HANDLING

SWEP.SpeedMult = 1 -- Walk speed multiplier
SWEP.SpeedMultSights = 0.9 -- When aiming
SWEP.SpeedMultShooting = 0.9

SWEP.AimDownSightsTime = 0.35 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.375 -- How long it takes to go from sprinting to being able to fire.

-------------------------- AIM ASSIST

-- SWEP.NoAimAssist = true

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
    Pos = Vector(-2.895, -2, 1.115),
    Ang = Angle(0, 0, 2),
    Magnification = 1.1,
    ViewModelFOV = 56,
    CrosshairInSights = false
}

SWEP.ViewModelFOVBase = 64

SWEP.SprintMidPoint = {
    Pos = Vector(0, -1, 0),
    Ang = Angle(-2.5, 0, 2.5)
}

SWEP.MovingMidPoint = {
    Pos = Vector(-0.5, -0.5, -0.5),
    Ang = Angle(0, 0, -5)
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.MovingPos = Vector(-1, -0.8, -1)
SWEP.MovingAng = Angle(0, 0, -10)

SWEP.CrouchPos = Vector(-1, -0.5, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.SprintPos = Vector(0, -1, -1)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(16, 40, 3)
SWEP.CustomizeRotateAnchor = Vector(16, -3.5, -4)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeNoRotate = false
SWEP.CustomizeSnapshotPos = Vector(0, 15, 3)

SWEP.PeekPos = Vector(-1.5, 2, -4)
SWEP.PeekAng = Angle(-0.3, 0, -45)

SWEP.PeekMaxFOV = 64

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

SWEP.MuzzleParticle = "AC_muzzle_shotgun_fp"
SWEP.AfterShotParticle = "AC_muzzle_smoke_barrel"
SWEP.TracerEffect = "cod2019_tracer_slow"
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 4
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_762_hr.mdl"
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 0.1
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)
SWEP.ShellSounds = ARC9.COD2019_338_Table

SWEP.EjectDelay = 0.4

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_snip_spr208_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ak_metal_concrete_01.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ak_metal_concrete_02.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ak_metal_concrete_03.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ak_metal_concrete_04.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ak_metal_concrete_05.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ak_metal_concrete_06.ogg",
}
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineTime = 1.6
SWEP.DropMagazineQCA = 3
SWEP.DropMagazineAng = Angle(0, -90, 0)

-------------------------- SOUNDS

local path = "weapons/cod2019/spr208/"

SWEP.ShootSound = "COD2019.SPR208.Fire"
SWEP.ShootSoundIndoor = "COD2019.SPR208.Fire"

SWEP.ShootSoundSilenced = "COD2019.SPR208.Fire.S"
SWEP.ShootSoundSilencedIndoor = "COD2019.SPR208.Fire.S"

-- Non-Silenced Outside
SWEP.LayerSound = "Layer_Sniper.Outside"
SWEP.DistantShootSound = "Distant_Sniper.Outside"
-- Inside
SWEP.LayerSoundIndoor = "Layer_Shotgun.Inside"
SWEP.DistantShootSoundIndoor = "Distant_Shotgun.Inside"
---------------------------------------------------
-- Silenced Outside
SWEP.LayerSoundSilenced = "Layer_Sniper.Outside"
SWEP.DistantShootSoundSilenced = "Distant_DMR_Sup.Outside"
-- Inside
SWEP.LayerSoundSilencedIndoor = "Layer_Sniper.Inside"
SWEP.DistantShootSoundSilencedIndoor = "Distant_DMR_Sup.Inside"
---------------------------------------------------

SWEP.EnterSightsSound = path .. "wfoly_sn_remeo700_ads_up.ogg"
SWEP.ExitSightsSound = path .. "wfoly_sn_remeo700_ads_down.ogg"


--SWEP.ReloadHideBonesFirstPerson = true
SWEP.HideBones  = {
    [1] = "j_mag2",
}

SWEP.TriggerDelay = 0.03 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayCancellable = false
SWEP.TriggerDelayTime = 0.03 -- Time until weapon fires.

SWEP.TriggerDownSound = "weapons/cod2019/spr208/wfoly_sn_remeo700_hammer_plr_01.ogg"
SWEP.TriggerUpSound = "weapons/cod2019/spr208/wfoly_sn_remeo700_disconnector_plr_01.ogg"

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
        Source = "cycle",
		--EjectAt = 0.2,
		MinProgress = 0.75,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.3, lhik = 1, rhik = 0 },
            { t = 0.55, lhik = 1, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sn_remeo700_rechamber_bolt.ogg", v = 0.4, t = 0.0},
			{s = path .. "wfoly_sn_remeo700_rechamber_grab.ogg", v = 0.4, t = 1.1},
        },
    },
    ["cycle_light"] = {
        Source = "cycle_light",
		--EjectAt = 0.2,
		MinProgress = 0.75,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.3, lhik = 1, rhik = 0 },
            { t = 0.55, lhik = 1, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sn_remeo700_rechamber_boltl_bolt.ogg", v = 0.5, t = 0.067},
			{s = path .. "wfoly_sn_remeo700_rechamber_boltl_grab.ogg", v = 0.5, t = 0.9},
        },
    },
    ["dryfire"] = {
        Source = "dryfire",
		MinProgress = 0.01,
		FireASAP = true,
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
    },
    ["reload"] = {
        Source = "reload_short",
		MinProgress = 0.95,
		RefillProgress = 0.75,
		PeekProgress = 0.875,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.2, lhik = 1, rhik = 0 },
            { t = 0.75, lhik = 1, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_sn_remeo700_reload_up.ogg", t = 0.1},
			{s = path .. "wfoly_sn_remeo700_reload_magout.ogg", t = 0.433},
			{s = path .. "wfoly_sn_remeo700_reload_maghit.ogg", t = 1.5},
			{s = path .. "wfoly_sn_remeo700_reload_magin.ogg", t = 2.0},
			{s = path .. "wfoly_sn_remeo700_reload_end.ogg", t = 2.067},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.975,
		RefillProgress = 0.875,
		PeekProgress = 0.95,
		FireASAP = true,
		EjectAt = 0.4,
		DropMagAt = 1.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.1, lhik = 1, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_sn_remeo700_reload_empty_boltopen.ogg", t = 0.067},
			{s = path .. "wfoly_sn_remeo700_reload_empty_magout.ogg", t = 1.0},
			{s = path .. "wfoly_sn_remeo700_reload_empty_maghit.ogg", t = 1.567},
			{s = path .. "wfoly_sn_remeo700_reload_empty_magin.ogg", t = 2.467},
			{s = path .. "wfoly_sn_remeo700_reload_empty_rotate.ogg", t = 2.633},
			{s = path .. "wfoly_sn_remeo700_reload_empty_boltclose.ogg", t = 3.133},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.925,
		RefillProgress = 0.725,
		PeekProgress = 0.875,
		FireASAP = true,
		DropMagAt = 0.95,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.2, lhik = 0, rhik = 1 },
            { t = 0.725, lhik = 0, rhik = 1 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_sn_remeo700_reload_fast_up.ogg", t = 0.0},
			{s = path .. "wfoly_sn_remeo700_reload_fast_magout.ogg", t = 0.633},
			{s = path .. "wfoly_sn_remeo700_reload_fast_maghit.ogg", t = 0.833},
			{s = path .. "wfoly_sn_remeo700_reload_fast_magin.ogg", t = 1.333},
            {s = path .. "wfoly_sn_remeo700_reload_fast_end.ogg", t = 1.567},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.95,
		RefillProgress = 0.85,
		PeekProgress = 0.925,
		FireASAP = true,
		EjectAt = 2,
		DropMagAt = 0.9,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.1, lhik = 0, rhik = 1 },
            { t = 0.45, lhik = 0, rhik = 1 },
            { t = 0.65, lhik = 1, rhik = 0 },
            { t = 1, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_sn_remeo700_reload_empty_fast_up.ogg", t = 0.0},
			{s = path .. "wfoly_sn_remeo700_reload_empty_fast_magout.ogg", t = 0.633},
			{s = path .. "wfoly_sn_remeo700_reload_empty_fast_maghit.ogg", t = 1.033},
			{s = path .. "wfoly_sn_remeo700_reload_empty_fast_magin.ogg", t = 1.3},
			{s = path .. "wfoly_sn_remeo700_reload_empty_fast_grab.ogg", t = 1.66},
			{s = path .. "wfoly_sn_remeo700_reload_empty_fast_boltopen.ogg", t = 1.7},
            {s = path .. "wfoly_sn_remeo700_reload_empty_fast_boltclose.ogg", t = 2.19},
        },
    },
    ["reload_xmag"] = {
        Source = "reload_xmag",
		MinProgress = 0.95,
		RefillProgress = 0.75,
		PeekProgress = 0.875,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.2, lhik = 1, rhik = 0 },
            { t = 0.75, lhik = 1, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_sn_remeo700_reload_xmags_up.ogg", t = 0.033},
			{s = path .. "wfoly_sn_remeo700_reload_xmags_magout.ogg", t = 0.25},
			{s = path .. "wfoly_sn_remeo700_reload_xmags_maghit.ogg", t = 1.5},
			{s = path .. "wfoly_sn_remeo700_reload_xmags_magin.ogg", t = 2.1},
			{s = path .. "wfoly_sn_remeo700_reload_xmags_end.ogg", t = 2.367},
        },
    },
    ["reload_xmag_empty"] = {
        Source = "reload_xmag_empty",
		MinProgress = 0.975,
		RefillProgress = 0.875,
		PeekProgress = 0.95,
		FireASAP = true,
		EjectAt = 0.4,
		DropMagAt = 0.8,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.1, lhik = 1, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_sn_remeo700_reload_empty_xmags_up.ogg", t = 0.033},
			{s = path .. "wfoly_sn_remeo700_reload_empty_xmags_boltopen.ogg", t = 0.433},
			{s = path .. "wfoly_sn_remeo700_reload_empty_xmags_magout.ogg", t = 1.033},
			{s = path .. "wfoly_sn_remeo700_reload_empty_xmags_maghit.ogg", t = 1.7},
			{s = path .. "wfoly_sn_remeo700_reload_empty_xmags_magin.ogg", t = 2.567},
			{s = path .. "wfoly_sn_remeo700_reload_empty_xmags_boltclose.ogg", t = 2.8},
            {s = path .. "wfoly_sn_remeo700_reload_empty_xmags_grab.ogg", t = 3.9},
        },
    },
    ["reload_xmag_fast"] = {
        Source = "reload_xmag_fast",
		MinProgress = 0.925,
		RefillProgress = 0.725,
		PeekProgress = 0.875,
		FireASAP = true,
		DropMagAt = 0.95,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.2, lhik = 0, rhik = 1 },
            { t = 0.725, lhik = 0, rhik = 1 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_sn_remeo700_reload_fast_xmags_up.ogg", t = 0.133},
			{s = path .. "wfoly_sn_remeo700_reload_fast_xmags_magout.ogg", t = 0.5},
			{s = path .. "wfoly_sn_remeo700_reload_fast_xmags_maghit.ogg", t = 1.133},
			{s = path .. "wfoly_sn_remeo700_reload_fast_xmags_magin.ogg", t = 1.433},
            {s = path .. "wfoly_sn_remeo700_reload_fast_xmags_end.ogg", t = 1.6},
        },
    },
    ["reload_xmag_fast_empty"] = {
        Source = "reload_xmag_fast_empty",
		MinProgress = 0.95,
		RefillProgress = 0.85,
		PeekProgress = 0.925,
		FireASAP = true,
		EjectAt = 2,
		DropMagAt = 0.9,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.1, lhik = 0, rhik = 1 },
            { t = 0.45, lhik = 0, rhik = 1 },
            { t = 0.65, lhik = 1, rhik = 0 },
            { t = 1, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_sn_remeo700_reload_empty_fast_xmags_up.ogg", t = 0.0},
			{s = path .. "wfoly_sn_remeo700_reload_empty_fast_xmags_magout.ogg", t = 0.633},
			{s = path .. "wfoly_sn_remeo700_reload_empty_fast_xmags_maghit.ogg", t = 1.133},
			{s = path .. "wfoly_sn_remeo700_reload_empty_fast_xmags_magin.ogg", t = 1.433},
            {s = path .. "wfoly_sn_remeo700_reload_empty_fast_xmags_boltopen.ogg", t = 1.87},
            {s = path .. "wfoly_sn_remeo700_reload_empty_fast_xmags_boltclose.ogg", t = 2.07},
			{s = path .. "wfoly_sn_remeo700_reload_empty_fast_xmags_grab.ogg", t = 2.933},
        },
    },
    ["ready"] = {
        Source = "draw",
		MinProgress = 0.9,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.75, lhik = 1, rhik = 0 },
            { t = 0.925, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sn_remeo700_raise_first_up.ogg", t = 0.033},
			{s = path .. "wfoly_sn_remeo700_raise_first_boltclose.ogg", t = 0.2},
			{s = path .. "wfoly_sn_remeo700_raise_first_end.ogg", t = 0.7},
        },
    },
    ["draw"] = {
        Source = "draw_short",
		MinProgress = 0.6,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.6, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sn_remeo700_raise.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.3, lhik = 1, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
        },
        EventTable = {
            {s = path .. "wfoly_sn_remeo700_drop.ogg", t = 0/30},
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
		{ t = 0,  lhik = 1, rhik = 1},
		{ t = 0.1,  lhik = 0, rhik = 1},
		{ t = 0.45,  lhik = 0, rhik = 1},
		{ t = 0.5,  lhik = 1, rhik = 1},
		{ t = 0.55,  lhik = 1, rhik = 0},
		{ t = 0.825,  lhik = 1, rhik = 0},
		{ t = 0.875,  lhik = 1, rhik = 1},
		},
        EventTable = {
            {s = path .. "wfoly_sn_remeo700_inspect_01.ogg", t = 0.067},
			{s = path .. "wfoly_sn_remeo700_inspect_02.ogg", t = 0.367},
			{s = path .. "wfoly_sn_remeo700_inspect_03.ogg", t = 1.433},
			{s = path .. "wfoly_sn_remeo700_inspect_04.ogg", t = 2.133},
			{s = path .. "wfoly_sn_remeo700_inspect_05.ogg", t = 2.267},
			{s = path .. "wfoly_sn_remeo700_inspect_06.ogg", t = 2.933},
			{s = path .. "wfoly_sn_remeo700_inspect_07.ogg", t = 3.9},
			{s = path .. "wfoly_sn_remeo700_inspect_08.ogg", t = 4.2},
        },
    },
    ["inspect_xmag"] = {
        Source = "lookat01_xmag",
        MinProgress = 0.1,
        FireASAP = true,
		IKTimeLine = { 
		{ t = 0,  lhik = 1, rhik = 1},
		{ t = 0.1,  lhik = 0, rhik = 1},
		{ t = 0.45,  lhik = 0, rhik = 1},
		{ t = 0.5,  lhik = 1, rhik = 1},
		{ t = 0.55,  lhik = 1, rhik = 0},
		{ t = 0.825,  lhik = 1, rhik = 0},
		{ t = 0.875,  lhik = 1, rhik = 1},
		},
        EventTable = {
            {s = path .. "wfoly_sn_remeo700_inspect_xmags_up.ogg", t = 0.067},
			{s = path .. "wfoly_sn_remeo700_inspect_xmags_magout.ogg", t = 0.367},
			{s = path .. "wfoly_sn_remeo700_inspect_xmags_maghit.ogg", t = 1.44},
			{s = path .. "wfoly_sn_remeo700_inspect_xmags_magin.ogg", t = 2.133},
			{s = path .. "wfoly_sn_remeo700_inspect_xmags_rotate.ogg", t = 2.267},
			{s = path .. "wfoly_sn_remeo700_inspect_xmags_boltopen.ogg", t = 2.9},
			{s = path .. "wfoly_sn_remeo700_inspect_xmags_boltclose.ogg", t = 3.7},
			{s = path .. "wfoly_sn_remeo700_inspect_xmags_end.ogg", t = 3.9},
        },
    },
    ["bash"] = {
        Source = {"melee","melee2","melee3"},
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 1, rhik = 1 },
        },
    },
    ["enter_bipod"] = {
        Source = "bipod_out",
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

-- SWEP.Hook_Think	= ARC9.COD2019.BlendSights2

-------------------------- ATTACHMENTS

--- 10 Round Mags ---
local Translate_XMag = {
    ["reload"] = "reload_xmag",
    ["reload_empty"] = "reload_xmag_empty",
    ["inspect"] = "inspect_xmag",
}
local Translate_XMag_Fast = {
    ["reload"] = "reload_xmag_fast",
    ["reload_empty"] = "reload_xmag_fast_empty",
    ["inspect"] = "inspect_xmag",
}

--- Fast, Bolts, & Tac. Sprint ---
local Translate_Fast = {
    ["reload"] = "reload_fast",
    ["reload_empty"] = "reload_fast_empty",
}
local Translate_BoltL = {
    ["cycle"] = "cycle_light",
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
    local ammoex = wep:HasElement("ammo_extend")
    local boltl = wep:HasElement("bolt_light")

    if ammoex and speedload and Translate_XMag_Fast[anim] then
        return Translate_XMag_Fast[anim]
    elseif ammoex and Translate_XMag[anim] then
        return Translate_XMag[anim]
    elseif boltl and Translate_BoltL[anim] then
        return Translate_BoltL[anim]
    elseif super_sprint and Translate_TacSprint[anim] then
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

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(7.5, -0.5, -0.1),
	ModelAngleOffset = Angle(0, 0, 0),
	Scale = 1,
    },
    ["go_grip_angled"] = {
    ModelOffset = Vector(0, 0, 0.15),
    },
    ["go_grip_loading"] = {
    ModelOffset = Vector(1, 0, 0.15),
    },
}

SWEP.AttachmentElements = {
    ["body_none"] = {
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
    ["stock_none"] = {
        Bodygroups = {
            {3,1},
        },
    },
    ["bolt_none"] = {
        Bodygroups = {
            {4,1},
        },
    },
}

-- SWEP.Hook_ModifyBodygroups = function(wep, data)
    -- local model = data.model
    -- if wep:HasElement("stock_retract") then 
	-- model:SetBodygroup(5,0)
	-- model:SetBodygroup(6,0)	
	-- end
-- end

SWEP.Attachments = {
    { -- 1
        PrintName = ARC9:GetPhrase("mw19_category_muzzle"),
        Category = "cod2019_muzzle",
        DefaultIcon = Material("entities/defattachs/muzzle-ar.png", "mips smooth"),
		Bone = "tag_silencer",
        Pos = Vector(0, 0, 0),
    },
    { -- 2
        PrintName = ARC9:GetPhrase("mw19_category_barrel"),
		DefaultIcon = Material("entities/defattachs/barrel-ar.png", "mips smooth"),
        Category = "cod2019_spr208_barrel",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
    },
    { -- 3
        PrintName = ARC9:GetPhrase("mw19_category_laser"),
		DefaultIcon = Material("entities/defattachs/laser-ar.png", "mips smooth"),
        Category = "cod2019_tac",
        Bone = "tag_laser_attach",
        Pos = Vector(1.4, 0, 0),
		Ang = Angle(0, 0, 180),
    },
    { -- 4
        PrintName = ARC9:GetPhrase("mw19_category_optic"),
		DefaultIcon = Material("entities/defattachs/optic.png", "mips smooth"),
        Bone = "tag_holo",
        Pos = Vector(1.5, 0, -0.1),
        Category = {"cod2019_optic","cod2019_optic_spr208"},
		InstalledElements = {"sight_none"},
    },
    { -- 5
        PrintName = ARC9:GetPhrase("mw19_category_stock"),
		DefaultIcon = Material("entities/defattachs/stock-ar.png", "mips smooth"),
        Category = "cod2019_spr208_stock",
        Bone = "tag_stock_attach",
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(-4, 0, -0.25),
    },
    { -- 6
        PrintName = ARC9:GetPhrase("mw19_category_underbarrel"),
		DefaultIcon = Material("entities/defattachs/grip.png", "mips smooth"),
        Category = "cod2019_grip",
        Bone = "tag_grip_attach",
        Pos = Vector(-2.2, 0, 0),
        Ang = Angle(0, 0, 180),
		-- MergeSlots = {20}, -- Bipod
    },
    { -- 7
        PrintName = ARC9:GetPhrase("mw19_category_magazine"),
		DefaultIcon = Material("entities/defattachs/magazine-ar.png", "mips smooth"),
		Bone = "tag_mag_attach",
        Category = {"cod2019_mag","cod2019_spr208_mag"},
        Pos = Vector(0, 0, 0),
    },
    { -- 8
        PrintName = ARC9:GetPhrase("mw19_category_ammo"),
		DefaultIcon = Material("arc9/def_att_icons/ammotype.png", "mips smooth"),
        Bone = "tag_mag_attach",
		Category = {"cod2019_ammo"},
		Pos = Vector(-1.5, 0, 0),
		ExcludeElements = {"mag_ftac"},
    },
    { -- 9
        PrintName = ARC9:GetPhrase("mw19_category_boltassembly"),
        Category = "cod2019_spr208_bolt",
        Bone = "tag_attachments",
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(1.5, 0, 1.5),
    },
    { -- 10
        PrintName = ARC9:GetPhrase("mw19_category_perk"),
        Category = {"cod2019_perks","cod2019_perks_soh","cod2019_perks_alt","cod2019_perks_ss"},
        Bone = "tag_attachments",
        Pos = Vector(1.5, 0, -1.5),
    },
	
	-- Unofficial
    { -- 11
        PrintName = ARC9:GetPhrase("mw19_category_receiver"),
        Category = "cod2019_spr208_receiver",
        Bone = "tag_attachments",
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(3, 0, 0),
		Hidden = false,
    },
	
	-- Cosmetics
    { -- 12
        PrintName = ARC9:GetPhrase("mw19_category_skins"),
        Bone = "tag_cosmetic",
        Pos = Vector(7, 0, 3),
        Category = "cod2019_skins_spr208",
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
        StickerModel = "models/weapons/cod2019/stickers/snip_spr208_decal_a.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(3, 0, 3),
		ExcludeElements = {"stock_none"},
    },
    { -- 15
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/snip_spr208_decal_b.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(1, 0, 3),
		ExcludeElements = {"stock_none"},
    },
    { -- 16
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/snip_spr208_decal_c.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-1, 0, 3),
		ExcludeElements = {"stock_none"},
    },
    { -- 17
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/snip_spr208_decal_d.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-3, 0, 3),
		ExcludeElements = {"stock_none"},
    },
    { -- 18
        PrintName = ARC9:GetPhrase("mw19_category_charm"),
        CosmeticOnly = true,
        Category = {"charm"},
        Bone = "tag_cosmetic",
        Pos = Vector(-3, 0, -0.25),
		Icon_Offset = Vector(-2.25, 0, 3.25),
		Scale = 1.5,
    },
    { -- 19
        PrintName = ARC9:GetPhrase("mw19_category_stats"),
        Category = {"killcounter","killcounter2"},
        Bone = "tag_cosmetic",
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(-7.5, 0, 3),
		CosmeticOnly = true,
    },
    { -- 20
        PrintName = "SP-R 208 Bipod",
        Category = {"cod2019_rytec_bipod","cod2019_ax50_bipod"},
        Bone = "tag_grip_attach",
        Pos = Vector(-1, 0, 0),
		Ang = Angle(0, 0, 180),
		Hidden = true,
    },
}

SWEP.GripPoseParam = 3.5
SWEP.GripPoseParam2 = 0.6
SWEP.CodStubbyGripPoseParam = 26
SWEP.CodStubbyTallGripPoseParam = 12
SWEP.CodAngledGripPoseParam = 35

-- Warzone-esque Stats; Add here to change only when using Warzone Stats variable.
if GetConVar("arc9_mw19_stats_warzone"):GetBool() then

-------------------------- DAMAGE PROFILE
SWEP.DamageMax = 94 -- Damage done at point blank range
SWEP.DamageMin = 50 -- Damage done at maximum range

SWEP.RangeMin = 45 / ARC9.HUToM
SWEP.RangeMax = 72 / ARC9.HUToM

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 3.19,
    [HITGROUP_CHEST] = 1.8,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 1,
    [HITGROUP_RIGHTLEG] = 1,
}

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 580 / ARC9.HUToM

-------------------------- FIREMODES

SWEP.RPM = 48 * 10

-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.35 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.25 -- How long it takes to go from sprinting to being able to fire.

end
