AddCSLuaFile()
if CLIENT then
    killicon.Add( "arc9_cod2019_ar_famas", "vgui/killicons/cod2019_ar_famas.png", Color(251, 85, 25, 255))
end

SWEP.LoadoutImage = "entities/loadout/arc9_cod2019_ar_famas.png"

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.NotForNPCs = false
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_ar") or "Assault Rifles"
SWEP.ARC9WeaponCategory = 4

SWEP.PrintName = ARC9:GetPhrase("mw19_weapon_fr556") or "FR 5.56"

SWEP.Class = ARC9:GetPhrase("mw19_class_weapon_ar") or "Assault Rifle"
SWEP.Trivia = {
    [ ARC9:GetPhrase("mw19_country") ] = ARC9:GetPhrase("mw19_country_france"),
    [ ARC9:GetPhrase("mw19_manufacturer") ] = ARC9:GetPhrase("mw19_manufacturer_forgetac"),
    [ ARC9:GetPhrase("mw19_caliber") ] = ARC9:GetPhrase("mw19_caliber_556"),
    [ ARC9:GetPhrase("mw19_weight") ] = string.format(ARC9:GetPhrase("mw19_weight_val"), 3.61, 3.61 * 2.2),
    [ ARC9:GetPhrase("mw19_weight_projectile") ] = string.format(ARC9:GetPhrase("mw19_weight_projectile_val"), 62),
}

SWEP.Credits = {
    [ ARC9:GetPhrase("mw19_author") ] = "Twilight Sparkle/Firmeteran",
    [ ARC9:GetPhrase("mw19_assets") ] = "Activision/Infinity Ward"
}

SWEP.Description = ARC9:GetPhrase("mw19_weapon_fr556_desc") or [[3 round burst bullpup battle rifle. A well placed burst can be extremely deadly at intermittent ranges.]]

SWEP.ViewModel = "models/weapons/cod2019/c_rif_famas.mdl"
SWEP.WorldModel = "models/weapons/cod2019/w_rif_famas.mdl"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_rif_famas.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-9, 4.5, -7.5),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-8.5, 4.5, -4),
    TPIKAng = Angle(-12.5, -1, 165),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 24 -- Damage done at point blank range
SWEP.DamageMin = 12 -- Damage done at maximum range
SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 15 / ARC9.HUToM
SWEP.RangeMax = 35 / ARC9.HUToM

SWEP.Penetration = 8 -- Units of wood that can be penetrated by this gun.
SWEP.ImpactForce = 8

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 850 / ARC9.HUToM
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

SWEP.RPM = 1100

-- SWEP.RunawayBurst = true
-- SWEP.PostBurstDelay = 0.15

SWEP.Firemodes = {
    { -- 3-Burst
        Mode = 3,
		RunawayBurst = true,
		PostBurstDelay = 0.15,
		DamageMaxMult = 1,
		DamageMinMult = 1,
    },
    { -- Semi
        Mode = 1,
		RPMMult = 0.75,
		DamageMaxMult = 1,
		DamageMinMult = 1,
    },
    { -- Auto
        Mode = -1,
		DamageMaxMult = 0.7,
		DamageMinMult = 0.6,
		RPMMult = 0.8,
    },
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1.5

SWEP.RecoilSeed = 8778456

SWEP.RecoilPatternDrift = 3

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.1
SWEP.RecoilRandomSide = 0.2

SWEP.RecoilDissipationRate = 10 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 1 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 1.5

SWEP.RecoilMultCrouch = 0.8

SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.85

SWEP.RecoilPerShot = 1
SWEP.RecoilMax = 3.5

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilPunch = 1
SWEP.VisualRecoilUp = 0.3

SWEP.VisualRecoilRoll = 25
SWEP.VisualRecoilSide = 0.4

SWEP.VisualRecoilMultSights = 0.3
SWEP.VisualRecoilPunchSights = 5
SWEP.VisualRecoilRollSights = 5
SWEP.VisualRecoilSideSights = 0
SWEP.VisualRecoilUpSights = 0

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
SWEP.SpreadAddMove = 0.035
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

SWEP.AimDownSightsTime = 0.3 -- How long it takes to go from hip fire to aiming down sights.
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
    Pos = Vector(-3.73, -4.5, -0.55),
    Ang = Angle(0, 0, -3),
    Magnification = 1.15,
    ViewModelFOV = 56,
	CrosshairInSights = false
}

SWEP.IronSightsHook = function(self) -- If any attachments equipped should alter Irons
    local attached = self:GetElements()

    if attached["cod2019_famas_upper_railcust"] then
        return {
			Pos = Vector(-3.73, -5, 1.15),
			Ang = Angle(0, 0, -3),
			Magnification = 1.15,
			CrosshairInSights = false
        }
    end

end

SWEP.ViewModelFOVBase = 64

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

SWEP.CrouchPos = Vector(-1, -0.5, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.SprintPos = Vector(1, 0, -1)
SWEP.SprintAng = Angle(0, 0, 25)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(12.5, 50, 4)
SWEP.CustomizeRotateAnchor = Vector(13.5, -3.5, -5)
SWEP.CustomizeSnapshotFOV = 65
SWEP.CustomizeSnapshotPos = Vector(-1, 25, 5)
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeNoRotate = false

SWEP.PeekPos = Vector(-2, 3, -3.5)
SWEP.PeekAng = Angle(-2, 2, -45)

SWEP.PeekMaxFOV = 45

SWEP.PeekPosReloading = Vector(1, 4, 0)
SWEP.PeekAngReloading = Angle(-0.3, 0, 2.5)

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
SWEP.ShellScale = 0.07
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)
SWEP.ShellSounds = ARC9.COD2019_556_Table

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_rif_famas_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
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

local path = "weapons/cod2019/famas/"
local pathub = "weapons/cod2019/shared/ubgl/"

SWEP.ShootSound = "COD2019.Famas.Fire"
SWEP.ShootSoundIndoor = "COD2019.Famas.Fire"

SWEP.ShootSoundSilenced = "COD2019.Famas.Fire.S"
SWEP.ShootSoundSilencedIndoor = "COD2019.Famas.Fire.S"

-- Non-Silenced
SWEP.LayerSound = "Layer_AR.Outside"
SWEP.DistantShootSound = "Distant_AR.Outside"
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

SWEP.EnterSightsSound = path .. "weap_ar_falpha_ads_up.ogg"
SWEP.ExitSightsSound = path .. "weap_ar_falpha_ads_down.ogg"

SWEP.BulletBones = {
    [1] = "j_bullet01",
    [2] = "j_bullet02",
	[3] = "j_bullet03",
}

SWEP.HideBones  = {
    [1] = "j_mag2",
}

SWEP.TriggerDelay = 0.025 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayCancellable = false
SWEP.TriggerDelayTime = 0.025 -- Time until weapon fires.

SWEP.TriggerDownSound = "weapons/cod2019/famas/weap_falpha_fire_first_plr_01.ogg"
SWEP.TriggerUpSound = "weapons/cod2019/famas/weap_falpha_disconnector_plr_01.ogg"

SWEP.Animations = {
	["enter_sights"] = {
		Source = "idle",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
	},
    ["fire"] = {
        Source = "shoot1",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
    },
    ["reload"] = {
        Source = "reload_short",
		MinProgress = 0.85,
		PeekProgress = 0.8375,
		RefillProgress = 0.575,
		FireASAP = true,
		MagSwapTime = 3.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_ar_falpha_reload_twist.ogg", t = 0.033},
			{s = path .. "wfoly_ar_falpha_magout_01.ogg", t = 0.66},
			{s = path .. "wfoly_ar_falpha_reload_maghit_01.ogg", t = 1.16},
			{s = path .. "wfoly_ar_falpha_reload_magin_01.ogg", t = 1.43},
			{s = path .. "wfoly_ar_falpha_reload_end.ogg", t = 1.76},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.9,
		PeekProgress = 0.875,
		RefillProgress = 0.775,
		FireASAP = true,
		DropMagAt = 0.6,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.725, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_ar_falpha_reload_empty_twist.ogg", t = 0},
			{s = path .. "wfoly_ar_falpha_reload_empty_magout_01.ogg", t = 0.4},
			{s = path .. "wfoly_ar_falpha_reload_empty_magin_01.ogg", t = 1.27},
			{s = path .. "wfoly_ar_falpha_reload_empty_chamber_01.ogg", t = 2.06},
			{s = path .. "wfoly_ar_falpha_reload_empty_end.ogg", t = 2.6},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.85,
		PeekProgress = 0.825,
		RefillProgress = 0.575,
		FireASAP = true,
		MagSwapTime = 1.5,
		--DropMagAt = 0.8,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_ar_falpha_reload_fast_twist.ogg", t = 0.033},
			{s = path .. "wfoly_ar_falpha_reload_fast_magout_01.ogg", t = 0.43},
            {s = path .. "wfoly_ar_falpha_reload_fast_shake.ogg", t = 0.56},
			{s = path .. "wfoly_ar_falpha_reload_fast_magin_01.ogg", t = 0.84},
			{s = path .. "wfoly_ar_falpha_reload_fast_end.ogg", t = 1.56},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.9,
		PeekProgress = 0.825,
		RefillProgress = 0.725,
		FireASAP = true,
		MagSwapTime = 1.5,
		DropMagAt = 0.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_ar_falpha_reload_empty_fast_twist.ogg", t = 0.033},
			{s = path .. "wfoly_ar_falpha_reload_empty_fast_magout_01.ogg", t = 0.23},
			{s = path .. "wfoly_ar_falpha_reload_empty_fast_magin_01.ogg", t = 0.88},
            {s = path .. "wfoly_ar_falpha_reload_empty_fast_lower.ogg", t = 1.25},
			{s = path .. "wfoly_ar_falpha_reload_empty_fast_chamber_01.ogg", t = 1.47},
			{s = path .. "wfoly_ar_falpha_reload_empty_fast_end.ogg", t = 2},
        },
    },
    ["reload_xmag"] = {
        Source = "reload_xmag",
		MinProgress = 0.85,
		PeekProgress = 0.8,
		RefillProgress = 0.6,
		FireASAP = true,
		MagSwapTime = 3.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.675, lhik = 0, rhik = 0 },
            { t = 0.875, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_ar_falpha_reload_twist.ogg", t = 0/30},
			{s = path .. "wfoly_ar_falpha_magout_01.ogg", t = 19/30},
			{s = path .. "wfoly_ar_falpha_reload_maghit_01.ogg", t = 37/30},
			{s = path .. "wfoly_ar_falpha_reload_magin_01.ogg", t = 44/30},
			{s = path .. "wfoly_ar_falpha_reload_end.ogg", t = 55/30},
        },
    },
    ["reload_xmag_empty"] = {
        Source = "reload_xmag_empty",
		MinProgress = 0.825,
		RefillProgress = 0.725,
		FireASAP = true,
		DropMagAt = 0.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.875, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_ar_falpha_reload_empty_twist.ogg", t = 0/30},
			{s = path .. "wfoly_ar_falpha_reload_empty_magout_01.ogg", t = 7/30},
			{s = path .. "wfoly_ar_falpha_reload_empty_magin_01.ogg", t = 22/30},
			{s = path .. "wfoly_ar_falpha_reload_empty_chamber_01.ogg", t = 43/30},
			{s = path .. "wfoly_ar_falpha_reload_empty_end.ogg", t = 58/30},
        },
    },
    ["reload_xmag_fast"] = {
        Source = "reload_xmag_fast",
		MinProgress = 0.85,
		PeekProgress = 0.825,
		RefillProgress = 0.6,
		FireASAP = true,
		MagSwapTime = 1.5,
		--DropMagAt = 0.6,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_ar_falpha_reload_empty_twist.ogg", t = 0/30},
			{s = path .. "wfoly_ar_falpha_reload_empty_magout_01.ogg", t = 14/30},
			{s = path .. "wfoly_ar_falpha_reload_empty_magin_01.ogg", t = 25/30},
			{s = path .. "wfoly_ar_falpha_reload_empty_end.ogg", t = 45/30},
        },
    },
    ["reload_xmag_fast_empty"] = {
        Source = "reload_xmag_fast_empty",
		MinProgress = 0.9,
		PeekProgress = 0.8,
		RefillProgress = 0.725,
		FireASAP = true,
		MagSwapTime = 1.5,
		DropMagAt = 0.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_ar_falpha_reload_empty_twist.ogg", t = 0/30},
			{s = path .. "wfoly_ar_falpha_reload_empty_magout_01.ogg", t = 8/30},
			{s = path .. "wfoly_ar_falpha_reload_empty_magin_01.ogg", t = 22/30},
			{s = path .. "wfoly_ar_falpha_reload_empty_chamber_01.ogg", t = 42/30},
			{s = path .. "wfoly_ar_falpha_reload_empty_end.ogg", t = 55/30},
        },
    },
    ["ready"] = {
        Source = "draw",
		MinProgress = 0.7,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_ar_falpha_raise_first.ogg", t = 5/30},
            {s = path .. "wfoly_ar_falpha_raise_boltrelease.ogg", t = 27/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
		MinProgress = 0.5,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_ar_falpha_raise.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.4, lhik = 0, rhik = 1 },
        },
		--Mult = 0.8,
        EventTable = {
            {s = path .. "wfoly_ar_falpha_drop.ogg", t = 0/30},
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
		Time = 0.8,
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
		Time = 0.8,
    },
    ["super_sprint_idle"] = {
        Source = "super_sprint",
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 1 },
        },
    },
    ["super_sprint_in"] = {
        Source = "super_sprint_in",
		Time = 0.85,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.1, lhik = 1, rhik = 1 },
            { t = 1, lhik = 0, rhik = 1 },
        },
    },
    ["super_sprint_out"] = {
        Source = "super_sprint_out",
		Time = 0.85,
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
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_ar_falpha_inspect_01.ogg", t = 0},
			{s = path .. "wfoly_ar_falpha_inspect_02.ogg", t = 1.3},
			{s = path .. "wfoly_ar_falpha_inspect_03.ogg", t = 2.36},
			{s = path .. "wfoly_ar_falpha_inspect_04.ogg", t = 3.6},
			{s = path .. "wfoly_ar_falpha_inspect_05.ogg", t = 4.26},
        },
    },
    ["bash"] = {
        Source = {"melee","melee2","melee3"},
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
    },
    ["firemode_1"] = {
        Source = "semi_on",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "weap_falpha_selector_on.ogg", t = 0/30},
        },
    },
    ["firemode_2"] = {
        Source = "semi_off",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "weap_falpha_selector_off.ogg", t = 0/30},
        },
    },
    ["firemode_3"] = {
        Source = "semi_on",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "weap_falpha_selector_on.ogg", t = 0/30},
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
	
-- Valorisé
    ["fire_valorise"] = {
        Source = "shoot1_railcrust",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
    },
    ["reload_valorise"] = {
        Source = "reload_railcrust",
		MinProgress = 0.85,
		PeekProgress = 0.8375,
		RefillProgress = 0.575,
		FireASAP = true,
		MagSwapTime = 3.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_ar_falpha_reload_twist.ogg", t = 0.033},
			{s = path .. "wfoly_ar_falpha_magout_01.ogg", t = 0.66},
			{s = path .. "wfoly_ar_falpha_reload_maghit_01.ogg", t = 1.16},
			{s = path .. "wfoly_ar_falpha_reload_magin_01.ogg", t = 1.43},
			{s = path .. "wfoly_ar_falpha_reload_end.ogg", t = 1.76},
        },
    },
    ["reload_empty_valorise"] = {
        Source = "reload_empty_railcrust",
		MinProgress = 0.9,
		PeekProgress = 0.875,
		RefillProgress = 0.775,
		FireASAP = true,
		DropMagAt = 0.8,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.725, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_ar_falpha_reload_empty_twist.ogg", t = 0},
			{s = path .. "wfoly_ar_falpha_reload_empty_magout_01.ogg", t = 0.4},
			{s = path .. "wfoly_ar_falpha_reload_empty_magin_01.ogg", t = 1.27},
			{s = path .. "wfoly_ar_falpha_reload_empty_chamber_01.ogg", t = 2.06},
			{s = path .. "wfoly_ar_falpha_reload_empty_end.ogg", t = 2.6},
        },
    },
    ["reload_fast_valorise"] = {
        Source = "reload_fast_railcrust",
		MinProgress = 0.85,
		PeekProgress = 0.825,
		RefillProgress = 0.575,
		FireASAP = true,
		MagSwapTime = 1.5,
		--DropMagAt = 0.8,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_ar_falpha_reload_fast_twist.ogg", t = 0.033},
			{s = path .. "wfoly_ar_falpha_reload_fast_magout_01.ogg", t = 0.43},
            {s = path .. "wfoly_ar_falpha_reload_fast_shake.ogg", t = 0.56},
			{s = path .. "wfoly_ar_falpha_reload_fast_magin_01.ogg", t = 0.84},
			{s = path .. "wfoly_ar_falpha_reload_fast_end.ogg", t = 1.56},
        },
    },
    ["reload_fast_empty_valorise"] = {
        Source = "reload_fast_railcrust_empty",
		MinProgress = 0.9,
		PeekProgress = 0.825,
		RefillProgress = 0.725,
		FireASAP = true,
		MagSwapTime = 1.5,
		--DropMagAt = 0.8,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_ar_falpha_reload_empty_fast_twist.ogg", t = 0.033},
			{s = path .. "wfoly_ar_falpha_reload_empty_fast_magout_01.ogg", t = 0.23},
			{s = path .. "wfoly_ar_falpha_reload_empty_fast_magin_01.ogg", t = 0.88},
            {s = path .. "wfoly_ar_falpha_reload_empty_fast_lower.ogg", t = 1.25},
			{s = path .. "wfoly_ar_falpha_reload_empty_fast_chamber_01.ogg", t = 1.47},
			{s = path .. "wfoly_ar_falpha_reload_empty_fast_end.ogg", t = 2},
        },
    },
    ["ready_valorise"] = {
        Source = "draw_railcrust",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_ar_falpha_raise_first.ogg", t = 3/30},
            {s = path .. "wfoly_ar_falpha_raise_boltrelease.ogg", t = 26/30},
        },
    },
    ["holster_valorise"] = {
        Source = "holster_railcrust",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.4, lhik = 0, rhik = 1 },
        },
		--Mult = 0.8,
        EventTable = {
            {s = path .. "wfoly_ar_falpha_drop.ogg", t = 0/30},
        },
    },
    ["hybrid_on_valorise"] = {
        Source = "hybrid_on_railcust",
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
    ["hybrid_off_valorise"] = {
        Source = "hybrid_off_railcust",
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
            {s = pathub .. "ubgl_reload_shellin_01.ogg", t = 29/30},
			{s = pathub .. "ubgl_reload_shellin.ogg", t = 36.25/30},
			{s = pathub .. "ubgl_reload_end.ogg", t = 42.5/30},
			{s = pathub .. "ubgl_reload_glclose.ogg", t = 50/30},
			{s = pathub .. "ubgl_reload_arm.ogg", t = 60/30},
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
            {s = pathub .. "ubgl_reload_shellin_01.ogg", t = 15/30},
			{s = pathub .. "ubgl_reload_shellin.ogg", t = 22/30},
			{s = pathub .. "ubgl_reload_end.ogg", t = 25/30},
			{s = pathub .. "ubgl_reload_glclose.ogg", t = 32/30},
			{s = pathub .. "ubgl_reload_arm.ogg", t = 35/30},
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
}

-------------------------- ATTACHMENTS

--- Valorisé ---
local Translate_Valorise = {
    ["fire"] = "fire_valorise",
    ["reload"] = "reload_valorise",
    ["reload_empty"] = "reload_empty_valorise",
	["ready"] = "ready_valorise",
	["holster"] = "holster_valorise",
}
local Translate_Valorise_Fast = {
    ["fire"] = "fire_valorise",
    ["reload"] = "reload_fast_valorise",
    ["reload_empty"] = "reload_fast_empty_valorise",
    ["reload_ubgl"] = "reload_fast_ubgl",
	["ready"] = "ready_valorise",
	["holster"] = "holster_valorise",
}

--- 50 & 60 Round Mags ---
local Translate_XMag = {
    ["reload"] = "reload_xmag",
    ["reload_empty"] = "reload_xmag_empty",
}
local Translate_XMag_Fast = {
    ["reload"] = "reload_xmag_fast",
    ["reload_empty"] = "reload_xmag_fast_empty",
    ["reload_ubgl"] = "reload_fast_ubgl",
}

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

SWEP.Hook_TranslateAnimation = function(wep, anim)
    --local attached = self:GetElements()

    local speedload = wep:HasElement("perk_speedreload")
    local super_sprint = wep:HasElement("perk_super_sprint")
	local railcust = wep:HasElement("railcust")
    local xmag = wep:HasElement("mag_xmag")

    if super_sprint and Translate_TacSprint[anim] then
        return Translate_TacSprint[anim]
    end

    if speedload then
		if railcust then
            if Translate_Valorise_Fast[anim] then
                return Translate_Valorise_Fast[anim]
            end 
        elseif xmag then
            if Translate_XMag_Fast[anim] then
                return Translate_XMag_Fast[anim]
            end 
        else
            if Translate_Fast[anim] then
                return Translate_Fast[anim]
            end
        end
    else
		if railcust then
            if Translate_Valorise[anim] then
                return Translate_Valorise[anim]
        elseif xmag then
            if Translate_XMag[anim] then
                return Translate_XMag[anim]
            end
        end
    end
end
	
    --wep.MWHybridSwitching = nil
    if anim == "switchsights" then
        if wep:HasElement("hybrid_scope") then
            wep.MWHybridSwitching = true
			if wep:HasElement("railcust") then
				return wep:GetMultiSight() == 1 and "hybrid_on_valorise" or "hybrid_off_valorise"
			else
				return wep:GetMultiSight() == 1 and "hybrid_on" or "hybrid_off"
			end
        else
            return false
        end
    end
end

-- SWEP.Hook_Think	= ARC9.COD2019.BlendSights2

SWEP.DefaultBodygroups = "00000000000000"

SWEP.AttachmentTableOverrides = {
    -- ["arc9_stat_proscreen_main"] = {
		-- ModelOffset = Vector(3, -1.15, -3.55),
		-- ModelAngleOffset = Angle(0, 0, 0),
		-- Scale = 0.9,
    -- },
    ["cod2019_griptape_01"] = {
		Model = "models/weapons/cod2019/attachs/weapons/famas/attachment_vm_ar_falpha_pistolgrip_tape.mdl",
    },
    ["cod2019_griptape_02"] = {
		Model = "models/weapons/cod2019/attachs/weapons/famas/attachment_vm_ar_falpha_pistolgrip_tape.mdl",
    },
    ["cod2019_griptape_03"] = {
		Model = "models/weapons/cod2019/attachs/weapons/famas/attachment_vm_ar_falpha_pistolgrip_tape.mdl",
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
            {4,1},
        },
    },
    ["sights_none"] = {
        Bodygroups = {
            {4,2},
        },
    },
    ["rail_grip"] = {
        Bodygroups = {
            {5,1},
        },
    },
    ["bipod_none"] = {
        Bodygroups = {
            {6,1},
        },
    },
    ["grip_none"] = {
        Bodygroups = {
            {7,1},
        },
    },
    ["upper_none"] = {
        Bodygroups = {
            {8,1},
        },
    },
}

-- SWEP.Hook_ModifyBodygroups = function(wep, data)
    -- local model = data.model
    -- if wep:HasElement("stock_retract") then model:SetBodygroup(3,1) end
-- end

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model
	if wep:HasElement("railcust") then model:SetBodygroup(4,2) end
    if wep:HasElement("railcust") then 
     model:SetPoseParameter("railcust", 1)
    else
     model:SetPoseParameter("railcust", 0)
    end
end

SWEP.Attachments = {
    { -- 1
        PrintName = ARC9:GetPhrase("mw19_category_muzzle"),
        Category = "cod2019_muzzle",
        DefaultIcon = Material("entities/defattachs/muzzle-ar.png", "mips smooth"),
		Bone = "tag_silencer",
        Pos = Vector(-0.5, 0, 0),
		InstalledElements = {"muzzle_none"},
    },
    { -- 2
        PrintName = ARC9:GetPhrase("mw19_category_barrel"),
		DefaultIcon = Material("entities/defattachs/barrel-ar.png", "mips smooth"),
        Category = "cod2019_famas_barrel",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
    },
    { -- 3
        PrintName = ARC9:GetPhrase("mw19_category_laser"),
		DefaultIcon = Material("entities/defattachs/laser-ar.png", "mips smooth"),
        Category = "cod2019_tac_rail_alt",
        Bone = "tag_laser_attach",
        Pos = Vector(-0.34, -1.34, 0),
    },
    { -- 4
        PrintName = ARC9:GetPhrase("mw19_category_optic"),
		DefaultIcon = Material("entities/defattachs/optic.png", "mips smooth"),
        Bone = "tag_attachments",
        Pos = Vector(7.02, 0, 1.95 + 0.75),
        Category = {"cod2019_optic", "cod2019_optic_big"},
		InstalledElements = {"sights_none"},
    },
    { -- 5
        PrintName = ARC9:GetPhrase("mw19_category_stock"),
		DefaultIcon = Material("entities/defattachs/stock-ar.png", "mips smooth"),
        Category = {"cod2019_famas_stock"},
        Bone = "tag_stock_attach",
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(-18, 0, -2),
		InstalledElements = {"stock_none"},
    },
    { -- 6
        PrintName = ARC9:GetPhrase("mw19_category_underbarrel"),
		DefaultIcon = Material("entities/defattachs/grip.png", "mips smooth"),
        Category = "cod2019_grip",
        Bone = "tag_grip_attach",
        Pos = Vector(-2.5, 0, 0),
        Ang = Angle(0, 0, 180),
		InstalledElements = {"rail_grip"},
		MergeSlots = {20}, -- Grenade Launcher(s)
    },
    { -- 7
        PrintName = ARC9:GetPhrase("mw19_category_magazine"),
		DefaultIcon = Material("entities/defattachs/magazine-ar.png", "mips smooth"),
		Bone = "tag_mag_attach",
        Category = {"cod2019_famas_mag"},
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(1.5, 0, 0),
    },
    { -- 8
        PrintName = ARC9:GetPhrase("mw19_category_ammo"),
		DefaultIcon = Material("arc9/def_att_icons/ammotype.png", "mips smooth"),
        Bone = "tag_mag_attach",
		Category = {"cod2019_ammo"},
		Pos = Vector(-1.5, 0, 0),
		Icon_Offset = Vector(1.5, 0, 0),
    },
    { -- 9
        PrintName = ARC9:GetPhrase("mw19_category_reargrip"),
		DefaultIcon = Material("entities/defattachs/reargrip-ar.png", "mips smooth"),
        Category = "cod2019_pistolgrip",
        Bone = "tag_pistolgrip_attach",
        Pos = Vector(-3.5, 0, -5),
    },
    { -- 10
        PrintName = ARC9:GetPhrase("mw19_category_perk"),
        Category = {"cod2019_perks","cod2019_perks_soh","cod2019_perks_ss"},
        Bone = "tag_attachments",
        Pos = Vector(7.5, 0, -3.5),
    },
	
	-- Unofficial
    { -- 11
        PrintName = ARC9:GetPhrase("mw19_category_receiver"),
        Category = "cod2019_famas_receiver",
        Bone = "tag_attachments",
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(3.25, 0, 0),
    },
	
	-- Cosmetics
    { -- 12
        PrintName = ARC9:GetPhrase("mw19_category_skins"),
        Bone = "tag_cosmetic",
        Pos = Vector(7, 0, 3),
        Category = "cod2019_skins_famas",
		CosmeticOnly = true,
    },
    { -- 13
        PrintName = ARC9:GetPhrase("mw19_category_camouflage"),
        Category = {"universal_camo"},
        Bone = "tag_cosmetic",
        Pos = Vector(5, 0, 3),
        CosmeticOnly = true,
    },
    { -- 14
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/rif_famas_decal_a.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(3, 0, 3),
    },
    { -- 15
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/rif_famas_decal_b.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(1, 0, 3),
    },
    { -- 16
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/rif_famas_decal_c.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-1, 0, 3),
    },
    { -- 17
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/rif_famas_decal_d.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-3, 0, 3),
    },
    { -- 18
        PrintName = ARC9:GetPhrase("mw19_category_charm"),
        CosmeticOnly = true,
        Category = {"charm"},
        Bone = "tag_cosmetic",
        Pos = Vector(0.5, 0, 0),
		Icon_Offset = Vector(-5.5, 0, 3),
    },
    { -- 19
        PrintName = ARC9:GetPhrase("mw19_category_stats"),
        Category = {"killcounter","killcounter2"},
        Bone = "tag_cosmetic",
        Pos = Vector(-6.5, 0, -0.25),
		Icon_Offset = Vector(-0.5, 0, 3.25),
		CosmeticOnly = true,
    },
    { -- 20
        PrintName = "GL",
        Category = {"cod2019_m203"},
        Bone = "tag_attachments",
        Pos = Vector(13, 0, -4.5),
        Ang = Angle(0, 180, 0),
		InstalledElements = {"rail_grip"},
		Hidden = true,
    },
    { -- 21
        PrintName = "Bipod",
        Category = {"cod2019_famas_bipod"},
        Bone = "tag_grip_attach",
        Pos = Vector(0, 0, 0),
		Hidden = true,
		MergeSlots = {6}, -- Underbarrel
    },
    { -- 22
        PrintName = "SideGrips",
        Category = {"cod2019_grips_side"},
        Bone = "tag_grip_attach",
        Pos = Vector(-2, -1.41, 1.12),
		Ang = Angle(0, 0, 180),
		Hidden = true,
		MergeSlots = {6}, -- Underbarrel
		InstalledElements = {"rail_grip"},
    },
    { -- 23
        PrintName = ARC9:GetPhrase("mw19_category_underbarrel"),
		DefaultIcon = Material("entities/defattachs/grip.png", "mips smooth"),
        Category = {"cod2019_famas_grip"},
        Bone = "tag_grenade_launcher",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		InstalledElements = {"rail_grip"},
		MergeSlots = {6}, -- Grips
		Hidden = true,
    },
}

SWEP.GripPoseParam = 0
SWEP.GripPoseParam2 = 0
SWEP.CodAngledGripPoseParam = 22
SWEP.CodStubbyGripPoseParam = 10
--SWEP.CodStubbyTallGripPoseParam = 19
SWEP.CodStubbyTallGripPoseParam = 26

-- Warzone-esque Stats; Add here to change only when using Warzone Stats variable.
if GetConVar("arc9_mw19_stats_warzone"):GetBool() then

-------------------------- DAMAGE PROFILE
SWEP.DamageMax = 40 -- Damage done at point blank range
SWEP.DamageMin = 40 -- Damage done at maximum range

SWEP.RangeMin = 30 / ARC9.HUToM
SWEP.RangeMax = 31 / ARC9.HUToM

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 1.6,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 1,
    [HITGROUP_RIGHTLEG] = 1,
}

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 850 / ARC9.HUToM

-------------------------- FIREMODES

SWEP.RPM = 1091

-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.3 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.25 -- How long it takes to go from sprinting to being able to fire.

end
