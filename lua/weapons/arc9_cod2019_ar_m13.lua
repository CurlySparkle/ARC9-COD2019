AddCSLuaFile()

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_ar") or "Assault Rifles"

SWEP.PrintName = ARC9:GetPhrase("mw19_weapon_m13") or "M13"

SWEP.Class = ARC9:GetPhrase("mw19_class_weapon_ar") or "Assault Rifle"
SWEP.Trivia = {
    [ ARC9:GetPhrase("mw19_country") ] = ARC9:GetPhrase("mw19_country_usa"),
    [ ARC9:GetPhrase("mw19_manufacturer") ] = ARC9:GetPhrase("mw19_manufacturer_tempus"),
    [ ARC9:GetPhrase("mw19_caliber") ] = "5.56×45mm NATO",
    [ ARC9:GetPhrase("mw19_weight") ] = "2.61 kg",
    [ ARC9:GetPhrase("mw19_weight_projectile") ] = "62 gr",
    [ ARC9:GetPhrase("mw19_muzzle_energy") ] = "3,000 ft/s",
    [ ARC9:GetPhrase("mw19_muzzle_velocity") ] = "1,680 joules"
}

SWEP.Credits = {
    [ ARC9:GetPhrase("mw19_author") ] = "Twilight Sparkle/Firmeteran",
    [ ARC9:GetPhrase("mw19_assets") ] = "Activision/Infinity Ward"
}

SWEP.Description = ARC9:GetPhrase("mw19_weapon_m13_desc") or [[Automatic assault rifle featuring a short stroke piston system that keeps the fire rate high and the recoil low.]]

SWEP.ViewModel = "models/weapons/cod2019/c_rif_m13.mdl"
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_rif_m13.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-12, 6, -7.5),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-5, 5, -2),
    TPIKAng = Angle(-9, 0, 175),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 25 -- Damage done at point blank range
SWEP.DamageMin = 13 -- Damage done at maximum range

SWEP.DamageRand = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 900 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 4000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 11 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.25

SWEP.ImpactForce = 8

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 1312 * 12
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

SWEP.RPM = 895.5223880597015

SWEP.Firemodes = {
    {
        Mode = -1,
		PoseParam = 0,
        -- add other attachment modifiers
    },
    {
        Mode = 1,
		PoseParam = 1,
        -- add other attachment modifiers
    }
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1.3

SWEP.RecoilSeed = 6589132

SWEP.RecoilPatternDrift = 1

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.1
SWEP.RecoilRandomSide = 0.1

SWEP.RecoilDissipationRate = 40 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 1 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 1.5

SWEP.RecoilMultCrouch = 0.8

SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.7

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilPunch = 1
SWEP.VisualRecoilUp = 0.4

SWEP.VisualRecoilRoll = 50
SWEP.VisualRecoilSide = 0.2

SWEP.VisualRecoilMultSights = 0.2
SWEP.VisualRecoilPunchSights = 25

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

SWEP.SpreadAddRecoil = 0.02 -- Applied per unit of recoil.
SWEP.RecoilModifierCap = 2
SWEP.RecoilModifierCapMove = 1
SWEP.RecoilModifierCapSights = 0

SWEP.SpreadMultMove = 2
--SWEP.SpreadAddMidAir = 0
SWEP.SpreadAddHipFire = 0.04
SWEP.SpreadAddCrouch = -0.03
SWEP.SpreadAddSights = -0.5


-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.3 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.5 -- How long it takes to go from sprinting to being able to fire.

SWEP.InstantSprintIdle = false

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
    Pos = Vector(-2.665, -3, 0.4),
    Ang = Angle(0, 0, 1),
    Magnification = 1.15,
    ViewModelFOV = 56,
	CrosshairInSights = false
}

SWEP.ViewModelFOVBase = 65

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

SWEP.MovingPos = Vector(-0.8, -0.8, -0.8)
SWEP.MovingAng = Angle(0, 0, -8)

SWEP.CrouchPos = Vector(-1, -0.5, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.SprintPos = Vector(1, 0, -1)
SWEP.SprintAng = Angle(0, 0, 25)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(15, 30, 3)
SWEP.CustomizeRotateAnchor = Vector(15, -2.25, -4)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeSnapshotPos = Vector(-1, 7, 5)
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeNoRotate = false

SWEP.PeekPos = Vector(-1, 3, -3.2)
SWEP.PeekAng = Angle(-0.3, 0, -45)

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
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_rif_m13_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ak_poly_concrete_01.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ak_poly_concrete_02.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ak_poly_concrete_03.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ak_poly_concrete_04.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ak_poly_concrete_05.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ak_poly_concrete_06.ogg",
}
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineTime = 0.9
SWEP.DropMagazineQCA = 3
SWEP.DropMagazineAng = Angle(0, -90, 0)

-------------------------- SOUNDS

local path = "weapons/cod2019/m13/"

SWEP.ShootSound = "COD2019.M13.Fire"
SWEP.ShootSoundIndoor = "COD2019.M13.Fire"

SWEP.ShootSoundSilenced = "COD2019.M13.Fire.S"
SWEP.ShootSoundSilencedIndoor = "COD2019.M13.Fire.S"

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

SWEP.EnterSightsSound = path .. "weap_ar_mcharlie_ads_up.ogg"
SWEP.ExitSightsSound = path .. "weap_ar_mcharlie_ads_down.ogg"

SWEP.BulletBones = {
    [1] = "j_bullet_01",
    [2] = "j_bullet_02",
    [3] = "j_bullet_03",
    [4] = "j_bullet_04",
    [5] = "j_bullet_05",
    [6] = "j_bullet_06",
    [7] = "j_bullet_07",
    [8] = "j_bullet_08",
    [9] = "j_bullet_09",
    [10] = "j_bullet_11",
    [11] = "j_bullet_12",
    [12] = "j_bullet_13",
    [13] = "j_bullet_14",
    [14] = "j_bullet_15",
    [15] = "j_bullet_16",
    [16] = "j_bullet_17",
    [17] = "j_bullet_18",
    [18] = "j_bullet_19",
    [19] = "j_bullet_20",
    [20] = "j_bullet_21",
    [21] = "j_bullet_22",
    [22] = "j_bullet_23",
    [23] = "j_bullet_23",
    [24] = "j_bullet_24",
    [25] = "j_bullet_25",
    [26] = "j_bullet_26",
    [27] = "j_bullet_27",
    [28] = "j_bullet_28",
    [29] = "j_bullet_29",
    [30] = "j_bullet_30",
}

SWEP.HideBones  = {
    [1] = "j_mag2",
}

SWEP.TriggerDelay = 0.025 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayCancellable = false
SWEP.TriggerDelayTime = 0.025 -- Time until weapon fires.

SWEP.TriggerDownSound = "weapons/cod2019/m13/weap_mcharlie_fire_first_plr_01.ogg"
SWEP.TriggerUpSound = "weapons/cod2019/m4a1/weap_mike4_fire_plr_disconnector_01.ogg"

-- Jammed

SWEP.Malfunction = true 
SWEP.MalfunctionNeverLastShoot = true 
SWEP.MalfunctionMeanShotsToFail = 300*2
SWEP.MalfunctionMeanShotsToFailMultHot = -0.1*2

SWEP.Animations = {
	["enter_sights"] = {
		Source = "idle",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
	},
    ["fire"] = {
        Source = "shoot1",
    },
    ["reload"] = {
        Source = "reload_short",
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
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_ar_mcharlie_reload_rotate.ogg", t = 0/30},
			{s = path .. "wfoly_ar_mcharlie_reload_magout_01.ogg", t = 10/30},
			{s = path .. "wfoly_ar_mcharlie_reload_magin_v2_01.ogg", t = 34/30},
			{s = path .. "wfoly_ar_mcharlie_reload_magin_v2_02.ogg", t = 40/30},
			{s = path .. "wfoly_ar_mcharlie_reload_end.ogg", t = 41/30},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.9,
		DropMagAt = 1.15,
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
                t = 0.85,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_ar_mcharlie_reload_empty_mvmnt.ogg", t = 0/30},
			{s = path .. "wfoly_ar_mcharlie_reload_empty_rotate.ogg", t = 7/30},
			{s = path .. "wfoly_ar_mcharlie_reload_empty_magout_01.ogg", t = 19/30},
			{s = path .. "wfoly_ar_mcharlie_reload_empty_magin_v2_01.ogg", t = 36/30},
			{s = path .. "wfoly_ar_mcharlie_reload_empty_magin_v2_02.ogg", t = 43/30},
			{s = path .. "wfoly_ar_mcharlie_reload_empty_bolt_release.ogg", t = 55/30},
			{s = path .. "wfoly_ar_mcharlie_reload_empty_end.ogg", t = 59/30},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.9,
		FireASAP = true,
		DropMagAt = 0.55,
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
			{s = path .. "wfoly_ar_mcharlie_reload_empty_mvmnt.ogg", t = 0/30},
			{s = path .. "wfoly_ar_mcharlie_reload_empty_rotate.ogg", t = 3/30},
			{s = path .. "wfoly_ar_mcharlie_reload_empty_magout_01.ogg", t = 3/30},
			{s = path .. "wfoly_ar_mcharlie_reload_magin_v2_01.ogg", t = 25/30},
			{s = path .. "wfoly_ar_mcharlie_reload_magin_v2_02.ogg", t = 27/30},
			{s = path .. "wfoly_ar_mcharlie_reload_empty_end.ogg", t = 27/30},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.9,
		FireASAP = true,
		DropMagAt = 0.55,
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
                t = 1.15,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_ar_mcharlie_reload_empty_mvmnt.ogg", t = 0/30},
			{s = path .. "wfoly_ar_mcharlie_reload_empty_rotate.ogg", t = 3/30},
			{s = path .. "wfoly_ar_mcharlie_reload_empty_magout_01.ogg", t = 3/30},
			{s = path .. "wfoly_ar_mcharlie_reload_empty_magin_v2_01.ogg", t = 25/30},
			{s = path .. "wfoly_ar_mcharlie_reload_empty_magin_v2_02.ogg", t = 27/30},
			{s = path .. "wfoly_ar_mcharlie_reload_empty_bolt_release.ogg", t = 37/30},
			{s = path .. "wfoly_ar_mcharlie_reload_empty_end.ogg", t = 39/30},
        },
    },
    ["reload_xmag"] = {
        Source = "reload_xmag",
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
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_ar_mcharlie_reload_rotate.ogg", t = 0/30},
			{s = path .. "wfoly_ar_mcharlie_reload_magout_01.ogg", t = 10/30},
			{s = path .. "wfoly_ar_mcharlie_reload_magin_v2_01.ogg", t = 34/30},
			{s = path .. "wfoly_ar_mcharlie_reload_magin_v2_02.ogg", t = 40/30},
			{s = path .. "wfoly_ar_mcharlie_reload_end.ogg", t = 41/30},
        },
    },
    ["reload_xmag_empty"] = {
        Source = "reload_xmag_empty",
		MinProgress = 0.9,
		DropMagAt = 1.15,
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
                t = 0.85,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_ar_mcharlie_reload_empty_mvmnt.ogg", t = 0/30},
			{s = path .. "wfoly_ar_mcharlie_reload_empty_rotate.ogg", t = 7/30},
			{s = path .. "wfoly_ar_mcharlie_reload_empty_magout_01.ogg", t = 19/30},
			{s = path .. "wfoly_ar_mcharlie_reload_empty_magin_v2_01.ogg", t = 36/30},
			{s = path .. "wfoly_ar_mcharlie_reload_empty_magin_v2_02.ogg", t = 43/30},
			{s = path .. "wfoly_ar_mcharlie_reload_empty_bolt_release.ogg", t = 55/30},
			{s = path .. "wfoly_ar_mcharlie_reload_empty_end.ogg", t = 59/30},
        },
    },
    ["reload_xmag_fast"] = {
        Source = "reload_xmag_fast",
		MinProgress = 0.9,
		FireASAP = true,
		DropMagAt = 0.55,
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
			{s = path .. "wfoly_ar_mcharlie_reload_empty_mvmnt.ogg", t = 0/30},
			{s = path .. "wfoly_ar_mcharlie_reload_empty_rotate.ogg", t = 3/30},
			{s = path .. "wfoly_ar_mcharlie_reload_empty_magout_01.ogg", t = 3/30},
			{s = path .. "wfoly_ar_mcharlie_reload_magin_v2_01.ogg", t = 25/30},
			{s = path .. "wfoly_ar_mcharlie_reload_magin_v2_02.ogg", t = 27/30},
			{s = path .. "wfoly_ar_mcharlie_reload_empty_end.ogg", t = 27/30},
        },
    },
    ["reload_xmag_fast_empty"] = {
        Source = "reload_xmag_fast_empty",
		MinProgress = 0.9,
		FireASAP = true,
		DropMagAt = 0.55,
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
                t = 1.15,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_ar_mcharlie_reload_empty_mvmnt.ogg", t = 0/30},
			{s = path .. "wfoly_ar_mcharlie_reload_empty_rotate.ogg", t = 3/30},
			{s = path .. "wfoly_ar_mcharlie_reload_empty_magout_01.ogg", t = 3/30},
			{s = path .. "wfoly_ar_mcharlie_reload_empty_magin_v2_01.ogg", t = 25/30},
			{s = path .. "wfoly_ar_mcharlie_reload_empty_magin_v2_02.ogg", t = 27/30},
			{s = path .. "wfoly_ar_mcharlie_reload_empty_bolt_release.ogg", t = 37/30},
			{s = path .. "wfoly_ar_mcharlie_reload_empty_end.ogg", t = 39/30},
        },
    },
    ["reload_xmaglrg"] = {
        Source = "reload_xmaglrg",
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
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_ar_mcharlie_reload_rotate.ogg", t = 0/30},
			{s = path .. "wfoly_ar_mcharlie_reload_magout_01.ogg", t = 10/30},
			{s = path .. "wfoly_ar_mcharlie_reload_magin_v2_01.ogg", t = 34/30},
			{s = path .. "wfoly_ar_mcharlie_reload_magin_v2_02.ogg", t = 40/30},
			{s = path .. "wfoly_ar_mcharlie_reload_end.ogg", t = 41/30},
        },
    },
    ["reload_xmaglrg_empty"] = {
        Source = "reload_xmaglrg_empty",
		MinProgress = 0.9,
		DropMagAt = 1.15,
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
                t = 0.85,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_ar_mcharlie_reload_empty_mvmnt.ogg", t = 0/30},
			{s = path .. "wfoly_ar_mcharlie_reload_empty_rotate.ogg", t = 7/30},
			{s = path .. "wfoly_ar_mcharlie_reload_empty_magout_01.ogg", t = 19/30},
			{s = path .. "wfoly_ar_mcharlie_reload_empty_magin_v2_01.ogg", t = 36/30},
			{s = path .. "wfoly_ar_mcharlie_reload_empty_magin_v2_02.ogg", t = 43/30},
			{s = path .. "wfoly_ar_mcharlie_reload_empty_bolt_release.ogg", t = 55/30},
			{s = path .. "wfoly_ar_mcharlie_reload_empty_end.ogg", t = 59/30},
        },
    },
    ["reload_xmaglrg_fast"] = {
        Source = "reload_xmaglrg_fast",
		MinProgress = 0.9,
		FireASAP = true,
		DropMagAt = 0.55,
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
			{s = path .. "wfoly_ar_mcharlie_reload_empty_mvmnt.ogg", t = 0/30},
			{s = path .. "wfoly_ar_mcharlie_reload_empty_rotate.ogg", t = 3/30},
			{s = path .. "wfoly_ar_mcharlie_reload_empty_magout_01.ogg", t = 3/30},
			{s = path .. "wfoly_ar_mcharlie_reload_magin_v2_01.ogg", t = 25/30},
			{s = path .. "wfoly_ar_mcharlie_reload_magin_v2_02.ogg", t = 27/30},
			{s = path .. "wfoly_ar_mcharlie_reload_empty_end.ogg", t = 27/30},
        },
    },
    ["reload_xmaglrg_fast_empty"] = {
        Source = "reload_xmaglrg_fast_empty",
		MinProgress = 0.9,
		FireASAP = true,
		DropMagAt = 0.55,
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
                t = 1.15,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_ar_mcharlie_reload_empty_mvmnt.ogg", t = 0/30},
			{s = path .. "wfoly_ar_mcharlie_reload_empty_rotate.ogg", t = 3/30},
			{s = path .. "wfoly_ar_mcharlie_reload_empty_magout_01.ogg", t = 3/30},
			{s = path .. "wfoly_ar_mcharlie_reload_empty_magin_v2_01.ogg", t = 25/30},
			{s = path .. "wfoly_ar_mcharlie_reload_empty_magin_v2_02.ogg", t = 27/30},
			{s = path .. "wfoly_ar_mcharlie_reload_empty_bolt_release.ogg", t = 37/30},
			{s = path .. "wfoly_ar_mcharlie_reload_empty_end.ogg", t = 39/30},
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
            {s = path .. "wfoly_ar_mcharlie_raise_first_raise.ogg", t = 0/30},
            {s = path .. "wfoly_ar_mcharlie_raise_first_magout_01.ogg", t = 0/30},
			{s = path .. "wfoly_ar_mcharlie_raise_first_magin_01.ogg", t = 15/30},
            {s = path .. "wfoly_ar_mcharlie_raise_first_end.ogg", t = 12/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
		MinProgress = 0.4,
		FireASAP = true,
        IKTimeLine = {
            {
                t = 0,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.5,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_ar_mcharlie_raise.ogg", t = 0/30},
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
                t = 0.4,
                lhik = 0,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_ar_mcharlie_drop.ogg", t = 0/30},
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
                t = 0.15,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.7,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1.13,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_ar_mcharlie_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_ar_mcharlie_inspect_02.ogg", t = 40/30},
			{s = path .. "wfoly_ar_mcharlie_inspect_03.ogg", t = 65/30},
			{s = path .. "wfoly_ar_mcharlie_inspect_04.ogg", t = 94/30},
			{s = path .. "wfoly_ar_mcharlie_inspect_05.ogg", t = 124/30},
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
                t = 0.85,
                lhik = 1,
                rhik = 1
            },
        },
    },
    ["firemode_1"] = {
        Source = "semi_off",
        EventTable = {
            {s = path .. "weap_ar_mcharlie_selector_off.ogg", t = 0/30},
        },
    },
    ["firemode_2"] = {
        Source = "semi_on",
        EventTable = {
            {s = path .. "weap_ar_mcharlie_selector_on.ogg", t = 0/30},
        },
    },
    ["jam"] = {
        Source = "jam",
		Mult = 0.8,
        EventTable = {
            {s = "weapons/cod2019/m4a1/weap_mike4_fire_plr_disconnector_01.ogg", t = 0/30},
        },
    },
    ["fix"] = {
        Source = "unjam",
		EjectAt = 0.5,
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
        EventTable = {
            {s = path .. "wfoly_ar_mcharlie_raise.ogg", t = 0/30},
            {s = path .. "wfoly_ar_mcharlie_jam_charge.ogg", t = 10/30},
			{s = path .. "wfoly_ar_mcharlie_reload_end.ogg", t = 27/30},
        },
    },
    ["enter_bipod"] = {
        Source = "bipod_in",
    },
    ["exit_bipod"] = {
        Source = "bipod_out",
    },
    ["hybrid_on"] = {
        Source = "hybrid_off",
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.2,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.5,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.85,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = "Viewmodel.SwitchSight", t = 0/30},
			{s = "switchsights/wpfoly_hybrid_toggle_on.ogg", t = 5/30},
        },
    },
    ["hybrid_off"] = {
        Source = "hybrid_on",
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.5,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.85,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = "Viewmodel.SwitchSight", t = 0/30},
			{s = "switchsights/wpfoly_hybrid_toggle_off.ogg", t = 5/30},
        },
    },
}

-------------------------- ATTACHMENTS

-- SWEP.Hook_Think	= ARC9.COD2019.BlendSights2

SWEP.Hook_TranslateAnimation = function (wep, anim)
    --local attached = self:GetElements()

    if anim == "reload" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_xmag") then
        return "reload_xmag_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_xmag") then 
        return "reload_xmag_fast_empty"
    --------------------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_xmaglrg") then
        return "reload_xmaglrg_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_xmaglrg") then 
        return "reload_xmaglrg_fast_empty"
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
    end
	
    wep.MWHybridSwitching = nil
    if anim == "switchsights" then
        if wep:HasElement("hybrid_scope") then
            wep.MWHybridSwitching = true
            return wep:GetMultiSight() == 1 and "hybrid_on" or "hybrid_off"
        else
            return false
        end
    end
end

SWEP.DefaultBodygroups = "0000000000000000"

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(12.8, -0.7, 0.65),
	ModelAngleOffset = Angle(0, 0, 0),
	Scale = 0.8,
    },
    ["go_grip_angled"] = {
    ModelOffset = Vector(2, 0, 0),
    },
    ["go_grip_loading"] = {
    ModelOffset = Vector(0, 0, 0.1),
    },
    -- ["csgo_cod2019_laser_01"] = {
    -- Sights = {
    -- {
        -- Pos = Vector(-2, 17.5, -1),
        -- Ang = Angle(0, 0, 45),
        -- ViewModelFOV = 45,
        -- Magnification = 1.25,
        -- IgnoreExtra = false,
		-- KeepBaseIrons = true,
    -- },
    -- },
    -- },
    -- ["csgo_cod2019_laser_02"] = {
    -- Sights = {
    -- {
        -- Pos = Vector(-2, 17.5, -1),
        -- Ang = Angle(0, 0, 45),
        -- ViewModelFOV = 45,
        -- Magnification = 1.25,
        -- IgnoreExtra = false,
		-- KeepBaseIrons = true,
    -- },
    -- },
    -- },
    -- ["csgo_cod2019_laser_03"] = {
    -- Sights = {
    -- {
        -- Pos = Vector(-2, 17.5, -1),
        -- Ang = Angle(0, 0, 45),
        -- ViewModelFOV = 45,
        -- Magnification = 1.25,
        -- IgnoreExtra = false,
		-- KeepBaseIrons = true,
    -- },
    -- },
    -- },
    ["cod2019_attach_xmag_50"] = {
    Model = "models/weapons/cod2019/attachs/weapons/holger36/attachment_vm_ar_mcharlie_xmags.mdl",
    },
    ["cod2019_attach_xmag_60"] = {
    Model = "models/weapons/cod2019/attachs/weapons/holger36/attachment_vm_ar_mcharlie_xmags2.mdl",
	ActivateElements = {"mag_none","mag_xmaglrg"}
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
            {1,3},
        },
    },
    ["mag_aug"] = {
        Bodygroups = {
            {1,2},
        },
    },
    ["stock_retract"] = {
        Bodygroups = {
            {2,1},
        },
    },
    ["sights_back_folded"] = {
        Bodygroups = {
            {3,1},
        },
    },
    ["sights_front_folded"] = {
        Bodygroups = {
            {7,1},
        },
    },
    ["sights_back_none"] = {
        Bodygroups = {
            {3,2},
        },
    },
    ["sights_front_none"] = {
        Bodygroups = {
            {7,2},
        },
    },
	["stock_adapter"] = {
        Bodygroups = {
            {2,2},
			{4,1},
        },
    },
    ["barrel_none"] = {
        Bodygroups = {
            {5,1},
        },
    },
    ["muzzle_none"] = {
        Bodygroups = {
            {6,1},
        },
    },
	["grip_angled"] = {
    AttPosMods = { [5] = { Pos = Vector(-2.5, 0, -0.05), } }	
	}
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model
    if wep:HasElement("stock_retract") then model:SetBodygroup(4,0) end
    if wep:HasElement("barrel_long") then model:SetBodygroup(7,2) end
end


SWEP.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_barrel"),
        DefaultAttName = "Standard Barrel",
        Category = {"cod2019_m13_barrel"},
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_optic"),
        Bone = "tag_holo",
        Pos = Vector(1.5, 0, -0.1),
        Ang = Angle(0, 0, 0),
        Category = {"cod2019_optic",},
        CorrectiveAng = Angle(0, 0, 0),
		InstalledElements = {"sights_back_folded","sights_front_folded"},
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_muzzle"),
        DefaultAttName = "Standard Muzzle",
        Category = "cod2019_muzzle",
        Bone = "tag_silencer",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		InstalledElements = {"muzzle_none"},
		ExcludeElements = {"barrel_suppressed"},
		Scale = 1,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_laser"),
        DefaultAttName = "Default",
        Category = "cod2019_tac",
        Bone = "tag_laser_attach",
        Pos = Vector(2, 0, -0.09),
        Ang = Angle(0, 0, 180),
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_underbarrel"),
        DefaultAttName = "Default",
        Category = "cod2019_grip",
        Bone = "tag_grip_attach",
        Pos = Vector(-4.3, 0, -0.05),
        Ang = Angle(0, 0, 180),
		Scale = 1,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_stock"),
        DefaultAttName = "Standard Stock",
        Category = {"stock_retract","cod2019_tube"},
        Bone = "tag_stock_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		InstalledElements = {"stock_adapter"},
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_receiver"),
        Category = "cod2019_m13_reciever",
        Bone = "tag_attachments",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_ammo"),
        Bone = "j_mag1",
        Category = {"cod2019_ammo"},
        Pos = Vector(0, 0, -1.5),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_magazine"),
		Bone = "j_mag1",
        Category = {"cod2019_mag","cod2019_m13_mag","cod2019_mag_xmag"},
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_perk"),
        Category = {"cod2019_perks","cod2019_perks_soh","cod2019_perks_burst"}
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_skins"),
        --Bone = "v_weapon.Clip",
        Category = "go_skins_cx9",
		CosmeticOnly = true,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_camouflage"),
        Category = {"universal_camo"},
        CosmeticOnly = true,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/rif_m13_decal_a.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/rif_m13_decal_b.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/rif_m13_decal_c.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/rif_m13_decal_d.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_charm"),
        Category = "charm",
        Bone = "tag_attachments",
        Pos = Vector(0.5, -0.75, -0.5),
        Ang = Angle(0, 0, 0),
		Scale = 1,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_stats"),
        Category = {"killcounter","killcounter2"},
        Bone = "tag_attachments",
        Pos = Vector(3.3, -0.5, -0.5),
        Ang = Angle(0, 0, 0),
		CosmeticOnly = true,
    },
}

SWEP.GripPoseParam = 4.5
SWEP.GripPoseParam2 = 0.6
SWEP.CodStubbyGripPoseParam = 11.6
SWEP.CodAngledGripPoseParam = 13
--SWEP.CodStubbyTallGripPoseParam = 15
SWEP.CodStubbyTallGripPoseParam = 22