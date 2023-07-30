AddCSLuaFile()

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = "Submachine Guns"

SWEP.PrintName = "MP7"

SWEP.Class = "Submachine Gun"
SWEP.Trivia = {
    ["Country of Origin"] = "Germany",
    ["Manufacturer"] = "FSS",
    ["Caliber"] = "4.6×30mm HK",
    ["Weight (Loaded)"] = "2.1 kg",
    ["Projectile Weight"] = "31 gr",
    ["Muzzle Velocity"] = "2,411 ft/s",
    ["Muzzle Energy"] = "543 joules"
}

SWEP.Credits = {
    Author = "Twilight Sparkle/Firmeteran",
    Assets = "Infinity Ward/Valve/New World Interactive"
}

SWEP.Description = [[Compact by design, this fully automatic weapon has a high rate of fire and low recoil.]]

SWEP.ViewModel = "models/weapons/cod2019/c_smg_mp7.mdl"
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_smg_mp7.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-12, 6, -7.5),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-9, 5, -1.5),
    TPIKAng = Angle(-9, 0, 175),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 22 -- Damage done at point blank range
SWEP.DamageMin = 13 -- Damage done at maximum range

SWEP.DamageRand = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 1000 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 6000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 7 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.15

SWEP.ImpactForce = 6

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 1512 * 12
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.15

-------------------------- MAGAZINE

SWEP.Ammo = "smg1" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 40 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 10 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 968

SWEP.Firemodes = {
    {
        Mode = -1,
		PoseParam = 0,
    },
    {
        Mode = 1,
		PoseParam = 1,
    },
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1.1

SWEP.RecoilSeed = 888888

SWEP.RecoilPatternDrift = 5

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.1
SWEP.RecoilRandomSide = 0.1

SWEP.RecoilDissipationRate = 55 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 1 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 2

SWEP.RecoilMultCrouch = 0.8

SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.8

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilPunch = 1.5
SWEP.VisualRecoilUp = 0.3

SWEP.VisualRecoilMultSights = 0.2
SWEP.VisualRecoilPunchSights = 55
SWEP.VisualRecoilRoll = 35
SWEP.VisualRecoilSide = 0.2

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
SWEP.RecoilModifierCapMove = 0.5
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
    Pos = Vector(-2.74, -3, 0.3),
    Ang = Angle(-0.2, 0.1, 1),
    Magnification = 1.15,
    ViewModelFOV = 56,
	CrosshairInSights = false
}

SWEP.ViewModelFOVBase = 65

SWEP.SprintPos = Vector(0, 0, -0.5)
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

SWEP.MovingPos = Vector(-0.8, -0.8, -0.8)
SWEP.MovingAng = Angle(0, 0, -9)

SWEP.CrouchPos = Vector(-0.5, -0, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(15, 30, 3)
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
--SWEP.AnimMelee = ACT_HL2MP_GESTURE_RELOAD_KNIFE
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "AC_muzzle_rifle_fp"
SWEP.AfterShotParticle = "AC_muzzle_smoke_barrel"
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 4
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_9mm_hr.mdl"
SWEP.ShellSounds = ARC9.PistolShellSoundsTable
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 0.08
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_smg_mp7_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
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

local path = "weapons/cod2019/mp7/"

SWEP.ShootSound = "Cod2019.mp7.fire"
SWEP.ShootSoundIndoor = "Cod2019.mp7.fire"

SWEP.ShootSoundSilenced = "Cod2019.mp7.fire.s"
SWEP.ShootSoundSilencedIndoor = "Cod2019.mp7.fire.s"

-- Non-Silenced Outside
SWEP.LayerSound = "layer_Pistol.Outside"
SWEP.DistantShootSound = "distant_SMG.Outside"
-- Inside
SWEP.LayerSoundIndoor = "layer_Pistol.Inside"
SWEP.DistantShootSoundIndoor = "distant_SMG.Inside"
---------------------------------------------------
-- Silenced Outside
SWEP.LayerSoundSilenced = "layer_ARSUP.Outside"
SWEP.DistantShootSoundSilenced = "distant_SMG_Sup.Outside"
-- Inside
SWEP.LayerSoundSilencedIndoor = "layer_ARSUP.Inside"
SWEP.DistantShootSoundSilencedIndoor = "distant_Pistol_Sup.Inside"
---------------------------------------------------

SWEP.EnterSightsSound = path .. "weap_sm_mpapa7_ads_up.ogg"
SWEP.ExitSightsSound = path .. "weap_sm_mpapa7_ads_down.ogg"

SWEP.BulletBones = {
    [1] = "j_bullet01",
    [2] = "j_bullet02",
	[3] = "j_bullet03",
	[4] = "j_bullet04",
}

--SWEP.ReloadHideBonesFirstPerson = true
SWEP.HideBones  = {
    [1] = "j_mag2",
}

SWEP.TriggerDelay = 0.015 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayTime = 0.015 -- Time until weapon fires.

SWEP.TriggerDownSound = "weapons/cod2019/mp7/weap_mpapa7_fire_first_plr_01.ogg"
SWEP.TriggerUpSound = "weapons/cod2019/mp7/weap_golf21_disconnector_plr_01.ogg"

SWEP.Animations = {
    ["fire"] = {
        Source = "shoot1",
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
                t = 0.95,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sm_mpapa7_reload_lift.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_mag_release.ogg", t = 10/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_magout.ogg", t = 19/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_magin_v2_01.ogg", t = 33/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_magin_v2_02.ogg", t = 41/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_mvmnt.ogg", t = 46/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_end.ogg", t = 49/30},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.9,
		DropMagAt = 0.65,
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
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_lift.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_magout.ogg", t = 7/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_mvmnt.ogg", t = 14/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_magin_v2_01.ogg", t = 25/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_magin_v2_02.ogg", t = 36/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_bolt_release.ogg", t = 45/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_mvmnt.ogg", t = 49/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_end.ogg", t = 58/30},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.8,
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
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_lift.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_magout.ogg", t = 7/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_mvmnt.ogg", t = 14/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_magin_v2_01.ogg", t = 21/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_magin_v2_02.ogg", t = 32/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_end.ogg", t = 41/30},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.9,
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
                t = 0.95,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_lift.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_magout.ogg", t = 5/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_mvmnt.ogg", t = 10/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_magin_v2_01.ogg", t = 20/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_magin_v2_02.ogg", t = 30/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_bolt_release.ogg", t = 40/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_mvmnt.ogg", t = 40/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_end.ogg", t = 45/30},
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
                t = 0.95,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sm_mpapa7_reload_lift.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_mag_release.ogg", t = 10/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_magout.ogg", t = 19/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_magin_v2_01.ogg", t = 35/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_magin_v2_02.ogg", t = 43/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_mvmnt.ogg", t = 46/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_end.ogg", t = 49/30},
        },
    },
    ["reload_xmag_empty"] = {
        Source = "reload_xmag_empty",
		MinProgress = 0.9,
		DropMagAt = 0.65,
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
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_lift.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_magout.ogg", t = 7/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_mvmnt.ogg", t = 14/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_magin_v2_01.ogg", t = 25/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_magin_v2_02.ogg", t = 36/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_bolt_release.ogg", t = 45/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_mvmnt.ogg", t = 49/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_end.ogg", t = 58/30},
        },
    },
    ["reload_xmag_fast"] = {
        Source = "reload_xmag_fast",
		MinProgress = 0.8,
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
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_lift.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_magout.ogg", t = 7/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_mvmnt.ogg", t = 14/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_magin_v2_01.ogg", t = 21/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_magin_v2_02.ogg", t = 32/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_end.ogg", t = 50/30},
        },
    },
    ["reload_xmag_fast_empty"] = {
        Source = "reload_xmag_empty",
		MinProgress = 0.9,
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
                t = 0.95,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_lift.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_magout.ogg", t = 7/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_mvmnt.ogg", t = 14/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_magin_v2_01.ogg", t = 21/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_magin_v2_02.ogg", t = 32/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_bolt_release.ogg", t = 44/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_mvmnt.ogg", t = 49/30},
			{s = path .. "wfoly_plr_sm_mpapa7_reload_empty_end.ogg", t = 58/30},
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
            {s = path .. "wfoly_plr_sm_mpapa7_raise_first_lift.ogg", t = 0/30},
            {s = path .. "wfoly_plr_sm_mpapa7_raise_first_charge.ogg", t = 12/30},
			{s = path .. "wfoly_plr_sm_mpapa7_raise_first_end.ogg", t = 21/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
		MinProgress = 0.85,
		FireASAP = true,
        EventTable = {
            {s = path .. "wfoly_plr_sm_mpapa7_raise.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            {s = path .. "wfoly_plr_sm_mpapa7_drop.ogg", t = 0/30},
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
            {s = path .. "wfoly_sm_mpapa7_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_sm_mpapa7_inspect_02.ogg", t = 30/30},
			{s = path .. "wfoly_sm_mpapa7_inspect_03.ogg", t = 58/30},
			{s = path .. "wfoly_sm_mpapa7_inspect_04.ogg", t = 97/30},
			{s = path .. "wfoly_sm_mpapa7_inspect_04.ogg", t = 109/30},
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
    ["firemode_1"] = {
        Source = "semi_off",
        EventTable = {
            {s = path .. "weap_mpapa7_selector_off.ogg", t = 0/30},
        },
    },
    ["firemode_2"] = {
        Source = "semi_on",
        EventTable = {
            {s = path .. "weap_mpapa7_selector_on.ogg", t = 0/30},
        },
    },
    ["switchsights"] = {
        Source = "semi_on",
        EventTable = {
            {s = path .. "wfoly_sm_mpapa7_inspect_02.ogg", t = 0/30},
        },
    },
}

-------------------------- ATTACHMENTS

SWEP.Hook_TranslateAnimation = function (wep, anim)
    --local attached = self:GetElements()
	
-----------------------------------------------------------------
    if anim == "reload" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_xmag") then
        return "reload_xmag_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_xmag") then 
        return "reload_xmag_fast_empty"
-----------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("mag_xmag") then
        return "reload_xmag"
    elseif anim == "reload_empty" and wep:HasElement("mag_xmag") then 
        return "reload_xmag_empty"
-----------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("perk_speedreload") then
        return "reload_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") then 
        return "reload_fast_empty"
    end
end

SWEP.Hook_Think	= ARC9.COD2019.BlendSights2

SWEP.DefaultBodygroups = "00000000000000"

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(6.8, -0.9, -1.5),
	ModelAngleOffset = Angle(0, 0, -35),
	Scale = 0.9,
    },
    ["go_grip_angled"] = {
    ModelOffset = Vector(0.1, 0, 0.1),
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
    ["mag_none"] = {
        Bodygroups = {
            {1,2},
        },
    },
    ["muzzle_none"] = {
        Bodygroups = {
            {2,1},
        },
    },
    ["stock_retract"] = {
        Bodygroups = {
            {2,1},
        },
    },
    ["stock_none"] = {
        Bodygroups = {
            {2,3},
        },
    },
    ["stock_adapter"] = {
        Bodygroups = {
            {2,2},
        },
    },
    ["sights"] = {
        Bodygroups = {
            {4,1},
        },
    },
    ["muzzle_none"] = {
        Bodygroups = {
            {3,1},
        },
    },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model
    if wep:HasElement("stock_retract") then 
	model:SetBodygroup(3,1) 
	model:SetBodygroup(6,0) 
	end
	--if wep:HasElement("stock_none") then model:SetBodygroup(4,1) end
end

SWEP.Attachments = {
    {
        PrintName = "Barrels",
        DefaultAttName = "Standard Barrel",
        Category = "cod2019_mp7_barrel",
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
        Pos = Vector(1.5, 0, -0.07),
        Ang = Angle(0, 0, 0),
        Category = {"cod2019_optic",},
        CorrectiveAng = Angle(0.22, 0.5, 0),
		InstalledElements = {"sights"},
    },
    {
        PrintName = "Tactical",
        DefaultAttName = "Default",
        Category = "cod2019_tac_alt",
        Bone = "tag_laser_attach",
        Pos = Vector(0, -0.4, -1.32),
        Ang = Angle(0, 0, -90),
		--InstalledElements = {"rail_laser"},
    },
    {
        PrintName = "Grips",
        DefaultAttName = "Default",
        Category = "cod2019_grip",
        Bone = "tag_grip_attach",
        Pos = Vector(-2.8, 0, 0),
        Ang = Angle(0, 0, 180),
		Scale = 1,
		--InstalledElements = {"rail_grip"},
    },
    {
        PrintName = "Stock",
        DefaultAttName = "Standard Stock",
        Category = {"stock_retract","cod2019_tube"},
        Bone = "tag_stock_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		InstalledElements = {"stock_adapter"},
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
        Category = "cod2019_skins_mp7",
		CosmeticOnly = true,
    },
    {
        PrintName = "Cosmetic",
        Category = {"universal_camo"},
        CosmeticOnly = true,
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/smg_mp7_decal_a.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/smg_mp7_decal_b.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/smg_mp7_decal_c.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/smg_mp7_decal_d.mdl",
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

SWEP.GripPoseParam = 0.7
SWEP.GripPoseParam2 = 0
SWEP.CodStubbyGripPoseParam = 1
SWEP.CodAngledGripPoseParam = 3.8