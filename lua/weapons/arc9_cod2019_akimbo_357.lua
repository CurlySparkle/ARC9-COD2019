AddCSLuaFile()

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = "Akimbos"

SWEP.PrintName = ".357"

SWEP.Class = "Handgun"
SWEP.Trivia = {
    ["Country of Origin"] = "United States",
    ["Caliber"] = ".357 Magnum",
    ["Weight (Loaded)"] = "2.2 kg",
    ["Projectile Weight"] = "125 gr",
    ["Muzzle Velocity"] = "1,450 ft/s",
    ["Muzzle Energy"] = "791 joules"
}

SWEP.Credits = {
    Author = "Twilight Sparkle/Firmeteran",
    Assets = "Infinity Ward/Valve/New World Interactive"
}

SWEP.Description = [[Double action revolver firing .357 Magnum ammunition for powerful damage over extended ranges.]]

SWEP.ViewModel = "models/weapons/cod2019/c_akimbo_357.mdl"
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"

SWEP.Slot = 1

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = false
SWEP.WorldModelMirror = "models/weapons/cod2019/c_akimbo_357.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-12, 6, -7.5),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-4, 7.5, -3),
    TPIKAng = Angle(-9, 0, 180),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 70 -- Damage done at point blank range
SWEP.DamageMin = 47 -- Damage done at maximum range

SWEP.DamageRand = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 400 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 1500 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 4 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.35

SWEP.ImpactForce = 11

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 1921 * 12
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 2.5

-------------------------- MAGAZINE

SWEP.Ammo = "357" -- What ammo type this gun uses.

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 12 -- Self-explanatory.
SWEP.SupplyLimit = 8 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 10 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 300

SWEP.Firemodes = {
    {
        Mode = 1,
    },
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 2

--SWEP.RecoilSeed = nil

SWEP.RecoilPatternDrift = 35

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.1

SWEP.RecoilDissipationRate = 35 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 1 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 1.5

SWEP.RecoilMultCrouch = 0.8

SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 1

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilPunch = 1
SWEP.VisualRecoilUp = 0

-------------------------- SPREAD

SWEP.Spread = 0.002

SWEP.SpreadAddRecoil = 0.02
SWEP.SpreadMultRecoil = 1.3
SWEP.RecoilModifierCap = 3

SWEP.SpreadAddMove = 0.05
--SWEP.SpreadAddMidAir = 0
SWEP.SpreadAddHipFire = 0.015
SWEP.SpreadAddCrouch = -0.01
SWEP.SpreadAddSights = -0.5


-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.1 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.1 -- How long it takes to go from sprinting to being able to fire.

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.25

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 255, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(0, 3, 1.5),
    Ang = Angle(0, 0, 3.5),
    Magnification = 1.15,
    ViewModelFOV = 56,
	CrosshairInSights = false
}

SWEP.ViewModelFOVBase = 65

SWEP.SprintMidPoint = {
    Pos = Vector(0, -1, -0.15),
    Ang = Angle(0, 0, 0)
}

SWEP.MovingMidPoint = {
    Pos = Vector(0, -0.5, -0.5),
    Ang = Angle(0, 0, 0)
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.MovingPos = Vector(0, -0.5, -0.5)
SWEP.MovingAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-0.5, -0, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.SprintPos = Vector(0, -1, -1)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(17, 32, 3)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeSnapshotPos = Vector(1, -10, 3)
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeNoRotate = false

-------------------------- HoldTypes

SWEP.HoldType = "rpg"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeHolstered = "rpg"
SWEP.HoldTypeSights = "rpg"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "AC_muzzle_desert"
SWEP.AfterShotParticle = "AC_muzzle_smoke_barrel"
SWEP.MuzzleEffectQCA = 1
SWEP.MuzzleEffectQCAEvenShot = 2
SWEP.CaseEffectQCA = 4
SWEP.CaseEffectQCAEvenShot = 3
SWEP.AfterShotQCA = 1
SWEP.AfterShotQCAEvenShot = 2

SWEP.CamQCA = 7
SWEP.CamQCA_Mult = 1

SWEP.NoShellEject = true
SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.Akimbo = true

-------------------------- SOUNDS

local path = "weapons/cod2019/357/"
local path2 = "weapons/cod2019/50gs/"

SWEP.ShootSound = "COD2019.357.Fire"
SWEP.ShootSoundSilenced = "COD2019.357.Silenced_Fire"
SWEP.DistantShootSound = "CSGO.Deagle.Fire.Distance"
SWEP.DryFireSound = ""

SWEP.FiremodeSound = "CSGO.Rifle.Switch_Mode"

SWEP.EnterSightsSound = "COD2019.Iron.In_Rifle"
SWEP.ExitSightsSound = "COD2019.Iron.Out_Rifle"

SWEP.HideBones = {
    [1] = "j_b_loader_01",
    [2] = "j_b_loader_02",
	[3] = "j_b_loader_03",
	[4] = "j_b_loader_04",
	[5] = "j_b_loader_05",
	[6] = "j_b_loader_06",
	[7] = "j_mag1",
	[8] = "j_b_loader",
}

SWEP.TriggerDelay = 0.02 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayTime = 0.02 -- Time until weapon fires.

SWEP.TriggerDownSound = path .. "wfoly_pi_cpapa_charge_in_trigger_pull.ogg"
SWEP.TriggerUpSound = ""

SWEP.Animations = {
    ["fire_left"] = {
        Source = "shoot1_left",
    },
    ["fire_right"] = {
        Source = "shoot1_right",
    },
    ["dryfire_left"] = {
        Source = "shoot1_cycle_left",
        EventTable = {
			{s = path .. "wfoly_pi_cpapa_charge_in_trigger_pull.ogg", v = 0.5,  t = 0/30},
        },
    },
    ["dryfire_right"] = {
        Source = "shoot1_cycle_right",
        EventTable = {
			{s = path .. "wfoly_pi_cpapa_charge_in_trigger_pull.ogg", v = 0.5,  t = 0/30},
        },
    },
    ["trigger_left"] = {
        Source = "shoot1_cycle_left",
        EventTable = {
			{s = path .. "wfoly_pi_cpapa_charge_in_trigger_pull.ogg", t = 0/30},
        },
    },
    ["trigger_right"] = {
        Source = "shoot1_cycle_right",
        EventTable = {
			{s = path .. "wfoly_pi_cpapa_charge_in_trigger_pull.ogg", t = 0/30},
        },
    },
    ["reload"] = {
        Source = "reload",
		MinProgress = 0.8,
		MagSwapTime = 3.5,
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
                t = 0.85,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_pi_cpapa_charge_reload_fast_start.ogg", t = 0/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_cylinderopen_01.ogg", t = 2/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_fast_cyclinderopen_01.ogg", t = 16/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_shake.ogg", t = 21/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_ejectorrod_01.ogg", t = 24/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_fast_ejectorrod_01.ogg", t = 32/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_fast_shelleject_01.ogg", t = 33/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_fast_shelleject_02.ogg", t = 33/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_arm.ogg", t = 45/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_fast_grip.ogg", t = 46/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_fast_speedloader_01.ogg", t = 57/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_end.ogg", t = 78/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_fast_cylinderclose_01.ogg", t = 84/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_fast_arm.ogg", t = 82/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_fast_cylinderclose_01.ogg", t = 90/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_fast_end.ogg", t = 94/30},
        },
    },
    ["ready"] = {
        Source = "draw",
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
                t = 0.5,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.7,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_pi_cpapa_first_raise_start.ogg", t = 2/30},
            {s = path .. "wfoly_pi_cpapa_first_raise_cylinderopen_01.ogg", t = 3/30},
			{s = path .. "wfoly_pi_cpapa_first_raise_cylinderclose_01.ogg", t = 11/30},
			{s = path .. "wfoly_pi_cpapa_first_raise_end.ogg", t = 15/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
        EventTable = {
            {s = path .. "wfoly_pi_cpapa_charge_raise.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
		Mult = 0.7,
        EventTable = {
            {s = path .. "wfoly_pi_cpapa_charge_reload_fast_grip.ogg", t = 0/30},
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
		NoStatAffectors = true
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
		NoStatAffectors = true
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
                t = 0.1,
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
            {s = path .. "wfoly_pi_cpapa_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_pi_cpapa_inspect_02.ogg", t = 34/30},
			{s = path .. "wfoly_pi_cpapa_inspect_03.ogg", t = 62/30},
			{s = path .. "wfoly_pi_cpapa_inspect_04.ogg", t = 114/30},
        },
    },
    ["bash"] = {
        Source = "melee",
    },
}

-------------------------- ATTACHMENTS

--SWEP.Hook_Think	= ARC9.COD2019.BlendEmpty2

SWEP.DefaultBodygroups = "00000000000000"

-- SWEP.AttachmentTableOverrides = {
    -- ["arc9_stat_proscreen_main"] = {
    -- ModelOffset = Vector(3, -1.15, -3.55),
	-- ModelAngleOffset = Angle(0, 0, 0),
	-- Scale = 0.9,
    -- },
-- }

SWEP.AttachmentElements = {
    ["mag_none"] = {
        Bodygroups = {
            {1,1},
        },
    },
    ["slide_none"] = {
        Bodygroups = {
            {2,1},
        },
    },
    ["grip_none"] = {
        Bodygroups = {
            {3,1},
        },
    },
    ["rail_sight"] = {
        Bodygroups = {
            {4,1},
        },
    },
    ["rail_laser"] = {
        Bodygroups = {
            {5,1},
        },
    },
}

SWEP.Attachments = {
    {
        PrintName = "Slide",
        DefaultAttName = "Standard slide",
        Category = "cod2019_357_slide",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Category = "cod2019_muzzle_pistols",
        Bone = "tag_silencer",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		--InstalledElements = {"muzzle_none"},
		Scale = 1,
        DuplicateModels = {
            {
                Bone = "tag_silencer_l",
            }
        },
    },
    {
        PrintName = "Optics",
        Bone = "tag_reflex",
        Pos = Vector(1.5, 0, -0.07),
        Ang = Angle(0, 0, 0),
        Category = {"cod2019_optics_pistols_alt","eft_optic_small"},
        CorrectiveAng = Angle(0, 0, 0),
		Scale = 0.8,
		InstalledElements = {"rail_sight"},
    },
    {
        PrintName = "Tactical",
        DefaultAttName = "Default",
        Category = "cod2019_tac_pistols",
        Bone = "tag_laser_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		InstalledElements = {"rail_laser"},
        DuplicateModels = {
            {
                Bone = "tag_laser_attach_l",
            }
        },
    },
    {
        PrintName = "Grip",
        DefaultAttName = "Default",
        Category = "cod2019_357_grip",
        Bone = "tag_stock_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 180),
		Scale = 1,
		--InstalledElements = {"rail_grip"},
    },
    {
        PrintName = "Ammo",
        Bone = "j_mag1",
        Category = {"go_ammo"},
        Pos = Vector(0, 0, -1.5),
        Ang = Angle(0, 0, 0),
    },
    {
		PrintName = "Perk",
        Category = {"cod2019_perks","cod2019_perks_soh_2"}
    },
    {
        PrintName = "Skins",
        --Bone = "v_weapon.Clip",
        Category = "cod2019_skins_50gs",
		CosmeticOnly = true,
    },
    {
        PrintName = "Cosmetic",
        Category = {"universal_camo"},
        CosmeticOnly = true,
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/pist_357_decal_a.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/pist_357_decal_b.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/pist_357_decal_c.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/pist_357_decal_d.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Charm",
        Category = "charm",
        Bone = "tag_cosmetic",
        Pos = Vector(-2, 0, 0),
        Ang = Angle(0, 0, 0),
		Scale = 1,
    },
    {
        PrintName = "Stats",
        Category = "killcounter",
        Bone = "tag_cosmetic",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		CosmeticOnly = true,
    },
}

SWEP.GripPoseParam = 4.6
SWEP.GripPoseParam2 = 0.6