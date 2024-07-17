SWEP.CustomSelectIcon = Material("vgui/hud/arc9_cod2019_nade_drillcharge")

SWEP.Base = "arc9_cod2019_base_nade"

SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_throwable") or "Throwable"

SWEP.LoadoutImage = "entities/loadout/arc9_cod2019_nade_drillcharge.png"

SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.NoDynamicKillIcon = true
SWEP.NotForNPCs = true

SWEP.PrintName = ARC9:GetPhrase("mw19_weapon_nade_drillcharge") or "Drill Charge"
SWEP.Class = ARC9:GetPhrase("mw19_class_weapon_lethal") or "Drilling Explosive"

SWEP.Description = ARC9:GetPhrase("mw19_weapon_nade_drillcharge_desc") or [[Charge with a thermal lance that can burrow into surfaces before exploding.]]
SWEP.ARC9WeaponCategory = 8

SWEP.Trivia = {
    [ ARC9:GetPhrase("mw19_country") ] = ARC9:GetPhrase("mw19_country_usa"),
    [ ARC9:GetPhrase("mw19_manufacturer") ] = ARC9:GetPhrase("mw19_manufacturer_fss"),
}

SWEP.Credits = {
    [ ARC9:GetPhrase("mw19_author") ] = "Twilight Sparkle/TheOnly8Z/Firmeteran",
    [ ARC9:GetPhrase("mw19_assets") ] = "Activision/Infinity Ward"
}

SWEP.Slot = 4

SWEP.Firemodes = {
    {
        Mode = 1,
        PrintName = "Drill"
    },
}

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/cod2019/c_eq_drill_charge.mdl"
SWEP.WorldModel = "models/weapons/cod2019/w_eq_drill_charge.mdl"
SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.TPIKforcelefthand = true
SWEP.TPIKParentToSpine4 = true
SWEP.WorldModelOffset = {
    Pos = Vector(-1, 7, -12),
    Ang = Angle(50, -5, 190),
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

SWEP.ShootEnt = "arc9_cod2019_throwndrill"
SWEP.Ammo = "grenade" -- What ammo type this gun uses.
SWEP.ShootPosOffset = Vector(5, 0, 3)

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
SWEP.ThrowInstantly = false
SWEP.ShootEntInheritPlayerVelocity = true

-------------------------- AIM ASSIST

SWEP.NoAimAssist = true

-------------------------- POSITIONS

SWEP.HasSights = false
SWEP.ViewModelFOVBase = 64

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

SWEP.SprintPos = Vector(0, 0, 0)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-0.5, -0, -1)
SWEP.CrouchAng = Angle(0, 0, 0)

SWEP.CustomizeAng = Angle(0, 0, 0)
SWEP.CustomizePos = Vector(-8, 17, 1)

SWEP.CustomizeSnapshotAng = Angle(90, 0, 0)
SWEP.CustomizeSnapshotPos = Vector(-13, 10, 3)
SWEP.CustomizeRotateAnchor = Vector(-5, -2.25, -4)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeNoRotate = true

-------------------------- HoldTypes

SWEP.HoldType = "grenade"
SWEP.HoldTypeNPC = "grenade"
SWEP.HoldTypeSprint = "grenade"
SWEP.HoldTypeHolstered = "grenade"
SWEP.HoldTypeSights = "grenade"
SWEP.HoldTypeCustomize = "grenade"
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

local path = "weapons/cod2019/throwables/smoke/"
local path2 = "weapons/cod2019/throwables/drill_charge/"

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["idle_primed"] = {
        Source = "idle_primed"
    },
    ["quicknade"] = {
        Source = "quick_pullout",
        MinProgress = 0.3,
        FireASAP = true,
        EventTable = {
            {s = path2 .. "eqp_bunkerbuster_prime_device.ogg", t = 7/30},
        },
    },
    ["draw"] = {
        Source = "draw",
        MinProgress = 0.3,
		Mult = 1.5,
        FireASAP = true,
        EventTable = {
            {s = path2 .. "eqp_bunkerbuster_prime_device.ogg", t = 5/30},
        },
    },
    ["holster"] = {
        Source = "holster",
		Mult = 1.25,
        EventTable = {
            {s = path2 .. "eqp_bunkerbuster_drop_device.ogg", t = 0/30},
        },
    },
    ["pullpin"] = {
        Source = "pullpin",
        MinProgress = 0.666,
        FireASAP = true,
        EventTable = {
            {s = path .. "grenade_pin_smoke_cloth.ogg", t = 0/30},
        },
    },
    ["throw"] = {
        Source = "throw",
		MinProgress = 0.57,
		Mult = 0.6,
        EventTable = {
            {s = path2 .. "eqp_bunkerbuster_prime_cloth.ogg", t = 10/30},
        },
    },
    ["toss"] = {
        Source = "throw",
		MinProgress = 0.57,
		Mult = 0.6,
        EventTable = {
            {s = path2 .. "eqp_bunkerbuster_prime_cloth.ogg", t = 10/30},
        },
    },
    ["idle_sprint"] = {
        Source = "sprint",
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
		Mult = 6,
    },
    ["exit_sprint"] = {
        Source = "sprint_out",
		Mult = 6,
    },
    ["bash"] = {
        Source = {"melee_miss01","melee_miss02","melee_miss03"},
    },
    -- ["inspect"] = {
        -- Source = "lookat01",
        -- MinProgress = 0.1,
        -- FireASAP = true,
    -- },
}

SWEP.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_perk"),
        Category = {"cod2019_perks"},
    },
}