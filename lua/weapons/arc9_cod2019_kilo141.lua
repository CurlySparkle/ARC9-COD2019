AddCSLuaFile()

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = "Assault Rifles"

SWEP.PrintName = "Kilo 141"

SWEP.Class = "Assault Rifle"
SWEP.Trivia = {
    ["Country of Origin"] = "Germany",
    ["Manufacturer"] = "Singuard Arms",
    ["Caliber"] = "5.56×45mm NATO",
    ["Weight (Loaded)"] = "3.25 kg",
    ["Projectile Weight"] = "62 gr",
    ["Muzzle Velocity"] = "2,624 ft/s",
    ["Muzzle Energy"] = "1,285 joules"
}

SWEP.Credits = {
    Author = "Twilight Sparkle/Firmeteran",
    Assets = "Activision/Infinity Ward"
}

SWEP.Description = [[Fully automatic assault rifle with an ergonomic design that improves handling, and a steady fire rate helps stay on target.]]

SWEP.ViewModel = "models/weapons/cod2019/c_rif_kilo141.mdl"
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_rif_kilo141.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-12, 6, -7.5),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-8, 5, -2),
    TPIKAng = Angle(-9, 0, 170),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 28 -- Damage done at point blank range
SWEP.DamageMin = 18 -- Damage done at maximum range

SWEP.DamageRand = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 2000 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 7000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 8 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.15

SWEP.ImpactForce = 8

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 1512 * 12
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.15

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

SWEP.RPM = 750

SWEP.Firemodes = {
    {
        Mode = -1,
		PoseParam = 0,
    },
    {
        Mode = 1,
		PoseParam = 1,
    },
    -- {
        -- Mode = 3,
		-- RPM = 700,
		-- PostBurstDelay = 0.15,
		-- RunawayBurst = true,
		-- PoseParam = 1,
    -- },
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1.2

SWEP.RecoilSeed = 24366

SWEP.RecoilPatternDrift = 5

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.1
SWEP.RecoilRandomSide = 0.2

SWEP.RecoilDissipationRate = 35 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 0.5 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 2

SWEP.RecoilMultCrouch = 0.8

SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.8

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilPunch = 1.5
SWEP.VisualRecoilUp = 0.4

SWEP.VisualRecoilRoll = 25
SWEP.VisualRecoilSide = 0.3

SWEP.VisualRecoilMultSights = 0.5
SWEP.VisualRecoilPunchSights = 1
SWEP.VisualRecoilRollSights = 0
SWEP.VisualRecoilSideSights = 0
SWEP.VisualRecoilUpSights = 0

SWEP.VisualRecoilSpringPunchDamping = 11
SWEP.VisualRecoilDampingConst = 40
SWEP.VisualRecoilDampingConstSights = 50

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
SWEP.RecoilModifierCap = 2
SWEP.RecoilModifierCapSights = 0

SWEP.SpreadMultMove = 2
--SWEP.SpreadAddMidAir = 0
SWEP.SpreadAddHipFire = 0.03
SWEP.SpreadAddCrouch = -0.03
SWEP.SpreadAddSights = -0.5


-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.3 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.3 -- How long it takes to go from sprinting to being able to fire.

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
    Pos = Vector(-2.08, -3, 0.6),
    Ang = Angle(0.1, 1, 5.5),
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
    Pos = Vector(0, -0.5, -0.5),
    Ang = Angle(0, 0, 0)
}

SWEP.MovingPos = Vector(-1, -0.8, -1)
SWEP.MovingAng = Angle(0, 0, -10)

SWEP.CrouchPos = Vector(-0.5, -0, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.CustomizeAng = Angle(90, 0, 1)
SWEP.CustomizePos = Vector(14, 30, 4)
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
SWEP.ShellScale = 0.05
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_rif_kilo141_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ak_poly_concrete_01.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ak_poly_concrete_02.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ak_poly_concrete_03.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ak_poly_concrete_04.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ak_poly_concrete_05.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ak_poly_concrete_06.ogg",
}
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineTime = 0.4
SWEP.DropMagazineQCA = 3
SWEP.DropMagazineAng = Angle(0, -90, 0)

-------------------------- SOUNDS

local path = "weapons/cod2019/kilo141/"

SWEP.ShootSound = "Cod2019.kilo141.fire"
SWEP.ShootSoundIndoor = "Cod2019.kilo141.fire"

SWEP.ShootSoundSilenced = "Cod2019.kilo141.fire.s"
SWEP.ShootSoundSilencedIndoor = "Cod2019.kilo141.fire.s"

-- Non-Silenced
SWEP.LayerSound = "Layer_AR.Outside"
SWEP.DistantShootSound = "Distant_AR3.Outside"
-- Inside
SWEP.LayerSoundIndoor = "Layer_AR.Inside"
SWEP.DistantShootSoundIndoor = "Distant_AR.Inside"
---------------------------------------------------
-- Silenced
SWEP.LayerSoundSilenced = "Layer_ARSUP.Outside"
SWEP.DistantShootSoundSilenced = "Distant_AR_Sup.Outside"
-- Inside
SWEP.LayerSoundSilencedIndoor = "Layer_ARSUP.Inside"
SWEP.DistantShootSoundSilencedIndoor = "Distant_AR_Sup.Inside"
---------------------------------------------------

SWEP.EnterSightsSound = path .. "weap_ar_kilo433_ads_up.ogg"
SWEP.ExitSightsSound = path .. "weap_ar_kilo433_ads_down.ogg"

SWEP.BulletBones = {
    [1] = "j_bullet01",
    [2] = "j_bullet02",
	[3] = "j_bullet03",
	[4] = "j_bullet04",
}

SWEP.HideBones  = {
    [1] = "j_mag2",
}

SWEP.TriggerDelay = 0.025 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayCancellable = false
SWEP.TriggerDelayTime = 0.025 -- Time until weapon fires.

SWEP.TriggerDownSound = "weapons/cod2019/kilo141/weap_kilo433_fire_first_plr_01.ogg"
SWEP.TriggerUpSound = "weapons/cod2019/kilo141/weap_kilo433_disconnector_plr_01.ogg"

SWEP.Animations = {
    ["fire"] = {
        Source = "shoot1",
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
        },
    },
    ["reload"] = {
        Source = "reload_short",
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
			{s = path .. "wfoly_plr_ar_kilo433_reload_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_settle.ogg", t = 5/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_magout_01.ogg", t = 22/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_magin_v2_01.ogg", t = 32/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_magin_v2_02.ogg", t = 42/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_rattle.ogg", t = 50/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_end.ogg", t = 66/30},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.9,
		DropMagAt = 0.7,
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
			{s = path .. "wfoly_plr_ar_kilo433_reload_empty_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_empty_magout_01.ogg", t = 4/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_empty_reach.ogg", t = 5/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_empty_tilt.ogg", t = 15/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_empty_magin_v2_01.ogg", t = 28/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_empty_magin_v2_02.ogg", t = 38/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_empty_charge_01.ogg", t = 57/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_empty_end.ogg", t = 73/30},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.8,
		MagSwapTime = 1.5,
		DropMagAt = 0.48,
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
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_plr_ar_kilo433_reload_empty_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_empty_magout_01.ogg", t = 4/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_empty_reach.ogg", t = 5/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_empty_tilt.ogg", t = 15/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_empty_magin_v2_01.ogg", t = 22/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_empty_magin_v2_02.ogg", t = 26/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_empty_end.ogg", t = 39/30},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.8,
		MagSwapTime = 1.5,
		DropMagAt = 0.48,
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
			{s = path .. "wfoly_plr_ar_kilo433_reload_empty_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_empty_magout_01.ogg", t = 4/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_empty_reach.ogg", t = 5/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_empty_tilt.ogg", t = 15/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_empty_magin_v2_01.ogg", t = 22/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_empty_magin_v2_02.ogg", t = 26/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_empty_charge_01.ogg", t = 37/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_empty_end.ogg", t = 47/30},
        },
    },
    ["reload_xmag"] = {
        Source = "reload_xmag",
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
			{s = path .. "wfoly_plr_ar_kilo433_reload_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_settle.ogg", t = 5/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_magout_01.ogg", t = 22/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_magin_v2_01.ogg", t = 32/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_magin_v2_02.ogg", t = 42/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_rattle.ogg", t = 50/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_end.ogg", t = 66/30},
        },
    },
    ["reload_xmag_empty"] = {
        Source = "reload_xmag_empty",
		MinProgress = 0.9,
		DropMagAt = 0.7,
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
			{s = path .. "wfoly_plr_ar_kilo433_reload_empty_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_empty_magout_01.ogg", t = 4/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_empty_reach.ogg", t = 5/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_empty_tilt.ogg", t = 15/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_empty_magin_v2_01.ogg", t = 28/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_empty_magin_v2_02.ogg", t = 38/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_empty_charge_01.ogg", t = 57/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_empty_end.ogg", t = 73/30},
        },
    },
    ["reload_xmag_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.8,
		MagSwapTime = 1.5,
		DropMagAt = 0.48,
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
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_plr_ar_kilo433_reload_empty_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_empty_magout_01.ogg", t = 4/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_empty_reach.ogg", t = 5/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_empty_tilt.ogg", t = 15/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_empty_magin_v2_01.ogg", t = 22/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_empty_magin_v2_02.ogg", t = 26/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_empty_end.ogg", t = 39/30},
        },
    },
    ["reload_xmag_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.8,
		MagSwapTime = 1.5,
		DropMagAt = 0.48,
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
			{s = path .. "wfoly_plr_ar_kilo433_reload_empty_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_empty_magout_01.ogg", t = 4/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_empty_reach.ogg", t = 5/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_empty_tilt.ogg", t = 15/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_empty_magin_v2_01.ogg", t = 22/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_empty_magin_v2_02.ogg", t = 26/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_empty_charge_01.ogg", t = 37/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_empty_end.ogg", t = 47/30},
        },
    },
    ["reload_drum"] = {
        Source = "reload_drum",
		MinProgress = 0.8,
		MagSwapTime = 3.5,
		DropMagAt = 0.7,
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
			{s = path .. "wfoly_plr_ar_kilo433_reload_drum_fast_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_drum_fast_empty_settle.ogg", t = 5/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_drum_fast_magout_01.ogg", t = 22/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_drum_fast_magin_01.ogg", t = 32/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_drum_fast_grab.ogg", t = 50/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_drum_fast_end.ogg", t = 66/30},
        },
    },
    ["reload_drum_empty"] = {
        Source = "reload_drum_empty",
		MinProgress = 0.9,
		DropMagAt = 0.7,
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
			{s = path .. "wfoly_plr_ar_kilo433_reload_drum_fast_empty_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_drum_fast_empty_drumout_01.ogg", t = 4/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_drum_fast_empty_grab.ogg", t = 5/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_drum_fast_empty_settle.ogg", t = 15/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_drum_fast_empty_drumin_v2_01.ogg", t = 28/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_drum_fast_empty_drumin_v2_02.ogg", t = 38/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_drum_fast_empty_charge_01.ogg", t = 57/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_drum_fast_empty_end.ogg", t = 73/30},
        },
    },
    ["reload_drum_fast"] = {
        Source = "reload_drum_fast",
		MinProgress = 0.8,
		MagSwapTime = 3.5,
		DropMagAt = 0.7,
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
			{s = path .. "wfoly_plr_ar_kilo433_reload_drum_fast_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_drum_fast_empty_settle.ogg", t = 5/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_drum_fast_magout_01.ogg", t = 22/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_drum_fast_magin_01.ogg", t = 32/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_drum_fast_grab.ogg", t = 50/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_drum_fast_end.ogg", t = 66/30},
        },
    },
    ["reload_drum_fast_empty"] = {
        Source = "reload_drum_fast_empty",
		MinProgress = 0.9,
		DropMagAt = 0.7,
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
			{s = path .. "wfoly_plr_ar_kilo433_reload_drum_fast_empty_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_drum_fast_empty_drumout_01.ogg", t = 4/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_drum_fast_empty_grab.ogg", t = 5/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_drum_fast_empty_settle.ogg", t = 15/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_drum_fast_empty_drumin_v2_01.ogg", t = 28/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_drum_fast_empty_drumin_v2_02.ogg", t = 38/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_drum_fast_empty_charge_01.ogg", t = 57/30},
			{s = path .. "wfoly_plr_ar_kilo433_reload_drum_fast_empty_end.ogg", t = 73/30},
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
            {s = path .. "wfoly_plr_ar_kilo433_raise_first_start.ogg", t = 0/30},
            {s = path .. "wfoly_plr_ar_kilo433_raise_first_open_01.ogg", t = 5/30},
			{s = path .. "wfoly_plr_ar_kilo433_raise_first_close_01.ogg", t = 23/30},
			{s = path .. "wfoly_plr_ar_kilo433_raise_first_end.ogg", t = 28/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
        IKTimeLine = {
            {
                t = 0,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.4,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_plr_ar_kilo433_raise_up.ogg", t = 0/30},
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
                t = 0.35,
                lhik = 0,
                rhik = 0
            },
        },
        EventTable = {
            {s = path .. "wfoly_plr_ar_kilo433_drop_down.ogg", t = 0/30},
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
            {s = path .. "wfoly_ar_kilo433_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_ar_kilo433_inspect_02.ogg", t = 40/30},
			{s = path .. "wfoly_ar_kilo433_inspect_03.ogg", t = 65/30},
			{s = path .. "wfoly_ar_kilo433_inspect_04.ogg", t = 94/30},
			{s = path .. "wfoly_ar_kilo433_inspect_05.ogg", t = 124/30},
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
    ["firemode_1"] = {
        Source = "semi_off",
        EventTable = {
            {s = path .. "weap_kilo433_selector_on.ogg", t = 0/30},
        },
    },
    ["firemode_2"] = {
        Source = "semi_on",
        EventTable = {
            {s = path .. "weap_kilo433_selector_off.ogg", t = 0/30},
        },
    },
    ["switchsights"] = {
        Source = "semi_on",
        EventTable = {
            {s = path .. "wfoly_ar_kilo433_inspect_02.ogg", t = 0/30},
        },
    },
}

-------------------------- ATTACHMENTS

SWEP.Hook_TranslateAnimation = function (wep, anim)
    --local attached = self:GetElements()

--------------------------------------------------------------------------
    if anim == "reload" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_drum") then
        return "reload_drum_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_drum") then 
        return "reload_drum_fast_empty"
--------------------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_xmag") then
        return "reload_xmag_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_xmag") then 
        return "reload_xmag_fast_empty"
--------------------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("perk_speedreload") then 
        return "reload_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") then 
        return "reload_fast_empty"
--------------------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("mag_drum") then 
        return "reload_drum"
    elseif anim == "reload_empty" and wep:HasElement("mag_drum") then 
        return "reload_drum_empty"
--------------------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("mag_xmag") then 
        return "reload_xmag"
    elseif anim == "reload_empty" and wep:HasElement("mag_xmag") then 
        return "reload_xmag_empty"
    end
end

-- SWEP.Hook_Think	= ARC9.COD2019.BlendSights2

SWEP.DefaultBodygroups = "00000000000000"

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(9.5, -0.83, -0.9),
	ModelAngleOffset = Angle(0, 0, 0),
	Scale = 0.9,
    },
    ["go_grip_angled"] = {
    ModelOffset = Vector(0.9, 0, 0.1),
    },
    ["cod2019_grips_alt_nocclamp"] = {
    ModelOffset = Vector(-6, -0.5, -0.8),
    },
    ["csgo_cod2019_laser_01"] = {
    Sights = {
    {
        Pos = Vector(2, 17, -1),
        Ang = Angle(1.3, 0.9, -45),
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
        Pos = Vector(2, 17, -1),
        Ang = Angle(1.3, 0.9, -45),
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
        Pos = Vector(2, 17, -1),
        Ang = Angle(1.3, 0.9, -45),
        ViewModelFOV = 45,
        Magnification = 1.25,
        IgnoreExtra = false,
		KeepBaseIrons = true,
    },
    },
    },
    ["cod2019_attach_xmag_50"] = {
    Model = "models/weapons/cod2019/attachs/weapons/kilo141/attachment_vm_ar_kilo433_xmags.mdl",
    },
    ["cod2019_attach_xmag_60"] = {
    Model = "models/weapons/cod2019/attachs/weapons/holger36/attachment_vm_ar_mcharlie_xmags2.mdl",
    },
}

SWEP.AttachmentElements = {
    ["body_none"] = {
        Bodygroups = {
            {0,1},
        },
    },
    ["mag_extend"] = {
        Bodygroups = {
            {1,1},
        },
    },
    ["mag_none"] = {
        Bodygroups = {
            {1,2},
        },
    },
    ["barrel_none"] = {
        Bodygroups = {
            {2,1},
        },
    },
    ["muzzle_none"] = {
        Bodygroups = {
            {4,1},
        },
    },
    ["stock_adapter"] = {
        Bodygroups = {
            {3,1},
			{6,0},
        },
    },
    ["sights"] = {
        Bodygroups = {
            {5,1},
        },
    },
    ["rail_laser"] = {
        Bodygroups = {
            {7,1},
        },
    },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model
    if wep:HasElement("stock_retract") then 
	model:SetBodygroup(4,1)
	elseif wep:HasElement("optic_cronen") then
	model:SetBodygroup(5,2)
	end
end

SWEP.Attachments = {
    {
        PrintName = "Barrels",
        DefaultAttName = "Standard Barrel",
        Category = "cod2019_kilo141_barrel",
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
        CorrectiveAng = Angle(1.1, 0.85, 0),
		InstalledElements = {"sights"},
    },
    {
        PrintName = "Tactical",
        DefaultAttName = "Default",
        Category = "cod2019_tac",
        Bone = "tag_laser_attach",
        Pos = Vector(0.8, 0, -0.1),
        Ang = Angle(0, 0, 180),
		InstalledElements = {"rail_laser"},
    },
    {
        PrintName = "Grips",
        DefaultAttName = "Default",
        Category = {"cod2019_grip","cod2019_grip_noclamp"},
        Bone = "tag_grip_attach",
        Pos = Vector(-3, 0, 0),
        Ang = Angle(0, 0, 180),
		Scale = 1,
		InstalledElements = {"rail_grip"},
    },
    {
        PrintName = "Stock",
        DefaultAttName = "Standard Stock",
        Category = {"stock_retract","cod2019_tube","cod2019_kilo141_stock"},
        Bone = "tag_stock_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		InstalledElements = {"stock_adapter"},
    },
    {
        PrintName = "Reciever",
        Category = "cod2019_kilo141_reciever",
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
        Category = {"cod2019_mag","cod2019_kilo141_mag","cod2019_mag_xmag"},
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Perk",
        Category = {"cod2019_perks","cod2019_perks_soh","cod2019_perks_burst"}
    },
    {
        PrintName = "Skins",
        --Bone = "v_weapon.Clip",
        Category = "cod2019_skins_kilo141",
		CosmeticOnly = true,
    },
    {
        PrintName = "Cosmetic",
        Category = {"universal_camo"},
        CosmeticOnly = true,
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/rif_kilo141_decal_a.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/rif_kilo141_decal_b.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/rif_kilo141_decal_c.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/rif_kilo141_decal_d.mdl",
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
        Pos = Vector(0, 0.3, 0.8),
        Ang = Angle(0, 0, 0),
		CosmeticOnly = true,
    },
}

SWEP.GripPoseParam = 5
SWEP.GripPoseParam2 = 0.5
SWEP.CodAngledGripPoseParam = 34
SWEP.CodStubbyTallGripPoseParam = 14
SWEP.CodStubbyGripPoseParam = 22