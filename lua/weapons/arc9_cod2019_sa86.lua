AddCSLuaFile()

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = "Light Machine Guns"

SWEP.PrintName = "SA87"

SWEP.Class = "Light Machine Gun"
SWEP.Trivia = {
    ["Country of Origin"] = "United Kingdom",
    ["Caliber"] = "5.56×45mm NATO",
    ["Weight (Loaded)"] = "6.6 kg",
    ["Projectile Weight"] = "62 gr",
    ["Muzzle Velocity"] = "3,116 ft/s",
    ["Muzzle Energy"] = "1,813 joules"
}

SWEP.Credits = {
    Author = "Twilight Sparkle/Firmeteran",
    Assets = "Activision/Infinity Ward"
}

SWEP.Description = [[Fully automatic bullpup light machine gun. Lower rate of fire and 5.56mm ammunition keeps this rifle stable and effective at long ranges.]]

SWEP.ViewModel = "models/weapons/cod2019/c_lmg_sa86.mdl"
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_lmg_sa86.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-12, 6, -7.5),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-7, 5, -2),
    TPIKAng = Angle(-9, -1, 175),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 29 -- Damage done at point blank range
SWEP.DamageMin = 15 -- Damage done at maximum range

SWEP.DamageRand = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 2000 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 7000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 13 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.15

SWEP.ImpactForce = 11

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 2369 * 12
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.25

-------------------------- MAGAZINE

SWEP.Ammo = "ar2" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 30 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 10 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 600

SWEP.Firemodes = {
    {
        Mode = -1,
    },
    {
        Mode = 1,
		RPM = 500,
		TriggerDelay = 0.02,
		TriggerDelayTime = 0.02
    },
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1.5

SWEP.RecoilSeed = 2

SWEP.RecoilPatternDrift = 0

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.1
SWEP.RecoilRandomSide = 0.1

SWEP.RecoilDissipationRate = 35 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 1 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 2

SWEP.RecoilMultCrouch = 0.8

SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.7

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilMultSights = 0.3
SWEP.VisualRecoilPunchSights = 70
SWEP.VisualRecoilPunch = 2

SWEP.VisualRecoilUp = 0.4
SWEP.VisualRecoilRoll = 5
SWEP.VisualRecoilSide = 0.5

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
SWEP.RecoilModifierCapMove = 0.5
SWEP.RecoilModifierCapSights = 0

SWEP.SpreadMultMove = 2
--SWEP.SpreadAddMidAir = 0
SWEP.SpreadAddHipFire = 0.05
SWEP.SpreadAddCrouch = -0.03
SWEP.SpreadAddSights = -0.5


-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.3 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.5 -- How long it takes to go from sprinting to being able to fire.

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.3

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 255, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-3.3, -2, -0.25),
    Ang = Angle(0, 0, -1.5),
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
    Pos = Vector(-0.5, -0.5, -0.5),
    Ang = Angle(0, 0, -5)
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.MovingPos = Vector(-1, -0.8, -1)
SWEP.MovingAng = Angle(0, 0, -10)

SWEP.CrouchPos = Vector(-0.5, -0, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.SprintPos = Vector(0, 0, 0)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(15, 30, 3)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeSnapshotPos = Vector(-1, 7, 5)
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeNoRotate = false

SWEP.PeekPos = Vector(-1.8, 3, -4)
SWEP.PeekAng = Angle(-1, 1, -45)

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
SWEP.ShellScale = 0.085
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_lmg_sa86_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_metal_concrete_01.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_metal_concrete_02.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_metal_concrete_03.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_metal_concrete_04.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_metal_concrete_05.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_metal_concrete_06.ogg",
}
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineTime = 0.4
SWEP.DropMagazineQCA = 3
SWEP.DropMagazineAng = Angle(0, -90, 0)

-------------------------- SOUNDS

local path = "weapons/cod2019/sa87/"

SWEP.ShootSound = "COD2019.SA87.Fire"
SWEP.ShootSoundIndoor = "COD2019.SA87.Fire"

SWEP.ShootSoundSilenced = "COD2019.SA87.Fire.S"
SWEP.ShootSoundSilencedIndoor = "COD2019.SA87.Fire.S"

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

SWEP.EnterSightsSound = "weapons/cod2019/sa87/weap_ar_lima86_ads_up.ogg"
SWEP.ExitSightsSound = "weapons/cod2019/sa87/weap_ar_lima86_ads_down.ogg"

SWEP.BulletBones = {
    [1] = "j_bullet01",
    [2] = "j_bullet02",
	[3] = "j_bullet03",
	[4] = "j_bullet04",
}

SWEP.HideBones  = {
    [1] = "j_mag2",
}

SWEP.TriggerDelay = 0.15 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayCancellable = false
SWEP.TriggerDelayTime = 0.15 -- Time until weapon fires.

SWEP.TriggerDownSound = path .. "weap_lima86_fire_first_plr_01.ogg"
SWEP.TriggerUpSound = path .. "weap_lima86_disconnector_plr_01.ogg"

-- Jammed

SWEP.Malfunction = true 
SWEP.MalfunctionNeverLastShoot = true 
SWEP.MalfunctionMeanShotsToFail = 300*2
SWEP.MalfunctionMeanShotsToFailMultHot = -0.1*2

SWEP.Animations = {
    ["fire"] = {
        Source = "shoot1",
    },
    ["reload"] = {
        Source = "reload_short",
		MinProgress = 0.85,
		FireASAP = true,
		MagSwapTime = 3.5,
		DropMagAt = 1.1,
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
			{s = path .. "wfoly_lm_lima86_reload_start.ogg", t = 0/30},
			{s = path .. "wfoly_lm_lima86_reload_magout_01.ogg", t = 25/30},
			{s = path .. "wfoly_lm_lima86_reload_rotate.ogg", t = 36/30},
			{s = path .. "wfoly_lm_lima86_reload_magin_v2_01.ogg", t = 56/30},
			{s = path .. "wfoly_lm_lima86_reload_magin_v2_02.ogg", t = 70/30},
			{s = path .. "wfoly_lm_lima86_reload_end_01.ogg", t = 87/30},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.9,
		FireASAP = true,
		DropMagAt = 1.1,
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
			{s = path .. "wfoly_lm_lima86_reload_empty_start.ogg", t = 0/30},
			{s = path .. "wfoly_lm_lima86_reload_empty_magout_01.ogg", t = 25/30},
			{s = path .. "wfoly_lm_lima86_reload_empty_magin_v2_01.ogg", t = 55/30},
			{s = path .. "wfoly_lm_lima86_reload_empty_magin_v2_02.ogg", t = 72/30},
			{s = path .. "wfoly_lm_lima86_reload_empty_rotate.ogg", t = 75/30},
			{s = path .. "wfoly_lm_lima86_reload_empty_charge_01.ogg", t = 93/30},
			{s = path .. "wfoly_lm_lima86_reload_empty_end.ogg", t = 75/30},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.85,
		FireASAP = true,
		MagSwapTime = 3.5,
		DropMagAt = 0.9,
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
			{s = path .. "wfoly_lm_lima86_reload_fast_start.ogg", t = 4/30},
			{s = path .. "wfoly_lm_lima86_reload_fast_magout_01.ogg", t = 14/30},
			{s = path .. "wfoly_lm_lima86_reload_fast_magin_v2_01.ogg", t = 38/30},
			{s = path .. "wfoly_lm_lima86_reload_fast_magin_v2_02.ogg", t = 47/30},
			{s = path .. "wfoly_lm_lima86_reload_fast_end.ogg", t = 54/30},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.9,
		FireASAP = true,
		DropMagAt = 0.9,
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
			{s = path .. "wfoly_lm_lima86_reload_empty_fast_start.ogg", t = 4/30},
			{s = path .. "wfoly_lm_lima86_reload_empty_fast_magout_01.ogg", t = 17/30},
            {s = path .. "wfoly_lm_lima86_reload_empty_fast_magin_v2_01.ogg", t = 38/30},
			{s = path .. "wfoly_lm_lima86_reload_empty_fast_magin_v2_02.ogg", t = 47/30},
			{s = path .. "wfoly_lm_lima86_reload_empty_fast_charge_01.ogg", t = 59/30},
			{s = path .. "wfoly_lm_lima86_reload_empty_fast_end.ogg", t = 71/30},
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
            {s = path .. "wfoly_lm_lima86_raise_first_start.ogg", t = 0/30},
            {s = path .. "wfoly_lm_lima86_raise_first_charge_01.ogg", t = 16/30},
			{s = path .. "wfoly_lm_lima86_raise_first_end.ogg", t = 26/30},
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
            {s = path .. "wfoly_lm_lima86_raise.ogg", t = 0/30},
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
                t = 0.3,
                lhik = 0,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_lm_lima86_drop.ogg", t = 0/30},
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
		Mult = 2.1,
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
		Mult = 2.1,
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
            {s = path .. "wfoly_lm_lima86_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_lm_lima86_inspect_02.ogg", t = 40/30},
			{s = path .. "wfoly_lm_lima86_inspect_03.ogg", t = 78/30},
			{s = path .. "wfoly_lm_lima86_inspect_04.ogg", t = 138/30},
        },
    },
    ["bash"] = {
        Source = {"melee","melee2","melee3"},
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
    ["firemode_1"] = {
        Source = "semi_on",
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
                t = 1.1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "weap_lm_lima86_selector_on.ogg", t = 0/30},
        },
    },
    ["firemode_2"] = {
        Source = "semi_off",
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
                t = 1.1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "weap_lm_lima86_selector_off.ogg", t = 0/30},
        },
    },
    ["switchsights"] = {
        Source = "semi_on",
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
                t = 1.1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_lm_lima86_inspect_01.ogg", t = 0/30},
        },
    },
    ["jam"] = {
        Source = "jammed",
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
                t = 0.8,
                lhik = 1,
                rhik = 1
            },
        },
    },
    ["fix"] = {
        Source = "unjam",
		EjectAt = 0.6,
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
            {s = path .. "wfoly_lm_lima86_raise_first_start.ogg", t = 0/30},
            {s = path .. "wfoly_lm_lima86_raise_first_charge_01.ogg", t = 16/30},
			{s = path .. "wfoly_lm_lima86_raise_first_end.ogg", t = 26/30},
        },
    },
}

-------------------------- ATTACHMENTS

-- SWEP.Hook_Think	= ARC9.COD2019.BlendSights2

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

SWEP.DefaultBodygroups = "00000000000000"

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(13, -0.5, -0.7),
	ModelAngleOffset = Angle(0, 0, 15),
	Scale = 0.9,
    },
    ["go_grip_angled"] = {
    ModelOffset = Vector(1, 0, 0.1),
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
    ["barrel_short"] = {
        Bodygroups = {
            {2,1},
			{3,1},
        },
    },
    ["barrel_none"] = {
        Bodygroups = {
            {2,2},
        },
    },
    ["muzzle_none"] = {
        Bodygroups = {
            {3,2},
        },
    },
    ["foregrip_none"] = {
        Bodygroups = {
            {4,1},
        },
    },
    ["sight_none"] = {
        Bodygroups = {
            {5,1},
        },
    },
	["grip_angled"] = {
    AttPosMods = { [5] = { Pos = Vector(-2.5, 0, 0), } }	
	}
}

-- SWEP.Hook_ModifyBodygroups = function(wep, data)
    -- local model = data.model
    -- if wep:HasElement("stock_retract") then model:SetBodygroup(4,1) end
-- end

SWEP.Attachments = {
    {
        PrintName = "Barrels",
        DefaultAttName = "Standard Barrel",
        Category = "cod2019_sa86_barrel",
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
        CorrectiveAng = Angle(-0.25, -0.25, 0),
		InstalledElements = {"sight_none"},
    },
    {
        PrintName = "Tactical",
        DefaultAttName = "Default",
        Category = "cod2019_tac",
        Bone = "tag_laser_attach",
        Pos = Vector(-2, -0.5, 0),
        Ang = Angle(0, 0, -90),
		--InstalledElements = {"rail_laser"},
    },
    {
        PrintName = "Grips",
        DefaultAttName = "Default",
        Category = "cod2019_grip",
        Bone = "tag_grip_attach",
        Pos = Vector(-3, 0, 0),
        Ang = Angle(0, 0, 180),
		Scale = 1,
		--InstalledElements = {"rail_grip"},
    },
    {
        PrintName = "Stock",
        DefaultAttName = "Standard Stock",
        Category = "cod2019_sa87_stock",
        Bone = "tag_stock_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Reciever",
        Category = "cod2019_sa86_reciever",
        Bone = "tag_attachments",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		Icon_Offset = Vector(0, 0, 0),
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
        Category = {"cod2019_mag","cod2019_sa87_mag"},
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
        Category = "cod2019_skins_sa87",
		CosmeticOnly = true,
    },
    {
        PrintName = "Cosmetic",
        Category = {"universal_camo"},
        CosmeticOnly = true,
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/lmg_sa86_decal_a.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/lmg_sa86_decal_b.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/lmg_sa86_decal_c.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/lmg_sa86_decal_d.mdl",
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
        Bone = "tag_attachments",
        Pos = Vector(3.7, -0.75, -0.7),
        Ang = Angle(0, 0, 0),
		CosmeticOnly = true,
    },
}

SWEP.GripPoseParam = 0.2
SWEP.GripPoseParam2 = 0.1
SWEP.CodAngledGripPoseParam = 31
SWEP.CodStubbyGripPoseParam = 17
SWEP.CodStubbyTallGripPoseParam = 22