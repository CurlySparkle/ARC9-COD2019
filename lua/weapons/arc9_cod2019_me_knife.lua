AddCSLuaFile()
if CLIENT then
    killicon.Add( "arc9_cod2019_me_knife", "vgui/killicons/cod2019_me_knife.png", Color(251, 85, 25, 255))
end

SWEP.LoadoutImage = "entities/loadout/arc9_cod2019_me_knife.png"

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_melee") or "Specials"

SWEP.PrintName = ARC9:GetPhrase("mw19_weapon_knife") or "Knife"

SWEP.Class = ARC9:GetPhrase("mw19_class_weapon_melee") or "Melee"

SWEP.Credits = {
    [ ARC9:GetPhrase("mw19_author") ] = "Twilight Sparkle/Firmeteran",
    [ ARC9:GetPhrase("mw19_assets") ] = "Activision/Infinity Ward"
}

SWEP.Description = ARC9:GetPhrase("mw19_weapon_knife_desc") or [[A CQC tactical knife. Standard military issue, employed for fast, quiet, and deadly wetwork.]]

SWEP.ViewModel = "models/weapons/cod2019/c_melee_knife_oscar.mdl"
SWEP.WorldModel = "models/weapons/cod2019/c_melee_knife_oscar.mdl"

SWEP.Slot = 0

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.NoTPIK = true
SWEP.TPIKNoSprintAnim = true 
SWEP.WorldModelMirror = "models/weapons/cod2019/c_melee_knife_oscar.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-6.5, -3, 0),
    Ang = Angle(-15, 0, -55),
    Scale = 1
}

SWEP.DefaultBodygroups = "00"
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

SWEP.CustomCrosshair = true
SWEP.CustomCrosshairMaterial = Material("hud/arc9_cod2019/shotguncrosshair.png", "mips smooth")
SWEP.CustomCrosshairSize = 22
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
        PrintName = ARC9:GetPhrase("mw19_firemode_melee"),
        -- add other attachment modifiers
    },
}

-------------------------- HANDLING

SWEP.SprintToFireTime = 0.3 -- How long it takes to go from sprinting to being able to fire.
SWEP.ShootWhileSprint = true
SWEP.SprintVerticalOffset = true
SWEP.CanLean = false

SWEP.CamQCA = 1
SWEP.CamQCA_Mult = 1

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = true
SWEP.SecondaryBash = true

SWEP.BashDamage = 55
SWEP.BashLungeRange = 64
SWEP.BashRange = 64
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.2
SWEP.BashDamageType = DMG_SLASH

-- SWEP.Bash2 = true
-- SWEP.SecondaryBash = true

-- SWEP.Bash2Damage = 70
-- SWEP.Bash2LungeRange = 64
-- SWEP.Bash2Range = 32
-- SWEP.PreBash2Time = 0.15
-- SWEP.PostBash2Time = 0.75
-- SWEP.Bash2DamageType = DMG_SLASH

SWEP.Backstab = true
SWEP.BackstabDamage = 250
SWEP.BackstabRange = 32
SWEP.PreBackstabTime = 0.3
SWEP.PostBackstabTime = 1
SWEP.BackstabDamageType = DMG_SLASH

SWEP.ImpactForce = 15

SWEP.MeleeHitSound = "COD2019.Knife.Hit_Flesh"
SWEP.MeleeHitWallSound = "COD2019.Knife.Hit_World"
SWEP.MeleeSwingSound = "COD2019.Knife.Swing"
SWEP.BackstabSound = "COD2019.Knife.Hit_Flesh"

local path = "weapons/cod2019/melee/knife/"

SWEP.FiremodeSound = ""

-------------------------- POSITIONS

SWEP.HasSights = false
SWEP.InstantSprintIdle = true

SWEP.ViewModelFOVBase = 64

SWEP.MovingMidPoint = {
    Pos = Vector(0, -0.5, -0.5),
    Ang = Angle(0, 0, 0)
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.MovingPos = Vector(0, -1, -1)
SWEP.MovingAng = Angle(0, 0, 0)

SWEP.SprintPos = Vector(0, -1, -2)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(0, 0, -2)
SWEP.CrouchAng = Angle(0, 0, 0)

SWEP.CustomizeAng = Angle(70, 0, 0)
SWEP.CustomizePos = Vector(10, 20, 4)
SWEP.CustomizeRotateAnchor = Vector(-10, -2.25, -4)
SWEP.CustomizeSnapshotFOV = 65
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeSnapshotPos = Vector(1, 0, 0)
SWEP.CustomizeNoRotate = true

-------------------------- HoldTypes

SWEP.HoldTypeHolstered = "none"
SWEP.HoldTypeSprint = "knife"
SWEP.HoldType = "knife"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_KNIFE
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = ACT_HL2MP_GESTURE_RANGE_ATTACK_KNIFE
SWEP.AnimMelee = ACT_HL2MP_GESTURE_RANGE_ATTACK_KNIFE 

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["ready"] = {
        Source = "draw",
        EventTable = {
            {s = path .. "melee_knife_charge_01.ogg", t = 0/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
		MinProgress = 0.1,
		FireASAP = true,
        EventTable = {
            {s = path .. "melee_knife_charge_01.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
    },
    ["bash"] = {
        Source = {"melee_01","melee_02","melee_03"},
    },
    ["backstab"] = {
        Source = {"backstab_01","backstab_02"},
    },
    ["idle_sprint"] = {
        Source = "sprint",
    },
    ["exit_sprint"] = {
        Source = "sprint_out",
        Time = 1.3,
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
        Time = 1.3,
    },
    ["inspect"] = {
        Source = "lookat01",
        MinProgress = 0.1,
        FireASAP = true,
        EventTable = {
            {s = path .. "wfoly_me_knife_inspect_01.ogg", t = 0/30},
            {s = path .. "wfoly_me_knife_inspect_01.ogg", t = 72/30},
            {s = path .. "wfoly_me_knife_inspect_01.ogg", t = 132/30},
        },
    },
}

SWEP.AttachmentElements = {
    ["body_none"] = {
        Bodygroups = {
            {0,1},
        },
    },
}
-------------------------- ATTACHMENTS

SWEP.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_perk"),
        Category = "go_perk_melee",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_skins"),
        Category = "cod2019_knife_models",
		InstalledElements = {"body_none"},
		CosmeticOnly = true,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_camouflage"),
        Category = {"universal_camo"},
        CosmeticOnly = true,
    },
}