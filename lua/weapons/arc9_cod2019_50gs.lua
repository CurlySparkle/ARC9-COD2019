AddCSLuaFile()

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = "Handguns"

SWEP.PrintName = ".50 GS"

SWEP.Class = "Handgun"
SWEP.Trivia = {
    ["Country of Origin"] = "United States",
    ["Manufacturer"] = "FORGE TAC",
    ["Caliber"] = ".50 Action Express",
    ["Weight (Loaded)"] = "2 kg",
    ["Projectile Weight"] = "300 gr",
    ["Muzzle Velocity"] = "1,542 ft/s",
    ["Muzzle Energy"] = "2,148 joules"
}

SWEP.Credits = {
    Author = "Twilight Sparkle/Firmeteran",
    Assets = "Infinity Ward/Valve/New World Interactive"
}

SWEP.Description = [[The most powerful semi-automatic handgun available, deals heavy damage up to intermediate ranges.]]

SWEP.ViewModel = "models/weapons/cod2019/c_pist_50gs.mdl"
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"

SWEP.Slot = 1

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = false
SWEP.WorldModelMirror = "models/weapons/cod2019/c_pist_50gs.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-12, 6, -7.5),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-5, 4, -5),
    TPIKAng = Angle(0, 0, 175),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 91 -- Damage done at point blank range
SWEP.DamageMin = 55 -- Damage done at maximum range

SWEP.DamageRand = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 500 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 3500 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 4 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.35

SWEP.ImpactForce = 8

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 1542 * 12
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.5

-------------------------- MAGAZINE

SWEP.Ammo = "357" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 7 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 10 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 200

SWEP.Firemodes = {
    {
        Mode = 1,
    },
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 3

--SWEP.RecoilSeed = nil

SWEP.RecoilPatternDrift = 35

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.1

SWEP.RecoilDissipationRate = 55 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 1 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 5

SWEP.RecoilMultCrouch = 0.8

SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 1

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilPunch = 1
SWEP.VisualRecoilUp = 2

-------------------------- SPREAD

SWEP.Spread = 0.002

SWEP.SpreadAddRecoil = 0.02
SWEP.SpreadMultRecoil = 1.3
SWEP.RecoilModifierCap = 2
SWEP.RecoilModifierCapSights = 0

SWEP.SpreadAddMove = 0.05
--SWEP.SpreadAddMidAir = 0
SWEP.SpreadAddHipFire = 0.04
SWEP.SpreadAddCrouch = -0.01
SWEP.SpreadAddSights = -0.5


-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.1 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.1 -- How long it takes to go from sprinting to being able to fire.

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.2

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 255, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-1.85, 6, 1.6),
    Ang = Angle(0, 0, 0),
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

SWEP.SprintPos = Vector(0, -1, -1.5)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(16, 25, 3)
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

SWEP.MuzzleParticle = "AC_muzzle_desert_fp"
SWEP.AfterShotParticle = "AC_muzzle_smoke_barrel"
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 4
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_9mm_hr.mdl"
SWEP.ShellSounds = ARC9.PistolShellSoundsTable
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 0.06
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_pist_50gs_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_metal_concrete_01.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_metal_concrete_02.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_metal_concrete_03.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_metal_concrete_04.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_metal_concrete_05.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_metal_concrete_06.ogg",
}
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineTime = 0.4
SWEP.DropMagazineQCA = 3
SWEP.DropMagazineAng = Angle(0, -90, 0)

-------------------------- SOUNDS

local path = "weapons/cod2019/50gs/"

SWEP.ShootSound = "Cod2019.50gs.fire"
SWEP.ShootSoundIndoor = "Cod2019.50gs.fire"

SWEP.ShootSoundSilenced = "Cod2019.50gs.fire.s"
SWEP.ShootSoundSilencedIndoor = "Cod2019.50gs.fire.s"

-- Non-Silenced
SWEP.LayerSound = "Layer_Pistol.Outside"
SWEP.DistantShootSound = "Distant_Pistol.Outside"
-- Inside
SWEP.LayerSoundIndoor = "Layer_Shotgun.Inside"
SWEP.DistantShootSoundIndoor = "Distant_Shotgun.Inside"
---------------------------------------------------
-- Silenced
SWEP.LayerSoundSilenced = "Layer_ARSUP.Outside"
SWEP.DistantShootSoundSilenced = "Distant_Pistol_Mag_Sup.Outside"
-- Inside
SWEP.LayerSoundSilencedIndoor = "Layer_ARSUP.Inside"
SWEP.DistantShootSoundSilencedIndoor = "Distant_Pistol_Sup.Inside"
---------------------------------------------------

SWEP.EnterSightsSound = path .. "wfoly_pi_decho_ads_up.ogg"
SWEP.ExitSightsSound = path .. "wfoly_pi_decho_ads_down.ogg"

SWEP.TriggerDelay = 0.03 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayTime = 0.03 -- Time until weapon fires.

SWEP.TriggerDownSound = path .. "weap_decho_fire_first_plr_01.ogg"
SWEP.TriggerUpSound = path .. "weap_decho_disconnector_plr_01.ogg"

SWEP.BulletBones = {
    [1] = "j_bullet01",
    [2] = "j_bullet02",
	[3] = "j_bullet03",
	[4] = "j_bullet04",
}

SWEP.HideBones  = {
    [1] = "j_mag2",
}

SWEP.Animations = {
    ["fire"] = {
        Source = "shoot1",
    },
    ["reload"] = {
        Source = "reload_short",
		MinProgress = 0.8,
		FireASAP = true,
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
			{s = path .. "wfoly_pi_decho_reload_raise.ogg", t = 0/30},
			{s = path .. "wfoly_pi_decho_reload_magout_01.ogg", t = 15/30},
			{s = path .. "wfoly_pi_decho_reload_magin_v2_01.ogg", t = 30/30},
			{s = path .. "wfoly_pi_decho_reload_magin_v2_02.ogg", t = 36/30},
			{s = path .. "wfoly_pi_decho_reload_end.ogg", t = 42/30},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.8,
		FireASAP = true,
		DropMagAt = 0.8,
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
                t = 0.95,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_pi_decho_reload_empty_mvmnt.ogg", t = 0/30},
			{s = path .. "wfoly_pi_decho_reload_empty_magout_01.ogg", t = 4/30},
			{s = path .. "wfoly_pi_decho_reload_empty_magin_v2_01.ogg", t = 23/30},
			{s = path .. "wfoly_pi_decho_reload_empty_magin_v2_02.ogg", t = 30/30},
			{s = path .. "wfoly_pi_decho_reload_empty_shake.ogg", t = 30/30},
			{s = path .. "wfoly_pi_decho_reload_empty_charge_01.ogg", t = 43/30},
			{s = path .. "wfoly_pi_decho_reload_empty_end.ogg", t = 47/30},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.8,
		FireASAP = true,
		MagSwapTime = 1.5,
		DropMagAt = 0.5,
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
			{s = path .. "wfoly_pi_decho_reload_raise.ogg", t = 0/30},
			{s = path .. "wfoly_pi_decho_reload_magout_01.ogg", t = 4/30},
			{s = path .. "wfoly_pi_decho_reload_magin_v2_01.ogg", t = 14/30},
			{s = path .. "wfoly_pi_decho_reload_magin_v2_02.ogg", t = 20/30},
			{s = path .. "wfoly_pi_decho_reload_end.ogg", t = 24/30},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.8,
		FireASAP = true,
		MagSwapTime = 1.5,
		DropMagAt = 0.5,
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
			{s = path .. "wfoly_pi_decho_reload_empty_mvmnt.ogg", t = 0/30},
			{s = path .. "wfoly_pi_decho_reload_empty_magout_01.ogg", t = 4/30},
			{s = path .. "wfoly_pi_decho_reload_empty_magin_v2_01.ogg", t = 14/30},
			{s = path .. "wfoly_pi_decho_reload_empty_magin_v2_02.ogg", t = 21/30},
			{s = path .. "wfoly_pi_decho_reload_empty_charge_01.ogg", t = 25/30},
			{s = path .. "wfoly_pi_decho_reload_empty_end.ogg", t = 25/30},
        },
    },
    ["reload_xmag"] = {
        Source = "reload_xmag",
		MinProgress = 0.8,
		FireASAP = true,
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
			{s = path .. "wfoly_pi_decho_reload_raise.ogg", t = 0/30},
			{s = path .. "wfoly_pi_decho_reload_magout_01.ogg", t = 15/30},
			{s = path .. "wfoly_pi_decho_reload_magin_v2_01.ogg", t = 30/30},
			{s = path .. "wfoly_pi_decho_reload_magin_v2_02.ogg", t = 36/30},
			{s = path .. "wfoly_pi_decho_reload_end.ogg", t = 42/30},
        },
    },
    ["reload_empty_xmag"] = {
        Source = "reload_xmag_empty",
		MinProgress = 0.8,
		FireASAP = true,
		DropMagAt = 0.8,
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
                t = 0.95,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_pi_decho_reload_empty_mvmnt.ogg", t = 0/30},
			{s = path .. "wfoly_pi_decho_reload_empty_magout_01.ogg", t = 4/30},
			{s = path .. "wfoly_pi_decho_reload_empty_magin_v2_01.ogg", t = 23/30},
			{s = path .. "wfoly_pi_decho_reload_empty_magin_v2_02.ogg", t = 30/30},
			{s = path .. "wfoly_pi_decho_reload_empty_shake.ogg", t = 30/30},
			{s = path .. "wfoly_pi_decho_reload_empty_charge_01.ogg", t = 43/30},
			{s = path .. "wfoly_pi_decho_reload_empty_end.ogg", t = 44/30},
        },
    },
    ["reload_xmag_fast"] = {
        Source = "reload_xmag_fast",
		MinProgress = 0.8,
		FireASAP = true,
		MagSwapTime = 1.5,
		DropMagAt = 0.5,
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
			{s = path .. "wfoly_pi_decho_reload_raise.ogg", t = 0/30},
			{s = path .. "wfoly_pi_decho_reload_magout_01.ogg", t = 4/30},
			{s = path .. "wfoly_pi_decho_reload_magin_v2_01.ogg", t = 14/30},
			{s = path .. "wfoly_pi_decho_reload_magin_v2_02.ogg", t = 20/30},
			{s = path .. "wfoly_pi_decho_reload_end.ogg", t = 24/30},
        },
    },
    ["reload_xmag_fast_empty"] = {
        Source = "reload_xmag_fast_empty",
		MinProgress = 0.8,
		FireASAP = true,
		MagSwapTime = 1.5,
		DropMagAt = 0.5,
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
			{s = path .. "wfoly_pi_decho_reload_empty_mvmnt.ogg", t = 0/30},
			{s = path .. "wfoly_pi_decho_reload_empty_magout_01.ogg", t = 4/30},
			{s = path .. "wfoly_pi_decho_reload_empty_magin_v2_01.ogg", t = 23/30},
			{s = path .. "wfoly_pi_decho_reload_empty_magin_v2_02.ogg", t = 30/30},
			{s = path .. "wfoly_pi_decho_reload_empty_shake.ogg", t = 30/30},
			{s = path .. "wfoly_pi_decho_reload_empty_charge_01.ogg", t = 43/30},
			{s = path .. "wfoly_pi_decho_reload_empty_end.ogg", t = 44/30},
        },
    },
    ["ready"] = {
        Source = "draw",
		MinProgress = 0.8,
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
            {s = path .. "wfoly_pi_decho_first_raise_mvmnt.ogg", t = 0/30},
            {s = path .. "wfoly_pi_decho_first_raise_safetyoff.ogg", t = 11/30},
			{s = path .. "wfoly_pi_decho_first_raise_end.ogg", t = 18/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
		MinProgress = 0.8,
		FireASAP = true,
        EventTable = {
            {s = path .. "wfoly_pi_decho_raise_mvmnt.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            {s = path .. "wfoly_pi_decho_drop_mvmnt.ogg", t = 0/30},
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
            {s = path .. "wfoly_pi_decho_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_pi_decho_inspect_02.ogg", t = 60/30},
			{s = path .. "wfoly_pi_decho_inspect_03.ogg", t = 110/30},
        },
    },
    ["bash"] = {
        Source = {"melee","melee2"},
    },
}

-------------------------- ATTACHMENTS

SWEP.Hook_TranslateAnimation = function (wep, anim)
    --local attached = self:GetElements()

    --------------------------------------------------------------------------
    if anim == "reload" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_xmag") then
        return "reload_xmag_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_xmag") then
        return "reload_xmag_fast_empty"
	--------------------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_xmaglrg") then
        return "mag_xmaglrg_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_xmaglrg") then
        return "mag_xmaglrg_fast_empty"
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
    elseif anim == "reload" and wep:HasElement("mag_xmaglrg") then
        return "reload_xmaglrg"
    elseif anim == "reload_empty" and wep:HasElement("mag_xmaglrg") then
        return "reload_xmaglrg_empty"
	--------------------------------------------------------------------------
    end
end

SWEP.Hook_Think	= function(wep)
    local vm = wep:GetOwner():GetViewModel()
    if wep:Clip1() == 0 then
        vm:SetPoseParameter("empty", 1)
    else
        vm:SetPoseParameter("empty", 0)
    end
	
    local vm = wep:GetOwner():GetViewModel()
    local delta = wep:GetSightDelta()
    local coolilove = math.cos(delta * (math.pi / 2))
    vm:SetPoseParameter( "aim_blend", Lerp(coolilove, 1, 0) )
end

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
}

SWEP.Attachments = {
    {
        PrintName = "Slide",
        DefaultAttName = "Standard slide",
        Category = "cod2019_50gs_slide",
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
    },
    {
        PrintName = "Optics",
        Bone = "tag_reflex",
        Pos = Vector(1.5, 0, -0.07),
        Ang = Angle(0, 0, 0),
        Category = {"cod2019_optics_pistols_alt","eft_optic_small"},
        CorrectiveAng = Angle(0, 0, 0),
		Scale = 1,
    },
    {
        PrintName = "Tactical",
        DefaultAttName = "Default",
        Category = {"cod2019_tac_pistols","cod2019_grip_pistols"},
        Bone = "tag_laser_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		--InstalledElements = {"rail_laser"},
    },
    {
        PrintName = "Grip",
        DefaultAttName = "Default",
        Category = "cod2019_50gs_grip",
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
        PrintName = "Mag",
		Bone = "j_mag1",
        Category = {"cod2019_mag"},
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Perk",
        Category = {"cod2019_perks","cod2019_perks_soh"}
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
        StickerModel = "models/weapons/cod2019/stickers/pist_50gs_decal_a.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/pist_50gs_decal_b.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/pist_50gs_decal_c.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/pist_50gs_decal_d.mdl",
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
        Pos = Vector(0, 0.2, -0.7),
        Ang = Angle(0, 0, 0),
		CosmeticOnly = true,
    },
}

SWEP.GripPoseParam = 4.6
SWEP.GripPoseParam2 = 0.6