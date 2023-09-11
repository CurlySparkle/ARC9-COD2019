AddCSLuaFile()

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = "Light Machine Guns"

SWEP.PrintName = "PKM"

SWEP.Class = "Light Machine Gun"
SWEP.Trivia = {
    ["Country of Origin"] = "Soviet Union",
    ["Caliber"] = "7.62×54mmR",
    ["Weight (Loaded)"] = "9.2 kg",
    ["Projectile Weight"] = "181 gr",
    ["Muzzle Velocity"] = "2,707 ft/s",
    ["Muzzle Energy"] = "3,994 joules"
}

SWEP.Credits = {
    Author = "Twilight Sparkle/Firmeteran",
    Assets = "Infinity Ward/Valve/New World Interactive"
}

SWEP.Description = [[Fully automatic light machine gun firing 7.62mm ammunition for high damage at a moderate fire rate.]]

SWEP.ViewModel = "models/weapons/cod2019/c_lmg_pkm.mdl"
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_lmg_pkm.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-12, 6, -7.5),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-8, 5, 2),
    TPIKAng = Angle(-9, -1, 175),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 31 -- Damage done at point blank range
SWEP.DamageMin = 28 -- Damage done at maximum range

SWEP.DamageRand = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 2000 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 7000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 15 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.15

SWEP.ImpactForce = 12

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 3000 * 12
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.5

-------------------------- MAGAZINE

SWEP.Ammo = "ar2" -- What ammo type this gun uses.

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 100 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 10 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 750

SWEP.Firemodes = {
    {
        Mode = -1,
    },
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1.6

SWEP.RecoilSeed = 675846694

SWEP.RecoilPatternDrift = 45

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 0.7 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.1

SWEP.RecoilDissipationRate = 35 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 0.5 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 2

SWEP.RecoilMultCrouch = 0.8

SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.6

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilMultSights = 0.3
SWEP.VisualRecoilPunchSights = 55
SWEP.VisualRecoilPunch = 3
SWEP.VisualRecoilUp = 0.5
SWEP.VisualRecoilRoll = 5
SWEP.VisualRecoilSide = 0.3

SWEP.VisualRecoilDoingFunc = function(up, side, roll, punch, recamount)
    if recamount > 5 then
        recamount = 1.65 - math.Clamp((recamount - 2) / 3.5, 0, 1)
        
        local fakerandom = 1 + (((69+recamount%5*CurTime()%3)*2420)%4)/10 
        
        return up, side * fakerandom, roll, punch
    end

    return up, side, roll, punch
end

-------------------------- SPREAD

SWEP.Spread = 0.002

SWEP.SpreadAddRecoil = 0.01
SWEP.SpreadMultRecoil = 1.2
SWEP.RecoilModifierCap = 1
SWEP.RecoilModifierCapSights = 0


SWEP.SpreadMultMove = 2
--SWEP.SpreadAddMidAir = 0
SWEP.SpreadAddHipFire = 0.07
SWEP.SpreadAddCrouch = -0.03
SWEP.SpreadAddSights = -0.5


-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.8 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.5 -- How long it takes to go from sprinting to being able to fire.

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.4

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 255, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-3.76, -2.7, 0.6),
    Ang = Angle(0.05, 0, 2),
    Magnification = 1.15,
    ViewModelFOV = 56,
	CrosshairInSights = false
}

SWEP.ViewModelFOVBase = 65

SWEP.SprintPos = Vector(0, 0, 0)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.SprintMidPoint = {
    Pos = Vector(0, -1, -0.15),
    Ang = Angle(0, 0, 0)
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.MovingMidPoint = {
    Pos = Vector(-0.5, -0.5, -0.5),
    Ang = Angle(0, 0, -5)
}

SWEP.MovingPos = Vector(-1, -1, -1)
SWEP.MovingAng = Angle(0, 0, -8)

SWEP.CrouchPos = Vector(-0.5, -0, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(19, 40, 5)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeSnapshotPos = Vector(-1, 7, 5)
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

SWEP.MuzzleParticle = "AC_muzzle_rifle_fp"
SWEP.AfterShotParticle = "AC_muzzle_smoke_barrel"
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 4
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_762_hr.mdl"
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 0.07
SWEP.ShellPhysBox = Vector(1, 1, 1)

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_lmg_pkm_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_01.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_02.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_03.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_04.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_05.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_06.ogg",
}
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineTime = 0.4
SWEP.DropMagazineQCA = 3
SWEP.DropMagazineAng = Angle(0, -90, 0)

--SWEP.DropMagazineSounds = {}
--SWEP.DropMagazinePos = Vector(0, 0, 0)
--SWEP.DropMagazineAng = Angle(180, 90, 0)
--SWEP.DropMagazineVelocity = Vector(-40, 30, 0)

-------------------------- SOUNDS

local path = "weapons/cod2019/pkm/"

SWEP.ShootSound = "COD2019.PKM.Fire"
SWEP.ShootSoundIndoor = "COD2019.PKM.Fire"

SWEP.ShootSoundSilenced = "COD2019.PKM.Fire.S"
SWEP.ShootSoundSilencedIndoor = "COD2019.PKM.Fire.S"

-- Non-Silenced Outside
SWEP.LayerSound = "Layer_AR.Outside"
SWEP.DistantShootSound = "Distant_LMG.Outside"
-- Inside
SWEP.LayerSoundIndoor = "Layer_Shotgun.Inside"
SWEP.DistantShootSoundIndoor = "Distant_LMG.Inside"
---------------------------------------------------
-- Silenced Outside
SWEP.LayerSoundSilenced = "Layer_ARSUP.Outside"
SWEP.DistantShootSoundSilenced = "Distant_AR_Sup.Outside"
-- Inside
SWEP.LayerSoundSilencedIndoor = "Layer_ARSUP.Inside"
SWEP.DistantShootSoundSilencedIndoor = "Distant_AR_Sup.Inside"
---------------------------------------------------

SWEP.EnterSightsSound = "weapons/cod2019/pkm/wfoly_lm_pkilo_ads_up.ogg"
SWEP.ExitSightsSound = "weapons/cod2019/pkm/wfoly_lm_pkilo_ads_down.ogg"

SWEP.ReloadHideBoneTables = {
    [1] = {
        "j_mag1",
    },
}

SWEP.BulletBones = {
    [8] = "j_b_01",
    [7] = "j_b_02",
    [6] = "j_b_03",
    [5] = "j_b_04",
	[4] = "j_b_05",
	[3] = "j_b_06",
	[2] = "j_b_07",
	[1] = "j_b_08",
}

SWEP.HideBones  = {
    [1] = "j_mag2",
}

SWEP.TriggerDelay = 0.1 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayTime = 0.1 -- Time until weapon fires.

SWEP.TriggerDownSound = "weapons/cod2019/pkm/weap_pkilo_prefire_plr_01.ogg"
SWEP.TriggerUpSound = ""

SWEP.Animations = {
    ["fire"] = {
        Source = "shoot1",
    },
    ["reload"] = {
        Source = "reload_short",
		MinProgress = 0.8,
		MagSwapTime = 3,
		DropMagAt = 3.7,
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
                t = 1.15,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_lift.ogg", t = 0/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_charge.ogg", t = 21/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_cover_open.ogg", t = 39/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_magout.ogg", t = 99/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_lift.ogg", t = 116/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_magin_v2_01.ogg", t = 144/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_magin_v2_02.ogg", t = 163/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_ammobelt.ogg", t = 168/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_cover_close.ogg", t = 202/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_load_charge.ogg", t = 221/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_end.ogg", t = 244/30},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.9,
		DropMagAt = 3.7,
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
                t = 1.15,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_lift.ogg", t = 0/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_charge.ogg", t = 21/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_cover_open.ogg", t = 39/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_magout.ogg", t = 99/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_lift.ogg", t = 116/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_magin_v2_01.ogg", t = 144/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_magin_v2_02.ogg", t = 163/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_ammobelt.ogg", t = 168/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_cover_close.ogg", t = 202/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_load_charge.ogg", t = 221/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_end.ogg", t = 244/30},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.8,
		MagSwapTime = 3,
		DropMagAt = 3.5,
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
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_plr_lm_pkilo_reload_fast_raise.ogg", t = 1/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_fast_charge.ogg", t = 14/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_fast_cover_open.ogg", t = 38/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_fast_magout.ogg", t = 64/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_fast_magin_v2_01.ogg", t = 93/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_fast_magin_v2_02.ogg", t = 105/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_fast_ammobelt.ogg", t = 107/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_fast_cover_close.ogg", t = 136/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_fast_load_charge.ogg", t = 151/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_fast_end.ogg", t = 177/30},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.8,
		MagSwapTime = 3,
		DropMagAt = 3.5,
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
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_fast_raise.ogg", t = 2/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_fast_charge.ogg", t = 13/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_fast_cover_open.ogg", t = 37/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_fast_magout.ogg", t = 68/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_fast_magin_v2_01.ogg", t = 95/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_fast_magin_v2_02.ogg", t = 105/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_fast_ammobelt.ogg", t = 111/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_fast_cover_close.ogg", t = 137/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_fast_load_charge.ogg", t = 151/30},
			{s = path .. "wfoly_plr_lm_pkilo_reload_empty_fast_end.ogg", t = 173/30},
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
                t = 0.95,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_plr_lm_pkilo_raise_first_lift.ogg", t = 0/30},
            {s = path .. "wfoly_plr_lm_pkilo_raise_first_handle.ogg", t = 22/30},
			{s = path .. "wfoly_plr_lm_pkilo_raise_first_charge.ogg", t = 33/30},
			{s = path .. "wfoly_plr_lm_pkilo_raise_first_rattle.ogg", t = 33/30},
			{s = path .. "wfoly_plr_lm_pkilo_raise_first_end.ogg", t = 56/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
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
            {s = path .. "wfoly_plr_lm_pkilo_raise.ogg", t = 0/30},
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
            {s = path .. "wfoly_plr_lm_pkilo_drop.ogg", t = 0/30},
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
		Mult = 2.3,
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
		Mult = 2.3,
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
                t = 0.3,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.45,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_lm_pkilo_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_lm_pkilo_inspect_02.ogg", t = 55/30},
			{s = path .. "wfoly_lm_pkilo_inspect_03.ogg", t = 113/30},
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
                t = 0.8,
                lhik = 1,
                rhik = 1
            },
        },
    },
}

-------------------------- ATTACHMENTS

-- SWEP.Hook_Think	= ARC9.COD2019.BlendSights2

SWEP.Hook_TranslateAnimation = function (wep, anim)
    --local attached = self:GetElements()
    --------------------------------------------------------------------------
    if anim == "reload" and wep:HasElement("perk_speedreload") then
        return "reload_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") then 
        return "reload_fast_empty"
    --------------------------------------------------------------------------
    end
end

SWEP.DefaultBodygroups = "00000000000000"

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(17, -0.2, -0.75),
	ModelAngleOffset = Angle(0, 0, 0),
	Scale = 0.9,
    },
    ["go_grip_angled"] = {
    ModelOffset = Vector(0, 0, 0.1),
    },
}

SWEP.AttachmentElements = {
    ["body_none"] = {
        Bodygroups = {
            {0,1},
        },
    },
    ["mag_none"] = {
        Bodygroups = {
            {1,1},
        },
    },
    ["barrel_none"] = {
        Bodygroups = {
            {2,1},
        },
    },
    ["muzzle_none"] = {
        Bodygroups = {
            {3,1},
        },
    },
    ["stock_adapter"] = {
        Bodygroups = {
            {4,1},
        },
    },    
	["stock_none"] = {
        Bodygroups = {
            {4,2},
        },
    },
	["sight_none"] = {
        Bodygroups = {
            {5,1},
        },
    },
	["grip_none"] = {
        Bodygroups = {
            {7,1},
        },
    },
}

-- SWEP.Hook_ModifyBodygroups = function(wep, data)
    -- local model = data.model
    -- if wep:HasElement("stock_retract") then model:SetBodygroup(4,1) end
-- end

SWEP.Attachments = {
    {
        PrintName = "Barrels",
        DefaultAttName = "Standard Barrel",
        Category = "cod2019_pkm_barrel",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Category = "cod2019_muzzle",
        Bone = "tag_silencer",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		InstalledElements = {"muzzle_none"},
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
        Pos = Vector(-4, -0.35, 0.45),
        Ang = Angle(0, 0, -90),
		--InstalledElements = {"rail_laser"},
    },
    {
        PrintName = "Grips",
        DefaultAttName = "Default",
        Category = "cod2019_grip",
        Bone = "tag_grip_attach",
        Pos = Vector(-2.5, 0, 0),
        Ang = Angle(0, 0, 180),
		Scale = 1,
		InstalledElements = {"grip_none"},
    },
    {
        PrintName = "Stock",
        DefaultAttName = "Standard Stock",
        Category = {"cod2019_pkm_stock","cod2019_tube"},
        Bone = "tag_stock_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		InstalledElements = {"stock_adapter"},
    },
    {
        PrintName = "Ammo",
        Bone = "j_mag1",
        Category = {"cod2019_ammo"},
        Pos = Vector(0, 0, -1.5),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Mag",
		Bone = "j_mag1",
        Category = "cod2019_pkm_mag",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
		PrintName = "Perk",
        Category = {"cod2019_perks","cod2019_perks_soh_2"}
    },
    {
        PrintName = "Skins",
        --Bone = "v_weapon.Clip",
        Category = "cod2019_skins_m91",
		CosmeticOnly = true,
    },
    {
        PrintName = "Cosmetic",
        Category = {"universal_camo"},
        CosmeticOnly = true,
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/lmg_pkm_decal_a.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/lmg_pkm_decal_b.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/lmg_pkm_decal_c.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/lmg_pkm_decal_d.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/lmg_pkm_decal_e.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Charm",
        Category = "charm",
        Bone = "tag_cosmetic",
        Pos = Vector(0.5, 0, 0),
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

SWEP.GripPoseParam = 5
SWEP.GripPoseParam2 = 0.5
SWEP.CodAngledGripPoseParam = 4

-- SWEP.EFTshellsfunnytable = {
    -- ["j_b_07"] = true,
    -- ["j_b_08"] = true,
    -- ["j_b_09"] = true,
    -- ["j_b_10"] = true,
    -- ["j_b_11"] = true,
    -- ["j_b_12"] = true,
    -- ["j_b_13"] = true,
    -- ["j_b_14"] = true,
    -- ["j_b_15"] = true,
    -- ["j_b_16"] = true,
-- }

-- SWEP.Hook_PrimaryAttack = function(swep)
    -- local gets = swep:GetEFTShootedRounds()
    -- if gets > math.random(20,25) then
        -- swep:SetEFTShootedRounds(0)
        -- swep:DropMagazine()
    -- else
        -- swep:SetEFTShootedRounds(gets + 1)
        -- -- swep:DropMagazine()
    -- end
-- end

-- SWEP.Hook_HideBones = function(swep, bons)
    -- if bons["j_mag1"] then return bons end -- hiding everything

    -- local gets = swep:GetEFTShootedRounds()
    
    -- for i = 1, 25 do 
        -- local funnynum = string.format("%03d", i)

        -- if i > gets then
            -- swep.EFTshellsfunnytable["j_b_" .. funnynum] = true 
        -- else
            -- swep.EFTshellsfunnytable["j_b_" .. funnynum] = false  
        -- end
    -- end
    -- return swep.EFTshellsfunnytable
-- end

-- SWEP.DropMagazineModel = "models/weapons/cod2019/mags/pkm_belt_dropped.mdl"

-- SWEP.DropMagazineModelHook = function(swep, old)
    -- if swep:GetReloading() then
        -- return "models/weapons/cod2019/mags/w_lmg_pkm_mag.mdl"
    -- end
    -- return "models/weapons/cod2019/mags/pkm_belt_dropped.mdl"
-- end

-- local funnyvec = Vector(-100, 0, 0)
-- local funnyvec2 = Vector(-40, 30, 0)
-- SWEP.DropMagazineVelocityHook = function(swep, old)
    -- if swep:GetReloading() then return funnyvec end
    -- return funnyvec2
-- end

-- -- ewww
-- DEFINE_BASECLASS(SWEP.Base)
-- function SWEP:SetupDataTables(...)
    -- BaseClass.SetupDataTables(self, ...)
    -- self:NetworkVar("Int", 11, "EFTShootedRounds")
    -- --self:NetworkVar("Bool", 27, "EFTArmedDryfire")
    -- self:SetEFTShootedRounds(0)
    -- --self:SetEFTArmedDryfire(true)
-- end