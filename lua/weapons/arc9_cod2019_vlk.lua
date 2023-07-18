AddCSLuaFile()

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = "Shotguns"

SWEP.PrintName = "VLK Rogue"

SWEP.Class = "Shotgun"
SWEP.Trivia = {
    ["Country of Origin"] = "Russia",
    ["Manufacturer"] = "VLK",
    ["Caliber"] = "12-gauge",
    ["Weight (Loaded)"] = "2.26 kg",
    ["Projectile Weight"] = "493 gr",
    ["Muzzle Velocity"] = "1,325 ft/s",
    ["Muzzle Energy"] = "2,606 joules"
}

SWEP.Credits = {
    Author = "Twilight Sparkle/Firmeteran",
    Assets = "Infinity Ward/Valve/New World Interactive"
}

SWEP.Description = [[An agile 12-gauge mag fed shotgun from VLK with extensive options to modify range, stability, and maneuverability.]]

SWEP.ViewModel = "models/weapons/cod2019/c_shot_vlk.mdl"
SWEP.WorldModel = "models/weapons/w_shot_m3super90.mdl"
SWEP.DefaultBodygroups = "00000000000"

SWEP.Slot = 3

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_shot_vlk.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-11, 6, -2.5),
    Ang = Angle(-17, 3, 180),
    TPIKPos = Vector(-5, 3, 0),
    TPIKAng = Angle(-10, 3, 180),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 130 -- Damage done at point blank range
SWEP.DamageMin = 100 -- Damage done at maximum range

SWEP.DistributeDamage = true

SWEP.Num = 4

SWEP.DamageRand = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 500 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 3000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 1 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.1

SWEP.ImpactForce = 11

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 1410.76 * 12
SWEP.PhysBulletGravity = 2
SWEP.PhysBulletDrag = 3

-------------------------- MAGAZINE

SWEP.Ammo = "buckshot" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 8 -- Self-explanatory.
SWEP.SupplyLimit = 8 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 2 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

SWEP.ManualAction = true
SWEP.NoLastCycle = true
SWEP.ManualActionNoLastCycle = true

--SWEP.ShotgunReload = true
--SWEP.ManualActionChamber = 1

SWEP.BarrelLength = 13

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

SWEP.RecoilKick = 2

SWEP.RecoilMultCrouch = 0.8
SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.9

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilPunch = 3
SWEP.VisualRecoilUp = 0.3

-------------------------- SPREAD

-- SWEP.Spread = 0.035

-- SWEP.SpreadAddRecoil = 0.02 -- Applied per unit of recoil.

-- SWEP.SpreadAddMove = 0.03
-- --SWEP.SpreadAddMidAir = 0
-- SWEP.SpreadAddHipFire = 0.035
-- SWEP.SpreadMultHipFire = 0.7
-- SWEP.SpreadMultSights = 1
-- SWEP.SpreadAddCrouch = -0.004
-- SWEP.SpreadAddSightsMove = -0.1

SWEP.Spread = 200 * ARC9.MOAToAcc
SWEP.UseDispersion = true
SWEP.DispersionSpread = 0.02
SWEP.DispersionSpreadAddHipFire = 0.02
--SWEP.DispersionSpreadMultMove = 1.5
--SWEP.DispersionSpreadAddMove = 0.015

-------------------------- HANDLING

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
    Pos = Vector(-1.75, -2, 1.1),
    Ang = Angle(0, 0, 6.5),
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

SWEP.MovingPos = Vector(-0.5, -0.5, -0.7)
SWEP.MovingAng = Angle(0, 0, -8)

SWEP.CrouchPos = Vector(-0.5, -0, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.SprintPos = Vector(0, 0, 0)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(11, 30, 3)
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

SWEP.MuzzleParticle = "AC_muzzle_shotgun"
SWEP.AfterShotParticle = "AC_muzzle_smoke_barrel"
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 4
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_jak12.mdl"
SWEP.ShellSounds = ARC9.ShotgunShellSoundsTable
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 1.1
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)
SWEP.NoShellEject = true
SWEP.EjectDelay = 0.15

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_shot_vlk_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_poly_concrete_01.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_poly_concrete_02.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_poly_concrete_03.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_poly_concrete_04.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_poly_concrete_05.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_poly_concrete_06.ogg",
}
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineTime = 0.85
SWEP.DropMagazineQCA = 3
SWEP.DropMagazineAng = Angle(0, -90, 0)

-------------------------- SOUNDS

local path = "weapons/cod2019/vlk/"
local path2 = "weapons/cod2019/model680/"

SWEP.ShootPitchVariation = 5
SWEP.ShootSound = {path .. "weap_mike26_fire_bang_plr_01.ogg", path .. "weap_mike26_fire_bang_plr_02.ogg", path .. "weap_mike26_fire_bang_plr_03.ogg", path .. "weap_mike26_fire_bang_plr_04.ogg"}
SWEP.ShootSoundSilenced = {path .. "weap_mike26_fire_silenced_bang_plr_01.ogg", path .. "weap_mike26_fire_silenced_bang_plr_02.ogg", path .. "weap_mike26_fire_silenced_bang_plr_03.ogg", path .. "weap_mike26_fire_silenced_bang_plr_04.ogg"}
SWEP.ShootSoundIndoor = {path .. "weap_mike26_fire_bang_plr_inside_01.ogg", path .. "weap_mike26_fire_bang_plr_inside_02.ogg", path .. "weap_mike26_fire_bang_plr_inside_03.ogg", path .. "weap_mike26_fire_bang_plr_inside_04.ogg"}
SWEP.ShootSoundSilencedIndoor = {path .. "weap_mike26_fire_silenced_bang_plr_inside_01.ogg", path .. "weap_mike26_fire_silenced_bang_plr_inside_02.ogg", path .. "weap_mike26_fire_silenced_bang_plr_inside_03.ogg", path .. "weap_mike26_fire_silenced_bang_plr_inside_04.ogg"}

SWEP.DistantShootSound = path .. "weap_mike26_fire_bang_plr_01_01.ogg"
SWEP.DistantShootSoundSilenced = path2 .. "weap_romeo870_sup_plr_01_01.ogg"

SWEP.DryFireSound = "weapons/cod2019/svd/weap_delta_empty.ogg"

SWEP.EnterSightsSound = "COD2019.Iron.In_Rifle"
SWEP.ExitSightsSound = "COD2019.Iron.Out_Rifle"

SWEP.HideBones  = {
    [1] = "j_mag2",
}

SWEP.TriggerDelay = 0.025 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayTime = 0.025 -- Time until weapon fires.

SWEP.TriggerDownSound = "weapons/cod2019/jak12/weap_aalpha12_prefire_plr_01.ogg"
SWEP.TriggerUpSound = "weapons/cod2019/jak12/weap_romeo870_disconnector_plr_01.ogg"

SWEP.Animations = {
    ["fire"] = {
        Source = "shoot1",
    },
    ["cycle"] = {
        Source = "pump",
		--EjectAt = 0.2,
		MinProgress = 0.4,
		FireASAP = true,
        EventTable = {
            {s = path .. "wfoly_sh_mark26_rechamber.ogg", v = 0.5, t = 2/30},
        },
    },
    ["reload"] = {
        Source = "reload_short",
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
                t = 0.75,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_sh_mark26_reload_up.ogg", t = 0/30},
			{s = path .. "wfoly_sh_mark26_reload_magout.ogg", t = 11/30},
			{s = path .. "wfoly_sh_mark26_reload_maghit.ogg", t = 35/30},
			{s = path .. "wfoly_sh_mark26_reload_magin.ogg", t = 51/30},
			{s = path .. "wfoly_sh_mark26_reload_end.ogg", t = 55/30},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.9,
		EjectAt = 0.1,
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
			{s = path .. "wfoly_sh_mark26_raise.ogg", t = 0/30},
			{s = path .. "wfoly_sh_mark26_reload_empty_bolt_pull.ogg", t = 0/30},
			{s = path .. "wfoly_sh_mark26_reload_empty_mag_release.ogg", t = 15/30},
			{s = path .. "wfoly_sh_mark26_reload_empty_magout.ogg", t = 18/30},
			{s = path .. "wfoly_sh_mark26_reload_empty_arm_up.ogg", t = 34/30},
			{s = path .. "wfoly_sh_mark26_reload_empty_maghit.ogg", t = 49/30},
			{s = path .. "wfoly_sh_mark26_reload_empty_magin.ogg", t = 60/30},
			{s = path .. "wfoly_sh_mark26_reload_empty_rotate.ogg", t = 68/30},
			{s = path .. "wfoly_sh_mark26_reload_empty_bolt_forward.ogg", t = 80/30},
			{s = path .. "wfoly_sh_mark26_reload_empty_end.ogg", t = 95/30},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.8,
		DropMagAt = 0.6,
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
			{s = path .. "wfoly_sh_mark26_reload_up.ogg", t = 0/30},
			{s = path .. "wfoly_sh_mark26_reload_empty_mag_release.ogg", t = 7/30},
			{s = path .. "wfoly_sh_mark26_reload_magout.ogg", t = 8/30},
			{s = path .. "wfoly_sh_mark26_reload_empty_arm_up.ogg", t = 24/30},
			{s = path .. "wfoly_sh_mark26_reload_maghit.ogg", t = 27/30},
			{s = path .. "wfoly_sh_mark26_reload_magin.ogg", t = 37/30},
			{s = path .. "wfoly_sh_mark26_reload_end.ogg", t = 38/30},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.8,
		DropMagAt = 0.75,
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
			{s = path .. "wfoly_sh_mark26_reload_up.ogg", t = 0/30},
			{s = path .. "wfoly_sh_mark26_reload_empty_bolt_pull.ogg", t = 0/30},
			{s = path .. "wfoly_sh_mark26_reload_empty_mag_release.ogg", t = 7/30},
			{s = path .. "wfoly_sh_mark26_reload_magout.ogg", t = 8/30},
			{s = path .. "wfoly_sh_mark26_reload_empty_arm_up.ogg", t = 24/30},
			{s = path .. "wfoly_sh_mark26_reload_maghit.ogg", t = 27/30},
			{s = path .. "wfoly_sh_mark26_reload_magin.ogg", t = 37/30},
			{s = path .. "wfoly_sh_mark26_reload_empty_bolt_forward.ogg", t = 40/30},
			{s = path .. "wfoly_sh_mark26_reload_end.ogg", t = 45/30},
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
            {s = path .. "wfoly_sh_mark26_raise_first_up.ogg", t = 0/30},
			{s = path .. "wfoly_sh_mark26_raise_first_bolt_forward.ogg", t = 17/30},
			{s = path .. "wfoly_sh_mark26_raise_first_end.ogg", t = 21/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
		MinProgress = 0.85,
		FireASAP = true,
        EventTable = {
            {s = path .. "wfoly_sh_mark26_raise.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            {s = path .. "wfoly_sh_mark26_drop.ogg", t = 0/30},
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
            {s = path .. "wfoly_sh_mike26_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_sh_mike26_inspect_02.ogg", t = 41/30},
			{s = path .. "wfoly_sh_mike26_inspect_03.ogg", t = 67/30},
			{s = path .. "wfoly_sh_mike26_inspect_04.ogg", t = 98/30},
			{s = path .. "wfoly_sh_mike26_inspect_05.ogg", t = 128/30},
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
                t = 0.6,
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

SWEP.Hook_Think	= ARC9.COD2019.BlendSights2

-------------------------- ATTACHMENTS

SWEP.Hook_TranslateAnimation = function (wep, anim)
    --local attached = self:GetElements()
	
--------------------------------------------------------------------------
    if anim == "reload" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_xmag") then
        return "reload_xmag_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_xmag") then 
        return "reload_xmag_fast_empty"
--------------------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("perk_speedreload") then 
        return "reload_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") then 
        return "reload_fast_empty"
--------------------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("mag_xmag") then 
        return "reload_xmag"
    elseif anim == "reload_empty" and wep:HasElement("mag_xmag") then 
        return "reload_xmag_empty"
--------------------------------------------------------------------------
    end
end

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(0, 0, 0.6),
	ModelAngleOffset = Angle(0, 0, 0),
	Scale = 0.8,
    },
    ["go_grip_angled"] = {
    ModelOffset = Vector(0, 0, 0.1),
    },
}

SWEP.AttachmentElements = {
    ["base_none"] = {
        Bodygroups = {
            {0,1},
        },
    },
    ["mag_none"] = {
        Bodygroups = {
            {1,1},
        },
    },
    ["pistol_grip"] = {
        Bodygroups = {
            {2,1},
        },
    },
    ["barrel_none"] = {
        Bodygroups = {
            {3,1},
        },
    },
    ["muzzle_none"] = {
        Bodygroups = {
            {4,1},
        },
    },
    ["pump_none"] = {
        Bodygroups = {
            {5,1},
        },
    },
    ["sight_none"] = {
        Bodygroups = {
            {6,1},
        },
    },
    ["stock_none"] = {
        Bodygroups = {
            {7,1},
        },
    },
    ["stock_tube_none"] = {
        Bodygroups = {
            {8,1},
        },
    },
    ["vlk_barrel_heavy"] = {
    AttPosMods = { 
	[2] = { Pos = Vector(2, 0, 0), },
	[4] = { Pos = Vector(3.3, -0.63, -0.56), },
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
        Category = "cod2019_vlk_barrel",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Category = "cod2019_muzzle_shot",
        Bone = "tag_silencer",
        Pos = Vector(-0.23, 0, 0),
        Ang = Angle(0, 0, 0),
		InstalledElements = {"muzzle_none"},
		--ExcludeElements = {"barrel_vlk"},
		Scale = 1,
    },
    {
        PrintName = "Optics",
        Bone = "tag_holo",
        Pos = Vector(1.5, 0, -0.07),
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
        Pos = Vector(-1.5, -1, -1.8),
        Ang = Angle(0, 0, -90),
		--InstalledElements = {"rail_laser"},
    },
    {
        PrintName = "Stock",
        DefaultAttName = "Standard Stock",
        Category = {"csgo_stock","cod2019_stocks"},
        Bone = "tag_stock_attach",
        Pos = Vector(1.2, 0, -0.03),
        Ang = Angle(0, 0, 0),
		InstalledElements = {"stock_none"},
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
        PrintName = "Mag",
		Bone = "j_mag1",
        Category = {"cod2019_mag"},
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Perk",
        Category = {"cod2019_perks","cod2019_perks_soh","cod2019_perks_shot"}
    },
    {
        PrintName = "Skins",
        --Bone = "v_weapon.Clip",
        Category = "cod2019_skins_vlk",
		CosmeticOnly = true,
    },
    {
        PrintName = "Cosmetic",
        Category = {"universal_camo"},
        CosmeticOnly = true,
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/shot_vlk_decal_a.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/shot_vlk_decal_b.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/shot_vlk_decal_c.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/shot_vlk_decal_d.mdl",
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

SWEP.GripPoseParam = 0.3
SWEP.GripPoseParam2 = 0