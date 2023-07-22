AddCSLuaFile()

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = "Shotguns"

SWEP.PrintName = "725"

SWEP.Class = "Shotgun"
SWEP.Trivia = {
    ["Country of Origin"] = "Japan",
    ["Manufacturer"] = "Tempus Armament",
    ["Caliber"] = "12-gauge",
    ["Weight (Loaded)"] = "3.91 kg",
    ["Projectile Weight"] = "493 gr",
    ["Muzzle Velocity"] = "1,350 ft/s",
    ["Muzzle Energy"] = "2,705 joules"
}

SWEP.Credits = {
    Author = "Twilight Sparkle/Firmeteran",
    Assets = "Infinity Ward/Valve/New World Interactive"
}

SWEP.Description = [[Break action shotgun with 2 round capacity. A long back-bored barrel and cylindrical choke keeps spread tight and lethal over extended ranges.]]

SWEP.ViewModel = "models/weapons/cod2019/c_shot_725.mdl"
SWEP.WorldModel = "models/weapons/w_shot_m3super90.mdl"
SWEP.DefaultBodygroups = "00000000"

SWEP.Slot = 3

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_shot_725.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-11, 6, -2.5),
    Ang = Angle(-17, 3, 180),
    TPIKPos = Vector(-2, 4, -2),
    TPIKAng = Angle(-8, 0, 180),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 132 -- Damage done at point blank range
SWEP.DamageMin = 51 -- Damage done at maximum range

SWEP.DistributeDamage = true

SWEP.Num = 6

SWEP.DamageRand = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 1700 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 7200 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 1 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.1

SWEP.ImpactForce = 11

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 1710.76 * 12
SWEP.PhysBulletGravity = 2
SWEP.PhysBulletDrag = 3

SWEP.RicochetChance = 0

-------------------------- MAGAZINE

SWEP.Ammo = "buckshot" -- What ammo type this gun uses.

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 2 -- Self-explanatory.
SWEP.SupplyLimit = 22 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 2 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 560

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

SWEP.RecoilKick = 4

SWEP.RecoilMultCrouch = 0.8
SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.9

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilPunch = 2
SWEP.VisualRecoilUp = 0.5

-------------------------- SPREAD

-- SWEP.Spread = 0.035

-- SWEP.SpreadAddRecoil = 0.02 -- Applied per unit of recoil.

-- SWEP.SpreadAddMove = 0.03
-- --SWEP.SpreadAddMidAir = 0
-- SWEP.SpreadAddHipFire = 0.035
-- SWEP.SpreadMultHipFire = 0.9
-- SWEP.SpreadMultSights = 1
-- SWEP.SpreadAddCrouch = -0.004
-- SWEP.SpreadAddSightsMove = -0.1

SWEP.Spread = 220 * ARC9.MOAToAcc
SWEP.UseDispersion = true
SWEP.DispersionSpread = 0.01
SWEP.DispersionSpreadAddHipFire = 0.02
--SWEP.DispersionSpreadMultMove = 1.5
--SWEP.DispersionSpreadAddMove = 0.015

-------------------------- HANDLING

SWEP.FreeAimRadius = 0 -- In degrees, how much this gun can free aim in hip fire.
SWEP.Sway = 0 -- How much the gun sways.

SWEP.AimDownSightsTime = 0.3 -- How long it takes to go from hip fire to aiming down sights.
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
    Pos = Vector(-3.05, -2, 1),
    Ang = Angle(0, 0, -2),
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

SWEP.MovingPos = Vector(-0.5, -0.5, -0.5)
SWEP.MovingAng = Angle(0, 0, -10)

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

SWEP.MuzzleParticle = "AC_muzzle_shotgun_fp"
SWEP.AfterShotParticle = "AC_muzzle_smoke_barrel"
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1
SWEP.CaseEffectQCA = 6

SWEP.CamQCA = 3
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_origin12.mdl"
SWEP.ShellSounds = {
    "arc9/casings/casing_12ga_1.wav",
    "arc9/casings/casing_12ga_2.wav",
    "arc9/casings/casing_12ga_3.wav",
    "arc9/casings/casing_12ga_4.wav"
}
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 1.2
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.ShellCorrectAng = Angle(0, 0, 0)

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false

SWEP.DropMagazineModel = "models/weapons/cod2019/shared/shell_origin12.mdl"
SWEP.DropMagazineSounds = {"arc9/casings/casing_12ga_1.wav", "arc9/casings/casing_12ga_2.wav", "arc9/casings/casing_12ga_3.wav"}
SWEP.DropMagazineAmount = 1
SWEP.DropMagazineAmountEmpty = 2
SWEP.DropMagazineTime = 1
SWEP.DropMagazineQCA = 6

SWEP.NoShellEject = true

-------------------------- SOUNDS

local path = "weapons/cod2019/725/"

SWEP.ShootSound = "Cod2019.725.fire"
SWEP.ShootSoundIndoor = "Cod2019.725.fire"

SWEP.ShootSoundSilenced = "Cod2019.725.fire.s"
SWEP.ShootSoundSilencedIndoor = "Cod2019.725.fire.s"

-- Non-Silenced
SWEP.LayerSound = "Layer_Shotgun.Outside"
SWEP.AtmosSound = "Distant_Sniper.Outside"
-- Inside
SWEP.LayerSoundIndoor = "Layer_Sniper.Inside"
SWEP.AtmosSoundIndoor = "Distant_Shotgun.Inside"
---------------------------------------------------
-- Silenced
SWEP.LayerSoundSilenced = "Layer_ARSUP.Outside"
SWEP.AtmosSoundSilenced = "Distant_Shotgun2.Outside"
-- Inside
SWEP.LayerSoundSilencedIndoor = "Layer_ShotgunSUP.Inside"
SWEP.AtmosSoundSilencedIndoor = "Distant_Shotgun2.Inside"
---------------------------------------------------

SWEP.EnterSightsSound = path .. "weap_sh_charlie725_ads_up.ogg"
SWEP.ExitSightsSound = path .. "weap_sh_charlie725_ads_down.ogg"

SWEP.TriggerDelay = 0.025 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayTime = 0.025 -- Time until weapon fires.

SWEP.TriggerDownSound = "weapons/cod2019/725/weap_charlie725_fire_first_plr_01.ogg"
SWEP.TriggerUpSound = ""

SWEP.Animations = {
    ["fire"] = {
        Source = "shoot1",
    },
    ["fire_sights"] = {
        Source = "shoot1_ads",
    },
    ["reload"] = {
        Source = "reload_short",
		MinProgress = 0.8,
		FireASAP = true,
		DropMagAt = 0.6,
		--EjectAt = 0.65,
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
			{s = path .. "wfoly_plr_sh_charlie725_reload_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sh_charlie725_reload_open_01.ogg", t = 5/30},
			{s = path .. "wfoly_plr_sh_charlie725_reload_shellin_01.ogg", t = 38/30},
			{s = path .. "wfoly_plr_sh_charlie725_reload_swing.ogg", t = 44/30},
			{s = path .. "wfoly_plr_sh_charlie725_reload_close_01.ogg", t = 52/30},
			{s = path .. "wfoly_plr_sh_charlie725_reload_end.ogg", t = 66/30},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.8,
		FireASAP = true,
		DropMagAt = 0.6,
		--EjectAt = 0.65,
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
			{s = path .. "wfoly_plr_sh_charlie725_reload_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sh_charlie725_reload_open_01.ogg", t = 3/30},
			{s = path .. "wfoly_plr_sh_charlie725_reload_shellin_01.ogg", t = 30/30},
			{s = path .. "wfoly_plr_sh_charlie725_reload_swing.ogg", t = 36/30},
			{s = path .. "wfoly_plr_sh_charlie725_reload_close_01.ogg", t = 44/30},
			{s = path .. "wfoly_plr_sh_charlie725_reload_end.ogg", t = 47/30},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.8,
		FireASAP = true,
		DropMagAt = 0.6,
		--EjectAt = 0.7,
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
                t = 0.8,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sh_charlie725_reload_empty_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sh_charlie725_reload_empty_open_01.ogg", t = 5/30},
			{s = path .. "wfoly_plr_sh_charlie725_reload_empty_shellsin_v2_01.ogg", t = 32/30},
			{s = path .. "wfoly_plr_sh_charlie725_reload_empty_shellsin_v2_02.ogg", t = 42/30},
			{s = path .. "wfoly_plr_sh_charlie725_reload_empty_swing.ogg", t = 48/30},
			{s = path .. "wfoly_plr_sh_charlie725_reload_empty_close_01.ogg", t = 59/30},
			{s = path .. "wfoly_plr_sh_charlie725_reload_empty_end.ogg", t = 70/30},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.8,
		FireASAP = true,
		DropMagAt = 0.6,
		--EjectAt = 0.7,
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
                t = 0.8,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sh_charlie725_reload_empty_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sh_charlie725_reload_empty_open_01.ogg", t = 3/30},
			{s = path .. "wfoly_plr_sh_charlie725_reload_empty_shellsin_v2_01.ogg", t = 21/30},
			{s = path .. "wfoly_plr_sh_charlie725_reload_empty_shellsin_v2_02.ogg", t = 31/30},
			{s = path .. "wfoly_plr_sh_charlie725_reload_empty_swing.ogg", t = 47/30},
			{s = path .. "wfoly_plr_sh_charlie725_reload_empty_close_01.ogg", t = 47/30},
			{s = path .. "wfoly_plr_sh_charlie725_reload_empty_end.ogg", t = 48/30},
        },
    },
    ["ready"] = {
        Source = "draw",
		MinProgress = 0.8,
		FireASAP = true,
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
            {s = path .. "wfoly_plr_sh_charlie725_raise_first_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sh_charlie725_raise_first_close_01.ogg", t = 5/30},
			{s = path .. "wfoly_plr_sh_charlie725_raise_first_end.ogg", t = 17/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
		MinProgress = 0.8,
		FireASAP = true,
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
            {s = path .. "wfoly_plr_sh_charlie725_raise_up.ogg", t = 0/30},
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
                t = 0.5,
                lhik = 0,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_plr_sh_charlie725_drop_down.ogg", t = 0/30},
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
            {s = path .. "wfoly_sh_charlie725_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_sh_charlie725_inspect_02.ogg", t = 42/30},
			{s = path .. "wfoly_sh_charlie725_inspect_03.ogg", t = 76/30},
			{s = path .. "wfoly_sh_charlie725_inspect_04.ogg", t = 106/30},
			{s = path .. "wfoly_sh_charlie725_inspect_05.ogg", t = 132/30},
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
                t = 0.85,
                lhik = 1,
                rhik = 1
            },
        },
    },
}

--SWEP.Hook_Think	= ARC9.CSGO.BlendSights

-------------------------- ATTACHMENTS

SWEP.Hook_TranslateAnimation = function (wep, anim)
    --local attached = self:GetElements()

    if anim == "reload" and wep:HasElement("perk_speedreload") then
        return "reload_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") then 
        return "reload_fast_empty"
    end
end

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(1.5, -0.6, 0.6),
	ModelAngleOffset = Angle(0, 0, 0),
	Scale = 0.8,
    },
    ["go_grip_angled"] = {
    ModelOffset = Vector(0, 0, 0.1),
    },
    ["csgo_cod2019_laser_01"] = {
    Sights = {
    {
        Pos = Vector(2.2, 15, -0.6),
        Ang = Angle(0, 0, -45),
        ViewModelFOV = 45,
        Magnification = 1.25,
        IgnoreExtra = false,
		KeepBaseIrons = true,
    },
    },
    },
    ["csgo_cod2019_laser_02"] = {
    Sights = {
    {
        Pos = Vector(2.2, 15, -0.6),
        Ang = Angle(0, 0, -45),
        ViewModelFOV = 45,
        Magnification = 1.25,
        IgnoreExtra = false,
		KeepBaseIrons = true,
    },
    },
    },
    ["csgo_cod2019_laser_03"] = {
    Sights = {
    {
        Pos = Vector(2.2, 15, -0.6),
        Ang = Angle(0, 0, -45),
        ViewModelFOV = 45,
        Magnification = 1.25,
        IgnoreExtra = false,
		KeepBaseIrons = true,
    },
    },
    },
}

SWEP.AttachmentElements = {
    ["base_none"] = {
        Bodygroups = {
            {0,1},
        },
    },
    ["barrel_none"] = {
        Bodygroups = {
            {1,1},
        },
    },
    ["foregrip_none"] = {
        Bodygroups = {
            {2,1},
        },
    },
    ["stock_none"] = {
        Bodygroups = {
            {3,1},
        },
    },
    ["rail_grip"] = {
        Bodygroups = {
            {4,1},
        },
    },
    ["rail_sight"] = {
        Bodygroups = {
            {5,1},
        },
    },
    ["rail_laser"] = {
        Bodygroups = {
            {6,2},
        },
    },
}

-- SWEP.Hook_ModifyBodygroups = function(wep, data)
    -- local model = data.model
    -- if wep:HasElement("stock_retract") then model:SetBodygroup(4,0) end
-- end

SWEP.Attachments = {
    {
        PrintName = "Barrels",
        DefaultAttName = "Standard Barrel",
        Category = "cod2019_725_barrel",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Category = "cod2019_muzzle_shot",
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
		InstalledElements = {"rail_sight"},
    },
    {
        PrintName = "Tactical",
        DefaultAttName = "Default",
        Category = "cod2019_tac",
        Bone = "tag_laser_attach",
        Pos = Vector(-0.6, -0.5, 0),
        Ang = Angle(0, 0, -90),
		InstalledElements = {"rail_laser"},
    },
    {
        PrintName = "Foregrip",
        Category = "cod2019_725_foregrip",
        Bone = "tag_attachments",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Grips",
        DefaultAttName = "Default",
        Category = "cod2019_grip",
        Bone = "tag_grip_attach",
        Pos = Vector(-3, 0, 0),
        Ang = Angle(0, 0, 180),
		Scale = 1,
		InstalledElements = {"rail_grip"},
    },
    {
        PrintName = "Stock",
        DefaultAttName = "Standard Stock",
        Category = "cod2019_725_stock",
        Bone = "tag_stock_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		InstalledElements = {"rail_grip"},
    },
    -- {
        -- PrintName = "Grips",
        -- DefaultAttName = "Default",
        -- Category = "cod2019_grip",
        -- Bone = "tag_grip_attach",
        -- Pos = Vector(-1.5, 0, 0),
        -- Ang = Angle(0, 0, 180),
		-- Scale = 1,
		-- --InstalledElements = {"pump_rail"},
    -- },
    {
        PrintName = "Ammo",
        Bone = "j_mag1",
        Category = {"cod2019_ammo_sg"},
        Pos = Vector(0, 0, -1.5),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Perk",
        Category = {"cod2019_perks","cod2019_perks_soh"}
    },
    {
        PrintName = "Skins",
        --Bone = "v_weapon.Clip",
        Category = "cod2019_skins_725",
		CosmeticOnly = true,
    },
    {
        PrintName = "Cosmetic",
        Category = {"universal_camo"},
        CosmeticOnly = true,
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/shot_725_decal_a.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/shot_725_decal_b.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/shot_725_decal_c.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/shot_725_decal_d.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/shot_725_decal_e.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/shot_725_decal_f.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Charm",
        Category = "charm",
        Bone = "tag_cosmetic",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		Scale = 1.5,
    },
    {
        PrintName = "Stats",
        Category = {"killcounter","killcounter2"},
        Bone = "tag_cosmetic",
        Pos = Vector(1.5, 0.1, -1),
        Ang = Angle(0, 0, 0),
		CosmeticOnly = true,
    },
}

SWEP.GripPoseParam = 4.2
SWEP.GripPoseParam2 = 0.3
SWEP.CodStubbyGripPoseParam = 7
SWEP.CodStubbyTallGripPoseParam = 1
SWEP.CodAngledGripPoseParam = 4.1