AddCSLuaFile()

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = "Marksman Rifles"

SWEP.PrintName = "MK2 Carbine"

SWEP.Class = "Marksman Rifle"
SWEP.Trivia = {
    ["Country of Origin"] = "United States",
    ["Manufacturer"] = "FSS",
    ["Caliber"] = ".45-70",
    ["Weight (Loaded)"] = "3.3 kg",
    ["Projectile Weight"] = "300 gr",
    ["Muzzle Velocity"] = "1,589 ft/s",
    ["Muzzle Energy"] = "2,281 joules"
}

SWEP.Credits = {
    Author = "Twilight Sparkle/Firmeteran",
    Assets = "Activision/Infinity Ward"
}

SWEP.Description = [[Highly accurate lever action rifle. Will neutralize an enemy with one well placed round to the head or chest.]]

SWEP.ViewModel = "models/weapons/cod2019/c_snip_mk2.mdl"
SWEP.WorldModel = "models/weapons/w_shot_m3super90.mdl"
SWEP.DefaultBodygroups = "00000000"

SWEP.Slot = 3

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_snip_mk2.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-11, 6, -2.5),
    Ang = Angle(-17, 3, 180),
    TPIKPos = Vector(-5, 3, 0),
    TPIKAng = Angle(-10, 3, 180),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 90 -- Damage done at point blank range
SWEP.DamageMin = 56 -- Damage done at maximum range

SWEP.Num = 1

SWEP.DamageRand = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 3250 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 8000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 11 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.25

SWEP.ImpactForce = 11

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 2800 * 12
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.25

-------------------------- MAGAZINE

SWEP.Ammo = "357" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 6 -- Self-explanatory.
SWEP.SupplyLimit = 12 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 2 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

SWEP.ManualAction = true
SWEP.NoLastCycle = false

SWEP.ManualAction = true
SWEP.ManualActionNoLastCycle = false

-------------------------- FIREMODES

SWEP.RPM = 300

SWEP.Firemodes = {
    {
        Mode = 1,
    },
}

-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 4

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

SWEP.RecoilAutoControl = 5 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 3

SWEP.RecoilMultCrouch = 0.8
SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.65

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilMultSights = 0.2
SWEP.VisualRecoilPunchSights = 25

SWEP.VisualRecoilPunch = 2
SWEP.VisualRecoilUp = 0.2
SWEP.VisualRecoilRoll = 35

SWEP.VisualRecoilSpringPunchDamping = 11
SWEP.VisualRecoilDampingConst = 10
SWEP.VisualRecoilDampingConstSights = 50
SWEP.VisualRecoilSpringMagnitude = 1

-------------------------- SPREAD

SWEP.Spread = 0.002

SWEP.SpreadAddRecoil = 0.05 -- Applied per unit of recoil.

SWEP.SpreadAddMove = 0.1
--SWEP.SpreadAddMidAir = 0
SWEP.SpreadAddHipFire = 0.05
SWEP.SpreadAddCrouch = -0.01
SWEP.SpreadAddSights = -0.1

-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.35 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.5 -- How long it takes to go from sprinting to being able to fire.

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.2

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 255, 155) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-2.88, -2, 1.1),
    Ang = Angle(0, 0, -3.5),
    Magnification = 1.1,
    ViewModelFOV = 56,
    CrosshairInSights = false
}

SWEP.ViewModelFOVBase = 65

SWEP.SprintMidPoint = {
    Pos = Vector(0, -1, 0),
    Ang = Angle(-2.5, 0, 2.5)
}

SWEP.MovingMidPoint = {
    Pos = Vector(0, -0.5, -0.5),
    Ang = Angle(0, 0, 0)
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.MovingPos = Vector(-0.7, -0.5, -0.7)
SWEP.MovingAng = Angle(0, 0, -8)

SWEP.CrouchPos = Vector(-0.5, -0, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.SprintPos = Vector(0, 0, 0)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(13, 33, 3)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeNoRotate = false
SWEP.CustomizeSnapshotPos = Vector(0, 15, 3)

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

SWEP.MuzzleParticle = "AC_muzzle_shotgun_fp"
SWEP.AfterShotParticle = "AC_muzzle_smoke_barrel"
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 4
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_mk2.mdl"
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 1
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)
SWEP.NoShellEject = true
SWEP.EjectDelay = 0.15

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.ShotgunReload = true

-------------------------- SOUNDS

local path = "weapons/cod2019/mk2/"

SWEP.ShootSound = "COD2019.MK2.Fire"
SWEP.ShootSoundIndoor = "COD2019.MK2.Fire"

SWEP.ShootSoundSilenced = "COD2019.MK2.Fire.S"
SWEP.ShootSoundSilencedIndoor = "COD2019.MK2.Fire.S"

-- Non-Silenced Outside
SWEP.LayerSound = "Layer_Shotgun.Outside"
SWEP.DistantShootSound = "Distant_Western.Outside"
-- Inside
SWEP.LayerSoundIndoor = "Layer_Shotgun.Inside"
SWEP.DistantShootSoundIndoor = "Distant_Shotgun.Inside"
---------------------------------------------------
-- Silenced Outside
SWEP.LayerSoundSilenced = "Layer_Sniper.Outside"
SWEP.DistantShootSoundSilenced = "Distant_DMR_Sup.Outside"
-- Inside
SWEP.LayerSoundSilencedIndoor = "Layer_ShotgunSUP.Inside"
SWEP.DistantShootSoundSilencedIndoor = "Distant_DMR_Sup.Inside"
---------------------------------------------------

SWEP.EnterSightsSound = path .. "wfoly_sn_sbeta_ads_up.ogg"
SWEP.ExitSightsSound = path .. "wfoly_sn_sbeta_ads_down.ogg"

SWEP.ReloadHideBonesFirstPerson = false

SWEP.HideBones  = {
    [1] = "j_round_01",
	[2] = "j_round_02",
	[3] = "j_round_03",
	[4] = "j_round_04",
}

SWEP.ReloadHideBoneTables  = {
    [1] = "j_round_01",
	[2] = "j_round_02",
	[3] = "j_round_03",
	[4] = "j_round_04",
}

SWEP.TriggerDelay = 0.03 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayCancellable = false
SWEP.TriggerDelayTime = 0.03 -- Time until weapon fires.

SWEP.TriggerDownSound = "weapons/cod2019/mk2/weap_sbeta_fire_first_plr_01.ogg"
SWEP.TriggerUpSound = ""

SWEP.Animations = {
    ["fire"] = {
        Source = "shoot1",
    },
    ["cycle"] = {
        Source = "cycle",
		--EjectAt = 0.2,
        MinProgress = 0.45,
        FireASAP = true,
        EventTable = {
            {s = path .. "wfoly_sbeta_sn_rechamber.ogg", t = 0/30},
        },
    },
    ["reload_start"] = {
        Source = "reload_start",
		RestoreAmmo = 1,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_sbeta_sn_reload_start_beginning.ogg", t = 0/30},
            {s = "COD2019.MK2.Load", t = 5/37},
			{s = "COD2019.MK2.Shellin", t = 16/37},
        },
    },
    ["reload_insert"] = {
        Source = "reload_loop",
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = "COD2019.MK2.Load", t = 0/37},
			{s = "COD2019.MK2.Shellin", t = 16/37},
        },
    },
    ["reload_finish"] = {
        Source = "reload_end",
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.4,
                lhik = 1,
                rhik = 1
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_sbeta_sn_reload_end_finish.ogg", t = 0/30},
        },
    },
    ["reload_finish_empty"] = {
        Source = "reload_end_empty",
		EjectAt = 0.4,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.5,
                lhik = 1,
                rhik = 1
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_sbeta_sn_reload_end_start.ogg", t = 0/30},
			{s = path .. "wfoly_sbeta_sn_rechamber.ogg", t = 8/30},
			{s = path .. "wfoly_sbeta_sn_reload_end_cock.ogg", t = 9/30},
			{s = path .. "wfoly_sbeta_sn_reload_end_finish.ogg", t = 17/30},
        },
    },
    ["ready"] = {
        Source = "draw",
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
            {s = path .. "wfoly_sbeta_sn_raise_first_start.ogg", t = 0/30},
			{s = path .. "wfoly_sbeta_sn_raise_first_break_01.ogg", t = 13/30},
			{s = path .. "wfoly_sbeta_sn_raise_first_close_01.ogg", t = 23/30},
			{s = path .. "wfoly_sbeta_sn_raise_first_end.ogg", t = 27/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
		MinProgress = 0.85,
		FireASAP = true,
        IKTimeLine = {
            {
                t = 0,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.8,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_sbeta_sn_raise_up.ogg", t = 6/30},
			{s = path .. "wfoly_sbeta_sn_raise_first_start.ogg", t = 23/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.6,
                lhik = 0,
                rhik = 0
            },
        },
        EventTable = {
            {s = path .. "wfoly_sbeta_sn_drop_start.ogg", t = 0},
            {s = path .. "wfoly_sbeta_sn_drop_down.ogg", t = 0.4},
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
                t = 0.1,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.4,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.6,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_sn_sbeta_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_sn_sbeta_inspect_02.ogg", t = 43/30},
			{s = path .. "wfoly_sn_sbeta_inspect_03.ogg", t = 70/30},
			{s = path .. "wfoly_sn_sbeta_inspect_04.ogg", t = 123/30},
        },
    },
    ["bash"] = {
        Source = {"melee", "melee2"},
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
                t = 0.8,
                lhik = 1,
                rhik = 1
            },
        },
    },
}

-- SWEP.Hook_Think	= ARC9.COD2019.BlendSights2

-------------------------- ATTACHMENTS

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(11, -0.2, -0.5),
	ModelAngleOffset = Angle(0, 0, 20),
	Scale = 0.8,
    },
    ["go_grip_angled"] = {
    ModelOffset = Vector(1, 0, 0.1),
    },
}

SWEP.AttachmentElements = {
    ["barrel_none"] = {
        Bodygroups = {
            {1,1},
        },
    },
    ["sight_none"] = {
        Bodygroups = {
            {2,1},
        },
    },
    ["barrel_none"] = {
        Bodygroups = {
            {3,2},
        },
    },
    ["stock_none"] = {
        Bodygroups = {
            {4,1},
        },
    },
    ["rail_grip"] = {
        Bodygroups = {
            {5,1},
        },
    },
    ["rail_laser"] = {
        Bodygroups = {
            {6,1},
        },
    },
}

-- SWEP.Hook_ModifyBodygroups = function(wep, data)
    -- local model = data.model
    -- if wep:HasElement("stock_retract") then model:SetBodygroup(4,0) end
-- end

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model
	local attached = data.elements
	
    local camo = 0
    if attached["universal_camo"] then
        camo = 1
    end
    model:SetSkin(camo)
end

SWEP.Attachments = {
    {
        PrintName = "Barrels",
        DefaultAttName = "Standard Barrel",
        Category = "cod2019_mk2_barrel",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Category = {"cod2019_muzzle"},
        Bone = "tag_silencer",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		--InstalledElements = {"muzzle_none"},
		Scale = 1,
    },
    {
        PrintName = "Optics",
        Bone = "tag_holo",
        Pos = Vector(1.5, 0, -0.1),
        Ang = Angle(0, 0, 0),
        Category = {"cod2019_optic",},
        CorrectiveAng = Angle(0, 0, 0),
		InstalledElements = {"sight_none"},
    },
    {
        PrintName = "Tactical",
        DefaultAttName = "Default",
        Category = "cod2019_tac",
        Bone = "tag_laser_attach",
        Pos = Vector(-2.7, -0.35, 0.25),
        Ang = Angle(0, 0, -100),
		InstalledElements = {"rail_laser"},
    },
    {
        PrintName = "Grips",
        DefaultAttName = "Default",
        Category = "cod2019_grip",
        Bone = "tag_attachments",
        Pos = Vector(9, -0.55, -0.81),
        Ang = Angle(0, 0, 180),
		Scale = 1,
		InstalledElements = {"rail_grip"},
    },
    {
        PrintName = "Stock",
        DefaultAttName = "Standard Stock",
        Category = "cod2019_mk2_stock",
        Bone = "tag_stock_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		--InstalledElements = {"stock_adapter"},
		Scale = 1,
    },
    {
        PrintName = "Ammo",
        Bone = "j_mag1",
        Category = {"cod2019_ammo"},
        Pos = Vector(-2, 0, 1),
        Ang = Angle(0, 0, 0),
    },
    -- {
        -- PrintName = "Mag",
		-- Bone = "j_mag1",
        -- Category = {"cod2019_mag"},
        -- Pos = Vector(0, 0, 0),
        -- Ang = Angle(0, 0, 0),
    -- },
    {
		PrintName = "Perk",
        Category = {"cod2019_perks","cod2019_perks_soh_2"}
    },
    {
        PrintName = "Skins",
        --Bone = "v_weapon.Clip",
        Category = "cod2019_skins_mk2",
		CosmeticOnly = true,
    },
    {
        PrintName = "Cosmetic",
        Category = {"universal_camo"},
        CosmeticOnly = true,
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/snip_mk2_decal_a.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/snip_mk2_decal_b.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/snip_mk2_decal_c.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/snip_mk2_decal_d.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Charm",
        Category = "charm",
        Bone = "tag_cosmetic",
        Pos = Vector(3, 0, 0),
        Ang = Angle(0, 0, 0),
		Scale = 1.5,
    },
    {
        PrintName = "Stats",
        Category = {"killcounter","killcounter2"},
        Bone = "tag_cosmetic",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		CosmeticOnly = true,
    },
}

SWEP.GripPoseParam = 4.5
SWEP.GripPoseParam2 = 0.5
SWEP.CodAngledGripPoseParam = 4
SWEP.CodStubbyGripPoseParam = 6.5