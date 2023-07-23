AddCSLuaFile()

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = "Marksman Rifles"

SWEP.PrintName = "Crossbow"

SWEP.Class = "Marksman Rifle"
SWEP.Trivia = {
    ["Manufacturer"] = "FSS",
}

SWEP.Credits = {
    Author = "Twilight Sparkle/Firmeteran",
    Assets = "Infinity Ward/Valve/New World Interactive"
}

SWEP.Description = [[Silent and agile, this high-performance crossbow fires 20.0" bolts with exceptional lethality. Exclusive customization, distinct functionality, and unique ammunition types put this weapon in a class of its own. Standard 20.0" bolts are recoverable, and are undetectable by trophy systems.]]

SWEP.ViewModel = "models/weapons/cod2019/c_eq_crossbow.mdl"
SWEP.WorldModel = "models/weapons/w_shot_m3super90.mdl"
SWEP.DefaultBodygroups = "00000000"

SWEP.Slot = 3

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_eq_crossbow.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-11, 6, -2.5),
    Ang = Angle(-17, 3, 180),
    TPIKPos = Vector(-8, 5, -2),
    TPIKAng = Angle(-9, 0, 170),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 36 -- Damage done at point blank range
SWEP.DamageMin = 6 -- Damage done at maximum range

SWEP.Num = 1

SWEP.DamageRand = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 1000
SWEP.RangeMax = 6000

SWEP.Penetration = 10 -- Units of wood that can be penetrated by this gun.

SWEP.ImpactForce = 15

SWEP.ShootEnt = "arc9_cod2019_proj_crossbow_default" -- Set to an entity to launch it out of this weapon.
SWEP.ShootEntForce = 7000
SWEP.ShootEntityData = {} -- Extra data that can be given to a projectile. Sets SENT.WeaponDataLink with this table.

SWEP.PhysBulletMuzzleVelocity = 960 * 39.37

SWEP.ShootPosOffset = Vector(3, 10, -5)
SWEP.ShootPosOffsetSights = Vector(0, 10, -3)

-------------------------- MAGAZINE

SWEP.Ammo = "xbowbolt" -- what ammo type the gun uses

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 1 -- Self-explanatory.
SWEP.SupplyLimit = 24 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 24 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true
SWEP.LauncherCrosshair = false

SWEP.NoFlash = true -- Disable light flash

-------------------------- FIREMODES

SWEP.RPM = 328

SWEP.Firemodes = {
    {
        Mode = 1,
    },
}

-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 3

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil

SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.3

SWEP.RecoilDissipationRate = 40 -- How much recoil dissipates per second.
SWEP.RecoilDissipationRateSights = 50
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 10 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 5

SWEP.RecoilMultCrouch = 0.8
SWEP.RecoilMultMove = 1.25

-------------------------- SPREAD

SWEP.Spread = 0
SWEP.SpreadAddRecoil = 0.05

SWEP.SpreadMultSights = -0.1
SWEP.SpreadAddHipFire = 0.03
--SWEP.SpreadAddMove = 0
--SWEP.SpreadAddMidAir = 05

-------------------------- HANDLING

SWEP.FreeAimRadius = 0 -- In degrees, how much this gun can free aim in hip fire.
SWEP.Sway = 0 -- How much the gun sways.

SWEP.AimDownSightsTime = 0.3 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.4 -- How long it takes to go from sprinting to being able to fire.

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.255

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 255, 155) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-3.82, -4.5, 1.45),
    Ang = Angle(0, 0, -1),
    Magnification = 1.1,
    ViewModelFOV = 56,
    CrosshairInSights = false
}

SWEP.ViewModelFOVBase = 65

SWEP.SprintPos = Vector(0, 0, 0)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.SprintMidPoint = {
    Pos = Vector(0, -1, 0),
    Ang = Angle(-2.5, 0, 2.5)
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.MovingMidPoint = {
    Pos = Vector(0, -0.5, -0.5),
    Ang = Angle(0, 0, 0)
}

SWEP.MovingPos = Vector(-0.7, -0.5, -0.7)
SWEP.MovingAng = Angle(0, 0, -8)

SWEP.CrouchPos = Vector(-0.5, -0, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(17, 35, 3)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeNoRotate = false
SWEP.CustomizeSnapshotPos = Vector(0, 7, 3)

-------------------------- HoldTypes

SWEP.HoldType = "rpg"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeHolstered = "rpg"
SWEP.HoldTypeSights = "rpg"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "pb_ins2_muzzleflash_tracer"
--SWEP.AfterShotParticle = "AC_muzzle_smoke_barrel"
--SWEP.AfterShotParticleDelay = -1
SWEP.MuzzleEffectQCA = 1

SWEP.CamQCA = 4
SWEP.CamQCA_Mult = 1

SWEP.NoShellEject = true

-------------------------- SOUNDS

local path = "weapons/cod2019/crossbow/"

SWEP.ShootSound = "Cod2019.crossbow.fire"

SWEP.EnterSightsSound = path .. "wfoly_sn_crossbow_ads_up.ogg"
SWEP.ExitSightsSound = path .. "wfoly_sn_crossbow_ads_down.ogg"

SWEP.TriggerDelay = 0.03 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayTime = 0.03 -- Time until weapon fires.

SWEP.TriggerDownSound = "weapons/cod2019/crossbow/wfoly_sn_crossbow_hammer_plr_01.ogg"
SWEP.TriggerUpSound = "weapons/cod2019/crossbow/wfoly_sn_crossbow_disconnector_plr_01.ogg"

SWEP.Animations = {
    ["fire"] = {
        Source = "shoot1",
    },
    ["fire_sights"] = {
        Source = "shoot1_ads",
    },
    ["reload"] = {
        Source = "reload",
		MinProgress = 0.8,
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
			{s = path .. "wfoly_sn_crossbow_reload_rotate.ogg", t = 4/30},
			{s = path .. "wfoly_sn_crossbow_reload_pull_string.ogg", t = 13/30},
			{s = path .. "wfoly_sn_crossbow_reload_load_arrow.ogg", t = 55/30},
			{s = path .. "wfoly_sn_crossbow_reload_lock_arrow_01.ogg", t = 65/30},
			{s = path .. "wfoly_sn_crossbow_reload_lock_arrow_02.ogg", t = 70/30},
			{s = path .. "wfoly_sn_crossbow_reload_end.ogg", t = 77/30},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.8,
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
			{s = path .. "wfoly_sn_crossbow_reload_rotate.ogg", t = 2/30},
			{s = path .. "wfoly_sn_crossbow_reload_pull_string.ogg", t = 2/30},
			{s = path .. "wfoly_sn_crossbow_reload_load_arrow.ogg", t = 35/30},
			{s = path .. "wfoly_sn_crossbow_reload_lock_arrow_01.ogg", t = 45/30},
			{s = path .. "wfoly_sn_crossbow_reload_lock_arrow_02.ogg", t = 50/30},
			{s = path .. "wfoly_sn_crossbow_reload_end.ogg", t = 52/30},
        },
    },
    ["ready"] = {
        Source = {"draw"},
        IKTimeLine = {
            {
                t = 0,
                lhik = 0,
                rhik = 1
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_sn_crossbow_raise_first_safety_off.ogg", t = 10/30},
			{s = path .. "wfoly_sn_crossbow_raise_first_end.ogg", t = 16/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
        EventTable = {
            {s = path .. "wfoly_sn_crossbow_raise.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            {s = path .. "wfoly_sn_crossbow_drop.ogg", t = 0/30},
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
		Mult = 2.5,
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
		Mult = 2.5,
    },
    ["inspect"] = {
        Source = "lookat01",
        MinProgress = 0.1,
        FireASAP = true,
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
                t = 0.4,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.55,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_sn_crossbow_inspect_01.ogg", t = 2/30},
			{s = path .. "wfoly_sn_crossbow_inspect_02.ogg", t = 40/30},
			{s = path .. "wfoly_sn_crossbow_inspect_03.ogg", t = 71/30},
			{s = path .. "wfoly_sn_crossbow_inspect_04.ogg", t = 100/30},
			{s = path .. "wfoly_sn_crossbow_inspect_05.ogg", t = 127/30},
        },
    },
    ["bash"] = {
        Source = {"melee", "melee2"},
    },
}

SWEP.Hook_Think	= ARC9.COD2019.BlendEmpty2

-------------------------- ATTACHMENTS

SWEP.Hook_TranslateAnimation = function (wep, anim)
    --local attached = self:GetElements()

    if anim == "reload" and wep:HasElement("perk_speedreload") then
        return "reload_fast"
    -- elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") then 
        -- return "reload_fast_empty"
    end
end

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(5, -0.1, -1.6),
	ModelAngleOffset = Angle(0, 0, 10),
	Scale = 0.8,
    },
    ["go_grip_angled"] = {
    ModelOffset = Vector(0.7, 0, 0),
    },
    ["go_grip_loading"] = {
    ModelOffset = Vector(-0.6, 0, 0.1),
    },
}

SWEP.AttachmentElements = {
    ["sights"] = {
        Bodygroups = {
            {1,1},
        },
    },
    ["grip"] = {
        Bodygroups = {
            {2,1},
			{5,1},
        },
    },
    ["bolt_rock"] = {
        Bodygroups = {
            {3,1},
			{4,1},
        },
    },
}

-- SWEP.Hook_ModifyBodygroups = function(wep, data)
    -- local model = data.model
    -- if wep:HasElement("stock_retract") then model:SetBodygroup(3,1) end
-- end

SWEP.Attachments = {
    {
        PrintName = "Optics",
        Bone = "tag_holo",
        Pos = Vector(2, 0, -0.1),
        Ang = Angle(0, 0, 0),
        Category = {"cod2019_optic",},
        CorrectiveAng = Angle(0, 0, 0),
		InstalledElements = {"sights"},
    },
    {
        PrintName = "Tactical",
        DefaultAttName = "Default",
        Category = "cod2019_tac_pistols",
        Bone = "tag_attachments",
        Pos = Vector(21.5, 0, -1),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Grips",
        DefaultAttName = "Default",
        Category = "cod2019_grip",
        Bone = "tag_grip_attach",
        Pos = Vector(-2.5, 0, 0),
        Ang = Angle(0, 0, 180),
		InstalledElements = {"grip"},
    },
    {
        PrintName = "Ammo",
        Bone = "j_mag1",
        Category = {"cod2019_ammo_crossbow"},
        Pos = Vector(0, -1.5, -1.5),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Perk",
        Category = {"cod2019_perks","cod2019_perks_soh"}
    },
    {
        PrintName = "Skins",
        --Bone = "v_weapon.Clip",
        Category = "cod2019_skins_crossbow",
		CosmeticOnly = true,
    },
    {
        PrintName = "Cosmetic",
        Category = {"universal_camo"},
        CosmeticOnly = true,
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/eq_crossbow_decal_a.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/eq_crossbow_decal_b.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/eq_crossbow_decal_c.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/eq_crossbow_decal_d.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Charm",
        Category = "charm",
        Bone = "tag_attachments",
        Pos = Vector(6, -0.7, -1.5),
        Ang = Angle(0, 0, 0),
		Scale = 1.5,
    },
    {
        PrintName = "Stats",
        Category = {"killcounter","killcounter2"},
        Bone = "tag_attachments",
        Pos = Vector(2.5, -0.3, 1.4),
        Ang = Angle(0, 0, 5),
		CosmeticOnly = true,
    },
}

SWEP.GripPoseParam = 4.5
SWEP.GripPoseParam2 = 0.4
SWEP.CodAngledGripPoseParam = 5.1
SWEP.CodStubbyGripPoseParam = 6.5