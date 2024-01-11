SWEP.CustomSelectIcon = Material("vgui/hud/arc9_cod2019_nade_molotov")

SWEP.Base = "arc9_cod2019_base_nade"

SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_throwable") or "Throwable"

SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.NoDynamicKillIcon = true
SWEP.NotForNPCs = true

SWEP.PrintName = ARC9:GetPhrase("mw19_weapon_nade_molotov") or "Molotov"
SWEP.Class = ARC9:GetPhrase("mw19_class_weapon_ar") or "Grenade"
SWEP.Description = ARC9:GetPhrase("mw19_weapon_nade_molotov_desc") or [[Improvised incendiary device that explodes on impact.]]

SWEP.Credits = {
    [ ARC9:GetPhrase("mw19_author") ] = "Twilight Sparkle/Firmeteran",
    [ ARC9:GetPhrase("mw19_assets") ] = "Activision/Infinity Ward"
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

SWEP.ViewModel = "models/weapons/cod2019/c_eq_molotov.mdl"
SWEP.WorldModel = "models/weapons/cod2019/w_eq_molotov_world.mdl"
SWEP.WorldModelMirror = "models/weapons/cod2019/c_eq_molotov.mdl"
SWEP.MirrorVMWMHeldOnly = true
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
SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 1 -- Self-explanatory.
SWEP.SupplyLimit = 3 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 0 -- Amount of reserve UBGL magazines you can take.
SWEP.Crosshair = true
SWEP.SuppressDefaultEvents = false

SWEP.FreeAimRadius = 0 -- In degrees, how much this gun can free aim in hip fire.
SWEP.Sway = 0 -- How much the gun sways.

SWEP.ShootEnt = "arc9_cod2019_thrownmolotov"
SWEP.Ammo = "grenade"

SWEP.Throwable = true -- Set to true to give this weapon throwing capabilities.
SWEP.Tossable = false -- When grenade is enabled, right click will toss. Set to false to disable, allowing you to aim down sights.
SWEP.ThrowAnimSpeed = 1

SWEP.FuseTimer = -1 -- Length of time that the grenade will take to explode in your hands. -1 = Won't explode.

SWEP.ThrowForceMin = 1000 -- Minimum force that the grenade will be thrown with.
SWEP.ThrowForceMax = 1000 -- Maximum force that the grenade will be thrown with.
SWEP.TossForce = 500 -- Force that the grenade will be thrown with when right clicked.

SWEP.ThrowChargeTime = 1 -- How long it takes to charge the grenade to its maximum throw force.

SWEP.ThrowTumble = false -- Grenade tumbles when thrown.
SWEP.Disposable = true 

-------------------------- HANDLING
SWEP.SprintToFireTime = 0.2 -- How long it takes to go from sprinting to being able to fire.
-------------------------- POSITIONS

SWEP.HasSights = false

SWEP.ViewModelFOVBase = 65

SWEP.SprintPos = Vector(0, 1, 0)
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

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(18, 20, 3)

SWEP.CustomizeSnapshotPos = Vector(0, 20, 0)
SWEP.CustomizeRotateAnchor = Vector(18, -2.25, -4)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeNoRotate = false

SWEP.ShootPosOffset = Vector(1, 5, 0)

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

local path = "weapons/cod2019/throwables/molotov/"
local path2 = "weapons/cod2019/throwables/semtex/"

function SWEP:SecondaryAttack()
    return self:MeleeAttack()
end

SWEP.PreBashTime = 0.25
SWEP.PostBashTime = 0.25

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["idle_primed"] = {
        Source = "idle_primed"
    },
    ["ready"] = {
        Source = "draw",
        MinProgress = 0.3,
        FireASAP = true,
        EventTable = {
            {s = path .. "weap_molotov_pullout_01.ogg", t = 0/30},
        },
    },
    ["draw"] = {
        Source = "draw",
        MinProgress = 0.3,
        FireASAP = true,
        EventTable = {
            {s = path .. "weap_molotov_pullout_01.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
    },
    ["pullpin"] = {
        Source = "pullpin",
        MinProgress = 0.666,
		Mult = 1.5,
        FireASAP = true,
    },
    ["throw"] = {
        Source = "throw",
        EventTable = {
            {s = path .. "weap_molotov_throw_01.ogg", t = 0/30},
            {s = path .. "weap_molotov_throw_alt.ogg", t = 0/30},
        },
        MinProgress = 0.45
    },
    ["toss"] = {
        Source = "throw",
        EventTable = {
            {s = path .. "weap_molotov_throw_02.ogg", t = 0/30},
        },
        MinProgress = 0.45
    },
    ["idle_sprint"] = {
        Source = "sprint",
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
    },
    ["exit_sprint"] = {
        Source = "sprint_out",
		Mult = 5,
    },
    ["bash"] = {
        Source = {"melee_miss01", "melee_miss02","melee_miss03"},
    },
    ["inspect"] = {
        Source = "inspect2",
        MinProgress = 0.1,
        FireASAP = true,
    },
}

-------------------------- ATTACHMENTS

-- SWEP.Attachments = {
    -- {
        -- PrintName = "Functions",
        -- Category = {"go_nade_type"},
    -- },
-- }