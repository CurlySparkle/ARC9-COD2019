SWEP.Base = "arc9_cod2019_base_nade"

SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_throwable") or "Throwable"

SWEP.LoadoutImage = "entities/loadout/arc9_cod2019_nade_c4.png"

SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.NoDynamicKillIcon = false
SWEP.NotForNPCs = true

SWEP.PrintName = ARC9:GetPhrase("mw19_weapon_nade_c4") or "C4"
SWEP.Class = ARC9:GetPhrase("mw19_class_weapon_lethal") or "Special Explosives"
SWEP.Description = ARC9:GetPhrase("mw19_weapon_nade_c4_desc") or [[Large explosive that sticks to surfaces and can be detonated remotely with Right Click.]]

SWEP.Trivia = {
    [ ARC9:GetPhrase("mw19_country") ] = ARC9:GetPhrase("mw19_country_usa"),
    [ ARC9:GetPhrase("mw19_manufacturer") ] = ARC9:GetPhrase("mw19_manufacturer_xrk"),
}

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

SWEP.ThrowForceMin = 600 -- Minimum force that the grenade will be thrown with.
SWEP.ThrowForceMax = 600 -- Maximum force that the grenade will be thrown with.
SWEP.TossForce = 600 -- Force that the grenade will be thrown with when right clicked.
SWEP.ShootEntInheritPlayerVelocity = true

SWEP.ThrowChargeTime = 1 -- How long it takes to charge the grenade to its maximum throw force.

SWEP.ThrowTumble = true -- Grenade tumbles when thrown.
SWEP.Disposable = true 
SWEP.Detonator = true

SWEP.Akimbo = true

-------------------------- HANDLING
SWEP.SprintToFireTime = 0.2 -- How long it takes to go from sprinting to being able to fire.

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.2

-------------------------- POSITIONS

SWEP.HasSights = false

SWEP.ViewModelFOVBase = 65

SWEP.SprintPos = Vector(0, 0, 0)
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
SWEP.CustomizeNoRotate = true

SWEP.ShootPosOffset = Vector(0, 5, 0)

SWEP.CamQCA = 1
SWEP.CamQCA_Mult = 1

-------------------------- AIM ASSIST

SWEP.NoAimAssist = true

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

function SWEP:SecondaryAttack()
    return self:MeleeAttack()
end

SWEP.DefaultBodygroups = "00000000"

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        EventTable = {
            {ind = 1, bg = 1, t = 0/30},
        },
    },
    ["draw"] = {
        Source = "draw",
        EventTable = {
            {s = path .. "grenade_pin_c4_cloth.ogg", t = 0/30},
            {s = path .. "grenade_pin_c4.ogg", t = 8/30},
			{ind = 1, bg = 1, t = 0/30},
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
      MinProgress = 0.33,
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
    ["bash"] = {
        Source = "melee",
    },
    ["inspect"] = {
        Source = "lookat01",
        MinProgress = 0.1,
        FireASAP = true,
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
    ["idle_sprint_detonator"] = {
        Source = "sprint_empty",
    },
    ["exit_sprint_detonator"] = {
        Source = "sprint_out_empty",
		Mult = 3,
    },
    ["enter_sprint_detonator"] = {
        Source = "sprint_in_empty",
		Mult = 2,
    },
    ["bash_detonator"] = {
        Source = "melee_empty",
    },
    ["inspect_detonator"] = {
        Source = "lookat01_empty",
        MinProgress = 0.1,
        FireASAP = true,
    },
}

-------------------------- ATTACHMENTS

SWEP.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_perk"),
        Category = {"cod2019_perks"},
    },
}