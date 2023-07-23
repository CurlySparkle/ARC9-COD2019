AddCSLuaFile()

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = "Light Machine Guns"

SWEP.PrintName = "FiNN"

SWEP.Class = "Light Machine Gun"
SWEP.Trivia = {
    ["Country of Origin"] = "United States",
    ["Manufacturer"] = "Tempus Armament",
    ["Caliber"] = "5.56×45mm NATO",
    ["Weight (Loaded)"] = "4.5 kg",
    ["Projectile Weight"] = "62 gr",
    ["Muzzle Velocity"] = "3,250 ft/s",
    ["Muzzle Energy"] = "1,972 joules"
}

SWEP.Credits = {
    Author = "Twilight Sparkle/Firmeteran",
    Assets = "Infinity Ward/Valve/New World Interactive"
}

SWEP.Description = [[An ultra-light open bolt 5.56 machine gun with a low cyclic rate and advanced recoil controls, giving the FiNN exceptional full-auto accuracy.]]

SWEP.ViewModel = "models/weapons/cod2019/c_lmg_finn.mdl"
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_lmg_finn.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-12, 6, -7.5),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-7, 5, -2),
    TPIKAng = Angle(-9, 0, 175),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 28 -- Damage done at point blank range
SWEP.DamageMin = 18 -- Damage done at maximum range

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
SWEP.ClipSize = 75 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 10 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 630

SWEP.Firemodes = {
    {
        Mode = -1,
    },
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1.3

--SWEP.RecoilSeed = nil

SWEP.RecoilPatternDrift = 25

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.1
SWEP.RecoilRandomSide = 0.1

SWEP.RecoilDissipationRate = 55 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 0.5 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 2

SWEP.RecoilMultCrouch = 0.8

SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.8

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilMultSights = 0.3
SWEP.VisualRecoilPunchSights = 70
SWEP.VisualRecoilPunch = 4
SWEP.VisualRecoilUp = 0.4
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
SWEP.RecoilModifierCap = 2
SWEP.RecoilModifierCapMove = 0.5
SWEP.RecoilModifierCapSights = 0

SWEP.SpreadMultMove = 2
--SWEP.SpreadAddMidAir = 0
SWEP.SpreadAddHipFire = 0.05
SWEP.SpreadAddCrouch = -0.03
SWEP.SpreadAddSights = -0.5


-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.5 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.5 -- How long it takes to go from sprinting to being able to fire.

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.35

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 255, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-2.37, 0.5, 0.5),
    Ang = Angle(0, 0, 2),
    Magnification = 1.1,
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

SWEP.MovingPos = Vector(-0.7, -0.5, -0.7)
SWEP.MovingAng = Angle(0, 0, -8)

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

SWEP.ExtraShellModels = {
    [1] = {
        model = "models/weapons/cod2019/shared/lmg_link.mdl",
        physbox = Vector(1, 1, 1),
        smoke = false
    },
    [2] = {
        model = "models/weapons/cod2019/shared/lmg_link.mdl",
        smoke = false
    }
}

SWEP.Hook_PrimaryAttack = function(self)

    self:DoEject(1, 2)

    -- if self:Clip1() == self:GetCapacity() then
        -- self:DoEject(2, 2)
    -- end
end

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_lmg_finn_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
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

-------------------------- SOUNDS

local path = "weapons/cod2019/finn/"

SWEP.ShootSound = "Cod2019.finn.fire"
SWEP.ShootSoundIndoor = "Cod2019.finn.fire"

SWEP.ShootSoundSilenced = "Cod2019.finn.fire.s"
SWEP.ShootSoundSilencedIndoor = "Cod2019.finn.fire.s"

-- Non-Silenced Outside
SWEP.LayerSound = "layer_AR.Outside"
SWEP.DistantShootSound = "distant_LMG.Outside"
-- Inside
SWEP.LayerSoundIndoor = "layer_Shotgun.Inside"
SWEP.DistantShootSoundIndoor = "distant_LMG.Inside"
---------------------------------------------------
-- Silenced Outside
SWEP.LayerSoundSilenced = "layer_ARSUP.Outside"
SWEP.DistantShootSoundSilenced = "distant_AR_Sup.Outside"
-- Inside
SWEP.LayerSoundSilencedIndoor = "layer_ARSUP.Inside"
SWEP.DistantShootSoundSilencedIndoor = "distant_AR_Sup.Inside"
---------------------------------------------------

SWEP.EnterSightsSound = "weapons/cod2019/ak47/wfoly_ar_akilo47_ads_up.ogg"
SWEP.ExitSightsSound = "weapons/cod2019/ak47/wfoly_ar_akilo47_ads_down.ogg"

SWEP.BulletBones = {
    [1] = "j_bullet01",
    [2] = "j_bullet02",
	[3] = "j_bullet03",
	[4] = "j_bullet04",
	[5] = "j_bullet05",
	[6] = "j_bullet06",
	[7] = "j_bullet07",
	[8] = "j_bullet08",
	[9] = "j_bullet09",
	[10] = "j_bullet010",
	[11] = "j_bullet011",
	[12] = "j_bullet012",
	[13] = "j_bullet013",
	[14] = "j_bullet014",
	[15] = "j_bullet015",
	[16] = "j_bullet016",
}

SWEP.HideBones  = {
    [1] = "j_mag2",
}

SWEP.TriggerDelay = 0.05 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayTime = 0.05 -- Time until weapon fires.

SWEP.TriggerDownSound = "weapons/cod2019/sa87/weap_lima86_fire_first_plr_01.ogg"
SWEP.TriggerUpSound = ""

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
		MinProgress = 0.9,
		FireASAP = true,
		MagSwapTime = 3,
		DropMagAt = 2.15,
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
                t = 1.05,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_lm_sierrax_reload_lift.ogg", t = 0/30},
			{s = path .. "wfoly_lm_sierrax_reload_coveropen.ogg", t = 12/30},
			{s = path .. "wfoly_lm_sierrax_reload_magout.ogg", t = 42/30},
			{s = path .. "wfoly_lm_sierrax_reload_rotate.ogg", t = 65/30},
			{s = path .. "wfoly_lm_sierrax_reload_maghit.ogg", t = 86/30},
			{s = path .. "wfoly_lm_sierrax_reload_magin.ogg", t = 98/30},
			{s = path .. "wfoly_lm_sierrax_reload_beltpull.ogg", t = 107/30},
			{s = path .. "wfoly_lm_sierrax_reload_bullets.ogg", t = 114/30},
			{s = path .. "wfoly_lm_sierrax_reload_closecover.ogg", t = 143/30},
			{s = path .. "wfoly_lm_sierrax_reload_end.ogg", t = 152/30},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.9,
		FireASAP = true,
		MagSwapTime = 3,
		DropMagAt = 2.15,
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
                t = 1.05,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_lm_sierrax_reload_empty_lift.ogg", t = 1/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_charge.ogg", t = 30/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_coveropen.ogg", t = 57/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_magout.ogg", t = 77/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_adjust.ogg", t = 108/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_magup.ogg", t = 118/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_maghit.ogg", t = 129/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_magin.ogg", t = 137/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_bullets.ogg", t = 147/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_coverclose.ogg", t = 185/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_end.ogg", t = 192/30},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.9,
		FireASAP = true,
		MagSwapTime = 2,
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
			{s = path .. "wfoly_lm_sierrax_reload_fast_lift.ogg", t = 2/30},
			{s = path .. "wfoly_lm_sierrax_reload_fast_coveropen.ogg", t = 4/30},
			{s = path .. "wfoly_lm_sierrax_reload_fast_magout.ogg", t = 27/30},
			{s = path .. "wfoly_lm_sierrax_reload_fast_up.ogg", t = 52/30},
			{s = path .. "wfoly_lm_sierrax_reload_fast_magin.ogg", t = 62/30},
			{s = path .. "wfoly_lm_sierrax_reload_fast_bullets.ogg", t = 77/30},
			{s = path .. "wfoly_lm_sierrax_reload_fast_coverclose.ogg", t = 107/30},
			{s = path .. "wfoly_lm_sierrax_reload_fast_end.ogg", t = 117/30},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.9,
		FireASAP = true,
		MagSwapTime = 2,
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
			{s = path .. "wfoly_lm_sierrax_reload_empty_fast_lift.ogg", t = 0/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_fast_charge.ogg", t = 11/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_fast_coveropen.ogg", t = 31/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_fast_magout.ogg", t = 44/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_fast_adjust.ogg", t = 63/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_fast_magup.ogg", t = 74/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_fast_magin.ogg", t = 91/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_fast_beltpull.ogg", t = 100/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_fast_coverclose.ogg", t = 129/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_fast_end.ogg", t = 131/30},
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
            {s = path .. "wfoly_lm_sierrax_raise_first_lift.ogg", t = 0/30},
            {s = path .. "wfoly_lm_sierrax_raise_first_coverplate.ogg", t = 18/30},
			{s = path .. "wfoly_lm_sierrax_raise_first_end.ogg", t = 26/30},
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
            {s = path .. "wfoly_lm_sierrax_raise.ogg", t = 0/30},
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
            {s = path .. "wfoly_lm_sierrax_drop.ogg", t = 0/30},
        },
    },
    ["idle"] = {
        Source = "idle",
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
        },
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
            {s = path .. "wfoly_lm_sierrax_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_lm_sierrax_inspect_02.ogg", t = 48/30},
			{s = path .. "wfoly_lm_sierrax_inspect_03.ogg", t = 123/30},
			{s = path .. "wfoly_lm_sierrax_inspect_04.ogg", t = 135/30},
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
----- SAW ANIMATIONS
    ["fire_saw"] = {
        Source = "shoot1_saw",
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
        },
    },
    ["reload_saw"] = {
        Source = "reload_short_saw",
		MinProgress = 0.9,
		FireASAP = true,
		MagSwapTime = 3,
		DropMagAt = 2.15,
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
                t = 1.05,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_lm_sierrax_reload_lift.ogg", t = 0/30},
			{s = path .. "wfoly_lm_sierrax_reload_coveropen.ogg", t = 12/30},
			{s = path .. "wfoly_lm_sierrax_reload_magout.ogg", t = 42/30},
			{s = path .. "wfoly_lm_sierrax_reload_rotate.ogg", t = 65/30},
			{s = path .. "wfoly_lm_sierrax_reload_maghit.ogg", t = 86/30},
			{s = path .. "wfoly_lm_sierrax_reload_magin.ogg", t = 98/30},
			{s = path .. "wfoly_lm_sierrax_reload_beltpull.ogg", t = 107/30},
			{s = path .. "wfoly_lm_sierrax_reload_bullets.ogg", t = 114/30},
			{s = path .. "wfoly_lm_sierrax_reload_closecover.ogg", t = 143/30},
			{s = path .. "wfoly_lm_sierrax_reload_end.ogg", t = 152/30},
        },
    },
    ["reload_empty_saw"] = {
        Source = "reload_saw",
		MinProgress = 0.9,
		FireASAP = true,
		MagSwapTime = 3,
		DropMagAt = 2.15,
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
                t = 1.05,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_lm_sierrax_reload_empty_lift.ogg", t = 1/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_charge.ogg", t = 30/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_coveropen.ogg", t = 57/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_magout.ogg", t = 77/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_adjust.ogg", t = 108/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_magup.ogg", t = 118/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_maghit.ogg", t = 129/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_magin.ogg", t = 137/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_bullets.ogg", t = 147/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_coverclose.ogg", t = 185/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_end.ogg", t = 192/30},
        },
    },
    ["reload_fast_saw"] = {
        Source = "reload_fast_saw",
		MinProgress = 0.9,
		FireASAP = true,
		MagSwapTime = 3,
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
			{s = path .. "wfoly_lm_sierrax_reload_fast_lift.ogg", t = 2/30},
			{s = path .. "wfoly_lm_sierrax_reload_fast_coveropen.ogg", t = 4/30},
			{s = path .. "wfoly_lm_sierrax_reload_fast_magout.ogg", t = 27/30},
			{s = path .. "wfoly_lm_sierrax_reload_fast_up.ogg", t = 52/30},
			{s = path .. "wfoly_lm_sierrax_reload_fast_magin.ogg", t = 62/30},
			{s = path .. "wfoly_lm_sierrax_reload_fast_bullets.ogg", t = 77/30},
			{s = path .. "wfoly_lm_sierrax_reload_fast_coverclose.ogg", t = 107/30},
			{s = path .. "wfoly_lm_sierrax_reload_fast_end.ogg", t = 117/30},
        },
    },
    ["reload_fast_empty_saw"] = {
        Source = "reload_fast_empty_saw",
		MinProgress = 0.9,
		FireASAP = true,
		MagSwapTime = 2.8,
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
			{s = path .. "wfoly_lm_sierrax_reload_empty_fast_lift.ogg", t = 0/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_fast_charge.ogg", t = 11/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_fast_coveropen.ogg", t = 31/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_fast_magout.ogg", t = 44/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_fast_adjust.ogg", t = 63/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_fast_magup.ogg", t = 74/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_fast_magin.ogg", t = 91/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_fast_beltpull.ogg", t = 100/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_fast_coverclose.ogg", t = 129/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_fast_end.ogg", t = 131/30},
        },
    },
    ["ready_saw"] = {
        Source = "draw_saw",
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
            {s = path .. "wfoly_lm_sierrax_raise_first_lift.ogg", t = 0/30},
            {s = path .. "wfoly_lm_sierrax_raise_first_coverplate.ogg", t = 18/30},
			{s = path .. "wfoly_lm_sierrax_raise_first_end.ogg", t = 26/30},
        },
    },
    ["draw_saw"] = {
        Source = "draw_short_saw",
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
            {s = path .. "wfoly_lm_sierrax_raise.ogg", t = 0/30},
        },
    },
    ["holster_saw"] = {
        Source = "holster_saw",
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
            {s = path .. "wfoly_lm_sierrax_reload_empty_end.ogg", t = 0/30},
        },
    },
    ["idle_saw"] = {
        Source = "idle_saw",
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
        },
    },
    ["idle_sprint_saw"] = {
        Source = "sprint_saw",
    },
    ["exit_sprint_saw"] = {
        Source = "sprint_out_saw",
		Mult = 2.3,
    },
    ["enter_sprint_saw"] = {
        Source = "sprint_in_saw",
		Mult = 2.3,
    },
    ["inspect_saw"] = {
        Source = "lookat01_saw",
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
            {s = path .. "wfoly_lm_sierrax_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_lm_sierrax_inspect_02.ogg", t = 48/30},
			{s = path .. "wfoly_lm_sierrax_inspect_03.ogg", t = 123/30},
			{s = path .. "wfoly_lm_sierrax_inspect_04.ogg", t = 135/30},
        },
    },
    ["bash_saw"] = {
        Source = {"melee_saw", "melee2_saw"},
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

-------------------------- ATTACHMENTS

SWEP.Hook_Think	= ARC9.COD2019.BlendSights2

SWEP.Hook_TranslateAnimation = function (wep, anim)
    --local attached = self:GetElements()

    if anim == "reload" and wep:HasElement("stock_saw") and wep:HasElement("perk_speedreload") then
        return "reload_fast_saw"
    elseif anim == "reload_empty" and wep:HasElement("stock_saw") and wep:HasElement("perk_speedreload") then 
        return "reload_fast_empty_saw"
    --------------------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("stock_saw") then
        return "reload_saw"
    elseif anim == "reload_empty" and wep:HasElement("stock_saw") then 
        return "reload_saw_empty"
    --------------------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("perk_speedreload") then
        return "reload_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") then 
        return "reload_fast_empty"
    --------------------------------------------------------------------------
    end
end

SWEP.DefaultBodygroups = "00000000000000"

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(12, -0.5, -0.65),
	ModelAngleOffset = Angle(0, 0, 0),
	Scale = 0.9,
    },
    ["go_grip_angled"] = {
    ModelOffset = Vector(0, 0, 0.1),
    },
}

SWEP.AttachmentElements = {
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
    ["stock_none"] = {
        Bodygroups = {
            {4,1},
        },
    },
    ["sight"] = {
        Bodygroups = {
            {5,1},
        },
    },
    ["sight_none"] = {
        Bodygroups = {
            {5,2},
        },
    },
    ["pistol_grip_none"] = {
        Bodygroups = {
            {6,1},
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
        Category = "cod2019_finn_barrel",
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
        Pos = Vector(2, 0, -0.07),
        Ang = Angle(0, 0, 0),
        Category = {"cod2019_optic",},
        CorrectiveAng = Angle(0, 0, 0),
		InstalledElements = {"sight"},
		ExcludeElements = {"stock_saw"},
    },
    {
        PrintName = "Tactical",
        DefaultAttName = "Default",
        Category = "cod2019_tac",
        Bone = "tag_laser_attach",
        Pos = Vector(1, 0, 0),
        Ang = Angle(0, 0, 180),
		--InstalledElements = {"rail_laser"},
    },
    {
        PrintName = "Grips",
        DefaultAttName = "Default",
        Category = "cod2019_grip",
        Bone = "tag_grip_attach",
        Pos = Vector(-4, 0, 0),
        Ang = Angle(0, 0, 180),
		Scale = 1,
		--InstalledElements = {"rail_grip"},
		ExcludeElements = {"stock_saw"},
    },
    {
        PrintName = "Stock",
        DefaultAttName = "Standard Stock",
        Category = "cod2019_finn_stock",
        Bone = "tag_stock_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		--InstalledElements = {"stock_adapter"},
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
        Category = "cod2019_finn_mag",
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
        Category = "cod2019_skins_finn",
		CosmeticOnly = true,
    },
    {
        PrintName = "Cosmetic",
        Category = {"universal_camo"},
        CosmeticOnly = true,
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/lmg_finn_decal_a.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/lmg_finn_decal_b.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/lmg_finn_decal_c.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/lmg_finn_decal_d.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/lmg_finn_decal_e.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Charm",
        Category = "charm",
        Bone = "tag_cosmetic",
        Pos = Vector(-0.5, 0, -1),
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
SWEP.CodStubbyTallGripPoseParam = 7