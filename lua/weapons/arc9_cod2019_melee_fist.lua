AddCSLuaFile()

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_melee") or "Specials"

SWEP.PrintName = ARC9:GetPhrase("mw19_weapon_fists") or "Fist"

SWEP.Class = ARC9:GetPhrase("mw19_class_weapon_melee") or "Melee"

SWEP.Credits = {
    [ ARC9:GetPhrase("mw19_author") ] = "Twilight Sparkle/Firmeteran",
    [ ARC9:GetPhrase("mw19_assets") ] = "Activision/Infinity Ward"
}

SWEP.Description = ARC9:GetPhrase("mw19_weapon_fists_desc") or [[CQC tactical arms. punch larpers things out of anger.]]

SWEP.ViewModel = "models/weapons/cod2019/c_melee_fist.mdl"
SWEP.WorldModel = "models/weapons/cod2019/c_melee_fist.mdl"

SWEP.Slot = 0

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.NoTPIK = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_melee_fist.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-10, 2, 0),
    Ang = Angle(-2, 0, -190),
    Scale = 1
}

SWEP.DefaultBodygroups = "00"
SWEP.DrawCrosshair = true
SWEP.Crosshair = true
-------------------------- MAGAZINE

SWEP.Ammo = "" -- What ammo type this gun uses.

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = -1 -- Self-explanatory.
SWEP.SupplyLimit = 0 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 0 -- Amount of reserve UBGL magazines you can take.

-------------------------- FIREMODES

SWEP.Firemodes = {
    {
        Mode = 1,
        PrintName = "MELEE"
        -- add other attachment modifiers
    },
}

-------------------------- HANDLING

SWEP.SprintToFireTime = 0.3 -- How long it takes to go from sprinting to being able to fire.
SWEP.ShootWhileSprint = true
SWEP.SprintVerticalOffset = true
SWEP.CanLean = false
SWEP.MissileCrosshair = false
SWEP.ForceStandardCrosshair = true

SWEP.CamQCA = 1
SWEP.CamQCA_Mult = 1

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = true

SWEP.BashDamage = 35
SWEP.BashLungeRange = 64
SWEP.BashRange = 64
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.2
SWEP.BashDamageType = DMG_GENERIC

SWEP.Bash2 = true
SWEP.SecondaryBash = true

SWEP.Bash2Damage = 45
SWEP.Bash2LungeRange = 64
SWEP.Bash2Range = 64
SWEP.PreBash2Time = 0.2
SWEP.PostBash2Time = 0.2
SWEP.Bash2DamageType = DMG_GENERIC

SWEP.Backstab = true
SWEP.BackstabDamage = 250
SWEP.BackstabRange = 32
SWEP.PreBackstabTime = 0.5
SWEP.PostBackstabTime = 0.5
SWEP.BackstabDamageType = DMG_GENERIC

SWEP.ImpactForce = 15

SWEP.MeleeHitSound = "COD2019.Melee.HitBody"
SWEP.MeleeHitWallSound = "COD2019.Melee.HitWall"
SWEP.MeleeSwingSound = "COD2019.Knife.Swing"
SWEP.MeleeHitSound = "COD2019.Melee.HitBody"

local path = "weapons/cod2019/melee/knife/"

SWEP.FiremodeSound = ""

-------------------------- POSITIONS

SWEP.HasSights = false
SWEP.InstantSprintIdle = true

SWEP.ViewModelFOVBase = 65

SWEP.MovingMidPoint = {
    Pos = Vector(0, -0.5, -0.5),
    Ang = Angle(0, 0, 0)
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.MovingPos = Vector(0, -1, -1)
SWEP.MovingAng = Angle(0, 0, 0)

SWEP.SprintPos = Vector(1.5, 1, 0)
SWEP.SprintAng = Angle(0, 0, 15)

SWEP.CrouchPos = Vector(0, 0, -2)
SWEP.CrouchAng = Angle(0, 0, 0)

SWEP.CustomizeAng = Angle(0, -55, -50)
SWEP.CustomizePos = Vector(-10, 29, 4)
SWEP.CustomizeRotateAnchor = Vector(-10, -2.25, -4)
SWEP.CustomizeSnapshotFOV = 65
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeSnapshotPos = Vector(0, 0, 3)

-------------------------- HoldTypes

SWEP.HoldType = "fist"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeHolstered = "passive"
SWEP.HoldTypeSights = "passive"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "passive"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_FIST
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimMelee = ACT_HL2MP_GESTURE_RANGE_ATTACK_FIST

function SWEP:SecondaryAttack()
    return self:MeleeAttack()
end

SWEP.HideBones  = {
    [1] = "tag_torso",
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["ready"] = {
        Source = "draw_first",
    },
    ["draw"] = {
        Source = "draw",
		MinProgress = 0.1,
		FireASAP = true,
    },
    ["holster"] = {
        Source = "holster",
    },
    ["bash"] = {
        Source = {"melee_01","melee_05","melee_07"},
    },
    ["bash2"] = {
        Source = {"melee_02","melee_06","melee_08"},
    },
    ["backstab"] = {
        Source = {"backstab_01","backstab_02"},
    },
    ["idle_sprint"] = {
        Source = "sprint",
    },
    ["exit_sprint"] = {
        Source = "sprint_out",
        Time = 1.5,
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
        Time = 1.5,
    },
    ["inspect"] = {
        Source = "lookat01",
        MinProgress = 0.1,
        FireASAP = true,
    },
}

-------------------------- ATTACHMENTS

SWEP.Attachments = {
    {
        PrintName = "Perk",
        Category = "go_perk_melee",
    },
}