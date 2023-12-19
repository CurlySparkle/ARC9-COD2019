SWEP.CustomSelectIcon = Material("vgui/hud/arc9_go_nade_landmines")

SWEP.Base = "arc9_cod2019_base_nade"

SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = "Throwable"

SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.NoDynamicKillIcon = true
SWEP.NotForNPCs = true

SWEP.PrintName = "Landmine"
SWEP.Class = "Proximity Explosive"

SWEP.Description = [[Pressure-triggered explosive that deals heavy damage.]]

SWEP.Trivia = {
    ["Country of Origin"] = "United States",
    ["Manufacturer"] = "FSS",
}

SWEP.Credits = {
    Author = "Twilight Sparkle/TheOnly8Z/Firmeteran",
    Assets = "Infinity Ward"
}

SWEP.Slot = 4

SWEP.Firemodes = {
    {
        Mode = 1,
        PrintName = "PLANT"
        -- add other attachment modifiers
    },
}

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/cod2019/c_eq_mine.mdl"
SWEP.WorldModel = "models/weapons/w_eq_landmines.mdl"
SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.TPIKforcelefthand = true
SWEP.TPIKParentToSpine4 = true
SWEP.WorldModelOffset = {
    Pos = Vector(-6.5, 3, -11),
    Ang = Angle(20, -10, 195),

    TPIKPos = Vector(11, 2, 0),
    TPIKAng = Angle(0, 90, 90),
    Scale = 1,
}

SWEP.BottomlessClip = true
SWEP.ClipSize = 1
SWEP.ChamberSize = 0
SWEP.SupplyLimit = 3
SWEP.Crosshair = true

SWEP.Spread = 0
SWEP.FreeAimRadius = 0 -- In degrees, how much this gun can free aim in hip fire.
SWEP.Sway = 0 -- How much the gun sways.

SWEP.ShootEnt = "arc9_cod2019_thrownlandmines"
SWEP.Ammo = "slam" -- What ammo type this gun uses.

SWEP.Throwable = true -- Set to true to give this weapon throwing capabilities.
SWEP.Tossable = false -- When grenade is enabled, right click will toss. Set to false to disable, allowing you to aim down sights.
SWEP.ThrowAnimSpeed = 1

SWEP.FuseTimer = -1 -- Length of time that the grenade will take to explode in your hands. -1 = Won't explode.

SWEP.ThrowForceMin = 750 -- Minimum force that the grenade will be thrown with.
SWEP.ThrowForceMax = 750 -- Maximum force that the grenade will be thrown with.
SWEP.TossForce = 750 -- Force that the grenade will be thrown with when right clicked.

SWEP.ThrowChargeTime = 0 -- How long it takes to charge the grenade to its maximum throw force.

SWEP.Disposable = true

SWEP.ThrowTumble = false
SWEP.ThrowOnGround = false
SWEP.ThrowInstantly = true
SWEP.ShootEntInheritPlayerVelocity = true

SWEP.ShootPosOffset = Vector(0, 30, -7)

-------------------------- POSITIONS

SWEP.HasSights = false

SWEP.ViewModelFOVBase = 65

SWEP.SprintPos = Vector(0, -1, 0)
SWEP.SprintAng = Angle(15, -5, 0)

SWEP.SprintMidPoint = {
    Pos = Vector(0, -1.5, -0.15),
    Ang = Angle(0, 0, 0)
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.ActivePosBash = Vector(0, 0, 0)
SWEP.ActiveAngBash = Angle(0, 0, 0)

SWEP.MovingMidPoint = {
    Pos = Vector(0, -0.5, -0.5),
    Ang = Angle(0, 0, 0)
}

SWEP.MovingPos = Vector(0, -0.5, -0.5)
SWEP.MovingAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-0.5, -0, -1)
SWEP.CrouchAng = Angle(0, 0, 0)

SWEP.CustomizeAng = Angle(-33, -35, 0)
SWEP.CustomizePos = Vector(-5, 25, 13)

SWEP.CustomizeSnapshotAng = Angle(90, 0, 0)
SWEP.CustomizeSnapshotPos = Vector(-13, 10, 3)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeNoRotate = false

-------------------------- HoldTypes

SWEP.HoldType = "slam"
SWEP.HoldTypeSprint = "slam"
SWEP.HoldTypeHolstered = "slam"
SWEP.HoldTypeSights = "slam"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_GRENADE
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = false

SWEP.CamQCA = 1
SWEP.CamQCA_Mult = 1

function SWEP:SecondaryAttack()
    return self:MeleeAttack()
end

SWEP.PreBashTime = 0.22
SWEP.PostBashTime = 0.4
SWEP.ImpactForce = 25

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    -- ["idle_primed"] = {
        -- Source = "idle_primed"
    -- },
    ["draw"] = {
        Source = "draw",
        MinProgress = 0.3,
        FireASAP = true,
        EventTable = {
            {s = "weapons/cod2019/throwables/mine/proxy_pull_out.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            {s = "weapons/cod2019/throwables/mine/proxy_pull_out.ogg", t = 0/30},
        },
    },
    ["throw"] = {
        Source = "throw",
        EventTable = {
            {s = "weapons/cod2019/throwables/mine/proxy_throw.ogg", t = 0/30},
        },
        MinProgress = 0.46
    },
    ["bash"] = {
        Source = "melee",
    },
}