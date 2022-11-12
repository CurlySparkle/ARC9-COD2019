AddCSLuaFile()

SWEP.Base = "arc9_cod_base"

SWEP.Spawnable = true
SWEP.Category = "ARC-9 - COD:2019"

SWEP.PrintName = "M4A1"
SWEP.TrueName = "M4A1"

SWEP.Class = "Assault Rifle"
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

SWEP.Description = [[Fully automatic, all-purpose battle rifle. Control your shots and this weapon can be very effective at range.]]

SWEP.ViewModel = "models/weapons/cod2019/c_rif_m4.mdl"
SWEP.WorldModel = "models/weapons/w_rif_m4a1.mdl"
SWEP.DefaultBodygroups = "0000000"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_rif_m4.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-10.3, 5.5, -4.5),
    Ang = Angle(-7, 0, 180),
    TPIKPos = Vector(-11, 5, -4),
    TPIKAng = Angle(-5, 0, 180),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 28 -- Damage done at point blank range
SWEP.DamageMin = 18 -- Damage done at maximum range

SWEP.DamageRand = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 2000 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 8192 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 25 -- Units of wood that can be penetrated by this gun.

SWEP.ImpactForce = 15

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 2900 * 12

-------------------------- MAGAZINE

SWEP.Ammo = "ar2" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 30 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 2 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 833

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
SWEP.SpreadAddHipFire = 0.05
SWEP.SpreadAddCrouch = -0.05
SWEP.SpreadAddSights = -0.1

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
    Pos = Vector(-3.54, -5, 0.3),
    Ang = Angle(0, 0, 0),
    Magnification = 1.15,
    ViewModelFOV = 56,
}

SWEP.ViewModelFOVBase = 56

SWEP.SprintPos = Vector(0, 1, 1)
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

SWEP.MuzzleParticle = "Weapon_Muzzle_M4"
SWEP.AfterShotParticle = "Weapon_Muzzle_Trace"
SWEP.MuzzleEffectQCA = 1
SWEP.CaseEffectQCA = 2
SWEP.CamQCA = 3

SWEP.ShouldDropMag = true
SWEP.ShouldDropMagEmpty = true

SWEP.ShellModel = "models/shells/mw2019/shell_rifle.mdl"
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 1
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.ShouldDropMag = true
SWEP.DropMagazineModel = "models/weapons/w_ar_m4a1_mag.mdl"
SWEP.DropMagazineSounds = {"physics/metal/weapon_impact_soft1.wav", "physics/metal/weapon_impact_soft2.wav", "physics/metal/weapon_impact_soft3.wav"}
SWEP.DropMagazineAmount = 1
SWEP.DropMagazineTime = 0.35

-------------------------- SOUNDS

SWEP.ShootSound = "Cod2019.M4.Fire"
SWEP.ShootSoundSilenced = "CSGO.M4A4.Silenced_Fire"
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
        Source = "shoot1_ads",
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
            {s = "weapons/cod2019/m4a1/wpfoly_mike4_reload_lift_v2.ogg", t = 0 / 30},
			{s = "weapons/cod2019/m4a1/wpfoly_mike4_reload_magout_v2.ogg", t = 18 / 30},
			{s = "weapons/cod2019/m4a1/wpfoly_mike4_reload_magin_v2_01.ogg", t = 29 / 30},
			{s = "weapons/cod2019/m4a1/wpfoly_mike4_reload_magin_v2_02.ogg", t = 31 / 30},
			{s = "weapons/cod2019/m4a1/wpfoly_mike4_reload_end_v2.ogg", t = 52 / 30},
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
            {s = "weapons/cod2019/m4a1/wpfoly_mike4_reload_empty_lift_v2.ogg", t = 0 / 30},
			{s = "weapons/cod2019/m4a1/wpfoly_mike4_reload_empty_magout_v2.ogg", t = 5 / 30},
			{s = "weapons/cod2019/m4a1/wpfoly_mike4_reload_empty_magin_v2.ogg", t = 32 / 30},
			{s = "weapons/cod2019/m4a1/wpfoly_mike4_reload_empty_chamber_v2.ogg", t = 52 / 30},
			{s = "weapons/cod2019/m4a1/wpfoly_mike4_reload_empty_end_v2.ogg", t = 61 / 30},
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
            {s = "weapons/cod2019/m4a1/wpfoly_mike4_raise_first_01.ogg", t = 0 / 30},
			{s = "weapons/cod2019/m4a1/wpfoly_mike4_raise_first_02.ogg", t = 23 / 30},
			{s = "weapons/cod2019/m4a1/wpfoly_mike4_raise_first_03.ogg", t = 38 / 30},
        },
    },
    ["draw"] = {
        Source = "draw",
        EventTable = {
            {s = "weapons/cod2019/m4a1/wpfoly_mike4_raise_v2.ogg", t = 10 / 30},
        },
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            {s = "weapons/cod2019/m4a1/wpfoly_mike4_raise_v2.ogg", t = 0 / 30},
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
            {s = "weapons/cod2019/m4a1/wfoly_ar_mike4_inspect_01.ogg", t = 0 / 30},
			{s = "weapons/cod2019/m4a1/wfoly_ar_mike4_inspect_02.ogg", t = 36 / 30},
			{s = "weapons/cod2019/m4a1/wfoly_ar_mike4_inspect_03.ogg", t = 62 / 30},
			{s = "weapons/cod2019/m4a1/wfoly_ar_mike4_inspect_04.ogg", t = 99 / 30},
			{s = "weapons/cod2019/m4a1/wfoly_ar_mike4_inspect_05.ogg", t = 126 / 30},
        },
    },
}

-------------------------- ATTACHMENTS

SWEP.AttachmentElements = {
    ["mount"] = {
        Bodygroups = {
            {1,1},
        },
    },
}

SWEP.Attachments = {
    {
        PrintName = "Optics",
        DefaultAttName = "Default",
        Bone = "tag_gun",
        Pos = Vector(-5.5, 0, 1.5),
        Ang = Angle(0, 0, 0),
        Category = {"csgo_optic"},
        CorrectiveAng = Angle(-0.1, 0.45, 0),
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Default",
        Category = {"muzzle"},
        Bone = "tag_barrel_attach",
        Pos = Vector(11.5, 0, 0),
        Ang = Angle(-180, 180, 0),
    },
    {
        PrintName = "Grip",
        DefaultAttName = "Default",
        Category = {"grip"},
        Bone = "tag_gun",
        Pos = Vector(1, 0, -0.7),
        Ang = Angle(-180, 180, 0),
    },
}