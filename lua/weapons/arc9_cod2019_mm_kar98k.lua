AddCSLuaFile()
if CLIENT then
    killicon.Add( "arc9_cod2019_mm_kar98k", "vgui/killicons/cod2019_mm_kar98k.png", Color(251, 85, 25, 255))
end

SWEP.LoadoutImage = "entities/loadout/arc9_cod2019_mm_kar98k.png"

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_marksman") or "Marksman Rifles"

SWEP.PrintName = ARC9:GetPhrase("mw19_weapon_kar98") or "Kar98k"

SWEP.Class = ARC9:GetPhrase("mw19_class_weapon_marksman") or "Marksman Rifle"
SWEP.Trivia = {
    [ ARC9:GetPhrase("mw19_country") ] = ARC9:GetPhrase("mw19_country_germany"),
    [ ARC9:GetPhrase("mw19_caliber") ] = ARC9:GetPhrase("mw19_caliber_762mauser"),
    [ ARC9:GetPhrase("mw19_weight") ] = string.format(ARC9:GetPhrase("mw19_weight_val"), 3.7, 3.7 * 2.20),
    [ ARC9:GetPhrase("mw19_weight_projectile") ] = string.format(ARC9:GetPhrase("mw19_weight_projectile_val"), 178.2),
    -- [ ARC9:GetPhrase("mw19_muzzle_energy") ] = "2,493 ft/s",
    -- [ ARC9:GetPhrase("mw19_muzzle_velocity") ] = "3,335 joules"
}

SWEP.Credits = {
    [ ARC9:GetPhrase("mw19_author") ] = "Twilight Sparkle/Firmeteran",
    [ ARC9:GetPhrase("mw19_assets") ] = "Activision/Infinity Ward"
}

SWEP.Description = ARC9:GetPhrase("mw19_weapon_kar98_desc") or [[Bolt action rifle chambered in 7.92 Mauser. A WW2 relic that is still extremely lethal in the hands of a rebel marksman.]]

SWEP.ViewModel = "models/weapons/cod2019/c_snip_kar98k.mdl"
SWEP.WorldModel = "models/weapons/w_shot_m3super90.mdl"
SWEP.DefaultBodygroups = "0000000000000000"

SWEP.Slot = 3

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_snip_kar98k.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-4, 4, -5.75),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-7, 4, -4),
    TPIKAng = Angle(-12.5, -1, 165),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 120 -- Damage done at point blank range
SWEP.DamageMin = 60 -- Damage done at maximum range

SWEP.Num = 1

SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 30 / ARC9.HUToM
SWEP.RangeMax = 49 / ARC9.HUToM

SWEP.Penetration = 15 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.5

SWEP.ImpactForce = 15

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 625 / ARC9.HUToM
SWEP.PhysBulletGravity = 0.5
SWEP.PhysBulletDrag = 1

-------------------------- MAGAZINE

SWEP.Ammo = "SniperPenetratedRound" -- What ammo type this gun uses.

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
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

SWEP.RPM = 200

SWEP.Firemodes = {
    {
        Mode = 1,
    },
}

-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 4

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 3 -- Multiplier for vertical recoil

SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.3

SWEP.RecoilDissipationRate = 5 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 5 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 3

SWEP.RecoilMultCrouch = 0.8
SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.8

SWEP.RecoilPerShot = 2
SWEP.RecoilMax = 2

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilPunch = 2
SWEP.VisualRecoilUp = 0.5
SWEP.VisualRecoilRoll = 25

SWEP.VisualRecoilMultSights = 0.2
SWEP.VisualRecoilPunchSights = 5

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
SWEP.RecoilModifierCapSights = 0.75

-------------------------- HANDLING

SWEP.SpeedMult = 1 -- Walk speed multiplier
SWEP.SpeedMultSights = 0.9 -- When aiming
SWEP.SpeedMultShooting = 0.9

SWEP.AimDownSightsTime = 0.29 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.375 -- How long it takes to go from sprinting to being able to fire.

-------------------------- AIM ASSIST

-- SWEP.NoAimAssist = true

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
    Pos = Vector(-3.485, -3, 1.25),
    Ang = Angle(0, 0.2, -3.5),
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
SWEP.MovingAng = Angle(0, 0, -8)

SWEP.CrouchPos = Vector(-1, -0.5, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.SprintPos = Vector(1, 0, -1)
SWEP.SprintAng = Angle(0, 0, 25)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(18, 40, 3)
SWEP.CustomizeRotateAnchor = Vector(18, -3.5, -4)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeNoRotate = false
SWEP.CustomizeSnapshotPos = Vector(0, 15, 3)

SWEP.PeekPos = Vector(2, 0.5, -1.5)
SWEP.PeekAng = Angle(0, 0, -10)

SWEP.PeekMaxFOV = 54

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

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_Kar98k.mdl"
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 1.5
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)
SWEP.ShellSounds = ARC9.COD2019_338_Table

SWEP.EjectDelay = 0.45

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_snip_spr208_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {"physics/metal/weapon_impact_soft1.wav", "physics/metal/weapon_impact_soft2.wav", "physics/metal/weapon_impact_soft3.wav"}
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineTime = 1.6
SWEP.DropMagazineQCA = 3
SWEP.DropMagazineAng = Angle(0, -90, 0)

-------------------------- SOUNDS

local path = "weapons/cod2019/kar98k/"

SWEP.ShootSound = "COD2019.Kar98k.Fire"
SWEP.ShootSoundIndoor = "COD2019.Kar98k.Fire"

SWEP.ShootSoundSilenced = "COD2019.Kar98k.Fire.S"
SWEP.ShootSoundSilencedIndoor = "COD2019.Kar98k.Fire.S"

-- Non-Silenced Outside
SWEP.LayerSound = "Layer_Shotgun.Outside"
SWEP.DistantShootSound = "Distant_DMR.Outside"
-- Inside
SWEP.LayerSoundIndoor = "Layer_Shotgun.Inside"
SWEP.DistantShootSoundIndoor = "Distant_Shotgun.Inside"
---------------------------------------------------
-- Silenced Outside
SWEP.LayerSoundSilenced = "Layer_Sniper.Outside"
SWEP.DistantShootSoundSilenced = "Distant_Sniper_Sup.Outside"
-- Inside
SWEP.LayerSoundSilencedIndoor = "Layer_Sniper.Inside"
SWEP.DistantShootSoundSilencedIndoor = "Distant_DMR_Sup.Inside"
---------------------------------------------------

SWEP.EnterSightsSound = path .. "wfoly_sn_kilo98_ads_up.ogg"
SWEP.ExitSightsSound = path .. "wfoly_sn_kilo98_ads_down.ogg"

SWEP.ReloadHideBonesFirstPerson = false
SWEP.HideBones  = {
    [1] = "j_clip",
	[2] = "j_b_01",
	[3] = "j_b_02",
	[4] = "j_b_03",
	[5] = "j_b_04",
	[6] = "j_b_05",
	[7] = "j_mag2",
	[8] = "j_bullet_loose",
}

SWEP.ReloadHideBoneTables  = {
    [1] = "j_clip",
	[2] = "j_b_01",
	[3] = "j_b_02",
	[4] = "j_b_03",
	[5] = "j_b_04",
	[6] = "j_b_05",
	[7] = "j_bullet_loose",
}

-- SWEP.TriggerDelay = 0.03 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
-- SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
-- SWEP.TriggerDelayTime = 0.03 -- Time until weapon fires.

-- SWEP.TriggerDownSound = "weapons/cod2019/mk2/weap_sbeta_fire_first_plr_01.ogg"
-- SWEP.TriggerUpSound = ""

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
		MinProgress = 0.8,
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
        EventTable = {
            {s = path .. "wfoly_sn_kilo98_rechamber_boltopen_01.ogg", v = 0.4, t = 13/60},
			{s = path .. "wfoly_sn_kilo98_rechamber_cloth.ogg", v = 0.4, t = 21/60},
			{s = path .. "wfoly_sn_kilo98_rechamber_boltclose_01.ogg", v = 0.4, t = 36/60},
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
		FireASAP = true,
		RefillProgress = 0.8,
		PeekProgress = 0.925,
		EjectAt = 0.5,
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
        EventTable = {
			{s = path .. "wfoly_sn_kilo98_reload_boltopen_01.ogg", t = 0/30},
			{s = path .. "wfoly_sn_kilo98_reload_cloth01.ogg", t = 7/30},
			{s = path .. "wfoly_sn_kilo98_reload_load_v2_01.ogg", t = 33/30},
			{s = path .. "wfoly_sn_kilo98_reload_load_v2_02.ogg", t = 52/30},
			{s = path .. "wfoly_sn_kilo98_reload_cloth02.ogg", t = 62/30},
			{s = path .. "wfoly_sn_kilo98_reload_boltclose_01.ogg", t = 82/30},
			{s = path .. "wfoly_sn_kilo98_reload_end.ogg", t = 88/30},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.95,
		FireASAP = true,
		RefillProgress = 0.8,
		PeekProgress = 0.925,
		EjectAt = 0.5,
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
        EventTable = {
			{s = path .. "wfoly_sn_kilo98_reload_empty_boltopen_01.ogg", t = 0/30},
			{s = path .. "wfoly_sn_kilo98_reload_empty_cloth01.ogg", t = 5/30},
			{s = path .. "wfoly_sn_kilo98_reload_empty_load_v2_01.ogg", t = 41/30},
			{s = path .. "wfoly_sn_kilo98_reload_empty_load_v2_02.ogg", t = 55/30},
			{s = path .. "wfoly_sn_kilo98_reload_empty_cloth02.ogg", t = 80/30},
			{s = path .. "wfoly_sn_kilo98_reload_empty_boltclose_01.ogg", t = 84/30},
			{s = path .. "wfoly_sn_kilo98_reload_empty_end.ogg", t = 99/30},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.95,
		FireASAP = true,
		RefillProgress = 0.8,
		PeekProgress = 0.95,
		EjectAt = 0.4,
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
        EventTable = {
			{s = path .. "wfoly_sn_kilo98_reload_fast_boltopen_01.ogg", t = 4/30},
			{s = path .. "wfoly_sn_kilo98_reload_fast_clotharm.ogg", t = 9/30},
			{s = path .. "wfoly_sn_kilo98_reload_fast_load_v2_01.ogg", t = 25/30},
			{s = path .. "wfoly_sn_kilo98_reload_fast_load_v2_02.ogg", t = 38/30},
			{s = path .. "wfoly_sn_kilo98_reload_fast_cloth.ogg", t = 58/30},
			{s = path .. "wfoly_sn_kilo98_reload_fast_boltclose_01.ogg", t = 62/30},
			{s = path .. "wfoly_sn_kilo98_reload_fast_end.ogg", t = 73/30},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.975,
		FireASAP = true,
		RefillProgress = 0.825,
		PeekProgress = 0.95,
		EjectAt = 0.5,
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
        EventTable = {
			{s = path .. "wfoly_sn_kilo98_reload_empty_fast_boltopen_01.ogg", t = 0/30},
            {s = path .. "wfoly_sn_kilo98_reload_empty_fast_mvmnt.ogg", t = 5/30},
			{s = path .. "wfoly_sn_kilo98_reload_empty_fast_load_v2_01.ogg", t = 33/30},
			{s = path .. "wfoly_sn_kilo98_reload_empty_fast_load_v2_02.ogg", t = 43/30},
			{s = path .. "wfoly_sn_kilo98_reload_empty_fast_boltclose_01.ogg", t = 60/30},
			{s = path .. "wfoly_sn_kilo98_reload_empty_fast_end.ogg", t = 59/30},
        },
    },
    ["reload_start"] = {
        Source = "reload_start",
		RestoreAmmo = 1,
		EjectAt = 0.5,
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
        EventTable = {
            {s = path .. "wfoly_sn_kilo98_reload_empty_cloth01.ogg", t = 0/30},
			{s = path .. "wfoly_sn_kilo98_reload_empty_boltopen_01.ogg", t = 0/30},
			{s = path .. "wfoly_sn_kilo98_reload_empty_load_v2_01.ogg", t = 34/30},
			{s = path .. "wfoly_sn_kilo98_reload_empty_cloth02.ogg", t = 51/30},
        },
    },
    ["reload_insert"] = {
        Source = "reload_loop",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
        EventTable = {
			{s = "COD2019.Kar98k.ShellIn", t = 0/30},
            {s = path .. "wfoly_sn_kilo98_reload_empty_load_v2_01.ogg", t = 4/30},
        },
    },
    ["reload_finish"] = {
        Source = "reload_end",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
        EventTable = {
			{s = path .. "wfoly_sn_kilo98_reload_empty_cloth01.ogg", t = 0/30},
			{s = path .. "wfoly_sn_kilo98_reload_empty_boltclose_01.ogg", t = 6/30},
			{s = path .. "wfoly_sn_kilo98_reload_empty_end.ogg", t = 10/30},
        },
    },
    ["reload_start_fast"] = {
        Source = "reload_start_fast",
		RestoreAmmo = 1,
		EjectAt = 0.4,
		Mult = 0.9,
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
        EventTable = {
            {s = path .. "wfoly_sn_kilo98_reload_scope_start_boltopen_02.ogg", t = 0.033},
			{s = path .. "wfoly_sn_kilo98_reload_scope_start_cloth.ogg", t = 0.133},
			{s = path .. "wfoly_sn_kilo98_reload_scope_start_load_01.ogg", t = 0.767},
			{s = path .. "wfoly_sn_kilo98_reload_scope_start_load_02.ogg", t = 0.8},
        },
    },
    ["reload_insert_fast"] = {
        Source = "reload_loop_fast",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
        EventTable = {
			{s = "COD2019.Kar98k.ShellIn", t = 2/30},
            {s = path .. "wfoly_sn_kilo98_reload_scope_load_01.ogg", t = 6/30},
        },
    },
    ["reload_finish_fast"] = {
        Source = "reload_end_fast",
		Mult = 0.9,
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
        EventTable = {
			{s = path .. "wfoly_sn_kilo98_reload_scope_end_boltclose_01.ogg", t = 0.2},
			{s = path .. "wfoly_sn_kilo98_reload_scope_end_cloth.ogg", t = 0.267},
			{s = path .. "wfoly_sn_kilo98_reload_scope_end_shoulder.ogg", t = 0.633},
        },
    },
    ["ready"] = {
        Source = "draw",
        IKTimeLine = {
            { t = 0.6, lhik = 0, rhik = 1 },
            { t = 0.825, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sn_kilo98_raise_first_raise.ogg", t = 0/30},
			{s = path .. "wfoly_sn_kilo98_raise_first_safety_01.ogg", t = 27/30},
			{s = path .. "wfoly_sn_kilo98_raise_first_end.ogg", t = 16/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
		MinProgress = 0.9,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 0 },
            { t = 1, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sn_kilo98_raise.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.3, lhik = 1, rhik = 1 },
            { t = 0.5, lhik = 0, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sn_kilo98_drop_cloth.ogg", t = 0.067},
            {s = path .. "wfoly_sn_kilo98_drop_overshoulder.ogg", t = 0.133},
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
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.075, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sn_kilo98_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_sn_kilo98_inspect_02.ogg", t = 37/30},
			{s = path .. "wfoly_sn_kilo98_inspect_03.ogg", t = 70/30},
			{s = path .. "wfoly_sn_kilo98_inspect_04.ogg", t = 98/30},
			{s = path .. "wfoly_sn_kilo98_inspect_05.ogg", t = 120/30},
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

--- Fast & Tac. Sprint ---
local Translate_Fast = {
    ["reload"] = "reload_fast",
    ["reload_empty"] = "reload_fast_empty",
    ["reload_insert"] = "reload_insert_fast",
    ["reload_finish"] = "reload_finish_fast",
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

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(12, -0.3, -0.1),
	ModelAngleOffset = Angle(0, 0, 0),
	Scale = 0.8,
    },
    ["go_grip_angled"] = {
    ModelOffset = Vector(0, 0, 0.15),
    },
    ["cod2019_griptape_01"] = {
    Model = "models/weapons/cod2019/attachs/weapons/kar98k/attachment_vm_sn_kilo98_pistolgrip_tape.mdl",
    },
    ["cod2019_griptape_02"] = {
    Model = "models/weapons/cod2019/attachs/weapons/kar98k/attachment_vm_sn_kilo98_pistolgrip_tape.mdl",
    },
    ["cod2019_griptape_03"] = {
    Model = "models/weapons/cod2019/attachs/weapons/kar98k/attachment_vm_sn_kilo98_pistolgrip_tape.mdl",
    },
    -- ["cod2019_kar98k_scope"] = {
    -- -- ModelOffset = Vector(-8.1, 0, -0.5),
	-- ShotgunReload = true,
    -- },
    -- ["cod2019_optic_scope_vz"] = {
	-- ShotgunReload = true,
    -- },
    -- ["cod2019_crossbow_scope"] = {
	-- ShotgunReload = true,
    -- },
    -- ["cod2019_optic_hybrid_west02"] = {
		-- ModelOffset = Vector(-2.75, 0, 0.1),
    -- },
    -- ["cod2019_optic_hybrid_west02_thermal"] = {
		-- ModelOffset = Vector(-2.75, 0, 0.1),
    -- },
    -- ["cod2019_optic_reflex_west05_hybrid"] = {
		-- ModelOffset = Vector(-2.75, 0, 0.1),
    -- },
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
    ["rail_sight"] = {
        Bodygroups = {
            {7,1},
        },
    },
    ["sight_front_none"] = {
        Bodygroups = {
            {2,1},
        },
    },
    ["sight_back_none"] = {
        Bodygroups = {
            {9,1},
        },
    },
    ["stock_none"] = {
        Bodygroups = {
            {3,1},
        },
    },
    ["sling"] = {
        Bodygroups = {
            {4,1},
        },
    },
    ["rail_grip"] = {
        Bodygroups = {
            {4,0},
            {5,1},
        },
    },
    ["rail_laser"] = {
        Bodygroups = {
            {6,1},
        },
    },
    ["loader_none"] = {
        Bodygroups = {
            {8,1},
        },
    },
    ["barrel_none"] = {
        Bodygroups = {
            {10,1},
        },
    },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model
	
    if wep:HasElement("scope_kar98k") then 
		model:SetBodygroup(7,0)	
	end
end

SWEP.Attachments = {
    { -- 1
        PrintName = ARC9:GetPhrase("mw19_category_muzzle"),
        Category = "cod2019_muzzle",
        DefaultIcon = Material("entities/defattachs/muzzle-ar.png", "mips smooth"),
		Bone = "tag_silencer",
        Pos = Vector(-0.23, 0, 0),
    },
    { -- 2
        PrintName = ARC9:GetPhrase("mw19_category_barrel"),
		DefaultIcon = Material("entities/defattachs/barrel-ar.png", "mips smooth"),
        Category = "cod2019_kar98k_barrel",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
    },
    { -- 3
        PrintName = ARC9:GetPhrase("mw19_category_laser"),
		DefaultIcon = Material("entities/defattachs/laser-ar.png", "mips smooth"),
        Category = "cod2019_tac_rail_cylinder",
        Bone = "tag_laser_attach",
        Pos = Vector(-0.34, -1.34, 0),
		Ang = Angle(0, 0, 0),
		InstalledElements = {"rail_laser"},
    },
    { -- 4
        PrintName = ARC9:GetPhrase("mw19_category_optic"),
		DefaultIcon = Material("entities/defattachs/optic.png", "mips smooth"),
        Category = {"cod2019_optic","cod2019_kar98k_optic"},
        Bone = "tag_scope",
        Pos = Vector(2.5, 0, -0.07),
		InstalledElements = {"rail_sight"},
    },
    { -- 5
        PrintName = ARC9:GetPhrase("mw19_category_stock"),
		DefaultIcon = Material("entities/defattachs/stock-ar.png", "mips smooth"),
        Category = "cod2019_kar98k_stock",
        Bone = "tag_stock_attach",
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(7, 0, 1.25),
    },
    { -- 6
        PrintName = ARC9:GetPhrase("mw19_category_underbarrel"),
		DefaultIcon = Material("entities/defattachs/grip.png", "mips smooth"),
        Category = "cod2019_grip",
        Bone = "tag_attachments",
        Pos = Vector(18.2, 0, 0.55),
        Ang = Angle(0, 0, 180),
		InstalledElements = {"rail_grip"},
    },
    { -- 7
        PrintName = ARC9:GetPhrase("mw19_category_ammo"),
		DefaultIcon = Material("arc9/def_att_icons/ammotype.png", "mips smooth"),
        Bone = "tag_mag_attach",
		Category = {"cod2019_ammo"},
		Pos = Vector(9, 0, 1.5),
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
        Bone = "tag_attachments",
        Pos = Vector(8.25, 0, 0),
    },
	
	-- Unofficial
    { -- 10
        PrintName = ARC9:GetPhrase("mw19_category_receiver"),
        Category = "cod2019_kar98k_receiver",
        Bone = "tag_attachments",
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(7, 0, 1.75),
		Hidden = false,
    },
	
	-- Cosmetics
    { -- 11
        PrintName = ARC9:GetPhrase("mw19_category_skins"),
        Bone = "tag_cosmetic",
        Pos = Vector(-7, 0, 3),
        Category = "cod2019_skins_kar98k",
		CosmeticOnly = true,
    },
    { -- 12
        PrintName = ARC9:GetPhrase("mw19_category_camouflage"),
        Category = {"universal_camo"},
        Bone = "tag_cosmetic",
        Pos = Vector(-9, 0, 3),
        CosmeticOnly = true,
    },
    { -- 13
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/snip_kar98k_decal_a.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-11, 0, 3),
    },
    { -- 14
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/snip_kar98k_decal_b.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-13, 0, 3),
    },
    { -- 15
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/snip_kar98k_decal_c.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-15, 0, 3),
    },
    { -- 16
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/snip_kar98k_decal_d.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-17, 0, 3),
    },
    { -- 17
        PrintName = ARC9:GetPhrase("mw19_category_charm"),
        CosmeticOnly = true,
        Category = {"charm"},
        Bone = "tag_cosmetic",
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(-19, 0, 3),
		Scale = 1.5,
    },
    { -- 18
        PrintName = ARC9:GetPhrase("mw19_category_stats"),
        Category = {"killcounter","killcounter2"},
        Bone = "tag_cosmetic",
        Pos = Vector(-15, 0.3, 0),
		Icon_Offset = Vector(-6, 0, 3.1),
		CosmeticOnly = true,
    },
}

SWEP.GripPoseParam = 4.3
SWEP.GripPoseParam2 = 0.6
SWEP.CodAngledGripPoseParam = 32
SWEP.CodStubbyGripPoseParam = 22
SWEP.CodStubbyTallGripPoseParam = 26
SWEP.BipodSlide = 0.4

-- Warzone-esque Stats; Add here to change only when using Warzone Stats variable.
if GetConVar("arc9_mw19_stats_warzone"):GetBool() then

-------------------------- DAMAGE PROFILE
SWEP.DamageMax = 95 -- Damage done at point blank range
SWEP.DamageMin = 75 -- Damage done at maximum range

SWEP.RangeMin = 49 / ARC9.HUToM
SWEP.RangeMax = 50 / ARC9.HUToM

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 3.2,
    [HITGROUP_CHEST] = 1.05,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 1,
    [HITGROUP_RIGHTLEG] = 1,
}

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 970 / ARC9.HUToM

-------------------------- FIREMODES

SWEP.RPM = 600

-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.29 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.25 -- How long it takes to go from sprinting to being able to fire.

end
