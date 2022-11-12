AddCSLuaFile()

SWEP.Base = "arc9_cod_base"

SWEP.Spawnable = true
SWEP.Category = "ARC-9 - COD:2019"

SWEP.PrintName = "MP7"
SWEP.TrueName = "MP7"

SWEP.Class = "Submachine Gun"
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

SWEP.Description = [[Compact by design, this fully automatic weapon has a high rate of fire and low recoil.]]

SWEP.ViewModel = "models/weapons/cod2019/c_smg_mp7.mdl"
SWEP.WorldModel = "models/weapons/w_sm_mp7_dropped.mdl"
SWEP.DefaultBodygroups = "0000000"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_smg_mp7.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-10.3, 5.5, -4.5),
    Ang = Angle(-7, 0, 180),
    TPIKPos = Vector(-11, 5, -4),
    TPIKAng = Angle(-5, 0, 180),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 25 -- Damage done at point blank range
SWEP.DamageMin = 16 -- Damage done at maximum range

SWEP.DamageRand = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 2000 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 8192 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 10 -- Units of wood that can be penetrated by this gun.

SWEP.ImpactForce = 15

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 2900 * 12

-------------------------- MAGAZINE

SWEP.Ammo = "smg1" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 40 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 2 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 950

SWEP.Firemodes = {
    {
        Mode = -1,
        -- add other attachment modifiers
    },
    {
        Mode = 1,
        -- add other attachment modifiers
    }
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 0.65

SWEP.RecoilSeed = 38965 -- CSGO Seed Input Test

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 0.5 -- Multiplier for vertical recoil

SWEP.RecoilSide = 0.85 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.2
SWEP.RecoilRandomSide = 0.2

SWEP.RecoilDissipationRate = 30 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 1 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 1

SWEP.RecoilMultCrouch = 0.7
SWEP.RecoilMultHipFire = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5

-------------------------- SPREAD

SWEP.Spread = 0.002

SWEP.SpreadAddRecoil = 0.001 -- Applied per unit of recoil.

SWEP.SpreadAddMove = 0.05
SWEP.SpreadAddMidAir = 0.1
SWEP.SpreadAddHipFire = 0.03
SWEP.SpreadAddCrouch = -0.05
SWEP.SpreadAddSights = -0.3

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
    Pos = Vector(-3.16, -3, 0.38),
    Ang = Angle(0, 0, 1.5),
    Magnification = 1.15,
    ViewModelFOV = 46,
}

SWEP.ViewModelFOVBase = 64

SWEP.SprintPos = Vector(0, 1, 0)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.SprintMidPoint = {
    Pos = Vector(0, -1.5, 0),
    Ang = Angle(0, 0, 0)
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
SWEP.CustomizeSnapshotAng = Angle(90, 0, 0)
SWEP.CustomizeSnapshotPos = Vector(2, 5, 3)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeNoRotate = false

-------------------------- HoldTypes

SWEP.HoldType = "rpg"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeHolstered = "rpg"
SWEP.HoldTypeSights = "rpg"
SWEP.HoldTypeCustomize = "physgun"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "Weapon_Muzzle_SMG"
SWEP.AfterShotParticle = "Weapon_Muzzle_Trace"
SWEP.MuzzleEffectQCA = 1
SWEP.CaseEffectQCA = 2
SWEP.CamQCA = 3

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = true

SWEP.ShellModel = "models/shells/mw2019/shell_pistol.mdl"
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 1.1
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.DropMagazineModel = "models/weapons/w_sm_mp7_mag.mdl"
SWEP.DropMagazineSounds = {"physics/metal/weapon_impact_soft1.wav", "physics/metal/weapon_impact_soft2.wav", "physics/metal/weapon_impact_soft3.wav"}
SWEP.DropMagazineAmount = 1
SWEP.DropMagazineTime = 0.55

-------------------------- SOUNDS

SWEP.ShootSound = "Cod2019.MP7.Fire"
SWEP.ShootSoundSilenced = "CSGO.mp7.Silenced_Fire"
--SWEP.DistantShootSound = "CSGO.m4a4.Distance_Fire"
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
        Source = "shoot1",
    },
    ["reload"] = {
        Source = "reload",
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
            {s = "weapons/cod2019/mp7/wfoly_plr_sm_mpapa7_reload_lift.ogg", t = 0 / 30},
			{s = "weapons/cod2019/mp7/wfoly_plr_sm_mpapa7_reload_mag_release.ogg", t = 10 / 30},
			{s = "weapons/cod2019/mp7/wfoly_plr_sm_mpapa7_reload_magout.ogg", t = 19 / 30},
			{s = "weapons/cod2019/mp7/wfoly_plr_sm_mpapa7_reload_magin_v2_01.ogg", t = 33 / 30},
			{s = "weapons/cod2019/mp7/wfoly_plr_sm_mpapa7_reload_magin_v2_02.ogg", t = 41 / 30},
			{s = "weapons/cod2019/mp7/wfoly_plr_sm_mpapa7_reload_mvmnt.ogg", t = 46 / 30},
			{s = "weapons/cod2019/mp7/wfoly_plr_sm_mpapa7_reload_end.ogg", t = 49 / 30},
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
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
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = "weapons/cod2019/mp7/wfoly_plr_sm_mpapa7_reload_empty_lift.ogg", t = 0 / 30},
			{s = "weapons/cod2019/mp7/wfoly_plr_sm_mpapa7_reload_empty_magout.ogg", t = 7 / 30},
			{s = "weapons/cod2019/mp7/wfoly_plr_sm_mpapa7_reload_empty_mvmnt.ogg", t = 14 / 30},
			{s = "weapons/cod2019/mp7/wfoly_plr_sm_mpapa7_reload_empty_magin_v2_01.ogg", t = 25 / 30},
			{s = "weapons/cod2019/mp7/wfoly_plr_sm_mpapa7_reload_empty_magin_v2_02.ogg", t = 36 / 30},
			{s = "weapons/cod2019/mp7/wfoly_plr_sm_mpapa7_reload_empty_bolt_release.ogg", t = 45 / 30},
			{s = "weapons/cod2019/mp7/wfoly_plr_sm_mpapa7_reload_empty_mvmnt.ogg", t = 49 / 30},
			{s = "weapons/cod2019/mp7/wfoly_plr_sm_mpapa7_reload_empty_end.ogg", t = 57 / 30},
        },
    },
    ["ready"] = {
        Source = "draw_first",
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
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = "weapons/cod2019/mp7/wfoly_plr_sm_mpapa7_raise_first_lift.ogg", t = 0 / 30},
			{s = "weapons/cod2019/mp7/wfoly_plr_sm_mpapa7_raise_first_charge.ogg", t = 12 / 30},
			{s = "weapons/cod2019/mp7/wfoly_plr_sm_mpapa7_raise_first_end.ogg", t = 21 / 30},
        },
    },
    ["draw"] = {
        Source = "draw",
        EventTable = {
            {s = "weapons/cod2019/mp7/wfoly_plr_sm_mpapa7_raise.ogg", t = 6 / 30},
        },
    },
    ["holster"] = {
        Source = "draw",
		Reverse = true,
		Mult = 0.5,
        EventTable = {
            {s = "weapons/cod2019/mp7/wfoly_plr_sm_mpapa7_reload_mvmnt.ogg", t = 0 / 30},
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
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = "weapons/cod2019/mp7/wfoly_sm_mpapa7_inspect_01.ogg", t = 0 / 30},
			{s = "weapons/cod2019/mp7/wfoly_sm_mpapa7_inspect_02.ogg", t = 30 / 30},
			{s = "weapons/cod2019/mp7/wfoly_sm_mpapa7_inspect_03.ogg", t = 58 / 30},
			{s = "weapons/cod2019/mp7/wfoly_sm_mpapa7_inspect_04.ogg", t = 97 / 30},
			{s = "weapons/cod2019/mp7/wfoly_sm_mpapa7_inspect_05.ogg", t = 109 / 30},
        },
    },
}

-------------------------- ATTACHMENTS

SWEP.AttachmentElements = {
    -- ["mount"] = {
        -- Bodygroups = {
            -- {1,1},
        -- },
    -- },
}

SWEP.Attachments = {
    -- {
        -- PrintName = "Optics",
        -- DefaultAttName = "Default",
        -- Bone = "tag_gun",
        -- Pos = Vector(-5.5, 0, 1.5),
        -- Ang = Angle(0, 0, 0),
        -- Category = {"csgo_optic"},
        -- CorrectiveAng = Angle(-0.1, 0.45, 0),
    -- },
    -- {
        -- PrintName = "Muzzle",
        -- DefaultAttName = "Default",
        -- Category = {"muzzle"},
        -- Bone = "tag_barrel_attach",
        -- Pos = Vector(11.5, 0, 0),
        -- Ang = Angle(-180, 180, 0),
    -- },
    -- {
        -- PrintName = "Grip",
        -- DefaultAttName = "Default",
        -- Category = {"grip"},
        -- Bone = "tag_gun",
        -- Pos = Vector(1, 0, -0.7),
        -- Ang = Angle(-180, 180, 0),
    -- },
}