SWEP.CustomSelectIcon = Material("vgui/hud/arc9_cod2019_nade_knife")

SWEP.Base = "arc9_cod2019_base_nade"

SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_throwable") or "Throwable"

SWEP.LoadoutImage = "entities/loadout/arc9_cod2019_nade_knife.png"

SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.NoDynamicKillIcon = true
SWEP.NotForNPCs = true

SWEP.PrintName = ARC9:GetPhrase("mw19_weapon_nade_knife") or "Throwing Knife"
SWEP.Class = ARC9:GetPhrase("mw19_class_weapon_lethal") or "Throwable"
SWEP.Description = ARC9:GetPhrase("mw19_weapon_nade_knife_desc") or [[Retrievable knife that is lethal on impact.]]
SWEP.ARC9WeaponCategory = 8

SWEP.Credits = {
    [ ARC9:GetPhrase("mw19_author") ] = "Twilight Sparkle/Firmeteran",
    [ ARC9:GetPhrase("mw19_assets") ] = "Activision/Infinity Ward"
}

SWEP.Slot = 4

SWEP.Firemodes = {
    {
        Mode = 1,
        PrintName = ARC9:GetPhrase("mw19_firemode_throwable")
        -- add other attachment modifiers
    },
}

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/cod2019/c_eq_knife.mdl"
SWEP.WorldModel = "models/weapons/cod2019/w_melee_knife_oscar.mdl"
SWEP.WorldModelMirror = "models/weapons/cod2019/c_eq_knife.mdl"
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

SWEP.Ammo = "arc9_cod2019_knife" -- What ammo type this gun uses.
SWEP.DoNotEquipmentAmmo = true

SWEP.BottomlessClip = true
SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 1 -- Self-explanatory.
SWEP.SupplyLimit = 10 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.ForceDefaultClip = 10
SWEP.SecondarySupplyLimit = 0 -- Amount of reserve UBGL magazines you can take.
SWEP.Crosshair = true

SWEP.FreeAimRadius = 0 -- In degrees, how much this gun can free aim in hip fire.
SWEP.Sway = 0 -- How much the gun sways.

SWEP.ShootEnt = "arc9_cod2019_thrownknife"
SWEP.ShootPosOffset = Vector(2, 0, 1)

SWEP.Throwable = true -- Set to true to give this weapon throwing capabilities.
SWEP.Tossable = false -- When grenade is enabled, right click will toss. Set to false to disable, allowing you to aim down sights.
SWEP.ThrowAnimSpeed = 1

SWEP.FuseTimer = -1 -- Length of time that the grenade will take to explode in your hands. -1 = Won't explode.

SWEP.ThrowForceMin = 2000 -- Minimum force that the grenade will be thrown with.
SWEP.ThrowForceMax = 2000 -- Maximum force that the grenade will be thrown with.
SWEP.TossForce = 1300 -- Force that the grenade will be thrown with when right clicked.

SWEP.ThrowChargeTime = 1 -- How long it takes to charge the grenade to its maximum throw force.

SWEP.ThrowTumble = false -- Grenade tumbles when thrown.
SWEP.Disposable = true 

-------------------------- HANDLING
SWEP.SprintToFireTime = 0.2 -- How long it takes to go from sprinting to being able to fire.
-------------------------- POSITIONS

SWEP.HasSights = false

SWEP.ViewModelFOVBase = 64

SWEP.SprintPos = Vector(1, -1, -2)
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

SWEP.CustomizeAng = Angle(45, 20, -5)
SWEP.CustomizePos = Vector(4.5, 17.5, -3)

SWEP.CustomizeSnapshotPos = Vector(0, 20, 0)
SWEP.CustomizeRotateAnchor = Vector(18, -2.25, -4)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeNoRotate = true

-------------------------- AIM ASSIST

SWEP.NoAimAssist = true

-------------------------- HoldTypes

SWEP.HoldType = "slam"
SWEP.HoldTypeNPC = "grenade"
SWEP.HoldTypeSprint = "slam"
SWEP.HoldTypeHolstered = "slam"
SWEP.HoldTypeSights = "slam"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = false

SWEP.CamQCA = 1
SWEP.CamQCA_Mult = 1

SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.3
SWEP.ImpactForce = 15
SWEP.BackstabRange = 64
SWEP.MeleeHitSound = "COD2019.Knife.Hit_Flesh"
SWEP.MeleeHitWallSound = "COD2019.Knife.Hit_World"
SWEP.MeleeSwingSound = "COD2019.Knife.Swing"

function SWEP:SecondaryAttack()
    return self:MeleeAttack()
end

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["idle_primed"] = {
        Source = "idle_primed"
    },
    ["quicknade"] = {
        Source = "draw",
        MinProgress = 0.3,
        FireASAP = true,
        EventTable = {
            {s = "COD2019.Knife.Prepare", t = 0/30},
        },
    },
    ["draw"] = {
        Source = "draw",
        MinProgress = 0.3,
        FireASAP = true,
        EventTable = {
            {s = "COD2019.Knife.Prepare", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            {s = "COD2019.Knife.Prepare", t = 0/30},
        },
    },
    ["pullpin"] = {
        Source = "pullout",
        MinProgress = 0.666,
        FireASAP = true,
    },
    ["throw"] = {
        Source = "throw",
		Mult = 0.8,
        EventTable = {
            {s = "COD2019.Knife.Throw", t = 0/30},
        },
        MinProgress = 0.35
    },
    ["toss"] = {
        Source = "throw",
        EventTable = {
            {s = "COD2019.Knife.Throw", t = 0/30},
        },
        MinProgress = 0.35
    },
    ["inspect"] = {
        Source = "inspect2",
    },
    ["idle_sprint"] = {
        Source = "sprint",
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
		Mult = 5,
    },
    ["exit_sprint"] = {
        Source = "sprint_out",
		Mult = 5,
    },
    ["bash"] = {
        Source = {"melee_hit01", "melee_hit02"},
    },
}

-------------------------- ATTACHMENTS

SWEP.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_perk"),
        Category = {"cod2019_perks"},
    },
	{
        PrintName = ARC9:GetPhrase("mw19_category_camouflage"),
        Category = {"universal_camo"},
        CosmeticOnly = true,
    },
}
