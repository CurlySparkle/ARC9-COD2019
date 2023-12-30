AddCSLuaFile()

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = "Marksman Rifles"

SWEP.PrintName = "Kar98k"

SWEP.Class = "Marksman Rifle"
SWEP.Trivia = {
    ["Country of Origin"] = "Nazi Germany",
    ["Caliber"] = "7.92×57mm Mauser",
    ["Weight (Loaded)"] = "3.7 kg",
    ["Projectile Weight"] = "178.2 gr",
    ["Muzzle Velocity"] = "2,493 ft/s",
    ["Muzzle Energy"] = "3,335 joules"
}

SWEP.Credits = {
    Author = "Twilight Sparkle/Firmeteran",
    Assets = "Infinity Ward/Valve/New World Interactive"
}

SWEP.Description = [[Bolt action rifle chambered in 7.92 Mauser. A WW2 relic that is still extremely lethal in the hands of a rebel marksman.]]

SWEP.ViewModel = "models/weapons/cod2019/c_snip_kar98k.mdl"
SWEP.WorldModel = "models/weapons/w_shot_m3super90.mdl"
SWEP.DefaultBodygroups = "00000000"

SWEP.Slot = 3

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_snip_kar98k.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-11, 6, -2.5),
    Ang = Angle(-17, 3, 180),
    TPIKPos = Vector(-8, 6, 0),
    TPIKAng = Angle(-10, 8, 180),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 86 -- Damage done at point blank range
SWEP.DamageMin = 57 -- Damage done at maximum range

SWEP.Num = 1

SWEP.DamageRand = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 2000 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 11000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 15 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.5

SWEP.ImpactForce = 15

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 2580 * 12
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

SWEP.RecoilDissipationRate = 40 -- How much recoil dissipates per second.
SWEP.RecoilDissipationRateSights = 50
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 5 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 3

SWEP.RecoilMultCrouch = 0.8
SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.8

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilPunch = 2
SWEP.VisualRecoilUp = 0.3

-------------------------- SPREAD

SWEP.Spread = 0.002

SWEP.SpreadAddRecoil = 0.0002 -- Applied per unit of recoil.

SWEP.SpreadMultMove = 1.5
--SWEP.SpreadAddMidAir = 0
SWEP.SpreadAddHipFire = 0.09
SWEP.SpreadAddCrouch = -0.03
SWEP.SpreadAddSights = -0.5

-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.5 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.5 -- How long it takes to go from sprinting to being able to fire.

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
    Pos = Vector(-3.5, -3, 1.2),
    Ang = Angle(0, 0, -4.5),
    Magnification = 1.1,
    ViewModelFOV = 56,
    CrosshairInSights = false
}

SWEP.ViewModelFOVBase = 65

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

SWEP.MovingPos = Vector(-0.8, -0.8, -0.8)
SWEP.MovingAng = Angle(0, 0, -8)

SWEP.CrouchPos = Vector(-0.5, -0, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.SprintPos = Vector(0, -0.5, -0.5)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(20, 35, 3)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeNoRotate = false
SWEP.CustomizeSnapshotPos = Vector(0, 15, 3)

-------------------------- HoldTypes

SWEP.HoldType = "rpg"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeHolstered = "rpg"
SWEP.HoldTypeSights = "rpg"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN
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
    ["fire"] = {
        Source = "shoot1",
    },
    ["cycle"] = {
        Source = "cycle",
		--EjectAt = 0.2,
		MinProgress = 0.8,
        EventTable = {
            {s = path .. "wfoly_sn_kilo98_rechamber_boltopen_01.ogg", v = 0.4, t = 13/60},
			{s = path .. "wfoly_sn_kilo98_rechamber_cloth.ogg", v = 0.4, t = 21/60},
			{s = path .. "wfoly_sn_kilo98_rechamber_boltclose_01.ogg", v = 0.4, t = 36/60},
        },
    },
    ["reload"] = {
        Source = "reload_short",
		MinProgress = 0.8,
		EjectAt = 0.5,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.2,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.7,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.95,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_sn_kilo98_reload_boltopen_01.ogg", t = 0/30},
			{s = path .. "wfoly_sn_kilo98_reload_cloth01.ogg", t = 7/30},
			{s = path .. "wfoly_sn_kilo98_reload_load_v2_01.ogg", t = 33/30},
			{s = path .. "wfoly_sn_kilo98_reload_load_v2_02.ogg", t = 52/30},
			{s = path .. "wfoly_sn_kilo98_reload_cloth02.ogg", t = 61/30},
			{s = path .. "wfoly_sn_kilo98_reload_boltclose_01.ogg", t = 81/30},
			{s = path .. "wfoly_sn_kilo98_reload_end.ogg", t = 88/30},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.9,
		EjectAt = 0.5,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.2,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.5,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.8,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_sn_kilo98_reload_empty_boltopen_01.ogg", t = 0/30},
			{s = path .. "wfoly_sn_kilo98_reload_empty_cloth01.ogg", t = 5/30},
			{s = path .. "wfoly_sn_kilo98_reload_empty_load_v2_01.ogg", t = 38/30},
			{s = path .. "wfoly_sn_kilo98_reload_empty_load_v2_02.ogg", t = 55/30},
			{s = path .. "wfoly_sn_kilo98_reload_empty_cloth02.ogg", t = 80/30},
			{s = path .. "wfoly_sn_kilo98_reload_empty_boltclose_01.ogg", t = 84/30},
			{s = path .. "wfoly_sn_kilo98_reload_empty_end.ogg", t = 96/30},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.8,
		EjectAt = 0.4,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.2,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.7,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.9,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_sn_kilo98_reload_boltopen_01.ogg", t = 2/30},
			{s = path .. "wfoly_sn_kilo98_reload_cloth01.ogg", t = 11/30},
			{s = path .. "wfoly_sn_kilo98_reload_load_v2_01.ogg", t = 27/30},
			{s = path .. "wfoly_sn_kilo98_reload_load_v2_02.ogg", t = 40/30},
			{s = path .. "wfoly_sn_kilo98_reload_cloth02.ogg", t = 61/30},
			{s = path .. "wfoly_sn_kilo98_reload_boltclose_01.ogg", t = 65/30},
			{s = path .. "wfoly_sn_kilo98_reload_end.ogg", t = 72/30},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.9,
		EjectAt = 0.5,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.2,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.5,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.95,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_sn_kilo98_reload_empty_boltopen_01.ogg", t = 0/30},
			{s = path .. "wfoly_sn_kilo98_reload_empty_cloth01.ogg", t = 5/30},
			{s = path .. "wfoly_sn_kilo98_reload_empty_load_v2_01.ogg", t = 35/30},
			{s = path .. "wfoly_sn_kilo98_reload_empty_load_v2_02.ogg", t = 45/30},
			{s = path .. "wfoly_sn_kilo98_reload_empty_cloth02.ogg", t = 48/30},
			{s = path .. "wfoly_sn_kilo98_reload_empty_boltclose_01.ogg", t = 55/30},
			{s = path .. "wfoly_sn_kilo98_reload_empty_end.ogg", t = 59/30},
        },
    },
    ["reload_start"] = {
        Source = "reload_start",
		RestoreAmmo = 1,
		EjectAt = 0.5,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_sn_kilo98_reload_empty_cloth01.ogg", t = 0/30},
			{s = path .. "wfoly_sn_kilo98_reload_empty_boltopen_01.ogg", t = 8/30},
			{s = path .. "wfoly_sn_kilo98_reload_empty_load_v2_01.ogg", t = 34/30},
			{s = path .. "wfoly_sn_kilo98_reload_empty_cloth02.ogg", t = 51/30},
        },
    },
    ["reload_insert"] = {
        Source = "reload_loop",
        IKTimeLine = {
            {
                t = 0,
                lhik = 0,
                rhik = 1
            },
            {
                t = 1,
                lhik = 0,
                rhik = 1
            },
        },
        EventTable = {
			{s = "COD2019.Kar98k.ShellIn", t = 0/30},
        },
    },
    ["reload_finish"] = {
        Source = "reload_end",
        IKTimeLine = {
            {
                t = 0,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.5,
                lhik = 1,
                rhik = 1
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_sn_kilo98_reload_empty_cloth01.ogg", t = 0/30},
			{s = path .. "wfoly_sn_kilo98_reload_empty_boltclose_01.ogg", t = 8/30},
			{s = path .. "wfoly_sn_kilo98_reload_empty_end.ogg", t = 10/30},
        },
    },
    ["reload_start_fast"] = {
        Source = "reload_start_fast",
		RestoreAmmo = 1,
		EjectAt = 0.4,
		Mult = 0.9,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.2,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_sn_kilo98_reload_scope_start_boltopen_02.ogg", t = 0.033},
			{s = path .. "wfoly_sn_kilo98_reload_scope_start_cloth.ogg", t = 0.133},
			{s = path .. "wfoly_sn_kilo98_reload_scope_start_load_01.ogg", t = 0.767},
			{s = path .. "wfoly_sn_kilo98_reload_scope_start_load_02.ogg", t = 0.8},
        },
    },
    ["reload_insert_fast"] = {
        Source = "reload_loop_fast",
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = "COD2019.Kar98k.ShellIn", t = 2/30},
            {s = path .. "wfoly_sn_kilo98_reload_scope_load_01.ogg", t = 6/30},
        },
    },
    ["reload_finish_fast"] = {
        Source = "reload_end_fast",
		Mult = 0.9,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.5,
                lhik = 1,
                rhik = 1
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_sn_kilo98_reload_scope_end_boltclose_01.ogg", t = 0.2},
			{s = path .. "wfoly_sn_kilo98_reload_scope_end_cloth.ogg", t = 0.267},
			{s = path .. "wfoly_sn_kilo98_reload_scope_end_shoulder.ogg", t = 0.633},
        },
    },
    ["ready"] = {
        Source = "draw",
        IKTimeLine = {
            {
                t = 0,
                lhik = 0,
                rhik = 1
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_sn_kilo98_raise_first_raise.ogg", t = 0/30},
			{s = path .. "wfoly_sn_kilo98_raise_first_safety_01.ogg", t = 23/30},
			{s = path .. "wfoly_sn_kilo98_raise_first_end.ogg", t = 17/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
		MinProgress = 0.9,
		FireASAP = true,
        IKTimeLine = {
            {
                t = 0,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_sn_kilo98_raise.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.5,
                lhik = 0,
                rhik = 1
            },
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
		Mult = 2.2,
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
		Mult = 2.2,
    },
    ["inspect"] = {
        Source = "lookat01",
        MinProgress = 0.1,
        FireASAP = true,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.1,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.4,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.63,
                lhik = 1,
                rhik = 1
            },
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
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.5,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.8,
                lhik = 1,
                rhik = 1
            },
        },
    },
}

-- SWEP.Hook_Think	= ARC9.COD2019.BlendSights2

-------------------------- ATTACHMENTS

SWEP.Hook_TranslateAnimation = function (wep, anim)
    --local attached = self:GetElements()
    if anim == "reload_start" and wep:HasElement("perk_speedreload") then
        return "reload_start_fast"
    elseif anim == "reload_insert" and wep:HasElement("perk_speedreload") then
        return "reload_insert_fast"
    elseif anim == "reload_finish" and wep:HasElement("perk_speedreload") then 
        return "reload_finish_fast"

    elseif anim == "reload" and wep:HasElement("perk_speedreload") then 
        return "reload_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") then 
        return "reload_fast_empty"
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
}

SWEP.AttachmentElements = {
    ["mag"] = {
        Bodygroups = {
            {1,1},
        },
    },
    ["sight_rail"] = {
        Bodygroups = {
            {2,1},
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
            {7,1},
        },
    },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model
	
    if wep:HasElement("scope_kar98k") then 
	model:SetBodygroup(2,0)	
	end
end

SWEP.Attachments = {
    {
        PrintName = "Barrels",
        DefaultAttName = "Standard Barrel",
        Category = "cod2019_kar98k_barrel",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Category = "cod2019_muzzle",
        Bone = "tag_silencer",
        Pos = Vector(-0.23, 0, 0),
        Ang = Angle(0, 0, 0),
		--InstalledElements = {"muzzle_none"},
		Scale = 1,
    },
    {
        PrintName = "Optics",
        Bone = "tag_scope",
        Pos = Vector(2.5, 0, -0.07),
        Ang = Angle(0, 0, 0),
        Category = {"cod2019_optic","cod2019_optic_kar98k"},
        CorrectiveAng = Angle(0, 0, 0),
		InstalledElements = {"sight_rail"},
		--Installed = "cod2019_optic_scope_spr208",
        --Integral = "cod2019_optic_scope_spr208",
    },
    {
        PrintName = "Tactical",
        DefaultAttName = "Default",
        Category = "cod2019_tac",
        Bone = "tag_laser_attach",
        Pos = Vector(-10, -0.5, -0.5),
        Ang = Angle(0, 0, -90),
		InstalledElements = {"rail_laser"},
    },
    {
        PrintName = "Stock",
        DefaultAttName = "Standard Stock",
        Category = "cod2019_kar98k_stock",
        Bone = "tag_stock_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		--InstalledElements = {"stock_none","stock_main_none"},
		Scale = 1,
    },
    {
        PrintName = "Grips",
        DefaultAttName = "Default",
        Category = "cod2019_grip",
        Bone = "tag_attachments",
        Pos = Vector(18.2, 0, 0.55),
        Ang = Angle(0, 0, 180),
		Scale = 1,
		InstalledElements = {"rail_grip"},
    },
    {
        PrintName = "Ammo",
		Bone = "tag_attachments",
        Category = {"cod2019_ammo","cod2019_ammo_sniper"},
        Pos = Vector(11, 0, 1),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Mag",
		Bone = "tag_attachments",
        Category = "cod2019_mag",
        Pos = Vector(11, 0, -1),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Perk",
        Category = {"cod2019_perks","cod2019_perks_2","cod2019_perks_soh"}
    },
    {
        PrintName = "Skins",
        --Bone = "v_weapon.Clip",
        Category = "cod2019_skins_kar98k",
		CosmeticOnly = true,
    },
    {
        PrintName = "Cosmetic",
        Category = {"universal_camo"},
        CosmeticOnly = true,
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/snip_kar98k_decal_a.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/snip_kar98k_decal_b.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/snip_kar98k_decal_c.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/snip_kar98k_decal_d.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Charm",
        Category = "charm",
        Bone = "tag_cosmetic",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		Scale = 1.5,
    },
    {
        PrintName = "Stats",
        Category = {"killcounter","killcounter2"},
        Bone = "tag_cosmetic",
        Pos = Vector(-15, 0.3, 0),
        Ang = Angle(0, 0, 0),
		CosmeticOnly = true,
    },
}

SWEP.GripPoseParam = 4.3
SWEP.GripPoseParam2 = 0.6
SWEP.CodAngledGripPoseParam = 7
SWEP.CodStubbyGripPoseParam = 12