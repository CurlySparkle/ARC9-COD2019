AddCSLuaFile()
if CLIENT then
    killicon.Add( "arc9_cod2019_mm_sks", "vgui/killicons/cod2019_mm_sks.png", Color(251, 85, 25, 255))
end

SWEP.LoadoutImage = "entities/loadout/arc9_cod2019_mm_sks.png"

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_marksman") or "Marksman Rifles"

SWEP.PrintName = ARC9:GetPhrase("mw19_weapon_sks") or "SKS"

SWEP.Class = ARC9:GetPhrase("mw19_class_weapon_marksman") or "Marksman Rifle"
SWEP.Trivia = {
    [ ARC9:GetPhrase("mw19_country") ] = ARC9:GetPhrase("mw19_country_russia"),
    [ ARC9:GetPhrase("mw19_manufacturer") ] = ARC9:GetPhrase("mw19_manufacturer_verdansk"),
    [ ARC9:GetPhrase("mw19_caliber") ] = ARC9:GetPhrase("mw19_caliber_762soviet"),
    [ ARC9:GetPhrase("mw19_weight") ] = string.format(ARC9:GetPhrase("mw19_weight_val"), 3.85, 3.85 * 2.20),
    [ ARC9:GetPhrase("mw19_weight_projectile") ] = string.format(ARC9:GetPhrase("mw19_weight_projectile_val"), 121.9),
    -- [ ARC9:GetPhrase("mw19_muzzle_energy") ] = "2,411 ft/s",
    -- [ ARC9:GetPhrase("mw19_muzzle_velocity") ] = "2,134 joules"
}

SWEP.Credits = {
    [ ARC9:GetPhrase("mw19_author") ] = "Twilight Sparkle/Firmeteran",
    [ ARC9:GetPhrase("mw19_assets") ] = "Activision/Infinity Ward"
}

SWEP.Description = ARC9:GetPhrase("mw19_weapon_sks_desc") or [[Lightweight, semi-auto Carbine chambered in 7.62x39mm. This hard hitting and agile Soviet rifle focuses on utility over accuracy. It flaunts a faster fire rate than other weapons in its class, but a carefully placed round will eliminate the need for follow up shots entirely. This classic DMR has seen a lot of battles, and its unique gunsmith configurations reflect a diverse service history.]]

SWEP.ViewModel = "models/weapons/cod2019/c_snip_sks.mdl"
SWEP.WorldModel = "models/weapons/w_snip_g3sg1.mdl"

SWEP.Slot = 3

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_snip_sks.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-2.25, 3.25, -5.75),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-8.5, 4.5, -4),
    TPIKAng = Angle(-12.5, -1, 165),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 52 -- Damage done at point blank range
SWEP.DamageMin = 45 -- Damage done at maximum range

SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 50 / ARC9.HUToM
SWEP.RangeMax = 82 / ARC9.HUToM

SWEP.Penetration = 11 -- Units of wood that can be penetrated by this gun.

SWEP.ImpactForce = 8

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 1.925,
    [HITGROUP_CHEST] = 1.1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 0.925,
    [HITGROUP_RIGHTARM] = 0.925,
    [HITGROUP_LEFTLEG] = 0.925,
    [HITGROUP_RIGHTLEG] = 0.925,
}

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 700 / ARC9.HUToM
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

SWEP.RecoilDissipationRate = 7.5 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 5 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 3

SWEP.RecoilMultCrouch = 0.8
SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.85

SWEP.RecoilPerShot = 1
SWEP.RecoilMax = 2

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilMultSights = 0.4
SWEP.VisualRecoilPunchSights = 15
SWEP.VisualRecoilSideSights = 0
SWEP.VisualRecoilRollSights = 0.5
SWEP.VisualRecoilUpSights = 0

SWEP.VisualRecoilPunch = 3
SWEP.VisualRecoilUp = 0.4
SWEP.VisualRecoilRoll = 15
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

SWEP.Spread = 0.05

SWEP.SpreadAddRecoil = 0.025

SWEP.SpreadAddHipFire = 0
SWEP.SpreadAddMove = 0.03
SWEP.SpreadAddMidAir = 0.045
SWEP.SpreadAddCrouch = -0.03
SWEP.SpreadAddSights = -(SWEP.Spread)

SWEP.SpreadMultRecoil = 1.1
SWEP.RecoilModifierCap = 3
SWEP.RecoilModifierCapMove = 0
SWEP.RecoilModifierCapSights = 0.05

-------------------------- HANDLING

SWEP.SpeedMult = 1 -- Walk speed multiplier
SWEP.SpeedMultSights = 0.9 -- When aiming
SWEP.SpeedMultShooting = 0.9

SWEP.AimDownSightsTime = 0.27 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.375 -- How long it takes to go from sprinting to being able to fire.

-------------------------- AIM ASSIST

-- SWEP.NoAimAssist = true

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
    Pos = Vector(-2.645, -2.5, 0.95),
    Ang = Angle(0, 0, -1.5),
    Magnification = 1.15,
    ViewModelFOV = 50,
	CrosshairInSights = false
}

SWEP.ViewModelFOVBase = 64

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

SWEP.MovingPos = Vector(-1, -1, -1)
SWEP.MovingAng = Angle(0, 0, -10)

SWEP.CrouchPos = Vector(-1, -0.5, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.SprintPos = Vector(1, 0, -1)
SWEP.SprintAng = Angle(0, 0, 25)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(15, 37.5, 3)
SWEP.CustomizeRotateAnchor = Vector(15, -3.5, -4)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeNoRotate = false
SWEP.CustomizeSnapshotPos = Vector(0, 14, 3)

SWEP.PeekPos = Vector(-0.9, 3, -3)
SWEP.PeekAng = Angle(-1, 1, -45)

SWEP.PeekMaxFOV = 54

SWEP.PeekPosReloading = Vector(0, 1.5, -1.25)
SWEP.PeekAngReloading = Angle(-0.3, 0, -5)

-------------------------- HoldTypes

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeHolstered = "passive"
SWEP.HoldTypeSights = "ar2"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "AC_muzzle_shotgun_fp"
SWEP.AfterShotParticle = "AC_muzzle_smoke_barrel"
SWEP.TracerEffect = "cod2019_tracer_slow"
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 4
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_762_hr.mdl"
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 0.08
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)
SWEP.ShellSounds = ARC9.COD2019_338_Table

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
	["enter_sights"] = {
		Source = "idle",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
	},
    ["fire"] = {
        Source = "shoot1",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
    },
    ["dryfire"] = {
        Source = "dryfire",
		MinProgress = 0.01,
		FireASAP = true,
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
    },
    ["reload"] = {
        Source = "reload_short",
		MinProgress = 0.85,
		RefillProgress = 0.55,
		PeekProgress = 0.825,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.1, lhik = 0, rhik = 1 },
            { t = 0.7, lhik = 0, rhik = 1 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sn_sksierra_reload_raise.ogg", t = 0.0},
            {s = path .. "wfoly_sn_sksierra_reload_magout.ogg", t = 0.567},
			{s = path .. "wfoly_sn_sksierra_reload_magin_01.ogg", t = 1.3},
			{s = path .. "wfoly_sn_sksierra_reload_magin_02.ogg", t = 1.52},
			{s = path .. "wfoly_sn_sksierra_reload_end.ogg", t = 1.6},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.925,
		RefillProgress = 0.725,
		PeekProgress = 0.85,
		FireASAP = true,
		DropMagAt = 0.95,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.1, lhik = 0, rhik = 1 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.575, lhik = 1, rhik = 0 },
            { t = 1, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sn_sksierra_reload_empty_raise.ogg", t = 0.0},
            {s = path .. "wfoly_sn_sksierra_reload_empty_magout.ogg", t = 0.7},
			{s = path .. "wfoly_sn_sksierra_reload_empty_magin_01.ogg", t = 1.167},
			{s = path .. "wfoly_sn_sksierra_reload_empty_magin_02.ogg", t = 1.37},
			{s = path .. "wfoly_sn_sksierra_reload_empty_rotate.ogg", t = 1.6},
			{s = path .. "wfoly_sn_sksierra_reload_empty_charge.ogg", t = 2.12},
			{s = path .. "wfoly_sn_sksierra_reload_empty_end.ogg", t = 2.633},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.85,
		FireASAP = true,
		RefillProgress = 0.625,
		PeekProgress = 0.825,
		DropMagAt = 1,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.1, lhik = 0, rhik = 1 },
            { t = 0.65, lhik = 0, rhik = 1 },
            { t = 0.8, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sn_sksierra_reload_fast_raise.ogg", t = 0.033},
            {s = path .. "wfoly_sn_sksierra_reload_fast_magout.ogg", t = 0.567},
			{s = path .. "wfoly_sn_sksierra_reload_fast_magin_01.ogg", t = 1.0},
			{s = path .. "wfoly_sn_sksierra_reload_fast_magin_02.ogg", t = 1.2},
			{s = path .. "wfoly_sn_sksierra_reload_fast_end.ogg", t = 1.433},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.925,
		RefillProgress = 0.75,
		PeekProgress = 0.875,
		DropMagAt = 1,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.1, lhik = 0, rhik = 1 },
            { t = 0.775, lhik = 0, rhik = 1 },
            { t = 0.875, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sn_sksierra_reload_empty_fast_raise.ogg", t = 0.033},
            {s = path .. "wfoly_sn_sksierra_reload_empty_fast_magout.ogg", t = 0.467},
			{s = path .. "wfoly_sn_sksierra_reload_empty_fast_magin_01.ogg", t = 1.0},
			{s = path .. "wfoly_sn_sksierra_reload_empty_fast_magin_02.ogg", t = 1.2},
            {s = path .. "wfoly_sn_sksierra_reload_empty_fast_arm.ogg", t = 1.367},
			{s = path .. "wfoly_sn_sksierra_reload_empty_fast_charge.ogg", t = 1.5},
			{s = path .. "wfoly_sn_sksierra_reload_empty_fast_end.ogg", t = 2.0},
        },
    },
    ["reload_xmag"] = {
        Source = "reload_xmag",
		MinProgress = 0.85,
		FireASAP = true,
		RefillProgress = 0.55,
		PeekProgress = 0.825,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.1, lhik = 0, rhik = 1 },
            { t = 0.7, lhik = 0, rhik = 1 },
            { t = 0.85, lhik = 1, rhik = 1 },
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
		MinProgress = 0.925,
		FireASAP = true,
		RefillProgress = 0.725,
		PeekProgress = 0.85,
		DropMagAt = 0.95,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.1, lhik = 0, rhik = 1 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.575, lhik = 1, rhik = 0 },
            { t = 1, lhik = 1, rhik = 1 },
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
		MinProgress = 0.85,
		FireASAP = true,
		RefillProgress = 0.625,
		PeekProgress = 0.825,
		DropMagAt = 1,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.1, lhik = 0, rhik = 1 },
            { t = 0.65, lhik = 0, rhik = 1 },
            { t = 0.8, lhik = 1, rhik = 1 },
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
		MinProgress = 0.925,
		RefillProgress = 0.75,
		PeekProgress = 0.875,
		DropMagAt = 1,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.1, lhik = 0, rhik = 1 },
            { t = 0.775, lhik = 0, rhik = 1 },
            { t = 0.875, lhik = 1, rhik = 1 },
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
    ["reload_smag"] = {
        Source = "reload_smag",
		MinProgress = 0.85,
		FireASAP = true,
		RefillProgress = 0.55,
		PeekProgress = 0.825,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.1, lhik = 0, rhik = 1 },
            { t = 0.7, lhik = 0, rhik = 1 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sn_sksierra_reload_raise.ogg", t = 0/30},
            {s = path .. "wfoly_sn_sksierra_reload_magout.ogg", t = 17/30},
			{s = path .. "wfoly_sn_sksierra_reload_magin_01.ogg", t = 36/30},
			{s = path .. "wfoly_sn_sksierra_reload_magin_02.ogg", t = 45/30},
			{s = path .. "wfoly_sn_sksierra_reload_end.ogg", t = 46/30},
        },
    },
    ["reload_smag_empty"] = {
        Source = "reload_smag_empty",
		MinProgress = 0.925,
		FireASAP = true,
		RefillProgress = 0.725,
		PeekProgress = 0.85,
		DropMagAt = 0.95,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.1, lhik = 0, rhik = 1 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.575, lhik = 1, rhik = 0 },
            { t = 1, lhik = 1, rhik = 1 },
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
    ["reload_smag_fast"] = {
        Source = "reload_smag_fast",
		MinProgress = 0.85,
		FireASAP = true,
		RefillProgress = 0.625,
		PeekProgress = 0.825,
		DropMagAt = 1,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.1, lhik = 0, rhik = 1 },
            { t = 0.65, lhik = 0, rhik = 1 },
            { t = 0.8, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sn_sksierra_reload_empty_raise.ogg", t = 0/30},
            {s = path .. "wfoly_sn_sksierra_reload_empty_magout.ogg", t = 18/30},
			{s = path .. "wfoly_sn_sksierra_reload_empty_magin_01.ogg", t = 27/30},
			{s = path .. "wfoly_sn_sksierra_reload_empty_magin_02.ogg", t = 36/30},
			{s = path .. "wfoly_sn_sksierra_reload_empty_end.ogg", t = 46/30},
        },
    },
    ["reload_smag_fast_empty"] = {
        Source = "reload_smag_fast_empty",
		MinProgress = 0.925,
		RefillProgress = 0.75,
		PeekProgress = 0.875,
		DropMagAt = 1,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.1, lhik = 0, rhik = 1 },
            { t = 0.775, lhik = 0, rhik = 1 },
            { t = 0.875, lhik = 1, rhik = 1 },
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
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 1, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sn_sksierra_raise_first_up.ogg", t = 0.033},
            {s = path .. "wfoly_sn_sksierra_raise_first_charge.ogg", t = 0.433},
            {s = path .. "wfoly_sn_sksierra_raise_first_end.ogg", t = 0.8},
        },
    },
    ["draw"] = {
        Source = "draw_short",
		MinProgress = 0.4,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.5, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sn_sksierra_raise.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.5, lhik = 0, rhik = 1 },
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
        MinProgress = 0.1,
        FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.1, lhik = 0, rhik = 1 },
            { t = 0.45, lhik = 0, rhik = 1 },
            { t = 0.525, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sn_sksierra_inspect_01.ogg", t = 0.033},
            {s = path .. "wfoly_sn_sksierra_inspect_02.ogg", t = 1.367},
            {s = path .. "wfoly_sn_sksierra_inspect_03.ogg", t = 2.367},
			{s = path .. "wfoly_sn_sksierra_inspect_04.ogg", t = 4.2},
        },
    },
    ["bash"] = {
        Source = {"melee", "melee2"},
	    IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.6, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
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
}

-------------------------- ATTACHMENTS

--- 30 Round Mags ---
local Translate_XMag = {
    ["reload"] = "reload_xmag",
    ["reload_empty"] = "reload_xmag_empty",
}
local Translate_XMag_Fast = {
    ["reload"] = "reload_xmag_fast",
    ["reload_empty"] = "reload_xmag_fast_empty",
}

--- 10 Round Mags ---
local Translate_SMag = {
    ["reload"] = "reload_smag",
    ["reload_empty"] = "reload_smag_empty",
}
local Translate_SMag_Fast = {
    ["reload"] = "reload_smag_fast",
    ["reload_empty"] = "reload_smag_fast_empty",
}

--- Fast & Tac. Sprint ---
local Translate_Fast = {
    ["reload"] = "reload_fast",
    ["reload_empty"] = "reload_fast_empty",
}
local Translate_TacSprint = {
    ["idle_sprint"] = "super_sprint_idle",
    ["enter_sprint"] = "super_sprint_in",
    ["exit_sprint"] = "super_sprint_out",
}

SWEP.Hook_TranslateAnimation = function(wep, anim)
    --local attached = self:GetElements()

    local speedload = wep:HasElement("perk_speedreload")
    local super_sprint = wep:HasElement("perk_super_sprint")
    local xmag = wep:HasElement("mag_xmag")
    local smag = wep:HasElement("mag_smag")
    local ammoex = wep:HasElement("ammo_extend")

    if ammoex and speedload and Translate_XMag_Fast[anim] then
        return Translate_XMag_Fast[anim]
    elseif ammoex and Translate_XMag[anim] then
        return Translate_XMag[anim]
    elseif super_sprint and Translate_TacSprint[anim] then
        return Translate_TacSprint[anim]
    end

    if speedload then
        if xmag then
			if Translate_XMag_Fast[anim] then
				return Translate_XMag_Fast[anim]
            end
        else
            if Translate_Fast[anim] then
                return Translate_Fast[anim]
            end
        end
    else 
        if xmag then
            if Translate_XMag[anim] then
                return Translate_XMag[anim]
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
    ["body_none"] = {
        Bodygroups = {
            {0,1},
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
	["grip_angled"] = {
    AttPosMods = { [6] = { Pos = Vector(-2.5, 0, 0), } }	
	}
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model
    if wep:HasElement("scope_sks") then model:SetBodygroup(4,0) end
	
    if wep:HasElement("heavy_stock") then 
     model:SetPoseParameter("grip_stockhvy_offset", 1)
    else
     model:SetPoseParameter("grip_stockhvy_offset", 0)
    end
    if wep:HasElement("heavy_stock") then model:SetBodygroup(3,2) end
end

SWEP.Attachments = {
    { -- 1
        PrintName = ARC9:GetPhrase("mw19_category_muzzle"),
        Category = "cod2019_muzzle",
        DefaultIcon = Material("entities/defattachs/muzzle-ar.png", "mips smooth"),
		Bone = "tag_silencer",
        Pos = Vector(-0, 0, 0),
		InstalledElements = {"muzzle_none"},
    },
    { -- 2
        PrintName = ARC9:GetPhrase("mw19_category_barrel"),
		DefaultIcon = Material("entities/defattachs/barrel-ar.png", "mips smooth"),
        Category = "cod2019_sks_barrel",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(-1.5, 0, 0),
    },
    { -- 3
        PrintName = ARC9:GetPhrase("mw19_category_laser"),
		DefaultIcon = Material("entities/defattachs/laser-ar.png", "mips smooth"),
        Category = "cod2019_tac_rail_cylinder",
        Bone = "tag_laser_attach",
        Pos = Vector(-9.5, -1.34, 0),
    },
    { -- 4
        PrintName = ARC9:GetPhrase("mw19_category_optic"),
		DefaultIcon = Material("entities/defattachs/optic.png", "mips smooth"),
        Bone = "tag_holo",
        Pos = Vector(0.5, 0, -0.1),
        Category = {"cod2019_optic","cod2019_optic_sks", "cod2019_optic_big"},
		InstalledElements = {"rail_sight"},
    },
    { -- 5
        PrintName = ARC9:GetPhrase("mw19_category_stock"),
		DefaultIcon = Material("entities/defattachs/stock-ar.png", "mips smooth"),
        Category = "cod2019_stocks",
        Bone = "tag_stock_attach",
        Pos = Vector(-0.2, 0, 1.2),
		Ang = Angle(5, 0, 0),
		InstalledElements = {"stock_adapter"},
		MergeSlots = {19}, -- SKS Stocks
    },
    { -- 6
        PrintName = ARC9:GetPhrase("mw19_category_underbarrel"),
		DefaultIcon = Material("entities/defattachs/grip.png", "mips smooth"),
        Category = "cod2019_grip",
        Bone = "tag_grip_attach",
        Pos = Vector(-1.5, 0, 0),
        Ang = Angle(0, 0, 180),
    },
    { -- 7
        PrintName = ARC9:GetPhrase("mw19_category_magazine"),
		DefaultIcon = Material("entities/defattachs/magazine-ar.png", "mips smooth"),
		Bone = "tag_mag_attach",
        Category = {"cod2019_mag","cod2019_sks_mag"},
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
        PrintName = ARC9:GetPhrase("mw19_category_perk"),
        Category = {"cod2019_perks","cod2019_perks_soh","cod2019_perks_ss"},
        Bone = "tag_attachments",
        Pos = Vector(1.5, 0, -2),
    },
	
	-- Unofficial
    { -- 10
        PrintName = ARC9:GetPhrase("mw19_category_receiver"),
        Category = "cod2019_sks_receiver",
        Bone = "tag_attachments",
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(0, 0, 0.5),
		Hidden = false,
    },
	
	-- Cosmetics
    { -- 11
        PrintName = ARC9:GetPhrase("mw19_category_skins"),
        Bone = "tag_cosmetic",
        Pos = Vector(7, 0, 3),
        Category = "cod2019_skins_sks",
		CosmeticOnly = true,
    },
    { -- 12
        PrintName = ARC9:GetPhrase("mw19_category_camouflage"),
        Category = {"universal_camo"},
        Bone = "tag_cosmetic",
        Pos = Vector(5, 0, 3),
        CosmeticOnly = true,
    },
    { -- 13
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/snip_sks_decal_a.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(3, 0, 3),
		ExcludeElements = {"sks_stock"},
    },
    { -- 14
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/snip_sks_decal_b.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(1, 0, 3),
		ExcludeElements = {"sks_stock"},
    },
    { -- 15
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/snip_sks_decal_c.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-1, 0, 3),
		ExcludeElements = {"sks_stock"},
    },
    { -- 16
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/snip_sks_decal_d.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-3, 0, 3),
		ExcludeElements = {"sks_stock", "stock_adapter"},
    },
    { -- 17
        PrintName = ARC9:GetPhrase("mw19_category_charm"),
        CosmeticOnly = true,
        Category = {"charm"},
        Bone = "tag_cosmetic",
        Pos = Vector(0.5, 0, 0),
		Icon_Offset = Vector(-5.5, 0, 3),
		Scale = 1.1,
    },
    { -- 18
        PrintName = ARC9:GetPhrase("mw19_category_stats"),
        Category = {"killcounter","killcounter2"},
        Bone = "tag_cosmetic",
        Pos = Vector(0, 0, -1),
		Icon_Offset = Vector(-7.5, 0, 4),
		CosmeticOnly = true,
    },
    { -- 19
        PrintName = "SKS Stock",
        Category = {"cod2019_sks_stock"},
        Bone = "tag_stock_attach",
        Pos = Vector(0,0, 0),
		Hidden = true,
		InstalledElements = {"sks_stock"},
    },
}

SWEP.GripPoseParam = 5
SWEP.GripPoseParam2 = 0.5
SWEP.CodStubbyGripPoseParam = 22
SWEP.CodAngledGripPoseParam = 22.5
SWEP.CodStubbyTallGripPoseParam = 20
SWEP.BipodSlide = 0.85

-- Warzone-esque Stats; Add here to change only when using Warzone Stats variable.
if GetConVar("arc9_mw19_stats_warzone"):GetBool() then

-------------------------- DAMAGE PROFILE
SWEP.DamageMax = 52 -- Damage done at point blank range
SWEP.DamageMin = 45 -- Damage done at maximum range

SWEP.RangeMin = 51 / ARC9.HUToM
SWEP.RangeMax = 81 / ARC9.HUToM

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 1.925,
    [HITGROUP_CHEST] = 1.1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 0.925,
    [HITGROUP_RIGHTARM] = 0.925,
    [HITGROUP_LEFTLEG] = 0.925,
    [HITGROUP_RIGHTLEG] = 0.925,
}

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 700 / ARC9.HUToM

-------------------------- FIREMODES

SWEP.RPM = 333

-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.27 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.25 -- How long it takes to go from sprinting to being able to fire.

end
