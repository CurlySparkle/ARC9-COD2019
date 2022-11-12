AddCSLuaFile()

SWEP.Base = "arc9_cod_base"

SWEP.Spawnable = true
SWEP.Category = "ARC-9 - COD:2019"

SWEP.PrintName = "Model 680"
SWEP.TrueName = "Model 680"

SWEP.Class = "Shotgun"
-- SWEP.Trivia = {
    -- ["Country of Origin"] = "United States of America",
    -- ["Caliber"] = "5.56 NATO",
    -- ["Weight (Loaded)"] = "3.22kg",
    -- ["Projectile Weight"] = "4 Grams",
    -- ["Muzzle Velocity"] = "2900 Feet/Second",
    -- ["Muzzle Energy"] = "1570 Joules"
-- }

SWEP.Credits = {
    Author = "Arctic/Twilight/Stomatolog/Lutzz",
    Assets = "Call of Duty: Modern Warfare"
}

SWEP.Description = [[Reliable, well-rounded 12 gauge pump-action shotgun.]]

SWEP.ViewModel = "models/weapons/cod2019/c_shot_model680.mdl"
SWEP.WorldModel = "models/weapons/w_shot_m3super90.mdl"
SWEP.DefaultBodygroups = "00000"

SWEP.Slot = 3

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_shot_model680.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-10.3, 5.5, -4.5),
    Ang = Angle(-7, 0, 180),
    TPIKPos = Vector(-11, 5, -4),
    TPIKAng = Angle(-5, 0, 180),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 15 -- Damage done at point blank range
SWEP.DamageMin = 4 -- Damage done at maximum range

SWEP.Num = 9

SWEP.DamageRand = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 500 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 8000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 10 -- Units of wood that can be penetrated by this gun.

SWEP.ImpactForce = 15

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 1250 * 12

-------------------------- MAGAZINE

SWEP.Ammo = "buckshot" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 8 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 2 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 200

SWEP.Firemodes = {
    {
        Mode = 1,
        PrintName = "PUMP"
    },
}

-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1.35

SWEP.RecoilSeed = 7763 -- CSGO Seed Input Test

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 2 -- Multiplier for vertical recoil

SWEP.RecoilSide = 0.7 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.3

SWEP.RecoilDissipationRate = 30 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0.1 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 5.5 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 1.5

SWEP.RecoilMultCrouch = 0.7
SWEP.RecoilMultHipFire = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5

-------------------------- SPREAD

SWEP.Spread = 0.015

SWEP.SpreadAddRecoil = 0.0002 -- Applied per unit of recoil.

SWEP.SpreadAddSights = 0.04
SWEP.SpreadAddMove = 0.055
SWEP.SpreadAddMidAir = 0.03
SWEP.SpreadAddHipFire = 0.02
SWEP.SpreadMultHipFire = 3
SWEP.SpreadAddCrouch = -0.004

-------------------------- HANDLING

SWEP.FreeAimRadius = 0 -- In degrees, how much this gun can free aim in hip fire.
SWEP.Sway = 0 -- How much the gun sways.
SWEP.SwayMultSights = 0

SWEP.AimDownSightsTime = 0.31 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.3 -- How long it takes to go from sprinting to being able to fire.

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 255, 155) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-3.65, -3, 0.27),
    Ang = Angle(1, 1, -5),
    Magnification = 1.25,
    ViewModelFOV = 56,
}

SWEP.ViewModelFOVBase = 64

SWEP.SprintPos = Vector(-1, -1, 0)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.SprintMidPoint = {
    Pos = Vector(0, -1, 0),
    Ang = Angle(-2.5, 0, 2.5)
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.MovingMidPoint = {
    Pos = Vector(0, -0.3, -0.3),
    Ang = Angle(0, 0, 0)
}

SWEP.MovingPos = Vector(-0.7, -0.3, -0.6)
SWEP.MovingAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-0.5, -0, -1)
SWEP.CrouchAng = Angle(0, 0, 0)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(18, 35, 4)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeSnapshotPos = Vector(1, 8, 3)

SWEP.CustomizeNoRotate = false

SWEP.BlindFirePos = Vector(-3, -1, 2)
SWEP.BlindFireAng = Angle(0, 0, -50)

SWEP.BlindFireRightPos = Vector(-22, 20, 0)
SWEP.BlindFireRightAng = Angle(-80, -20, 3)

SWEP.BlindFireLeftPos = Vector(22, 20, 0)
SWEP.BlindFireLeftAng = Angle(80, -20, 3)

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

SWEP.MuzzleParticle = "Weapon_Muzzle_Model680"
SWEP.AfterShotParticle = "Weapon_Muzzle_Trace"
SWEP.MuzzleEffectQCA = 1
SWEP.CaseEffectQCA = 2
SWEP.CamQCA = 3

SWEP.ShellModel = "models/shells/mw2019/shell_12gauge.mdl"
SWEP.ShellCorrectAng = Angle(0, 180, 0)
SWEP.ShellScale = 1.1
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false

SWEP.EjectDelay = 0.25

SWEP.ShotgunReload = true
SWEP.ManualAction = true
SWEP.ManualActionNoLastCycle  = true

-------------------------- SOUNDS

local path = "weapons/cod2019/Model680/"

SWEP.ShootSound = "Cod2019.Model680.Fire"
SWEP.ShootSoundSilenced = "CSGO.Nova.Silenced_Fire"
--SWEP.DistantShootSound = "CSGO.NOVA.Fire.Distance"
SWEP.DryFireSound = "weapons/clipempty_rifle.wav"

SWEP.FiremodeSound = "arc9/firemode.wav"

SWEP.HideBones = {
}

SWEP.HideBonesSilenced = {}

SWEP.ReloadHideBoneTables = {
}

SWEP.Animations = {
    ["fire"] = {
        Source = {"shoot1"},
    },
    ["fire_sights"] = {
        Source = "shoot1_ads",
    },
    ["cycle"] = {
        Source = {"pump"},
        EventTable = {
            {s = "Cod2019.Model680.Pump_A", t = 4 / 30},
			{s = "Cod2019.Model680.Pump_B", t = 8 / 30},
        },
    },
    ["reload_start"] = {
        Source = "reload_start",
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 1,
                lhik = 0,
                rhik = 0
            },
        },
        EventTable = {
            {s = "weapons/cod2019/model680/wfoly_sh_romeo870_reload_start_twist.ogg", t = 0 / 30},
        },
    },
    ["reload_insert"] = {
        Source = "reload_loop",
        IKTimeLine = {
            {
                t = 0,
                lhik = 0,
                rhik = 0
            },
        },
        EventTable = {
            {s = "Cod2019.Model680.Shell", t = 0 / 30},
            {s = "weapons/cod2019/model680/wfoly_sh_romeo870_reload_loop_loadportstart.ogg", t = 0 / 30},
			{s = "weapons/cod2019/model680/wfoly_sh_romeo870_reload_loop_loadportend.ogg", t = 0 / 30},
        },
    },
    ["reload_finish"] = {
        Source = "reload_end",
        IKTimeLine = {
            {
                t = 0,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.5,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = "weapons/cod2019/model680/wfoly_sh_romeo870_reload_empty_start_twist.ogg", t = 0 / 30},
        },
    },
    ["reload_finish_empty"] = {
        Source = "reload_end_empty",
        IKTimeLine = {
            {
                t = 0,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.5,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = "weapons/cod2019/model680/wfoly_sh_romeo870_reload_empty_start_twist.ogg", t = 0 / 30},
			{s = "weapons/cod2019/model680/wfoly_sh_romeo870_reload_empty_start_open_01.ogg", t = 6 / 30},
			{s = "weapons/cod2019/model680/wfoly_sh_romeo870_reload_empty_start_end.ogg", t = 11 / 30},
			{s = "weapons/cod2019/model680/wfoly_sh_romeo870_reload_empty_start_close_01.ogg", t = 15 / 30},
        },
    },
    ["ready"] = {
        Source = {"draw_first"},
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
                t = 0.9,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "nova_draw.wav", t = 0 / 30},
            {s = path .. "nova_pump.wav", t = 19 / 30},
        },
    },
    ["draw"] = {
        Source = "draw",
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            {s = "CSGO.Item.Movement", t = 0 / 30},
        },
    },
    ["idle"] = {
        Source = "idle",
    },
    ["idle_sights"] = {
        Source = "idle_ads",
    },
    ["idle_sprint"] = {
        Source = "sprint",
    },
    ["exit_sprint"] = {
        Source = "sprint_out",
        Time = 1,
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
        Time = 1,
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
                t = 0.9,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = "weapons/cod2019/model680/wfoly_sh_romeo870_inspect_01.ogg", t = 0 / 30},
			{s = "weapons/cod2019/model680/wfoly_sh_romeo870_inspect_02.ogg", t = 41 / 30},
			{s = "weapons/cod2019/model680/wfoly_sh_romeo870_inspect_03.ogg", t = 69 / 30},
			{s = "weapons/cod2019/model680/wfoly_sh_romeo870_inspect_04.ogg", t = 100 / 30},
			{s = "weapons/cod2019/model680/wfoly_sh_romeo870_inspect_05.ogg", t = 126 / 30},
        },
    },
}

--SWEP.Hook_Think	= ARC9.CSGO.BlendEmpty

-------------------------- ATTACHMENTS

SWEP.AttachmentElements = {
}

-- SWEP.Attachments = {
    -- {
        -- PrintName = "Top",
        -- Bone = "v_weapon.NOVA_PARENT",
        -- Pos = Vector(0, -1.9, 8),
        -- Ang = Angle(90, 0, -90),
        -- Category = {"csgo_rail_optic",},
        -- CorrectiveAng = Angle(0, 0, 0),
    -- },
    -- {
        -- PrintName = "Muzzle",
        -- DefaultAttName = "Standard Muzzle",
        -- Category = "muzzle",
        -- Bone = "v_weapon.NOVA_PARENT",
        -- Pos = Vector(0, -1.7, 27.8),
        -- Ang = Angle(90, 0, -90),
    -- },
    -- {
        -- PrintName = "Side",
        -- DefaultAttName = "Default",
        -- Category = "csgo_rail_tac",
        -- Bone = "v_weapon.NOVA_PUMP",
        -- Pos = Vector(-1, -0.3, 8.5),
        -- Ang = Angle(90, 0, 90),
    -- },
    -- {
        -- PrintName = "Bottom",
        -- DefaultAttName = "Default",
        -- Category = "csgo_rail_ub",
        -- Bone = "v_weapon.NOVA_PUMP",
        -- Pos = Vector(0, 1.2, 5),
        -- Ang = Angle(90, 0, 90),
		-- Scale = 1,
    -- },
    -- {
        -- PrintName = "Perk",
        -- Category = "go_perk"
    -- },
-- }

-- SWEP.GripPoseParam = 4
-- SWEP.GripPoseParam2 = 0.5