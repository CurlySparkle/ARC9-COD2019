AddCSLuaFile()

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = "Marksman Rifles"

SWEP.PrintName = "SKS"

SWEP.Class = "Marksman Rifle"
SWEP.Trivia = {
    ["Country of Origin"] = "Russia",
    ["Manufacturer"] = "Verdansk Arms Plant",
    ["Caliber"] = "7.62x39mm",
    ["Weight (Loaded)"] = "3.85 kg",
    ["Projectile Weight"] = "121.9 gr",
    ["Muzzle Velocity"] = "2,411 ft/s",
    ["Muzzle Energy"] = "2,134 joules"
}

SWEP.Credits = {
    Author = "Twilight Sparkle/Firmeteran",
    Assets = "Infinity Ward/Valve/New World Interactive"
}

SWEP.Description = [[Lightweight, semi-auto Carbine chambered in 7.62x39mm. This hard hitting and agile Soviet rifle focuses on utility over accuracy. It flaunts a faster fire rate than other weapons in its class, but a carefully placed round will eliminate the need for follow up shots entirely. This classic DMR has seen a lot of battles, and its unique gunsmith configurations reflect a diverse service history.]]

SWEP.ViewModel = "models/weapons/cod2019/c_snip_sks.mdl"
SWEP.WorldModel = "models/weapons/w_snip_g3sg1.mdl"

SWEP.Slot = 3

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_snip_sks.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-12, 6, -7.5),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-6, 4, 0),
    TPIKAng = Angle(0, 0, 175),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 48 -- Damage done at point blank range
SWEP.DamageMin = 18 -- Damage done at maximum range

SWEP.DamageRand = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 2000 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 8000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 11 -- Units of wood that can be penetrated by this gun.

SWEP.ImpactForce = 8

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 2800 * 12
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.25

-------------------------- MAGAZINE

SWEP.Ammo = "ar2" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 20 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 2 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 315

SWEP.Firemodes = {
    {
        Mode = 1,
        -- add other attachment modifiers
    }
}

SWEP.BarrelLength = 17

-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 4

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0

SWEP.RecoilDissipationRate = 10 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 5 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 3

SWEP.RecoilMultCrouch = 0.6
SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.7

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilMultSights = 1
SWEP.VisualRecoilPunchSights = 30

SWEP.VisualRecoilPunch = 3
SWEP.VisualRecoilUp = 0.4
SWEP.VisualRecoilRoll = 25
SWEP.VisualRecoilSide = 0.2

SWEP.VisualRecoilSpringPunchDamping = 11
SWEP.VisualRecoilDampingConst = 80
SWEP.VisualRecoilDampingConstSights = 80

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

SWEP.SpreadAddRecoil = 0
SWEP.SpreadMultRecoil = 1.1
SWEP.RecoilModifierCap = 25

SWEP.SpreadMultMove = 1.5
--SWEP.SpreadAddMidAir = 0
SWEP.SpreadAddHipFire = 0.09
SWEP.SpreadAddCrouch = -0.03
SWEP.SpreadAddSights = -0.5


-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.5 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.5 -- How long it takes to go from sprinting to being able to fire.

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.255

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 255, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-2.62, -2.5, 0.95),
    Ang = Angle(0, 0, -1.5),
    Magnification = 1.15,
    ViewModelFOV = 50,
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

SWEP.MovingPos = Vector(-0.7, -0.7, -0.7)
SWEP.MovingAng = Angle(0, 0, -8)

SWEP.CrouchPos = Vector(-0.5, -0, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.SprintPos = Vector(0, 0, 0)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(17, 35, 2)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeSnapshotPos = Vector(-1, 7, 5)
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeNoRotate = false

SWEP.PeekPos = Vector(-1, 3, -4)
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

SWEP.MuzzleParticle = "AC_muzzle_shotgun_fp"
SWEP.AfterShotParticle = "AC_muzzle_smoke_barrel"
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 4
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_762_hr.mdl"
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 0.08
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_snip_sks_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ak_metal_concrete_01.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ak_metal_concrete_02.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ak_metal_concrete_03.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ak_metal_concrete_04.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ak_metal_concrete_05.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ak_metal_concrete_06.ogg",
}
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineTime = 1
SWEP.DropMagazineQCA = 3
SWEP.DropMagazineAng = Angle(0, -90, 0)

-------------------------- SOUNDS

local path = "weapons/cod2019/sks/"

SWEP.ShootSound = "COD2019.SKS.Fire"
SWEP.ShootSoundIndoor = "COD2019.SKS.Fire"

SWEP.ShootSoundSilenced = "COD2019.SKS.Fire.S"
SWEP.ShootSoundSilencedIndoor = "COD2019.SKS.Fire.S"

-- Non-Silenced Outside
SWEP.LayerSound = "Layer_Shotgun.Outside"
SWEP.DistantShootSound = "Distant_BR1.Outside"
-- Inside
SWEP.LayerSoundIndoor = "Layer_Shotgun.Inside"
SWEP.DistantShootSoundIndoor = "Distant_Shotgun.Inside"
---------------------------------------------------
-- Silenced Outside
SWEP.LayerSoundSilenced = "Layer_Sniper.Outside"
SWEP.DistantShootSoundSilenced = "Distant_DMR_Sup.Outside"
-- Inside
SWEP.LayerSoundSilencedIndoor = "Layer_Sniper.Inside"
SWEP.DistantShootSoundSilencedIndoor = "Distant_DMR_Sup.Inside"
---------------------------------------------------

SWEP.EnterSightsSound = path .. "wfoly_sn_sksierra_ads_up.ogg"
SWEP.ExitSightsSound = path .. "wfoly_sn_sksierra_ads_down.ogg"

SWEP.HideBones  = {
    [1] = "j_mag2",
}

SWEP.TriggerDelay = 0.03 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayCancellable = false
SWEP.TriggerDelayTime = 0.03 -- Time until weapon fires.

SWEP.TriggerDownSound = "weapons/cod2019/sks/weap_sksierra_hammer_plr_01.ogg"
SWEP.TriggerUpSound = "weapons/cod2019/sks/weap_sksierra_disconnector_plr_01.ogg"

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
		FireASAP = true,
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
                t = 0.7,
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
            {s = path .. "wfoly_sn_sksierra_reload_raise.ogg", t = 0/30},
            {s = path .. "wfoly_sn_sksierra_reload_magout.ogg", t = 17/30},
			{s = path .. "wfoly_sn_sksierra_reload_magin_01.ogg", t = 36/30},
			{s = path .. "wfoly_sn_sksierra_reload_magin_02.ogg", t = 45/30},
			{s = path .. "wfoly_sn_sksierra_reload_end.ogg", t = 46/30},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.8,
		DropMagAt = 0.95,
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
                rhik = 0
            },
            {
                t = 0.7,
                lhik = 1,
                rhik = 0
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_sn_sksierra_reload_empty_raise.ogg", t = 0/30},
            {s = path .. "wfoly_sn_sksierra_reload_empty_magout.ogg", t = 20/30},
			{s = path .. "wfoly_sn_sksierra_reload_empty_magin_01.ogg", t = 33/30},
			{s = path .. "wfoly_sn_sksierra_reload_empty_magin_02.ogg", t = 42/30},
			{s = path .. "wfoly_sn_sksierra_reload_empty_rotate.ogg", t = 50/30},
			{s = path .. "wfoly_sn_sksierra_reload_empty_charge.ogg", t = 64/30},
			{s = path .. "wfoly_sn_sksierra_reload_empty_end.ogg", t = 78/30},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.8,
		DropMagAt = 1,
		FireASAP = true,
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
                t = 0.6,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.8,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_sn_sksierra_reload_empty_raise.ogg", t = 0/30},
            {s = path .. "wfoly_sn_sksierra_reload_empty_magout.ogg", t = 18/30},
			{s = path .. "wfoly_sn_sksierra_reload_empty_magin_01.ogg", t = 27/30},
			{s = path .. "wfoly_sn_sksierra_reload_empty_magin_02.ogg", t = 36/30},
			{s = path .. "wfoly_sn_sksierra_reload_empty_end.ogg", t = 45/30},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.8,
		DropMagAt = 1,
		FireASAP = true,
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
                t = 0.6,
                lhik = 0,
                rhik = 1
            },
            {
                t = 1.1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_sn_sksierra_reload_empty_raise.ogg", t = 0/30},
            {s = path .. "wfoly_sn_sksierra_reload_empty_magout.ogg", t = 18/30},
			{s = path .. "wfoly_sn_sksierra_reload_empty_magin_01.ogg", t = 27/30},
			{s = path .. "wfoly_sn_sksierra_reload_empty_magin_02.ogg", t = 36/30},
			{s = path .. "wfoly_sn_sksierra_reload_empty_charge.ogg", t = 48/30},
			{s = path .. "wfoly_sn_sksierra_reload_empty_end.ogg", t = 58/30},
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
                rhik = 1
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.7,
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
            {s = path .. "wfoly_sn_sksierra_reload_raise.ogg", t = 0/30},
            {s = path .. "wfoly_sn_sksierra_reload_magout.ogg", t = 17/30},
			{s = path .. "wfoly_sn_sksierra_reload_magin_01.ogg", t = 36/30},
			{s = path .. "wfoly_sn_sksierra_reload_magin_02.ogg", t = 45/30},
			{s = path .. "wfoly_sn_sksierra_reload_end.ogg", t = 46/30},
        },
    },
    ["reload_xmag_empty"] = {
        Source = "reload_xmag_empty",
		MinProgress = 0.8,
		DropMagAt = 0.95,
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
                rhik = 0
            },
            {
                t = 0.7,
                lhik = 1,
                rhik = 0
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_sn_sksierra_reload_empty_raise.ogg", t = 0/30},
            {s = path .. "wfoly_sn_sksierra_reload_empty_magout.ogg", t = 20/30},
			{s = path .. "wfoly_sn_sksierra_reload_empty_magin_01.ogg", t = 32/30},
			{s = path .. "wfoly_sn_sksierra_reload_empty_magin_02.ogg", t = 41/30},
			{s = path .. "wfoly_sn_sksierra_reload_empty_rotate.ogg", t = 50/30},
			{s = path .. "wfoly_sn_sksierra_reload_empty_charge.ogg", t = 63/30},
			{s = path .. "wfoly_sn_sksierra_reload_empty_end.ogg", t = 78/30},
        },
    },
    ["reload_xmag_fast"] = {
        Source = "reload_xmag_fast",
		MinProgress = 0.8,
		DropMagAt = 1,
		FireASAP = true,
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
                t = 0.6,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.8,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_sn_sksierra_reload_empty_raise.ogg", t = 0/30},
            {s = path .. "wfoly_sn_sksierra_reload_empty_magout.ogg", t = 18/30},
			{s = path .. "wfoly_sn_sksierra_reload_empty_magin_01.ogg", t = 27/30},
			{s = path .. "wfoly_sn_sksierra_reload_empty_magin_02.ogg", t = 36/30},
			{s = path .. "wfoly_sn_sksierra_reload_empty_end.ogg", t = 46/30},
        },
    },
    ["reload_xmag_fast_empty"] = {
        Source = "reload_xmag_fast_empty",
		MinProgress = 0.8,
		DropMagAt = 1,
		FireASAP = true,
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
                t = 0.6,
                lhik = 0,
                rhik = 1
            },
            {
                t = 1.1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_sn_sksierra_reload_empty_raise.ogg", t = 0/30},
            {s = path .. "wfoly_sn_sksierra_reload_empty_magout.ogg", t = 18/30},
			{s = path .. "wfoly_sn_sksierra_reload_empty_magin_01.ogg", t = 27/30},
			{s = path .. "wfoly_sn_sksierra_reload_empty_magin_02.ogg", t = 36/30},
			{s = path .. "wfoly_sn_sksierra_reload_empty_charge.ogg", t = 50/30},
			{s = path .. "wfoly_sn_sksierra_reload_empty_end.ogg", t = 61/30},
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
                t = 0.7,
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
            {s = path .. "wfoly_sn_sksierra_raise_first_up.ogg", t = 0/30},
            {s = path .. "wfoly_sn_sksierra_raise_first_charge.ogg", t = 12/30},
            {s = path .. "wfoly_sn_sksierra_raise_first_end.ogg", t = 23/30},
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
                rhik = 1
            },
            {
                t = 0.5,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_sn_sksierra_raise.ogg", t = 0/30},
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
                t = 0.8,
                lhik = 0,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_sn_sksierra_reload_empty_end.ogg", t = 0/30},
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
		Mult = 2.4,
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
		Mult = 2.4,
    },
    ["inspect"] = {
        Source = "lookat01",
        MinProgress = 0.1,
        FireASAP = true,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.1,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.4,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.6,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_sn_sksierra_inspect_01.ogg", t = 0/30},
            {s = path .. "wfoly_sn_sksierra_inspect_02.ogg", t = 36/30},
            {s = path .. "wfoly_sn_sksierra_inspect_03.ogg", t = 68/30},
			{s = path .. "wfoly_sn_sksierra_inspect_04.ogg", t = 122/30},
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

-------------------------- ATTACHMENTS

SWEP.Hook_TranslateAnimation = function (wep, anim)
    --local attached = self:GetElements()
	
--------------------------------------------------------------------------
    if anim == "reload" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_xmag") then
        return "reload_xmag_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_xmag") then 
        return "reload_xmag_fast_empty"
--------------------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("perk_speedreload") and wep:HasElement("ammo_extend") then
        return "reload_xmag_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") and wep:HasElement("ammo_extend") then 
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
    elseif anim == "reload" and wep:HasElement("ammo_extend") then 
        return "reload_xmag"
    elseif anim == "reload_empty" and wep:HasElement("ammo_extend") then 
        return "reload_xmax_empty"
--------------------------------------------------------------------------
    end
end

-- SWEP.Hook_Think	= function(wep)
--     local vm = wep:GetOwner():GetViewModel()
--     if wep:Clip1() == 0 then
--         vm:SetPoseParameter("empty", 1)
--     else
--         vm:SetPoseParameter("empty", 0)
--     end
	
--     local vm = wep:GetOwner():GetViewModel()
--     local delta = wep:GetSightDelta()
--     local coolilove = math.cos(delta * (math.pi / 2))
--     vm:SetPoseParameter( "aim_blend", Lerp(coolilove, 1, 0) )
-- end

SWEP.DefaultBodygroups = "00000000000000"

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(10.5, -0.2, 1.2),
	ModelAngleOffset = Angle(0, 0, 0),
	Scale = 1,
    },
    ["go_grip_angled"] = {
    ModelOffset = Vector(0.4, 0, 0.1),
    },
    ["go_holdstyle_1"] = {
    ModelOffset = Vector(-2, -0.15, 0.4),
	ModelAngleOffset = Angle(0, -1, 180)
    },
}

SWEP.AttachmentElements = {
    ["mag"] = {
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
    ["stock_adapter"] = {
        Bodygroups = {
            {3,1},
        },
    },
    ["stock_none"] = {
        Bodygroups = {
            {3,2},
        },
    },
    ["rail_sight"] = {
        Bodygroups = {
            {4,1},
        },
    },
    ["barrel_none"] = {
        Bodygroups = {
            {5,1},
        },
    },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model
    if wep:HasElement("scope_sks") then model:SetBodygroup(4,0) end
	
    if wep:HasElement("heavy_stock") then 
     model:SetPoseParameter("grip_stockhvy_offset", 1)
    else
     model:SetPoseParameter("grip_stockhvy_offset", 0)
    end
end

SWEP.Attachments = {
    {
        PrintName = "Barrels",
        DefaultAttName = "Standard Barrel",
        Category = "cod2019_sks_barrel",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Optics",
        Bone = "tag_scope",
        Pos = Vector(1.5, 0, -0.1),
        Ang = Angle(0, 0, 0),
        Category = {"cod2019_optic","cod2019_optic_sks"},
        CorrectiveAng = Angle(0, 0, 0),
		InstalledElements = {"rail_sight"},
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Category = "cod2019_muzzle",
        Bone = "tag_silencer",
        Pos = Vector(-0.8, 0, 0),
        Ang = Angle(0, 0, 0),
		InstalledElements = {"muzzle_none"},
		Scale = 1,
    },
    {
        PrintName = "Tactical",
        DefaultAttName = "Default",
        Category = "cod2019_tac",
        Bone = "tag_laser_attach",
        Pos = Vector(-13, -0.85, -0.5),
        Ang = Angle(0, 0, -90),
		--InstalledElements = {"laser_rail"},
    },
    {
        PrintName = "Grips",
        DefaultAttName = "Default",
        Category = "cod2019_grip",
        Bone = "tag_grip_attach",
        Pos = Vector(-2, 0, 0.05),
        Ang = Angle(0, 0, 180),
		Scale = 1,
		--InstalledElements = {"grip_rail"},
    },
    {
        PrintName = "Stock",
        DefaultAttName = "Standard Stock",
        Category = {"cod2019_stocks"},
        Bone = "tag_stock_attach",
        Pos = Vector(-0.2, 0, 1.2),
        Ang = Angle(5, 0, 0),
		--InstalledElements = {"stock_adapter"},
    },
    {
        PrintName = "Ammo",
        Bone = "j_mag1",
        Category = "go_ammo",
        Pos = Vector(0, 0, -1.5),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Mag",
		Bone = "j_mag1",
        Category = {"cod2019_mag","cod2019_sks_mag"},
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
        Category = "cod2019_skins_sks",
		CosmeticOnly = true,
    },
    {
        PrintName = "Cosmetic",
        Category = "universal_camo",
        CosmeticOnly = true,
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/snip_sks_decal_a.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/snip_sks_decal_b.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/snip_sks_decal_c.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/snip_sks_decal_d.mdl",
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
        Pos = Vector(0, 0, -1),
        Ang = Angle(0, 0, 0),
		CosmeticOnly = true,
    },
}

SWEP.GripPoseParam = 5
SWEP.GripPoseParam2 = 0.5
SWEP.CodStubbyGripPoseParam = 12
SWEP.CodAngledGripPoseParam = 23
SWEP.CodStubbyTallGripPoseParam = 20