AddCSLuaFile()

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = "Specials"

SWEP.PrintName = "Riot Shield"

SWEP.Class = "Melee"

SWEP.Credits = {
    Author = "Twilight Sparkle/Firmeteran",
    Assets = "Infinity Ward/Valve/New World Interactive"
}

SWEP.Description = [[Ballistic-proof and explosive-resistant shield with increased melee damage.]]

SWEP.ViewModel = "models/weapons/cod2019/c_eq_shield.mdl"
SWEP.WorldModel = "models/weapons/cod2019/c_eq_shield.mdl"

SWEP.Slot = 0

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.NoTPIK = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_eq_shield.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-7, 11, -4),
    Ang = Angle(-5, -5, 165),
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

SWEP.CamQCA = 1
SWEP.CamQCA_Mult = 1

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = true

SWEP.BashDamage = 55
SWEP.BashLungeRange = 0
SWEP.BashRange = 64
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.25

SWEP.ImpactForce = 15

SWEP.MeleeHitSound = "CSGO.Shield.HitBody"
SWEP.MeleeHitWallSound = "CSGO.Shield.HitWall"
SWEP.MeleeSwingSound = "CSGO.Shield.Swing"

local path = "weapons/cod2019/melee/shield/"

SWEP.BashThirdArmAnimation = {
        rig = "models/weapons/csgo/v_shield.mdl",
        sequence = {"bash1", "bash2"},
        -- sequence = "melee1",
        gun_controller_attachment = 1,
        -- offsetang = Angle(90, 180, 90),
        mult = 1,
        invisible = false,
}

SWEP.FiremodeSound = ""

-------------------------- SHIELD

SWEP.ShieldModel = "models/weapons/cod2019/c_eq_shield_hitbox.mdl"
SWEP.ShieldOffset = Vector(5, 7, 8.5)
SWEP.ShieldAngle = Angle(-10, 0, 165)
SWEP.ShieldScale = 1


-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 225, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.HasSights = false

SWEP.ViewModelFOVBase = 65

SWEP.MovingMidPoint = {
    Pos = Vector(0, -0.5, -0.5),
    Ang = Angle(0, 0, 0)
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.MovingPos = Vector(0, 0, -0.5)
SWEP.MovingAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(0, 3.5, -0.5)
SWEP.CrouchAng = Angle(0, 0, 0)

SWEP.CustomizeAng = Angle(180, -15, 4)
SWEP.CustomizePos = Vector(2, 115, 12)
SWEP.CustomizeSnapshotFOV = 65
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeSnapshotPos = Vector(0, 90, 5)

SWEP.SprintPos = Vector(0, 0, 0)
SWEP.SprintAng = Angle(0, 0, 0)
-------------------------- HoldTypes

SWEP.HoldTypeHolstered = "none"
SWEP.HoldTypeSprint = "melee2"
SWEP.HoldType = "melee2"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_KNIFE
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = ACT_HL2MP_GESTURE_RANGE_ATTACK_KNIFE
SWEP.AnimMelee = ACT_HL2MP_GESTURE_RANGE_ATTACK_SLAM 

function SWEP:SecondaryAttack()
    return self:MeleeAttack()
end

SWEP.Animations = {
    ["blowback"] = {
        Source = "blowback",
        EventTable = {
            {s = "COD2019.Shield.Hit", t = 0/30},
        },
    },
    ["idle"] = {
        Source = "idle",
    },
    ["draw"] = {
        Source = "draw",
        EventTable = {
            {s = path .. "wfoly_me_riotshield_draw.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
		Mult = 0.7,
        EventTable = {
            {s = path .. "wfoly_me_riotshield_draw.ogg", t = 0/30},
        },
    },
    ["bash"] = {
        Source = {"bash1","bash2"},
		--MinProgress = 0.7,
    },
    ["idle_sprint"] = {
        Source = "sprint",
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
        Time = 1.5,
    },
    ["exit_sprint"] = {
        Source = "sprint_out",
        Time = 1.5,
    },
    ["inspect"] = {
        Source = "lookat01",
        MinProgress = 0.1,
        FireASAP = true,
        EventTable = {
            {s = path .. "wfoly_me_riotshield_inspect_01.ogg", t = 0/30},
            {s = path .. "wfoly_me_riotshield_inspect_02.ogg", t = 51/30},
            {s = path .. "wfoly_me_riotshield_inspect_03.ogg", t = 89/30},
            {s = path .. "wfoly_me_riotshield_inspect_04.ogg", t = 134/30},
        },
    },
}

-------------------------- ATTACHMENTS

SWEP.Attachments = {
    {
        PrintName = "Perk",
        Category = "go_perk_melee",
    },
    {
        PrintName = "Skins",
        --Bone = "v_weapon.Clip",
        Category = "go_skins_shield",
		CosmeticOnly = true,
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/eq_shield_decal_a.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/eq_shield_decal_b.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/eq_shield_decal_c.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Cosmetic",
        Category = {"universal_camo"},
        CosmeticOnly = true,
    },
    {
        PrintName = "Stats",
        Category = "killcounter",
        Bone = "tag_riotshield_offset",
        Pos = Vector(4, -1.3, 4.2),
        Ang = Angle(0, 90, 0),
		CosmeticOnly = true,
    },
}