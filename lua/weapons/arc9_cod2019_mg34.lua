AddCSLuaFile()

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = "Light Machine Guns"

SWEP.PrintName = "MG34"

SWEP.Class = "Light Machine Gun"
SWEP.Trivia = {
    ["Country of Origin"] = "Nazi Germany",
    ["Caliber"] = "7.92×57mm Mauser",
    ["Weight (Loaded)"] = "12.5 kg",
    ["Projectile Weight"] = "187 gr",
    ["Muzzle Velocity"] = "2,510 ft/s",
    ["Muzzle Energy"] = "3,547 joules"
}

SWEP.Credits = {
    Author = "Twilight Sparkle/Firmeteran",
    Assets = "Activision/Infinity Ward"
}

SWEP.Description = [[Fully automatic weapon with a high rate of fire and punishing 7.92 Mauser ammunition. Salvaged WW2 machine guns are still reliable and deadly on the battlefield.]]

SWEP.ViewModel = "models/weapons/cod2019/c_lmg_mg34.mdl"
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_lmg_mg34.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-12, 6, -7.5),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-7, 5, -2),
    TPIKAng = Angle(-9, -1, 175),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 38 -- Damage done at point blank range
SWEP.DamageMin = 23 -- Damage done at maximum range

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
SWEP.ClipSize = 50 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 10 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 878

SWEP.Firemodes = {
    {
        Mode = -1,
    },
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 2

SWEP.RecoilSeed = 1

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

SWEP.RecoilAutoControl = 0.5 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 2

SWEP.RecoilMultCrouch = 0.8

SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.7

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilMultSights = 0.4
SWEP.VisualRecoilPunchSights = 50
SWEP.VisualRecoilRollSights = 10

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
SWEP.RecoilModifierCap = 2
SWEP.RecoilModifierCapSights = 0


SWEP.SpreadMultMove = 2
--SWEP.SpreadAddMidAir = 0
SWEP.SpreadAddHipFire = 0.05
SWEP.SpreadAddCrouch = -0.01
SWEP.SpreadAddSights = -0.5

SWEP.SpreadMultBipod = 1.5


-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.6 -- How long it takes to go from hip fire to aiming down sights.
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
    Pos = Vector(-3.65, -9, 1.2),
    Ang = Angle(0, 0, 3),
    Magnification = 1.15,
    ViewModelFOV = 56,
	CrosshairInSights = false
}

SWEP.ViewModelFOVBase = 65

SWEP.SprintPos = Vector(-1, 0, 0)
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

SWEP.MovingPos = Vector(-0.7, -0.7, -0.7)
SWEP.MovingAng = Angle(0, 0, -8)

SWEP.CrouchPos = Vector(-0.5, -0, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(19, 40, 5)
SWEP.CustomizeRotateAnchor = Vector(19, -2.25, -4)
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

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_mg34_hr.mdl"
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 0.05
SWEP.ShellPhysBox = Vector(1, 1, 1)

SWEP.ExtraShellModels = {
    [1] = {
        model = "models/weapons/cod2019/shared/shell_mg34_link_hr.mdl",
        physbox = Vector(1, 1, 1),
        smoke = false
    },
    [2] = {
        model = "models/weapons/cod2019/shared/shell_mg34_link_hr.mdl",
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
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_lmg_mg34_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
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

local path = "weapons/cod2019/mg34/"

SWEP.ShootSound = "COD2019.MG34.Fire"
SWEP.ShootSoundIndoor = "COD2019.MG34.Fire"

SWEP.ShootSoundSilenced = "COD2019.MG34.Fire.S"
SWEP.ShootSoundSilencedIndoor = "COD2019.MG34.Fire.S"

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

SWEP.EnterSightsSound = "weapons/cod2019/mg34/weap_lm_mgolf34_ads_up.ogg"
SWEP.ExitSightsSound = "weapons/cod2019/mg34/weap_lm_mgolf34_ads_down.ogg"

SWEP.BulletBones = {
    [1] = "j_bullet_01",
    [2] = "j_bullet_02",
    [3] = "j_bullet_03",
    [4] = "j_bullet_04",
	[5] = "j_bullet_05",
}

SWEP.HideBones  = {
    [1] = "j_mag2",
    [2] = "j_mag_lever_secondary",
    [3] = "j_mag_handle_secondary",
}

SWEP.TriggerDelay = 0.15 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayCancellable = false
SWEP.TriggerDelayTime = 0.15 -- Time until weapon fires.

SWEP.TriggerDownSound = "weapons/cod2019/mg34/weap_mgolf34_prefire_plr_01.ogg"
SWEP.TriggerUpSound = "weapons/cod2019/mg34/weap_mgolf34_disconnector_plr_01.ogg"

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
		MagSwapTime = 3,
		DropMagAt = 4,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.5,
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
			{s = path .. "wfoly_plr_lm_mgolf34_reload_up.ogg", t = 0/30},
			{s = path .. "wfoly_plr_lm_mgolf34_reload_setlle.ogg", t = 9/30},
			{s = path .. "wfoly_plr_lm_mgolf34_reload_boltopen_01.ogg", t = 28/30},
			{s = path .. "wfoly_plr_lm_mgolf34_reload_boltclose_01.ogg", t = 39/30},
			{s = path .. "wfoly_plr_lm_mgolf34_reload_open.ogg", t = 51/30},
			{s = path .. "wfoly_plr_lm_mgolf34_reload_coveropen_01.ogg", t = 56/30},
			{s = path .. "wfoly_plr_lm_mgolf34_reload_adjust.ogg", t = 77/30},
			{s = path .. "wfoly_plr_lm_mgolf34_reload_drumoff_01.ogg", t = 98/30},
			{s = path .. "wfoly_plr_lm_mgolf34_reload_magrattles.ogg", t = 135/30},
			{s = path .. "wfoly_plr_lm_mgolf34_reload_drumon_01.ogg", t = 149/30},
			{s = path .. "wfoly_plr_lm_mgolf34_reload_belt_01.ogg", t = 187/30},
			{s = path .. "wfoly_plr_lm_mgolf34_reload_elbow.ogg", t = 212/30},
			{s = path .. "wfoly_plr_lm_mgolf34_reload_close.ogg", t = 234/30},
			{s = path .. "wfoly_plr_lm_mgolf34_reload_coverclose_01.ogg", t = 237/30},
			{s = path .. "wfoly_plr_lm_mgolf34_reload_raise.ogg", t = 250/30},
			{s = path .. "wfoly_plr_lm_mgolf34_reload_pull.ogg", t = 247/30},
			{s = path .. "wfoly_plr_lm_mgolf34_reload_end.ogg", t = 263/30},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.9,
		DropMagAt = 4,
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
			{s = path .. "wfoly_plr_lm_mgolf34_reload_empty_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_lm_mgolf34_reload_empty_boltopen_01.ogg", t = 28/30},
			{s = path .. "wfoly_plr_lm_mgolf34_reload_empty_boltclose_01.ogg", t = 41/30},
			{s = path .. "wfoly_plr_lm_mgolf34_reload_empty_open.ogg", t = 51/30},
			{s = path .. "wfoly_plr_lm_mgolf34_reload_empty_coveropen_01.ogg", t = 56/30},
			{s = path .. "wfoly_plr_lm_mgolf34_reload_empty_adjust.ogg", t = 69/30},
			{s = path .. "wfoly_plr_lm_mgolf34_reload_empty_drumoff_01.ogg", t = 99/30},
			{s = path .. "wfoly_plr_lm_mgolf34_reload_empty_rattle.ogg", t = 109/30},
			{s = path .. "wfoly_plr_lm_mgolf34_reload_empty_drumon_01.ogg", t = 148/30},
			{s = path .. "wfoly_plr_lm_mgolf34_reload_empty_hands.ogg", t = 172/30},
			{s = path .. "wfoly_plr_lm_mgolf34_reload_empty_belt_01.ogg", t = 189/30},
			{s = path .. "wfoly_plr_lm_mgolf34_reload_empty_coverclose_01.ogg", t = 231/30},
			{s = path .. "wfoly_plr_lm_mgolf34_reload_empty_end.ogg", t = 232/30},
			{s = path .. "wfoly_plr_lm_mgolf34_reload_empty_hands.ogg", t = 250/30},
			{s = path .. "wfoly_plr_lm_mgolf34_reload_empty_pull.ogg", t = 255/30},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.8,
		MagSwapTime = 2.5,
		DropMagAt = 3.5,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.5,
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
			{s = path .. "wfoly_plr_lm_mgolf34_reload_fast_start.ogg", t = 5/30},
			{s = path .. "wfoly_plr_lm_mgolf34_reload_fast_pull.ogg", t = 30/30},
			{s = path .. "wfoly_plr_lm_mgolf34_reload_fast_boltopen_01.ogg", t = 30/30},
			{s = path .. "wfoly_plr_lm_mgolf34_reload_fast_boltclose_01.ogg", t = 38/30},
			{s = path .. "wfoly_plr_lm_mgolf34_reload_fast_open.ogg", t = 52/30},
			{s = path .. "wfoly_plr_lm_mgolf34_reload_fast_coveropen_01.ogg", t = 52/30},
			{s = path .. "wfoly_plr_lm_mgolf34_reload_fast_drumoff_01.ogg", t = 76/30},
			{s = path .. "wfoly_plr_lm_mgolf34_reload_fast_adjust.ogg", t = 79/30},
			{s = path .. "wfoly_plr_lm_mgolf34_reload_fast_drumon_01.ogg", t = 114/30},
			{s = path .. "wfoly_plr_lm_mgolf34_reload_fast_rattle.ogg", t = 122/30},
			{s = path .. "wfoly_plr_lm_mgolf34_reload_fast_belt_01.ogg", t = 149/30},
			{s = path .. "wfoly_plr_lm_mgolf34_reload_fast_coverclose_01.ogg", t = 171/30},
			{s = path .. "wfoly_plr_lm_mgolf34_reload_fast_end.ogg", t = 172/30},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.8,
		MagSwapTime = 2.5,
		DropMagAt = 3.5,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.5,
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
			{s = path .. "wfoly_plr_lm_mgolf34_reload_empty_fast_start.ogg", t = 5/30},
			{s = path .. "wfoly_plr_lm_mgolf34_reload_empty_fast_pull.ogg", t = 29/30},
			{s = path .. "wfoly_plr_lm_mgolf34_reload_empty_fast_boltopen_01.ogg", t = 30/30},
			{s = path .. "wfoly_plr_lm_mgolf34_reload_empty_fast_boltclose_01.ogg", t = 39/30},
			{s = path .. "wfoly_plr_lm_mgolf34_reload_empty_fast_coveropen_01.ogg", t = 51/30},
			{s = path .. "wfoly_plr_lm_mgolf34_reload_empty_fast_open.ogg", t = 57/30},
			{s = path .. "wfoly_plr_lm_mgolf34_reload_empty_fast_adjust.ogg", t = 71/30},
			{s = path .. "wfoly_plr_lm_mgolf34_reload_empty_fast_drumoff_01.ogg", t = 84/30},
			{s = path .. "wfoly_plr_lm_mgolf34_reload_empty_fast_rattle.ogg", t = 92/30},
			{s = path .. "wfoly_plr_lm_mgolf34_reload_empty_fast_drumon_01.ogg", t = 113/30},
			{s = path .. "wfoly_plr_lm_mgolf34_reload_empty_fast_hands.ogg", t = 124/30},
			{s = path .. "wfoly_plr_lm_mgolf34_reload_empty_fast_belt_01.ogg", t = 148/30},
			{s = path .. "wfoly_plr_lm_mgolf34_reload_empty_fast_coverclose_01.ogg", t = 170/30},
			{s = path .. "wfoly_plr_lm_mgolf34_reload_empty_fast_end.ogg", t = 171/30},
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
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.5,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.95,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_plr_lm_mgolf34_raise_first_pull.ogg", t = 0/30},
            {s = path .. "wfoly_plr_lm_mgolf34_raise_first_start.ogg", t = 6/30},
			{s = path .. "wfoly_plr_lm_mgolf34_raise_first_boltopen_01.ogg", t = 31/30},
			{s = path .. "wfoly_plr_lm_mgolf34_raise_first_boltclose_01.ogg", t = 40/30},
			{s = path .. "wfoly_plr_lm_mgolf34_raise_first_end.ogg", t = 56/30},
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
            {s = path .. "wfoly_plr_lm_mgolf34_raise_up.ogg", t = 10/30},
            {s = path .. "wfoly_plr_lm_mgolf34_raise_settle.ogg", t = 34/30},
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
            {s = path .. "wfoly_plr_lm_mgolf34_reload_raise.ogg", t = 0/30},
            {s = path .. "wfoly_plr_lm_mgolf34_reload_open.ogg", t = 10/30},
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
            {s = path .. "wfoly_lm_mgolf34_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_lm_mgolf34_inspect_02.ogg", t = 54/30},
			{s = path .. "wfoly_lm_mgolf34_inspect_03.ogg", t = 120/30},
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
    ModelOffset = Vector(16, 0, -1.2),
	ModelAngleOffset = Angle(0, 0, 0),
	Scale = 0.9,
    },
    ["go_grip_angled"] = {
    ModelOffset = Vector(0, 0, 0.1),
    },
    ["csgo_cod2019_laser_01"] = {
    Sights = {
    {
        Pos = Vector(2, 23, -1),
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
        Pos = Vector(2, 23, -1),
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
        Pos = Vector(2, 23, -1),
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
	["grip_rail"] = {
        Bodygroups = {
            {6,1},
        },
    },
	["laser_rail"] = {
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
        Category = "cod2019_mg34_barrel",
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
        Pos = Vector(1.5, 0, -0.13),
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
        Pos = Vector(1, -0.5, 0),
        Ang = Angle(0, 0, -90),
		InstalledElements = {"laser_rail"},
    },
    {
        PrintName = "Grips",
        DefaultAttName = "Default",
        Category = "cod2019_grip",
        Bone = "tag_grip_attach",
        Pos = Vector(-2.6, 0, 0),
        Ang = Angle(0, 0, 180),
		Scale = 1,
		InstalledElements = {"grip_rail"},
    },
    {
        PrintName = "Stock",
        DefaultAttName = "Standard Stock",
        Category = {"cod2019_mg34_stock","cod2019_tube"},
        Bone = "tag_stock_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		InstalledElements = {"stock_adapter"},
    },
    {
        PrintName = "Reciever",
        Category = "cod2019_mg34_reciever",
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
        Category = {"cod2019_mg34_mag","cod2019_mag"},
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
        StickerModel = "models/weapons/cod2019/stickers/lmg_mg34_decal_a.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/lmg_mg34_decal_b.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/lmg_mg34_decal_c.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/lmg_mg34_decal_d.mdl",
        Category = "stickers",
    },    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/lmg_mg34_decal_e.mdl",
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
        Category = {"killcounter"},
        Bone = "tag_cosmetic",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		CosmeticOnly = true,
    },
}

SWEP.GripPoseParam = 5
SWEP.GripPoseParam2 = 0.5
SWEP.CodAngledGripPoseParam = 4