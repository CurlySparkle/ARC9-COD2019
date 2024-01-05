SWEP.Base = "arc9_cod2019_base_nade"

SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = "Throwable"

SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.NoDynamicKillIcon = false
SWEP.NotForNPCs = true

SWEP.PrintName = "C4"
SWEP.Class = "Special Explosives"
SWEP.Description = [[Large explosive that sticks to surfaces and can be detonated remotely with Right Click.]]

SWEP.Trivia = {
    ["Country of Origin"] = "United States",
    ["Manufacturer"] = "XRX",
}

SWEP.Credits = {
    Author = "Twilight Sparkle/Firmeteran",
    Assets = "Activision/Infinity Ward"
}

SWEP.Slot = 4

SWEP.Firemodes = {
    {
        Mode = 1,
        PrintName = "Throwable"
        -- add other attachment modifiers
    },
}

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/cod2019/c_eq_c4.mdl"
SWEP.WorldModel = "models/weapons/w_c4.mdl"
SWEP.WorldModelMirror = "models/weapons/cod2019/c_eq_c4.mdl"
SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    Pos = Vector(0, 0, 0),
    Ang = Angle(-10, 0, 180),
    TPIKPos = Vector(-10, 10, -10),
    TPIKAng = Angle(0, 0, 180),
    Scale = 1,
}

SWEP.BottomlessClip = true
SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 1 -- Self-explanatory.
SWEP.SupplyLimit = 3 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 0 -- Amount of reserve UBGL magazines you can take.
SWEP.Crosshair = true

SWEP.FreeAimRadius = 0 -- In degrees, how much this gun can free aim in hip fire.
SWEP.Sway = 0 -- How much the gun sways.

SWEP.ShootEnt = "arc9_cod2019_thrownc4"
SWEP.Ammo = "slam"

SWEP.Throwable = true -- Set to true to give this weapon throwing capabilities.
SWEP.Tossable = false -- When grenade is enabled, right click will toss. Set to false to disable, allowing you to aim down sights.
SWEP.ThrowAnimSpeed = 1

SWEP.FuseTimer = -1 -- Length of time that the grenade will take to explode in your hands. -1 = Won't explode.

SWEP.ThrowForceMin = 1000 -- Minimum force that the grenade will be thrown with.
SWEP.ThrowForceMax = 1000 -- Maximum force that the grenade will be thrown with.
SWEP.TossForce = 1000 -- Force that the grenade will be thrown with when right clicked.
SWEP.ShootEntInheritPlayerVelocity = false

SWEP.ThrowChargeTime = 1 -- How long it takes to charge the grenade to its maximum throw force.

SWEP.ThrowTumble = true -- Grenade tumbles when thrown.
SWEP.Disposable = true 
SWEP.Detonator = true

-------------------------- HANDLING
SWEP.SprintToFireTime = 0.2 -- How long it takes to go from sprinting to being able to fire.
-------------------------- POSITIONS

SWEP.HasSights = false

SWEP.ViewModelFOVBase = 65

SWEP.SprintPos = Vector(0, 0, -2)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.SprintMidPoint = {
    Pos = Vector(0, -1.5, -0.15),
    Ang = Angle(0, 0, 0)
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.MovingMidPoint = {
    Pos = Vector(0, -0.5, -0.5),
    Ang = Angle(0, 0, 0)
}

SWEP.MovingPos = Vector(0, -1, -1)
SWEP.MovingAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-0.5, -0, -1)
SWEP.CrouchAng = Angle(0, 0, 0)

SWEP.CustomizeAng = Angle(0, 0, 0)
SWEP.CustomizePos = Vector(1, 20, 8)

SWEP.CustomizeSnapshotPos = Vector(0, -10, 1)
SWEP.CustomizeRotateAnchor = Vector(1, -2.25, -4)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeNoRotate = false

SWEP.ShootPosOffset = Vector(0, 15, -2)

SWEP.CamQCA = 4
SWEP.CamQCA_Mult = 1

-------------------------- HoldTypes

SWEP.HoldType = "slam"
SWEP.HoldTypeSprint = "slam"
SWEP.HoldTypeHolstered = "slam"
SWEP.HoldTypeSights = "slam"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = false

local path = "weapons/cod2019/throwables/c4/"

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["draw"] = {
        Source = "draw",
        EventTable = {
            {s = path .. "weap_detpack_pullout.ogg", t = 0/30},
            {s = path .. "weap_detpack_button.ogg", t = 8/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            {s = path .. "weap_detpack_pullout.ogg", t = 0/30},
        },
    },
    ["throw"] = {
      Source = "throw",
	  Mult = 1,
      MinProgress = 0.35,
      EventTable = {
            {s = path .. "grenade_blackout_throw_1.ogg", t = 3/30},
        },
    },
    ["touchoff"] = {
      Source = "detonate",
      EventTable = {
            {s = path .. "weap_detpack_foley.ogg", t = 0/30},
            {s = path .. "weap_detpack_trigger.ogg", t = 0/30},
            {s = path .. "weap_detpack_foley_down.ogg", t = 9/30},
        },
    },
--  Empty Sequences
    ["idle_detonator"] = {
      Source = "idle_empty",
    },
    ["draw_detonator"] = {
      Source = "draw_empty",
	  Mult = 0.8,
      EventTable = {
            {s = path .. "weap_detpack_foley_down.ogg", t = 0/30},
        },
    },
    ["holster_detonator"] = {
      Source = "holster_empty",
      EventTable = {
            {s = path .. "weap_detpack_safety.ogg", t = 0/30},
        },
    },
    ["throw_detonator"] = {
      Source = "throw_empty",
	  Mult = 0.7,
      EventTable = {
          {s = "weapons/csgo/breachcharges/breach_throw_01.wav", t = 0},
      },
      MinProgress = 0.35,
    },
    ["detonate_detonator"] = {
      Source = "detonate",
      EventTable = {
            {s = path .. "weap_detpack_foley.ogg", t = 0/30},
            {s = path .. "weap_detpack_trigger.ogg", t = 0/30},
            {s = path .. "weap_detpack_foley_down.ogg", t = 9/30},
        },
    },
}