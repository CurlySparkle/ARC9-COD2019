AddCSLuaFile()

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = "Shotguns"

SWEP.PrintName = "Origin-12"

SWEP.Class = "Shotgun"
SWEP.Trivia = {
    ["Country of Origin"] = "United States",
    ["Manufacturer"] = "FORGE TAC",
    ["Caliber"] = "12-gauge",
    ["Weight (Loaded)"] = "4.2 kg",
    ["Projectile Weight"] = "493 gr",
    ["Muzzle Velocity"] = "1,250 ft/s",
    ["Muzzle Energy"] = "2,319 joules"
}

SWEP.Credits = {
    Author = "Twilight Sparkle/Firmeteran",
    Assets = "Infinity Ward/Valve/New World Interactive"
}

SWEP.Description = [[Semi-automatic shotgun with large ammo capacity allows for continuous firing. Effective at close range.]]

SWEP.ViewModel = "models/weapons/cod2019/c_shot_origin12.mdl"
SWEP.WorldModel = "models/weapons/w_shot_m3super90.mdl"
SWEP.DefaultBodygroups = "00000000"

SWEP.Slot = 3

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_shot_origin12.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-11, 6, -2.5),
    Ang = Angle(-17, 3, 180),
    TPIKPos = Vector(-7, 4, 0),
    TPIKAng = Angle(0, 0, 180),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 90 -- Damage done at point blank range
SWEP.DamageMin = 35 -- Damage done at maximum range

SWEP.DistributeDamage = true

SWEP.Num = 6

SWEP.DamageRand = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 500 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 3000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 10 -- Units of wood that can be penetrated by this gun.

SWEP.ImpactForce = 15

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

-------------------------- FIREMODES

SWEP.RPM = 300

SWEP.Firemodes = {
    {
        Mode = 1,
    },
}

-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 4

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil

SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.3

SWEP.RecoilDissipationRate = 40 -- How much recoil dissipates per second.
SWEP.RecoilDissipationRateSights = 50
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 5 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 5

SWEP.RecoilMultCrouch = 0.8
SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.8

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilMultSights = 0.2
SWEP.VisualRecoilPunchSights = 75
SWEP.VisualRecoilPunch = 4
SWEP.VisualRecoilUp = 0.5
SWEP.VisualRecoilRoll = 5
SWEP.VisualRecoilSide = 0

SWEP.VisualRecoilSpringPunchDamping = 100
SWEP.VisualRecoilDampingConst = 100
SWEP.VisualRecoilSpringMagnitude = 1

-------------------------- SPREAD

-- SWEP.Spread = 0.035

-- SWEP.SpreadAddRecoil = 0.02 -- Applied per unit of recoil.

-- SWEP.SpreadAddMove = 0.03
-- --SWEP.SpreadAddMidAir = 0
-- SWEP.SpreadAddHipFire = 0.035
-- SWEP.SpreadMultHipFire = 1.25
-- SWEP.SpreadMultSights = 1
-- SWEP.SpreadAddCrouch = -0.004
-- SWEP.SpreadAddSightsMove = -0.1

SWEP.Spread = 220 * ARC9.MOAToAcc
SWEP.UseDispersion = true
SWEP.DispersionSpread = 0.01
SWEP.DispersionSpreadAddHipFire = 0.02
--SWEP.DispersionSpreadMultMove = 1.5
--SWEP.DispersionSpreadAddMove = 0.015

-------------------------- HANDLING

SWEP.FreeAimRadius = 0 -- In degrees, how much this gun can free aim in hip fire.
SWEP.Sway = 0 -- How much the gun sways.

SWEP.AimDownSightsTime = 0.3 -- How long it takes to go from hip fire to aiming down sights.
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
    Pos = Vector(-2.11, -3, 0.7),
    Ang = Angle(0, 0, 4.5),
    Magnification = 1.1,
    ViewModelFOV = 56,
    CrosshairInSights = false
}

SWEP.ViewModelFOVBase = 65

SWEP.SprintPos = Vector(0, 0, 0)
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

SWEP.MovingPos = Vector(-0.5, -0.5, -0.5)
SWEP.MovingAng = Angle(0, 0, -8)

SWEP.CrouchPos = Vector(-0.5, -0, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(17, 35, 3)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeNoRotate = false
SWEP.CustomizeSnapshotPos = Vector(0, 7, 3)

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
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 4
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_origin12.mdl"
SWEP.ShellSounds = ARC9.ShotgunShellSoundsTable
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 1.2
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_shot_origin12_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
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
SWEP.DropMagazineAng = Angle(0, -90, 0)

SWEP.EjectDelay = 0.1

-------------------------- SOUNDS

local path = "weapons/cod2019/origin12/"

SWEP.ShootSound = "Cod2019.origin12.fire"
SWEP.ShootSoundIndoor = "Cod2019.origin12.fire"

SWEP.ShootSoundSilenced = "Cod2019.origin12.fire.s"
SWEP.ShootSoundSilencedIndoor = "Cod2019.origin12.fire.s"

-- Non-Silenced Outside
SWEP.LayerSound = "Layer_Shotgun.Outside"
SWEP.DistantShootSound = "Distant_Sniper.Outside"
-- Inside
SWEP.LayerSoundIndoor = "Layer_Sniper.Inside"
SWEP.DistantShootSoundIndoor = "Distant_Shotgun.Inside"
---------------------------------------------------
-- Silenced Outside
SWEP.LayerSoundSilenced = "Layer_ARSUP.Outside"
SWEP.DistantShootSoundSilenced = "Distant_Shotgun2.Outside"
-- Inside
SWEP.LayerSoundSilencedIndoor = "Layer_ShotgunSUP.Inside"
SWEP.SoundSilencedIndoor = "Distant_Shotgun2.Outside"
---------------------------------------------------

SWEP.EnterSightsSound = path .. "weap_sh_oscar12_ads_up.ogg"
SWEP.ExitSightsSound = path .. "weap_sh_oscar12_ads_down.ogg"

SWEP.TriggerDelay = 0.025 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayTime = 0.025 -- Time until weapon fires.

SWEP.TriggerDownSound = "weapons/cod2019/origin12/weap_oscar12_fire_first_plr_01.ogg"
SWEP.TriggerUpSound = ""

--SWEP.ReloadHideBonesFirstPerson = true
SWEP.HideBones  = {
    [1] = "j_mag2",
}


SWEP.Animations = {
    ["fire"] = {
        Source = "shoot1",
    },
    ["reload"] = {
        Source = "reload_short",
		MinProgress = 0.8,
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
                t = 0.7,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.75,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sh_oscar12_reload_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_magout_01.ogg", t = 18/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_magin_v2_01.ogg", t = 32/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_magin_v2_02.ogg", t = 40/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_end.ogg", t = 49/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_pull.ogg", t = 51/30},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.9,
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
        EventTable = {
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_magout_01.ogg", t = 4/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_magin_v2_01.ogg", t = 29/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_magin_v2_02.ogg", t = 48/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_hands.ogg", t = 45/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_tilt.ogg", t = 53/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_charge_01.ogg", t = 73/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_end.ogg", t = 87/30},
        },
    },
    -- ["reload_fast"] = {
        -- Source = "reload_fast",
		-- MinProgress = 0.8,
		-- --DropMagAt = 0.7,
        -- IKTimeLine = {
            -- {
                -- t = 0,
                -- lhik = 1,
                -- rhik = 0
            -- },
            -- {
                -- t = 0.2,
                -- lhik = 0,
                -- rhik = 0
            -- },
            -- {
                -- t = 0.5,
                -- lhik = 0,
                -- rhik = 0
            -- },
            -- {
                -- t = 0.9,
                -- lhik = 1,
                -- rhik = 1
            -- },
        -- },
        -- EventTable = {
			-- {s = path .. "wfoly_plr_sh_oscar12_reload_empty_start.ogg", t = 0/30},
			-- {s = path .. "wfoly_plr_sh_oscar12_reload_empty_magout_01.ogg", t = 7/30},
			-- {s = path .. "wfoly_plr_sh_oscar12_reload_empty_magin_v2_01.ogg", t = 25/30},
			-- {s = path .. "wfoly_plr_sh_oscar12_reload_empty_end.ogg", t = 48/30},
        -- },
    -- },
    ["reload_fast"] = {
        Source = "reload_fast2",
		MinProgress = 0.85,
		DropMagAt = 0.7,
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
                t = 0.95,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_magout_01.ogg", t = 5/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_magin_v2_01.ogg", t = 25/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_end.ogg", t = 48/30},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.9,
		DropMagAt = 0.7,
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
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_magout_01.ogg", t = 4/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_magin_v2_02.ogg", t = 34/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_charge_01.ogg", t = 40/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_end.ogg", t = 52/30},
        },
    },
    ["reload_drum"] = {
        Source = "reload_drum",
		MinProgress = 0.8,
		DropMagAt = 0.7,
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
                t = 0.7,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.75,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sh_oscar12_reload_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_magout_01.ogg", t = 18/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_magin_v2_01.ogg", t = 32/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_magin_v2_02.ogg", t = 40/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_end.ogg", t = 49/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_pull.ogg", t = 51/30},
        },
    },
    ["reload_drum_empty"] = {
        Source = "reload_empty_drum",
		MinProgress = 0.9,
		DropMagAt = 0.7,
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
        EventTable = {
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_magout_01.ogg", t = 4/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_magin_v2_01.ogg", t = 29/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_magin_v2_02.ogg", t = 48/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_hands.ogg", t = 45/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_tilt.ogg", t = 53/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_charge_01.ogg", t = 74/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_end.ogg", t = 87/30},
        },
    },
    ["reload_drum_fast"] = {
        Source = "reload_drum_fast",
		MinProgress = 0.8,
		Mult = 0.9,
		DropMagAt = 0.7,
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
                t = 0.9,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_magout_01.ogg", t = 4/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_magin_v2_01.ogg", t = 26/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_end.ogg", t = 48/30},
        },
    },
    ["reload_drum_empty_fast"] = {
        Source = "reload_empty_drum_fast",
		MinProgress = 0.9,
		DropMagAt = 0.7,
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
        EventTable = {
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_magout_01.ogg", t = 4/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_magin_v2_01.ogg", t = 29/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_magin_v2_02.ogg", t = 48/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_hands.ogg", t = 45/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_tilt.ogg", t = 53/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_charge_01.ogg", t = 74/30},
			{s = path .. "wfoly_plr_sh_oscar12_reload_empty_end.ogg", t = 87/30},
        },
    },
    ["ready"] = {
        Source = {"draw"},
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
            {s = path .. "wfoly_plr_sh_oscar12_raise_first_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sh_oscar12_raise_first_magin_01.ogg", t = 9/30},
			{s = path .. "wfoly_plr_sh_oscar12_raise_first_end_hit.ogg", t = 23/30},
			{s = path .. "wfoly_plr_sh_oscar12_raise_first_end.ogg", t = 27/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
        EventTable = {
            {s = path .. "wfoly_plr_sh_oscar12_raise_first_start.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            {s = path .. "wfoly_plr_sh_oscar12_drop_down.ogg", t = 0/30},
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
		Mult = 2,
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
		Mult = 2,
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
                t = 0.2,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.7,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1.1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_sh_oscar12_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_sh_oscar12_inspect_02.ogg", t = 42/30},
			{s = path .. "wfoly_sh_oscar12_inspect_03.ogg", t = 73/30},
			{s = path .. "wfoly_sh_oscar12_inspect_04.ogg", t = 102/30},
			{s = path .. "wfoly_sh_oscar12_inspect_05.ogg", t = 128/30},
        },
    },
    ["bash"] = {
        Source = {"melee", "melee2","melee3"},
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
                t = 0.6,
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

SWEP.Hook_Think	= ARC9.COD2019.BlendSights2

-------------------------- ATTACHMENTS

SWEP.Hook_TranslateAnimation = function (wep, anim)
    --local attached = self:GetElements()

    if anim == "reload" and wep:HasElement("perk_speedreload") and wep:HasElement("ammo_extend") then
        return "reload_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") and wep:HasElement("ammo_extend") then 
        return "reload_fast_empty"
--------------------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("perk_speedreload") and wep:HasElement("ammo_extend_drum") then
        return "reload_drum_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") and wep:HasElement("ammo_extend_drum") then 
        return "reload_drum_fast_empty"
--------------------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("perk_speedreload") then 
        return "reload_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") then 
        return "reload_fast_empty"
--------------------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("ammo_extend_drum") then 
        return "reload_drum"
    elseif anim == "reload_empty" and wep:HasElement("ammo_extend_drum") then 
        return "reload_drum_empty"
--------------------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("ammo_extend") then 
        return "reload_xmag"
    elseif anim == "reload_empty" and wep:HasElement("ammo_extend") then 
        return "reload_xmag_empty"
    end
end

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(11.3, -0.6, 0.69),
	ModelAngleOffset = Angle(0, 0, 0),
	Scale = 0.8,
    },
    ["go_supp_shitvo"] = {
	ModelAngleOffset = Angle(0, 0, 180),
    },
    ["cod2019_grips_none"] = {
	ModelOffset = Vector(-4, -0.5, -0.7),
	ModelAngleOffset = Angle(0, 0, 180),
    },
}

SWEP.AttachmentElements = {
    -- ["mag"] = {
        -- Bodygroups = {
            -- {1,1},
        -- },
    -- },
    ["stock_none"] = {
        Bodygroups = {
            {3,1},
        },
    },
    ["stock_retracted"] = {
	AttPosMods = { [6] = { Pos = Vector(1.25, 0, 0), } }	
    },
    ["sights"] = {
        Bodygroups = {
            {2,1},
        },
    },
    ["grip_none"] = {
        Bodygroups = {
            {5,1},
        },
    },
}

-- SWEP.Hook_ModifyBodygroups = function(wep, data)
    -- local model = data.model
    -- if wep:HasElement("stock_retract") then model:SetBodygroup(4,0) end
-- end

SWEP.Attachments = {
    {
        PrintName = "Optics",
        Bone = "tag_holo",
        Pos = Vector(1.5, 0, 0),
        Ang = Angle(0, 0, 0),
        Category = {"cod2019_optic",},
        CorrectiveAng = Angle(0, 0, 0),
		InstalledElements = {"sights"},
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Category = "cod2019_muzzle_shot",
        Bone = "tag_silencer",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		--InstalledElements = {"muzzle"},
		Scale = 1,
    },
    {
        PrintName = "Tactical",
        DefaultAttName = "Default",
        Category = "cod2019_tac",
        Bone = "tag_attachments",
        Pos = Vector(15, 1, 0.2),
        Ang = Angle(0, 0, -90),
    },
    {
        PrintName = "Grips",
        DefaultAttName = "Default",
        Category = {"cod2019_grip","cod2019_grip_none"},
        Bone = "tag_grip_attach",
        Pos = Vector(-3.5, 0, 0),
        Ang = Angle(0, 0, 180),
		Scale = 1,
		InstalledElements = {"grip_none"},
    },
    {
        PrintName = "Stock (Opt)",
        DefaultAttName = "Standard",
        Category = {"csgo_origin12_tube"},
        Bone = "tag_attachments",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Stock",
        DefaultAttName = "Standard Stock",
        Category = {"csgo_stock","cod2019_stocks"},
        Bone = "tag_stock_attach",
        Pos = Vector(2.2, 0, 0),
        Ang = Angle(0, 0, 0),
		InstalledElements = {"stock_none"},
		Scale = 1,
    },
    {
        PrintName = "Ammo",
        Bone = "j_mag1",
        Category = {"cod2019_ammo_sg"},
        Pos = Vector(0, -1.5, -1.5),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Mag",
		Bone = "j_mag1",
        Category = {"cod2019_mag"},
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Perk",
        Category = {"cod2019_perks","cod2019_perks_soh"}
    },
    {
        PrintName = "Skins",
        --Bone = "v_weapon.Clip",
        Category = "go_skins_cx9",
		CosmeticOnly = true,
    },
    {
        PrintName = "Cosmetic",
        Category = {"universal_camo"},
        CosmeticOnly = true,
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/shot_origin12_decal_a.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/shot_origin12_decal_b.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/shot_origin12_decal_c.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/shot_origin12_decal_d.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Charm",
        Category = "charm",
        Bone = "tag_attachments",
        Pos = Vector(0.5, -0.75, -0.5),
        Ang = Angle(0, 0, 0),
		Scale = 1,
    },
    {
        PrintName = "Stats",
        Category = {"killcounter","killcounter2"},
        Bone = "tag_attachments",
        Pos = Vector(4, -0.8, -0.5),
        Ang = Angle(0, 0, 0),
		CosmeticOnly = true,
    },
}

SWEP.GripPoseParam = 3
SWEP.GripPoseParam2 = 0.5
SWEP.CodStubbyGripPoseParam = 0.5
SWEP.CodStubbyTallGripPoseParam = 2
SWEP.CodAngledGripPoseParam = 4.1