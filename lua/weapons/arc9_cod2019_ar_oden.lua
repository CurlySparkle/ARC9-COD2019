AddCSLuaFile()
if CLIENT then
    killicon.Add( "arc9_cod2019_ar_oden", "vgui/killicons/cod2019_ar_oden.png", Color(251, 85, 25, 255))
end

SWEP.LoadoutImage = "entities/loadout/arc9_cod2019_ar_oden.png"

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.NotForNPCs = false
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_ar") or "Assault Rifles"
SWEP.ARC9WeaponCategory = 4

SWEP.PrintName = ARC9:GetPhrase("mw19_weapon_oden") or "Oden"

SWEP.Class = ARC9:GetPhrase("mw19_class_weapon_ar") or "Assault Rifle"
SWEP.Trivia = {
    [ ARC9:GetPhrase("mw19_country") ] = ARC9:GetPhrase("mw19_country_russia"),
    [ ARC9:GetPhrase("mw19_manufacturer") ] = ARC9:GetPhrase("mw19_manufacturer_vlk"),
    [ ARC9:GetPhrase("mw19_caliber") ] = ARC9:GetPhrase("mw19_caliber_127x55"),
    [ ARC9:GetPhrase("mw19_weight") ] = string.format(ARC9:GetPhrase("mw19_weight_val"), 6, 6 * 2.2),
    [ ARC9:GetPhrase("mw19_weight_projectile") ] = string.format(ARC9:GetPhrase("mw19_weight_projectile_val"), 509),
}

SWEP.Credits = {
    [ ARC9:GetPhrase("mw19_author") ] = "Twilight Sparkle/Firmeteran",
    [ ARC9:GetPhrase("mw19_assets") ] = "Activision/Infinity Ward"
}

SWEP.Description = ARC9:GetPhrase("mw19_weapon_oden_desc") or [[Fully automatic bullpup battle rifle maintains a slow cycle rate to help control hard hitting 12.7x55mm ammunition.]]

SWEP.ViewModel = "models/weapons/cod2019/c_rif_oden.mdl"
SWEP.WorldModel = "models/weapons/cod2019/w_rif_oden.mdl"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_rif_oden.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-4.5, 3, -6.5),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-6, 4.5, -4.5),
    TPIKAng = Angle(-12.5, -1, 165),
    Scale = 1,
	
	TPIKPosSightOffset = Vector(1, 1.25, -0.75),
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 48 -- Damage done at point blank range
SWEP.DamageMin = 36 -- Damage done at maximum range

SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 43 / ARC9.HUToM
SWEP.RangeMax = 44 / ARC9.HUToM

SWEP.Penetration = 11 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.15

SWEP.ImpactForce = 11

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 1.6,
    [HITGROUP_CHEST] = 1.19,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 1,
    [HITGROUP_RIGHTLEG] = 1,
}

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 880 / ARC9.HUToM
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.15

-------------------------- MAGAZINE

SWEP.Ammo = "ar2" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 20 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 10 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 410

SWEP.Firemodes = {
    {
        Mode = -1,
    },
    {
        Mode = 1,
    },
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1.5

SWEP.RecoilSeed = 346598

SWEP.RecoilPatternDrift = 5

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1.5 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.1
SWEP.RecoilRandomSide = 0.3

SWEP.RecoilDissipationRate = 10 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 0.5 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 2
SWEP.RecoilKickDamping = 90

SWEP.RecoilMultCrouch = 0.8

SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.7

SWEP.RecoilPerShot = 1
SWEP.RecoilMax = 3

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilPunch = 3
SWEP.VisualRecoilUp = 0.1

SWEP.VisualRecoilMultSights = 0.5
SWEP.VisualRecoilPunchSights = 15
SWEP.VisualRecoilRollSights = 5
SWEP.VisualRecoilSideSights = 0
SWEP.VisualRecoilUpSights = 0

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

SWEP.Spread = 0.03

SWEP.SpreadAddRecoil = 0.01

SWEP.SpreadAddHipFire = 0
SWEP.SpreadAddMove = 0.03
SWEP.SpreadAddMidAir = 0.045
SWEP.SpreadAddCrouch = -0.03
SWEP.SpreadAddSights = -(SWEP.Spread * 2.75)

SWEP.SpreadMultRecoil = 1.2
SWEP.RecoilModifierCap = 3
SWEP.RecoilModifierCapMove = 0
SWEP.RecoilModifierCapSights = 0.05

-------------------------- HANDLING

SWEP.SpeedMult = 1 -- Walk speed multiplier
SWEP.SpeedMultSights = 0.9 -- When aiming
SWEP.SpeedMultShooting = 0.9

SWEP.AimDownSightsTime = 0.35 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.375 -- How long it takes to go from sprinting to being able to fire.

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
    Pos = Vector(-3.01, -1, -0.275),
    Ang = Angle(0, 0, -2),
    Magnification = 1.15,
    ViewModelFOV = 56,
	CrosshairInSights = false
}

SWEP.ViewModelFOVBase = 64

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

SWEP.MovingPos = Vector(-1, -0.8, -1)
SWEP.MovingAng = Angle(0, 0, -10)

SWEP.CrouchPos = Vector(-1, -0.5, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.SprintPos = Vector(1, 0, -1)
SWEP.SprintAng = Angle(0, 0, 25)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(10, 40, 3)
SWEP.CustomizeRotateAnchor = Vector(10, -3, -4)
SWEP.CustomizeSnapshotFOV = 65
SWEP.CustomizeSnapshotPos = Vector(-1, 35, 0)
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeNoRotate = false

SWEP.PeekPos = Vector(-1.2, 1.5, -3)
SWEP.PeekAng = Angle(-0.3, 0.3, -45)

SWEP.PeekMaxFOV = 64

SWEP.PeekPosReloading = Vector(0, 1, -2)
SWEP.PeekAngReloading = Angle(-0.3, 0, -10)

-------------------------- HoldTypes

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeHolstered = "passive"
SWEP.HoldTypeSights = "ar2"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"
SWEP.HoldTypeNPC = "ar2"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "muzzleflash_ar"
SWEP.AfterShotParticle = "barrel_smoke"
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 4
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_762_hr.mdl"
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 0.085
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)
SWEP.ShellSounds = ARC9.COD2019_556_Table

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_rif_oden_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
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
SWEP.DropMagazineAng = Angle(0, -90, -90)

-------------------------- SOUNDS

local path = "weapons/cod2019/oden/"
local pathub = "weapons/cod2019/shared/ubgl/"
local pathubs = "weapons/cod2019/model680/"

SWEP.ShootSound = "COD2019.ASh12.Fire"
SWEP.ShootSoundIndoor = "COD2019.ASh12.Fire"

SWEP.ShootSoundSilenced = "COD2019.ASh12.Fire.S"
SWEP.ShootSoundSilencedIndoor = "COD2019.ASh12.Fire.S"

-- Non-Silenced
SWEP.LayerSound = "Layer_AR.Outside"
SWEP.DistantShootSound = "Distant_AR2.Outside"
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

SWEP.EnterSightsSound = "weapons/cod2019/cr56amax/wfoly_ar_galima_ads_up.ogg"
SWEP.ExitSightsSound = "weapons/cod2019/cr56amax/wfoly_ar_galima_ads_down.ogg"

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

SWEP.TriggerDownSound = "weapons/cod2019/ak47/weap_akilo47_fire_first_plr_01.ogg"
SWEP.TriggerUpSound = "weapons/cod2019/ak47/weap_akilo47_disconnector_plr_01.ogg"

SWEP.Animations = {
    ["fire"] = {
        Source = "shoot1",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
    },
    ["reload"] = {
        Source = "reload_short",
		MinProgress = 0.9,
		PeekProgress = 0.875,
		RefillProgress = 0.725,
		FireASAP = true,
		MagSwapTime = 3.5,
        IKTimeLine = {
            { t = 0, lhik = 1,  rhik = 0 },
		},
        EventTable = {
			{s = path .. "wfoly_ar_asierra12_reload_rotate.ogg", t = 0.066},
			{s = path .. "wfoly_ar_asierra12_reload_magout_01.ogg", t = 0.26},
			{s = path .. "wfoly_ar_asierra12_reload_mvmnt.ogg", t = 0.56},
			{s = path .. "wfoly_ar_asierra12_reload_magin_v2_01.ogg", t = 1.46},
            {s = path .. "wfoly_ar_asierra12_reload_magin_v2_02.ogg", t = 1.96},
			{s = path .. "wfoly_ar_asierra12_reload_end.ogg", t = 2.2},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.925,
		PeekProgress = 0.875,
		RefillProgress = 0.8,
		FireASAP = true,
		DropMagAt = 0.9,
        IKTimeLine = {
            { t = 0, lhik = 1,  rhik = 0 },
		},
        EventTable = {
			{s = path .. "wfoly_ar_asierra12_reload_empty_rotate.ogg", t = 0.066},
			{s = path .. "wfoly_ar_asierra12_reload_empty_magout_01.ogg", t = 0.36},
			{s = path .. "wfoly_ar_asierra12_reload_empty_magfly_01.ogg", t = 0.73},
			{s = path .. "wfoly_ar_asierra12_reload_empty_armmag.ogg", t = 1.33},
			{s = path .. "wfoly_ar_asierra12_reload_empty_magin_v2_01.ogg", t = 1.55},
            {s = path .. "wfoly_ar_asierra12_reload_empty_magin_v2_02.ogg", t = 1.85},
			{s = path .. "wfoly_ar_asierra12_reload_empty_armup.ogg", t = 2.25},
			{s = path .. "wfoly_ar_asierra12_reload_empty_charge_01.ogg", t = 2.45},
			{s = path .. "wfoly_ar_asierra12_reload_empty_end.ogg", t = 2.9},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.65,
		PeekProgress = 0.6,
		RefillProgress = 0.5,
		FireASAP = true,
		MagSwapTime = 1.5,
		DropMagAt = 0.45,
        IKTimeLine = {
            { t = 0, lhik = 1,  rhik = 0 },
		},
        EventTable = {
			{s = path .. "wfoly_ar_asierra12_reload_fast_rotate.ogg", t = 0.033},
			{s = path .. "wfoly_ar_asierra12_reload_magout_01.ogg", t = 0.13},
			{s = path .. "wfoly_ar_asierra12_reload_fast_arm.ogg", t = 0.86},
			{s = path .. "wfoly_ar_asierra12_reload_fast_magin_v2_01.ogg", t = 0.93},
            {s = path .. "wfoly_ar_asierra12_reload_fast_magin_v2_02.ogg", t = 1.16},
			{s = path .. "wfoly_ar_asierra12_reload_end.ogg", t = 1.23},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.9,
		PeekProgress = 0.875,
		RefillProgress = 0.725,
		FireASAP = true,
		MagSwapTime = 1.5,
		DropMagAt = 0.65,
        IKTimeLine = {
            { t = 0, lhik = 1,  rhik = 0 },
		},
        EventTable = {
			{s = path .. "wfoly_ar_asierra12_reload_empty_fast_rotate.ogg", t = 0.033},
			{s = path .. "wfoly_ar_asierra12_reload_empty_fast_magout_01.ogg", t = 0.13},
			{s = path .. "wfoly_ar_asierra12_reload_empty_fast_magfly_01.ogg", t = 0.66},
			{s = path .. "wfoly_ar_asierra12_reload_empty_fast_magin_v2_01.ogg", t = 0.9},
            {s = path .. "wfoly_ar_asierra12_reload_empty_fast_magin_v2_02.ogg", t = 1.1},
            {s = path .. "wfoly_ar_asierra12_reload_empty_fast_arm.ogg", t = 1.7},
			{s = path .. "wfoly_ar_asierra12_reload_empty_fast_charge_01.ogg", t = 1.75},
			{s = path .. "wfoly_ar_asierra12_reload_empty_fast_end.ogg", t = 2.2},
        },
    },
    ["ready"] = {
        Source = "draw",
        IKTimeLine = {
            { t = 0, lhik = 1,  rhik = 0 },
        },
        EventTable = {
            {s = path .. "wfoly_ar_asierra12_raise_first_up.ogg", t = 0.033},
            {s = path .. "wfoly_ar_asierra12_raise_first_charge_01.ogg", t = 0.8},
			{s = path .. "wfoly_ar_asierra12_raise_first_end.ogg", t = 1.1},
        },
    },
    ["draw"] = {
        Source = "draw_short",
		MinProgress = 0.5,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1,  rhik = 0 },
        },
        EventTable = {
            {s = path .. "wfoly_ar_asierra12_raise.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.4, lhik = 0, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_ar_asierra12_drop.ogg", t = 0/30},
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
		Time = 1.25,
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
		Time = 1.25,
    },
    ["super_sprint_idle"] = {
        Source = "super_sprint",
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 1 },
        },
    },
    ["super_sprint_in"] = {
        Source = "super_sprint_in",
		Time = 1,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.1, lhik = 1, rhik = 1 },
            { t = 1, lhik = 0, rhik = 1 },
        },
    },
    ["super_sprint_out"] = {
        Source = "super_sprint_out",
		Time = 1,
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 1 },
            { t = 0.1, lhik = 0, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        },
    },
    ["inspect"] = {
        Source = "lookat01",
		MinProgress = 0.9,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_ar_asierra12_inspect_01.ogg", t = 0},
			{s = path .. "wfoly_ar_asierra12_inspect_02.ogg", t = 1.3},
			{s = path .. "wfoly_ar_asierra12_inspect_03.ogg", t = 2.36},
			{s = path .. "wfoly_ar_asierra12_inspect_04.ogg", t = 3.6},
			{s = path .. "wfoly_ar_asierra12_inspect_05.ogg", t = 4.26},
        },
    },
    ["bash"] = {
        Source = {"melee","melee2","melee3"},
	    IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.6, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
    },
    ["firemode_1"] = {
        Source = "semi_off",
        EventTable = {
            {s = path .. "weap_ar_asierra12_selector_off.ogg", t = 0/30},
        },
    },
    ["firemode_2"] = {
        Source = "semi_on",
        EventTable = {
            {s = path .. "weap_ar_asierra12_selector_on.ogg", t = 0/30},
        },
    },
    ["firemode_3"] = {
        Source = "semi_on",
        EventTable = {
            {s = path .. "weap_ar_asierra12_selector_on.ogg", t = 0/30},
        },
    },
    ["enter_bipod"] = {
        Source = "bipod_in",
    },
    ["exit_bipod"] = {
        Source = "bipod_out",
    },
    ["hybrid_on"] = {
        Source = "hybrid_on",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 1, rhik = 0 },
            { t = 0.5, lhik = 1, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = "Viewmodel.SwitchSight", t = 0/30},
			{s = "switchsights/wpfoly_hybrid_toggle_on.ogg", t = 5/30},
        },
    },
    ["hybrid_off"] = {
        Source = "hybrid_off",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.2, lhik = 0, rhik = 1 },
            { t = 0.5, lhik = 0, rhik = 1 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = "Viewmodel.SwitchSight", t = 0/30},
			{s = "switchsights/wpfoly_hybrid_toggle_off.ogg", t = 5/30},
        },
    },
	-- UBGL Animations
	["enter_sights_ubgl"] = {
		Source = "ubgl_idle",
		IKTimeLine = { { t = 0,  lhik = 0, rhik = 0} },
	},
    ["fire_ubgl"] = {
        Source = "ubgl_fire",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
    },
    ["reload_ubgl"] = {
        Source = "ubgl_reload",
		MinProgress = 0.95,
		FireASAP = true,
		RefillProgress = 0.75,
		EventTable = {
			{s = pathub .. "ubgl_reload_lift.ogg", t = 0/30},
			{s = pathub .. "ubgl_reload_arm.ogg", t = 2/30},
			{s = pathub .. "ubgl_reload_glopen.ogg", t = 6/30},
            {s = pathub .. "ubgl_reload_shellin_01.ogg", t = 30/30},
			{s = pathub .. "ubgl_reload_shellin.ogg", t = 37.25/30},
			{s = pathub .. "ubgl_reload_end.ogg", t = 44.5/30},
			{s = pathub .. "ubgl_reload_glclose.ogg", t = 51/30},
			{s = pathub .. "ubgl_reload_arm.ogg", t = 61/30},
		}
	},
    ["reload_fast_ubgl"] = {
        Source = "ubgl_reload_fast",
		MinProgress = 0.95,
		FireASAP = true,
		RefillProgress = 0.75,
		EventTable = {
			{s = pathub .. "ubgl_reload_lift.ogg", t = 0/30},
			{s = pathub .. "ubgl_reload_arm.ogg", t = 2/30},
			{s = pathub .. "ubgl_reload_glopen.ogg", t = 3/30},
			{s = pathub .. "ubgl_reload_shellin.ogg", t = 20/30},
			{s = pathub .. "ubgl_reload_end.ogg", t = 25/30},
			{s = pathub .. "ubgl_reload_glclose.ogg", t = 33/30},
			{s = pathub .. "ubgl_reload_arm.ogg", t = 37/30},
		}
	},
    ["enter_ubgl"] = {
        Source = "ubgl_up",
		Mult = 1.3,
		MinProgress = 0.3,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 1, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
        },
		EventTable = {
			{s = pathub .. "ubgl_to_grenade.ogg", t = 0/30},
		}
	},
    ["exit_ubgl"] = {
        Source = "ubgl_down",
		Mult = 1.3,
		MinProgress = 0.3,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 0 },
        },
        EventTable = {
			{s = pathub .. "ubgl_from_grenade.ogg", t = 0/30},
        },
    },
    ["draw_ubgl"] = {
        Source = "ubgl_raise",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
    },
    ["holster_ubgl"] = {
        Source = "ubgl_drop",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
        EventTable = {
            {s = pathub .. "ubgl_drop.ogg", t = 0/30},
        },
    },
    ["idle_ubgl"] = {
        Source = "ubgl_idle",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
    },
    ["idle_ubgl_sprint"] = {
        Source = "ubgl_sprint",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
    },
    ["exit_sprint_ubgl"] = {
        Source = "ubgl_sprint_out",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
		Time = 1,
    },
    ["enter_sprint_ubgl"] = {
        Source = "ubgl_sprint_in",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
		Time = 1,
    },
    ["super_sprint_idle_ubgl"] = {
        Source = "ubgl_super_sprint",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
    },
    ["super_sprint_in_ubgl"] = {
        Source = "ubgl_super_sprint_in",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
		Time = 1,
    },
    ["super_sprint_out_ubgl"] = {
        Source = "ubgl_super_sprint_in",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
		Reverse = true,
		Time = 1,
    },
    ["bash_ubgl"] = {
        Source = {"ubgl_melee", "ubgl_melee2", "ubgl_melee3"},
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
    },
    ["inspect_ubgl"] = {
        Source = "ubgl_lookat01",
		MinProgress = 0.9,
		FireASAP = true,
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
        EventTable = {
            {s = path .. "wfoly_ar_asierra12_inspect_01.ogg", t = 0},
			{s = path .. "wfoly_ar_asierra12_inspect_02.ogg", t = 1.3},
			{s = path .. "wfoly_ar_asierra12_inspect_03.ogg", t = 2.36},
			{s = path .. "wfoly_ar_asierra12_inspect_04.ogg", t = 3.6},
			{s = path .. "wfoly_ar_asierra12_inspect_05.ogg", t = 4.26},
        },
    },
-- UBGL Shotgun Animations
	["enter_sights_ubgl_shotgun"] = {
		Source = "ubgl_sh_idle",
		IKTimeLine = { { t = 0,  lhik = 0, rhik = 0} },
	},
    ["fire_ubgl_shotgun"] = {
        Source = "ubgl_sh_fire",
		Mult = 0.66,
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
    },
    ["reload_ubgl_start"] = {
        Source = "ubgl_sh_reload_start",
		RestoreAmmo = 1,
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
		EventTable = {
            {s = pathubs .. "wfoly_sh_romeo870_reload_start_twist.ogg", t = 0.0},
			{s = pathubs .. "wfoly_sh_romeo870_reload_start_shellin_01.ogg", t = 0.533},
		}
	},
    ["reload_ubgl_insert"] = {
        Source = "ubgl_sh_reload_loop",
		MinProgress = 0.875,
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
		EventTable = {
            {s = pathubs .. "wfoly_sh_romeo870_reload_start_twist.ogg", t = 0.0},
			{s = pathubs .. "wfoly_sh_romeo870_reload_start_shellin_01.ogg", t = 0.49},
		}
	},
    ["reload_ubgl_finish"] = {
        Source = "ubgl_sh_reload_end",
		MinProgress = 0.85,
		FireASAP = true,
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
		EventTable = {
			{s = pathubs .. "wfoly_sh_romeo870_reload_end_turnover.ogg", t = 0.0},
		}
	},
    ["reload_ubgl_fast_start"] = {
        Source = "ubgl_sh_reload_start",
		Mult = 0.8,
		RestoreAmmo = 1,
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
		EventTable = {
            {s = pathubs .. "wfoly_sh_romeo870_reload_start_twist.ogg", t = 0.0},
			{s = pathubs .. "wfoly_sh_romeo870_reload_start_shellin_01.ogg", t = 0.533},
		}
	},
    ["reload_ubgl_fast_insert"] = {
        Source = "ubgl_sh_reload_loop",
		Mult = 0.66,
		MinProgress = 0.875,
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
		EventTable = {
            {s = pathubs .. "wfoly_sh_romeo870_reload_start_twist.ogg", t = 0.0},
			{s = pathubs .. "wfoly_sh_romeo870_reload_start_shellin_01.ogg", t = 0.33},
		}
	},
    ["reload_ubgl_fast_finish"] = {
        Source = "ubgl_sh_reload_end",
		Mult = 0.8,
		MinProgress = 0.85,
		FireASAP = true,
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
		EventTable = {
			{s = pathubs .. "wfoly_sh_romeo870_reload_end_turnover.ogg", t = 0.0},
		}
	},
    ["enter_ubgl_shotgun"] = {
        Source = "ubgl_sh_up",
		Mult = 1.3,
		MinProgress = 0.3,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 1, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
        },
		EventTable = {
			{s = pathub .. "ubgl_to_grenade.ogg", t = 0/30},
		}
	},
    ["exit_ubgl_shotgun"] = {
        Source = "ubgl_sh_down",
		Mult = 1.3,
		MinProgress = 0.3,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 0 },
        },
        EventTable = {
			{s = pathub .. "ubgl_from_grenade.ogg", t = 0/30},
        },
    },
    ["draw_ubgl_shotgun"] = {
        Source = "ubgl_sh_raise",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
    },
    ["holster_ubgl_shotgun"] = {
        Source = "ubgl_sh_drop",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
        EventTable = {
            {s = pathub .. "ubgl_drop.ogg", t = 0/30},
        },
    },
    ["idle_ubgl_shotgun"] = {
        Source = "ubgl_sh_idle",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
    },
    ["idle_ubgl_shotgun_sprint"] = {
        Source = "ubgl_sh_sprint",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
    },
    ["exit_sprint_ubgl_shotgun"] = {
        Source = "ubgl_sh_sprint_out",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
		Time = 1,
    },
    ["enter_sprint_ubgl_shotgun"] = {
        Source = "ubgl_sh_sprint_in",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
		Time = 1,
    },
    ["super_sprint_idle_ubgl_shotgun"] = {
        Source = "ubgl_sh_super_sprint",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
    },
    ["super_sprint_in_ubgl_shotgun"] = {
        Source = "ubgl_sh_super_sprint_in",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
		Time = 1,
    },
    ["super_sprint_out_ubgl_shotgun"] = {
        Source = "ubgl_sh_super_sprint_in",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
		Reverse = true,
		Time = 1,
    },
    ["bash_ubgl_shotgun"] = {
        Source = {"ubgl_sh_melee", "ubgl_sh_melee2", "ubgl_sh_melee3"},
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
    },
    ["inspect_ubgl_shotgun"] = {
        Source = "ubgl_sh_lookat01",
		MinProgress = 0.9,
		FireASAP = true,
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
        EventTable = {
            {s = path .. "wfoly_ar_asierra12_inspect_01.ogg", t = 0},
			{s = path .. "wfoly_ar_asierra12_inspect_02.ogg", t = 1.3},
			{s = path .. "wfoly_ar_asierra12_inspect_03.ogg", t = 2.36},
			{s = path .. "wfoly_ar_asierra12_inspect_04.ogg", t = 3.6},
			{s = path .. "wfoly_ar_asierra12_inspect_05.ogg", t = 4.26},
        },
    },
}

-------------------------- ATTACHMENTS

--- Fast & Tac. Sprint ---
local Translate_Fast = {
    ["reload"] = "reload_fast",
    ["reload_empty"] = "reload_fast_empty",
    ["reload_ubgl"] = "reload_fast_ubgl",
}
local Translate_TacSprint = {
    ["idle_sprint"] = "super_sprint_idle",
    ["enter_sprint"] = "super_sprint_in",
    ["exit_sprint"] = "super_sprint_out",
    ["idle_ubgl_sprint"] = "super_sprint_idle_ubgl",
    ["enter_sprint_ubgl"] = "super_sprint_in_ubgl",
    ["exit_sprint_ubgl"] = "super_sprint_out_ubgl",
}

--- UB Shotgun ---
local Translate_UBGLS = {
    ["enter_sights_ubgl"] = "enter_sights_ubgl_shotgun",
    ["fire_ubgl"] = "fire_ubgl_shotgun",
    ["enter_ubgl"] = "enter_ubgl_shotgun",
    ["exit_ubgl"] = "exit_ubgl_shotgun",
    ["draw_ubgl"] = "draw_ubgl_shotgun",
    ["holster_ubgl"] = "holster_ubgl_shotgun",
    ["idle_ubgl"] = "idle_ubgl_shotgun",
    ["idle_ubgl_sprint"] = "idle_ubgl_shotgun_sprint",
    ["exit_sprint_ubgl"] = "exit_sprint_ubgl_shotgun",
    ["enter_sprint_ubgl"] = "enter_sprint_ubgl_shotgun",
    ["super_sprint_idle_ubgl"] = "super_sprint_idle_ubgl_shotgun",
    ["super_sprint_in_ubgl"] = "super_sprint_in_ubgl_shotgun",
    ["super_sprint_out_ubgl"] = "super_sprint_out_ubgl_shotgun",
    ["bash_ubgl"] = "bash_ubgl_shotgun",
    ["inspect_ubgl"] = "inspect_ubgl_shotgun",
}

local Translate_UBGLS_Fast = {
    ["enter_sights_ubgl"] = "enter_sights_ubgl_shotgun",
    ["fire_ubgl"] = "fire_ubgl_shotgun",
    ["enter_ubgl"] = "enter_ubgl_shotgun",
    ["exit_ubgl"] = "exit_ubgl_shotgun",
    ["draw_ubgl"] = "draw_ubgl_shotgun",
    ["holster_ubgl"] = "holster_ubgl_shotgun",
    ["idle_ubgl"] = "idle_ubgl_shotgun",
    ["idle_ubgl_sprint"] = "idle_ubgl_shotgun_sprint",
    ["exit_sprint_ubgl"] = "exit_sprint_ubgl_shotgun",
    ["enter_sprint_ubgl"] = "enter_sprint_ubgl_shotgun",
    ["super_sprint_idle_ubgl"] = "super_sprint_idle_ubgl_shotgun",
    ["super_sprint_in_ubgl"] = "super_sprint_in_ubgl_shotgun",
    ["super_sprint_out_ubgl"] = "super_sprint_out_ubgl_shotgun",
    ["bash_ubgl"] = "bash_ubgl_shotgun",
    ["inspect_ubgl"] = "inspect_ubgl_shotgun",
    ["reload_ubgl_start"] = "reload_ubgl_fast_start",
    ["reload_ubgl_insert"] = "reload_ubgl_fast_insert",
    ["reload_ubgl_finish"] = "reload_ubgl_fast_finish",
}

SWEP.Hook_TranslateAnimation = function(wep, anim)
    --local attached = self:GetElements()

    local speedload = wep:HasElement("perk_speedreload")
    local super_sprint = wep:HasElement("perk_super_sprint")
	local masterkey = wep:HasElement("shotgun")

    if super_sprint and Translate_TacSprint[anim] then
        return Translate_TacSprint[anim]
    end

    if speedload then
		if masterkey then
			if Translate_UBGLS_Fast[anim] then
				return Translate_UBGLS_Fast[anim]
			end
		end
        if Translate_Fast[anim] then
            return Translate_Fast[anim]
            end
        else
			if masterkey then
				if Translate_UBGLS[anim] then
					return Translate_UBGLS[anim]
				end
			end
		end
	
    --wep.MWHybridSwitching = nil
    if anim == "switchsights" then
        if wep:HasElement("hybrid_scope") then
            wep.MWHybridSwitching = true
            return wep:GetMultiSight() == 1 and "hybrid_on" or "hybrid_off"
        else
            return false
        end
    end
end

-- SWEP.Hook_Think	= ARC9.COD2019.BlendSights2

SWEP.DefaultBodygroups = "00000000000000"

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(6, -0.65, 0.2),
	ModelAngleOffset = Angle(0, 0, 0),
	Scale = 0.9,
    },
    ["go_grip_angled"] = {
    ModelOffset = Vector(0, 0, 0),
    },
    ["cod2019_griptape_01"] = {
		Model = "models/weapons/cod2019/attachs/weapons/oden/attachment_vm_ar_asierra12_pistolgrip_tape.mdl",
    },
    ["cod2019_griptape_02"] = {
		Model = "models/weapons/cod2019/attachs/weapons/oden/attachment_vm_ar_asierra12_pistolgrip_tape.mdl",
    },
    ["cod2019_griptape_03"] = {
		Model = "models/weapons/cod2019/attachs/weapons/oden/attachment_vm_ar_asierra12_pistolgrip_tape.mdl",
    },
    ["cod2019_trigger_light"] = {
    Model = "models/weapons/cod2019/attachs/weapons/m19/attachment_vm_pi_papa320_trigcust.mdl",
	BoneMerge = false
    },
    ["cod2019_trigger_heavy"] = {
    Model = "models/weapons/cod2019/attachs/weapons/m19/attachment_vm_pi_papa320_trigcust02.mdl",
	BoneMerge = false
    },
    ["cod2019_trigger_match"] = {
    Model = "models/weapons/cod2019/attachs/weapons/m19/attachment_vm_pi_papa320_trigcust03.mdl",
	BoneMerge = false
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
    ["sights"] = {
        Bodygroups = {
            {4,0},
        },
    },
    ["trigger_none"] = {
        Bodygroups = {
            {5,1},
        },
    },
    ["stock_none"] = {
        Bodygroups = {
            {6,1},
        },
    },
    ["handle_none"] = {
        Bodygroups = {
            {4,1},
        },
    },
    ["scope_sniper"] = {
        Bodygroups = {
            {4,1},
        },
		AttPosMods = { [4] = { Pos = Vector(1.5, 0, -2), } },
		PeekPos = Vector(-1.2, 1.5, -4),
    },
}

-- SWEP.Hook_ModifyBodygroups = function(wep, data)
    -- local model = data.model
    -- if wep:HasElement("stock_retract") then model:SetBodygroup(4,1) end
-- end

SWEP.Attachments = {
    { -- 1
        PrintName = ARC9:GetPhrase("mw19_category_muzzle"),
        Category = {"cod2019_muzzle", "cod2019_oden_muzzle"},
		DefaultIcon = Material("entities/defattachs/muzzle-ar.png", "mips smooth"),
        Bone = "tag_silencer",
        Pos = Vector(0, 0, 0),
		InstalledElements = {"muzzle_none"},
    },
    { -- 2
        PrintName = ARC9:GetPhrase("mw19_category_barrel"),
		DefaultIcon = Material("entities/defattachs/barrel-ar.png", "mips smooth"),
        Category = "cod2019_oden_barrel",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
    },
    { -- 3
        PrintName = ARC9:GetPhrase("mw19_category_laser"),
		DefaultIcon = Material("entities/defattachs/laser-ar.png", "mips smooth"),
        Category = "cod2019_tac",
        Bone = "tag_laser_attach",
        Pos = Vector(3.5, 1.2, -1.4),
        Ang = Angle(0, 0, -90),
    },
    { -- 4
        PrintName = ARC9:GetPhrase("mw19_category_optic"),
		DefaultIcon = Material("entities/defattachs/optic.png", "mips smooth"),
        Bone = "tag_holo",
        Pos = Vector(1.5, 0, -0.1),
        Category = {"cod2019_optic"},
    },
    { -- 5
        PrintName = ARC9:GetPhrase("mw19_category_stock"),
		DefaultIcon = Material("entities/defattachs/stock-ar.png", "mips smooth"),
        Category = {"cod2019_oden_stock"},
        Bone = "tag_stock_attach",
        Pos = Vector(0, 0, 0),
    },
    { -- 6
        PrintName = ARC9:GetPhrase("mw19_category_underbarrel"),
		DefaultIcon = Material("entities/defattachs/grip.png", "mips smooth"),
        Category = "cod2019_grip",
        Bone = "tag_grip_attach",
        Pos = Vector(-2.5, 0, 0),
        Ang = Angle(0, 0, 180),
		MergeSlots = {21}, -- Grenade Launcher(s)
    },
    { -- 7
        PrintName = ARC9:GetPhrase("mw19_category_magazine"),
		DefaultIcon = Material("entities/defattachs/magazine-ar.png", "mips smooth"),
		Bone = "tag_mag_attach",
        Category = {"cod2019_mag","cod2019_oden_mag"},
        Pos = Vector(0, 0, 0),
    },
    { -- 8
        PrintName = ARC9:GetPhrase("mw19_category_ammo"),
		DefaultIcon = Material("arc9/def_att_icons/ammotype.png", "mips smooth"),
        Bone = "tag_mag_attach",
		Category = {"cod2019_ammo"},
		Pos = Vector(-1.5, 0, 0),
    },
    { -- 9
        PrintName = ARC9:GetPhrase("mw19_category_reargrip"),
		DefaultIcon = Material("entities/defattachs/reargrip-ar.png", "mips smooth"),
        Category = "cod2019_pistolgrip",
        Bone = "tag_pistolgrip_attach",
        Pos = Vector(0, 0, 0),
    },
    { -- 10
        PrintName = ARC9:GetPhrase("mw19_category_triggeraction"),
		-- DefaultIcon = Material("entities/defattachs/stock-ar.png", "mips smooth"),
        Category = {"cod2019_trigger"},
        Bone = "j_trigger",
        Pos = Vector(0.2, 0, 0.1),
    },
    { -- 11
        PrintName = ARC9:GetPhrase("mw19_category_perk"),
        Category = {"cod2019_perks","cod2019_perks_soh","cod2019_perks_burst","cod2019_perks_ss"},
        Bone = "tag_attachments",
        Pos = Vector(12, 0, 1),
    },
	
	-- Unofficial
    { -- 12
        PrintName = ARC9:GetPhrase("mw19_category_receiver"),
        Category = "cod2019_oden_receiver",
        Bone = "tag_attachments",
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(12, 0, 4),
		Hidden = false,
    },
	
	-- Cosmetics
    { -- 13
        PrintName = ARC9:GetPhrase("mw19_category_skins"),
        Bone = "tag_cosmetic",
        Pos = Vector(7, 0, 3),
        Category = "cod2019_skins_oden",
		CosmeticOnly = true,
    },
    { -- 14
        PrintName = ARC9:GetPhrase("mw19_category_camouflage"),
        Category = {"universal_camo"},
        Bone = "tag_cosmetic",
        Pos = Vector(5, 0, 3),
        CosmeticOnly = true,
    },
    { -- 15
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/rif_oden_decal_a.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(3, 0, 3),
    },
    { -- 16
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/rif_oden_decal_b.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(1, 0, 3),
    },
    { -- 17
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/rif_oden_decal_c.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-1, 0, 3),
    },
    { -- 18
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/rif_oden_decal_d.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-3, 0, 3),
    },
    { -- 19
        PrintName = ARC9:GetPhrase("mw19_category_charm"),
        CosmeticOnly = true,
        Category = {"charm"},
        Bone = "tag_cosmetic",
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(-5.5, 0, 3),
    },
    { -- 20
        PrintName = ARC9:GetPhrase("mw19_category_stats"),
        Category = {"killcounter","killcounter2"},
        Bone = "tag_cosmetic",
        Pos = Vector(0, 0, -1),
		Icon_Offset = Vector(-7, 0, 3),
		CosmeticOnly = true,
    },
    { -- 21
        PrintName = "GL",
        Category = {"cod2019_m203"},
        Bone = "tag_attachments",
        Pos = Vector(24, 0, -2.6),
        Ang = Angle(0, 180, 0),
		Hidden = true,
    },
    { -- 22
        PrintName = ARC9:GetPhrase("mw19_category_underbarrel"),
		DefaultIcon = Material("entities/defattachs/grip.png", "mips smooth"),
        Category = {"cod2019_oden_grip"},
        Bone = "tag_grenade_launcher",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		InstalledElements = {"rail_grip"},
		MergeSlots = {6}, -- Grips
		Hidden = true,
    },
}

SWEP.GripPoseParam = 4
SWEP.GripPoseParam2 = 0.5
SWEP.CodAngledGripPoseParam = 24.5
SWEP.CodStubbyTallGripPoseParam = 26
SWEP.CodStubbyGripPoseParam = 17

-- Warzone-esque Stats; Add here to change only when using Warzone Stats variable.
if GetConVar("arc9_mw19_stats_warzone"):GetBool() then

-------------------------- DAMAGE PROFILE
SWEP.DamageMax = 48 -- Damage done at point blank range
SWEP.DamageMin = 36 -- Damage done at maximum range

SWEP.RangeMin = 43 / ARC9.HUToM
SWEP.RangeMax = 44 / ARC9.HUToM

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 1.6,
    [HITGROUP_CHEST] = 1.19,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 1,
    [HITGROUP_RIGHTLEG] = 1,
}

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 880 / ARC9.HUToM

-------------------------- FIREMODES

SWEP.RPM = 414

-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.35 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.25 -- How long it takes to go from sprinting to being able to fire.

end
