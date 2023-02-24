AddCSLuaFile()

SWEP.Base = "arc9_go_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = "Specials"

SWEP.PrintName = "PILA"

SWEP.Class = "Rocket Launcher"
SWEP.Trivia = {
    ["Manufacturer"] = "FSS",
}

SWEP.Credits = {
    Author = "Twilight Sparkle/SlogoKolt/Arctic/TheOnly8Z/Matsilagi/CturiX",
    Assets = "Counter-Strike: Global Offensive/Call of Duty®: Modern Warfare"
}

SWEP.Description = [[Portable infrared surface-to-air missile with a free-fire option. Self propelled missiles have a higher speed, and moderate explosive yield.]]

SWEP.ViewModel = "models/weapons/cod2019/c_eq_pila.mdl"
SWEP.WorldModel = "models/weapons/w_shot_m3super90.mdl"
SWEP.DefaultBodygroups = "00000000"

SWEP.Slot = 3

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_eq_pila.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-11, 6, -2.5),
    Ang = Angle(-17, 3, 180),
    TPIKPos = Vector(-15, 5, 0),
    TPIKAng = Angle(0, 0, 180),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 100 -- Damage done at point blank range
SWEP.DamageMin = 100 -- Damage done at maximum range

SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 1000 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 10000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 0 -- Units of wood that can be penetrated by this gun.

SWEP.ImpactForce = 15

SWEP.ShootEnt = "arc9_cod2019_proj_pila_default" -- Set to an entity to launch it out of this weapon.
SWEP.ShootEntForce = 5000
SWEP.ShootEntityData = {} -- Extra data that can be given to a projectile. Sets SENT.WeaponDataLink with this table.

--SWEP.PhysBulletMuzzleVelocity = 960 * 39.37

SWEP.ShootPosOffset = Vector(5, 20, -5)
SWEP.ShootPosOffsetSights = Vector(0, 20, 0)

SWEP.PushBackForce = 5

-------------------------- MAGAZINE

SWEP.Ammo = "RPG_Round" -- what ammo type the gun uses

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 1 -- Self-explanatory.
SWEP.SupplyLimit = 12 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 12 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true
SWEP.MissileCrosshair = true

-------------------------- FIREMODES

SWEP.RPM = 300

SWEP.Firemodes = {
    {
        Mode = 1,
    },
}

-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 3

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 3 -- Multiplier for vertical recoil

SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.3

SWEP.RecoilDissipationRate = 40 -- How much recoil dissipates per second.
SWEP.RecoilDissipationRateSights = 50
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 10 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 1.5

SWEP.RecoilMultCrouch = 0.9

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilPunch = 5
SWEP.VisualRecoilUp = 5

-------------------------- SPREAD

SWEP.Spread = 0.001
SWEP.SpreadAddRecoil = 0.03

SWEP.SpreadMultSights = 0.1
SWEP.SpreadAddHipFire = 0.01
--SWEP.SpreadAddMove = 0
SWEP.SpreadAddMidAir = 0.03
-- SWEP.SpreadAddRecoil = math.rad(5 / 37.5) -- 0

SWEP.RecoilPatternDrift = 20

-------------------------- HANDLING

SWEP.FreeAimRadius = 0 -- In degrees, how much this gun can free aim in hip fire.
SWEP.Sway = 0 -- How much the gun sways.

SWEP.AimDownSightsTime = 0.8 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.5 -- How long it takes to go from sprinting to being able to fire.

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.7

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 255, 155) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-3.23, -4, -1.5),
    Ang = Angle(-0.6, 3, -5),
    Magnification = 1.25,
    ViewModelFOV = 56,
    CrosshairInSights = true
}

SWEP.ViewModelFOVBase = 65

SWEP.SprintPos = Vector(0, 0, -1)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.SprintMidPoint = {
    Pos = Vector(0, -1, 0),
    Ang = Angle(-2.5, 0, 2.5)
}

SWEP.MovingMidPoint = {
    Pos = Vector(0, -0.5, -0.5),
    Ang = Angle(0, 0, 0)
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, -6, 0)

SWEP.MovingPos = Vector(0, -0.4, -0.4)
SWEP.MovingAng = Angle(0, -6, 0)

SWEP.CrouchPos = Vector(-0.5, -0, -1)
SWEP.CrouchAng = Angle(0, -6, -5)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(5, 40, 5)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeNoRotate = false
SWEP.CustomizeSnapshotPos = Vector(-5, 25, 3)

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

SWEP.MuzzleParticle = "weapon_muzzle_flash_assaultrifle_silenced"
SWEP.AfterShotParticle = "barrel_smoke_plume"
SWEP.AfterShotParticleDelay = -1
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 4
SWEP.CamQCA_Mult = 1

SWEP.NoShellEject = true

-------------------------- SOUNDS

local path = "weapons/cod2019/pila/"

SWEP.ShootSound = "COD2019.Pila.Fire"
SWEP.DistantShootSound = "CSGO.Nova.Fire.Distance"
SWEP.DryFireSound = "weapons/csgo/svd/svd_empty.ogg"

SWEP.FiremodeSound = "CSGO.Rifle.Switch_Mode"

SWEP.EnterSightsSound = "weapons/cod2019/pila/weap_la_gromeo_ads_up.ogg"
SWEP.ExitSightsSound = "weapons/cod2019/pila/weap_la_gromeo_ads_down.ogg"

SWEP.HookP_BlockFire = function(self)
    return self:GetSightAmount() < 1
end

-- SWEP.LockOn = false
-- SWEP.LockOnSights = true

-- Use LockOnSights = true to lock only in sights
-- LockOn will provide targeting data in ENT.ShootEntData

-- This shit broken bruh

-- SWEP.LockOnAutoaim = true -- Gun will shoot directly towards lockon target

-- SWEP.LocksLiving = true -- Locks on to any NPC or player
-- SWEP.LocksGround = true -- Will lock on to any entity deemed a ground target and not an air target
-- SWEP.LocksAir = true -- Will lock on to any entity deemed an air target, and not a ground target

-- SWEP.LockOnRange = 100000 -- How far away the lockon can be
-- SWEP.LockOnFOV = 65 -- How wide the lockon can be
-- SWEP.LockedOnFOV = 65 -- FOV needed to maintain a lock

-- SWEP.LockOnTime = 0.5 -- How long it takes to lock on, in seconds

-- SWEP.LockOnSound = "weapons/cod2019/pila/lockon_start.wav" -- Sound to play when locking on
-- SWEP.LockedOnSound = "weapons/cod2019/pila/lockon.wav" -- Sound to play when successfully locked target

-- SWEP.LockOnHUD = true -- Show a box around locked targets

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
		Mult = 0.8,
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
			{s = path .. "wfoly_plr_la_gromeo_reload_start.ogg", t = 0 / 30},
			{s = path .. "wfoly_plr_la_gromeo_reload_rotate.ogg", t = 22 / 30},
			{s = path .. "wfoly_plr_la_gromeo_reload_rockettip_01.ogg", t = 37 / 30},
			{s = path .. "wfoly_plr_la_gromeo_reload_grabrocket.ogg", t = 64 / 30},
			{s = path .. "wfoly_plr_la_gromeo_reload_load_01.ogg", t = 84 / 30},
			{s = path .. "wfoly_plr_la_gromeo_reload_flipup.ogg", t = 102 / 30},
			{s = path .. "wfoly_plr_la_gromeo_reload_arm.ogg", t = 128 / 30},
			{s = path .. "wfoly_plr_la_gromeo_reload_end.ogg", t = 152 / 30},
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
            {s = path .. "wfoly_plr_la_gromeo_raise_first_up.ogg", t = 3 / 30},
			{s = path .. "wfoly_plr_la_gromeo_raise_first_settle.ogg", t = 18 / 30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
        EventTable = {
            {s = path .. "wfoly_plr_la_gromeo_raise_up.ogg", t = 7 / 30},
			{s = path .. "wfoly_plr_la_gromeo_raise_settle.ogg", t = 22 / 30},
        },
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            {s = path .. "wfoly_plr_la_gromeo_raise_up.ogg", t = 0 / 30},
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
		Mult = 2,
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
		Mult = 2,
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
                t = 0.7,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1.1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            { s = path .. "wfoly_la_gromeo_inspect_01.ogg", t = 1 / 30 },
			{ s = path .. "wfoly_la_gromeo_inspect_02.ogg", t = 36 / 30 },
			{ s = path .. "wfoly_la_gromeo_inspect_03.ogg", t = 87 / 30 },
			{ s = path .. "wfoly_la_gromeo_inspect_04.ogg", t = 140 / 30 },
        },
    },
    ["bash"] = {
        Source = {"melee", "melee2","melee3"},
    },
}

SWEP.Hook_Think	= ARC9.CSGO.BlendEmpty

-------------------------- ATTACHMENTS

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(0, 0, 0),
	ModelAngleOffset = Angle(0, 0, 0),
	Scale = 0.8,
    },
}

SWEP.AttachmentElements = {
    ["sights_scope"] = {
        Bodygroups = {
            {2,0},
        },
    },

    ["sights"] = {
        Bodygroups = {
            {2,1},
        },
    },
    ["grip_rail"] = {
        Bodygroups = {
            {1,1},
        },
    },
    ["laser_rail"] = {
        Bodygroups = {
            {3,1},
        },
    },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model
    if wep:HasElement("sights_scope") then model:SetBodygroup(2,0) end
end

SWEP.Attachments = {
    {
        PrintName = "Optics",
        Bone = "tag_launcher_attachments",
        Pos = Vector(1, -3.1, 0.75),
        Ang = Angle(0, 0, -70),
        Category = {"csgo_optic","cod2019_optic_pila"},
        InstalledElements = {"sights"},
		Installed = "cod2019_optic_scope_pila",
		Integral = "cod2019_optic_scope_pila",
        CorrectiveAng = Angle(-0.4, 0.4, 0),
    },
    {
        PrintName = "Tactical",
        DefaultAttName = "Default",
        Category = "csgo_tac",
        Bone = "tag_launcher_attachments",
        Pos = Vector(13.5, -0.03, 3.1),
        Ang = Angle(0, 0, 180),
		InstalledElements = {"laser_rail"},
    },
    {
        PrintName = "Ammo",
        Bone = "j_mag1",
        Category = {"go_ammo_rpg"},
        Pos = Vector(5, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Perk",
        Category = "go_perk"
    },
    {
        PrintName = "Skins",
        --Bone = "v_weapon.Clip",
        Category = "go_skins_pila",
		CosmeticOnly = true,
    },
    {
        PrintName = "Cosmetic",
        Category = {"universal_camo"},
        CosmeticOnly = true,
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/eq_pila_decal_a.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/eq_pila_decal_b.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/eq_pila_decal_c.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/eq_pila_decal_d.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/eq_pila_decal_e.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Charm",
        Category = "charm",
        Bone = "tag_launcher_attachments",
        Pos = Vector(15.7, -2.2, -0.1),
        Ang = Angle(0, 0, 0),
		Scale = 2,
    },
    {
        PrintName = "Stats",
        Category = {"killcounter","killcounter2"},
        Bone = "tag_launcher_attachments",
        Pos = Vector(5, -1.7, 0),
        Ang = Angle(0, 0, 0),
		CosmeticOnly = true,
    },
}

SWEP.GripPoseParam = 3
SWEP.GripPoseParam2 = 0.5