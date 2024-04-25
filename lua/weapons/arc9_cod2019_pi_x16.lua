AddCSLuaFile()
if CLIENT then
    killicon.Add( "arc9_cod2019_pi_x16", "vgui/killicons/cod2019_pi_x16.png", Color(251, 85, 25, 255))
    killicon.Add( "arc9_cod2019_pi_x16_akimbo", "vgui/killicons/cod2019_pi_akimbo_x16.png", Color(251, 85, 25, 255))
end

SWEP.LoadoutImage = "entities/loadout/arc9_cod2019_pi_x16.png"

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_handgun") or "Handguns"

SWEP.PrintName = ARC9:GetPhrase("mw19_weapon_glock") or "X16"

SWEP.Class = ARC9:GetPhrase("mw19_class_weapon_handgun") or "Handgun"
SWEP.Trivia = {
    [ ARC9:GetPhrase("mw19_country") ] = ARC9:GetPhrase("mw19_country_austria"),
    [ ARC9:GetPhrase("mw19_manufacturer") ] = ARC9:GetPhrase("mw19_manufacturer_xrk"),
    [ ARC9:GetPhrase("mw19_caliber") ] = ARC9:GetPhrase("mw19_caliber_45acp"),
    [ ARC9:GetPhrase("mw19_weight") ] = string.format(ARC9:GetPhrase("mw19_weight_val"), 1.1, 1.1 * 2.20),
    [ ARC9:GetPhrase("mw19_weight_projectile") ] = string.format(ARC9:GetPhrase("mw19_weight_projectile_val"), 230),
    -- [ ARC9:GetPhrase("mw19_muzzle_energy") ] = "832 ft/s",
    -- [ ARC9:GetPhrase("mw19_muzzle_velocity") ] = "479 joules"
}

SWEP.Credits = {
    [ ARC9:GetPhrase("mw19_author") ] = "Twilight Sparkle/Firmeteran",
    [ ARC9:GetPhrase("mw19_assets") ] = "Activision/Infinity Ward"
}

SWEP.Description = ARC9:GetPhrase("mw19_weapon_glock_desc") or [[Semi-automatic pistol chambered in .45 ACP ammunition. A reliable fall back when you find yourself in close quarters.]]

SWEP.ViewModel = "models/weapons/cod2019/c_pist_x16.mdl"
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"

SWEP.Slot = 1

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_pist_x16.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-12, 6, -7.5),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-15, 0.5, -5),
    TPIKAng = Angle(-5, 0, 190),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 31 -- Damage done at point blank range
SWEP.DamageMin = 14 -- Damage done at maximum range

SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 7 / ARC9.HUToM -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 22 / ARC9.HUToM -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 2 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.2

SWEP.ImpactForce = 8

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 1240 * 12
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.25

-------------------------- MAGAZINE

SWEP.Ammo = "pistol" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 13 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 10 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 600

SWEP.Firemodes = {
    {
        Mode = 1,
    },
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1

--SWEP.RecoilSeed = nil

SWEP.RecoilPatternDrift = 5

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.1

SWEP.RecoilDissipationRate = 35 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 1 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 1.5

SWEP.RecoilMultCrouch = 0.8
SWEP.RecoilMultMove = 1.25
SWEP.RecoilMultSights = 0.8

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilMultSights = 0.5
SWEP.VisualRecoilPunchSights = 10
SWEP.VisualRecoilPunch = 1.5
SWEP.VisualRecoilUp = 0.3
SWEP.VisualRecoilRoll = 25
SWEP.VisualRecoilSide = 0.2

SWEP.VisualRecoilSpringPunchDamping = 11
SWEP.VisualRecoilDampingConst = 30
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
SWEP.SpreadMultRecoil = 1.1
SWEP.RecoilModifierCap = 2

SWEP.SpreadAddMove = 0.05
--SWEP.SpreadAddMidAir = 0
SWEP.SpreadAddHipFire = 0.015
SWEP.SpreadAddCrouch = -0.01
SWEP.SpreadAddSights = -0.5


-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.2 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.2 -- How long it takes to go from sprinting to being able to fire.

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.15

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 255, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(0.7, 0, 3.3),
    Ang = Angle(0, 0.25, 21),
    Magnification = 1.15,
	CrosshairInSights = false
}

SWEP.IronSightsHook = function(self) -- If any attachments equipped should alter Irons
    local attached = self:GetElements()

    if attached["cod2019_x16_stock"] then
        return {
			Pos = Vector(-3.625, -4, 0.85),
			Ang = Angle(0, 0.1, 0),
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

SWEP.MovingMidPoint = {
    Pos = Vector(0, -0.5, -0.5),
    Ang = Angle(0, 0, 0)
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.MovingPos = Vector(0, -0.5, -0.5)
SWEP.MovingAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-1, -0.5, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.SprintPos = Vector(1, 0, -1)
SWEP.SprintAng = Angle(0, 0, 25)

SWEP.CustomizeAng = Angle(90, -15, 0)
SWEP.CustomizePos = Vector(15, 25, 5.5)
SWEP.CustomizeRotateAnchor = Vector(15, -1, -5.5)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeSnapshotPos = Vector(1.5, -2.5, 0)
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeNoRotate = false

SWEP.PeekMaxFOV = SWEP.ViewModelFOVBase

SWEP.PeekPos = Vector(-3.25, -3.5, -2)
SWEP.PeekAng = Angle(0, 0, -45)

SWEP.PeekPosReloading = Vector(1, 0, -0.5)
SWEP.PeekAngReloading = Angle(0, 0, 0)

SWEP.SprintPosHook = function(wep)
    if wep:HasElement("stock") and wep:HasElement("perk_super_sprint") then
        return Vector(0,0,0)
    end
end

SWEP.SprintAngHook = function(wep)
    if wep:HasElement("stock") and wep:HasElement("perk_super_sprint") then
        return Angle(0,0,0)
    end
end

-------------------------- HoldTypes

SWEP.HoldType = "revolver"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeSights = "revolver"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "AC_muzzle_pistol_fp"
SWEP.AfterShotParticle = "AC_muzzle_smoke_barrel"
SWEP.TracerEffect = "cod2019_tracer_small"
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 4
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_9mm_hr.mdl"
SWEP.ShellSounds = ARC9.COD2019_9mm_Table
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 0.07
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_pist_x16_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_poly_concrete_01.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_poly_concrete_02.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_poly_concrete_03.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_poly_concrete_04.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_poly_concrete_05.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_poly_concrete_06.ogg",
}
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineTime = 0.4
SWEP.DropMagazineQCA = 3
SWEP.DropMagazineAng = Angle(0, -90, -90)

-------------------------- SOUNDS

local path = "weapons/cod2019/x16/"

SWEP.ShootSound = "COD2019.X16.Fire"
SWEP.ShootSoundIndoor = "COD2019.X16.Fire"

SWEP.ShootSoundSilenced = "COD2019.X16.Fire.S"
SWEP.ShootSoundSilencedIndoor = "COD2019.X16.Fire.S"

-- Non-Silenced
SWEP.LayerSound = "Layer_Pistol.Outside"
SWEP.DistantShootSound = "Distant_Pistol.Outside"
-- Inside
SWEP.LayerSoundIndoor = "Layer_Pistol.Inside"
SWEP.DistantShootSoundIndoor = "Distant_Pistol.Inside"
---------------------------------------------------
-- Silenced
SWEP.LayerSoundSilenced = "Layer_ARSUP.Outside"
SWEP.DistantShootSoundSilenced = "Distant_Pistol_Mag_Sup.Outside"
-- Inside
SWEP.LayerSoundSilencedIndoor = "Layer_ARSUP.Inside"
SWEP.DistantShootSoundSilencedIndoor = "Distant_Pistol_Sup.Inside"
---------------------------------------------------

SWEP.EnterSightsSound =  path .. "wfoly_pi_golf21_ads_up.ogg"
SWEP.ExitSightsSound =  path .. "wfoly_pi_golf21_ads_down.ogg"

SWEP.BulletBones = {
	[1] = "j_bullet",
}

SWEP.HideBones  = {
    [1] = "j_mag2",
}

SWEP.TriggerDelay = 0.025 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayCancellable = false
SWEP.TriggerDelayTime = 0.025 -- Time until weapon fires.

SWEP.TriggerDownSound = "weapons/cod2019/x16/weap_golf21_fire_first_plr_01.ogg"
SWEP.TriggerUpSound = "weapons/cod2019/x16/weap_golf21_disconnector_plr_01.ogg"

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
		MinProgress = 0.9,
		PeekProgress = 0.8,
		RefillProgress = 0.575,
		FireASAP = true,
		MagSwapTime = 3.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_golf21_reload_magout_01.ogg", t = 1/30},
			{s = path .. "wfoly_pi_golf21_reload_magin_v2_01.ogg", t = 25/30},
            {s = path .. "wfoly_pi_golf21_reload_magin_v2_02.ogg", t = 31/30},
			{s = path .. "wfoly_pi_golf21_reload_end.ogg", t = 37/30},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.9,
		PeekProgress = 0.775,
		RefillProgress = 0.75,
		FireASAP = true,
		DropMagAt = 0.8,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.75, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_golf21_reload_empty_magout_01.ogg", t = 0/30},
            {s = path .. "wfoly_pi_golf21_reload_empty_raise.ogg", t = 1/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_magin_v2_01.ogg", t = 18/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_magin_v2_02.ogg", t = 25/30},
            {s = path .. "wfoly_pi_golf21_reload_empty_down.ogg", t = 30/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_chamber_01.ogg", t = 35/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_end.ogg", t = 43/30},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.8,
		PeekProgress = 0.75,
		RefillProgress = 0.525,
		FireASAP = true,
		MagSwapTime = 1.5,
		DropMagAt = 0.4,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_golf21_reload_fast_magout_01.ogg", t = 0/30},
			{s = path .. "wfoly_pi_golf21_reload_magin_v2_01.ogg", t = 15/30},
            {s = path .. "wfoly_pi_golf21_reload_magin_v2_02.ogg", t = 20/30},
			{s = path .. "wfoly_pi_golf21_reload_fast_end.ogg", t = 28/30},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.9,
		PeekProgress = 0.775,
		RefillProgress = 0.65,
		FireASAP = true,
		DropMagAt = 0.4,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_golf21_reload_empty_fast_magout_01.ogg", t = 0/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_magin_v2_01.ogg", t = 18/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_magin_v2_02.ogg", t = 22/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_fast_chamber_01.ogg", t = 25/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_fast_end.ogg", t = 32/30},
        },
    },
    ["reload_xmag"] = {
        Source = "reload_xmag",
		MinProgress = 0.9,
		PeekProgress = 0.8,
		RefillProgress = 0.575,
		FireASAP = true,
		MagSwapTime = 3.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_golf21_reload_magout_01.ogg", t = 1/30},
			{s = path .. "wfoly_pi_golf21_reload_magin_v2_01.ogg", t = 25/30},
            {s = path .. "wfoly_pi_golf21_reload_magin_v2_02.ogg", t = 31/30},
			{s = path .. "wfoly_pi_golf21_reload_end.ogg", t = 37/30},
        },
    },
    ["reload_xmag_empty"] = {
        Source = "reload_xmag_empty",
		MinProgress = 0.9,
		PeekProgress = 0.775,
		RefillProgress = 0.75,
		FireASAP = true,
		DropMagAt = 0.8,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.75, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_golf21_reload_empty_magout_01.ogg", t = 0/30},
            {s = path .. "wfoly_pi_golf21_reload_empty_raise.ogg", t = 1/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_magin_v2_01.ogg", t = 18/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_magin_v2_02.ogg", t = 25/30},
            {s = path .. "wfoly_pi_golf21_reload_empty_down.ogg", t = 30/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_chamber_01.ogg", t = 35/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_end.ogg", t = 43/30},
        },
    },
    ["reload_xmag_fast"] = {
        Source = "reload_xmag_fast",
		MinProgress = 0.8,
		PeekProgress = 0.75,
		RefillProgress = 0.525,
		FireASAP = true,
		MagSwapTime = 1.5,
		DropMagAt = 0.47,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_golf21_reload_fast_magout_01.ogg", t = 0/30},
			{s = path .. "wfoly_pi_golf21_reload_magin_v2_01.ogg", t = 15/30},
            {s = path .. "wfoly_pi_golf21_reload_magin_v2_02.ogg", t = 20/30},
			{s = path .. "wfoly_pi_golf21_reload_fast_end.ogg", t = 28/30},
        },
    },
    ["reload_xmag_fast_empty"] = {
        Source = "reload_xmag_fast_empty",
		MinProgress = 0.9,
		PeekProgress = 0.8,
		RefillProgress = 0.575,
		FireASAP = true,
		DropMagAt = 0.47,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_golf21_reload_empty_fast_magout_01.ogg", t = 0/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_magin_v2_01.ogg", t = 18/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_magin_v2_02.ogg", t = 22/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_fast_chamber_01.ogg", t = 25/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_fast_end.ogg", t = 32/30},
        },
    },
    ["reload_xmaglrg"] = {
        Source = "reload_xmaglrg",
		MinProgress = 0.9,
		PeekProgress = 0.8,
		RefillProgress = 0.575,
		FireASAP = true,
		MagSwapTime = 3.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_golf21_reload_magout_01.ogg", t = 0/30},
            {s = path .. "wfoly_pi_golf21_reload_magin_v2_01.ogg", t = 23/30},
            {s = path .. "wfoly_pi_golf21_reload_magin_v2_02.ogg", t = 29/30},
			{s = path .. "wfoly_pi_golf21_reload_end.ogg", t = 35/30},
        },
    },
    ["reload_xmaglrg_empty"] = {
        Source = "reload_xmaglrg_empty",
		MinProgress = 0.9,
		PeekProgress = 0.775,
		RefillProgress = 0.75,
		FireASAP = true,
		DropMagAt = 0.8,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.75, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_golf21_reload_empty_magout_01.ogg", t = 0/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_down.ogg", t = 1/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_magin_v2_01.ogg", t = 16/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_magin_v2_02.ogg", t = 24/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_raise.ogg", t = 29/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_chamber_01.ogg", t = 36/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_end.ogg", t = 47/30},
        },
    },
    ["reload_xmaglrg_fast"] = {
        Source = "reload_xmaglrg_fast",
		MinProgress = 0.8,
		PeekProgress = 0.75,
		RefillProgress = 0.525,
		FireASAP = true,
		MagSwapTime = 1.5,
		DropMagAt = 0.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_golf21_reload_fast_magout_01.ogg", t = 0/30},
            {s = path .. "wfoly_pi_golf21_reload_magin_v2_01.ogg", t = 15/30},
            {s = path .. "wfoly_pi_golf21_reload_magin_v2_02.ogg", t = 21/30},
			{s = path .. "wfoly_pi_golf21_reload_fast_end.ogg", t = 27/30},
        },
    },
    ["reload_xmaglrg_fast_empty"] = {
        Source = "reload_xmaglrg_fast_empty",
		MinProgress = 0.9,
		PeekProgress = 0.8,
		RefillProgress = 0.575,
		FireASAP = true,
		DropMagAt = 0.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_golf21_reload_empty_magout_01.ogg", t = 1/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_down.ogg", t = 9/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_magin_v2_01.ogg", t = 17/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_magin_v2_02.ogg", t = 21/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_fast_chamber_01.ogg", t = 23/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_fast_end.ogg", t = 32/30},
        },
    },
    ["ready"] = {
        Source = "draw",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_pi_golf21_first_raise_open_slide.ogg", t = 0/30},
			{s = path .. "wfoly_pi_golf21_first_raise_slide_release.ogg", t = 19/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
		MinProgress = 0.2,
        FireASAP = true,
        EventTable = {
            {s = path .. "wfoly_pi_golf21_raise.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            {s = path .. "wfoly_pi_golf21_drop.ogg", t = 0/30},
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
		Time = 0.25,
		NoStatAffectors = true
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
		Time = 0.25,
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
		NoStatAffectors = true
    },
    ["super_sprint_idle"] = {
        Source = "super_sprint",
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 1 },
        },
    },
    ["super_sprint_in"] = {
        Source = "super_sprint_in",
		Time = 1.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.35, lhik = 1, rhik = 1 },
            { t = 1, lhik = 0, rhik = 1 },
        },
    },
    ["super_sprint_out"] = {
        Source = "super_sprint_out",
		Time = 1.5,
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
            {s = path .. "wfoly_pi_golf21_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_pi_golf21_inspect_02.ogg", t = 34/30},
			{s = path .. "wfoly_pi_golf21_inspect_03.ogg", t = 58/30},
			{s = path .. "wfoly_pi_golf21_inspect_04.ogg", t = 111/30},
        },
    },
    ["bash"] = {
        Source = {"melee","melee2","melee3"},
    },

-- Stock Anims
	["stock_enter_sights"] = {
		Source = "stock_idle",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
	},
    ["stock_fire"] = {
        Source = "stock_shoot1",
    },
	["stock_reload"] = {
        Source = "stock_reload_short",
		MinProgress = 0.9,
		PeekProgress = 0.8,
		RefillProgress = 0.575,
		FireASAP = true,
		MagSwapTime = 3.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_golf21_reload_magout_01.ogg", t = 1/30},
			{s = path .. "wfoly_pi_golf21_reload_magin_v2_01.ogg", t = 25/30},
            {s = path .. "wfoly_pi_golf21_reload_magin_v2_02.ogg", t = 31/30},
			{s = path .. "wfoly_pi_golf21_reload_end.ogg", t = 37/30},
        },
    },
    ["stock_reload_empty"] = {
        Source = "stock_reload",
		MinProgress = 0.9,
		PeekProgress = 0.775,
		RefillProgress = 0.75,
		FireASAP = true,
		DropMagAt = 0.8,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.75, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_golf21_reload_empty_magout_01.ogg", t = 0/30},
            {s = path .. "wfoly_pi_golf21_reload_empty_raise.ogg", t = 1/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_magin_v2_01.ogg", t = 18/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_magin_v2_02.ogg", t = 25/30},
            {s = path .. "wfoly_pi_golf21_reload_empty_down.ogg", t = 30/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_chamber_01.ogg", t = 35/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_end.ogg", t = 43/30},
        },
    },
    ["stock_reload_fast"] = {
        Source = "stock_reload_fast",
		MinProgress = 0.8,
		PeekProgress = 0.75,
		RefillProgress = 0.525,
		FireASAP = true,
		MagSwapTime = 1.5,
		DropMagAt = 0.4,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_golf21_reload_fast_magout_01.ogg", t = 0/30},
			{s = path .. "wfoly_pi_golf21_reload_magin_v2_01.ogg", t = 15/30},
            {s = path .. "wfoly_pi_golf21_reload_magin_v2_02.ogg", t = 20/30},
			{s = path .. "wfoly_pi_golf21_reload_fast_end.ogg", t = 28/30},
        },
    },
    ["stock_reload_fast_empty"] = {
        Source = "stock_reload_fast_empty",
		MinProgress = 0.9,
		PeekProgress = 0.775,
		RefillProgress = 0.65,
		FireASAP = true,
		DropMagAt = 0.4,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_golf21_reload_empty_fast_magout_01.ogg", t = 0/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_magin_v2_01.ogg", t = 18/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_magin_v2_02.ogg", t = 22/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_fast_chamber_01.ogg", t = 25/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_fast_end.ogg", t = 32/30},
        },
    },
    ["stock_reload_xmag"] = {
        Source = "stock_reload_xmag",
		MinProgress = 0.9,
		PeekProgress = 0.8,
		RefillProgress = 0.575,
		FireASAP = true,
		MagSwapTime = 3.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_golf21_reload_magout_01.ogg", t = 1/30},
			{s = path .. "wfoly_pi_golf21_reload_magin_v2_01.ogg", t = 25/30},
            {s = path .. "wfoly_pi_golf21_reload_magin_v2_02.ogg", t = 31/30},
			{s = path .. "wfoly_pi_golf21_reload_end.ogg", t = 37/30},
        },
    },
    ["stock_reload_xmag_empty"] = {
        Source = "stock_reload_xmag_empty",
		MinProgress = 0.9,
		PeekProgress = 0.775,
		RefillProgress = 0.75,
		FireASAP = true,
		DropMagAt = 0.8,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.75, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_golf21_reload_empty_magout_01.ogg", t = 0/30},
            {s = path .. "wfoly_pi_golf21_reload_empty_raise.ogg", t = 1/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_magin_v2_01.ogg", t = 18/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_magin_v2_02.ogg", t = 25/30},
            {s = path .. "wfoly_pi_golf21_reload_empty_down.ogg", t = 30/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_chamber_01.ogg", t = 35/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_end.ogg", t = 43/30},
        },
    },
    ["stock_reload_xmag_fast"] = {
        Source = "stock_reload_xmag_fast",
		MinProgress = 0.8,
		PeekProgress = 0.75,
		RefillProgress = 0.525,
		FireASAP = true,
		MagSwapTime = 1.5,
		DropMagAt = 0.47,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_golf21_reload_fast_magout_01.ogg", t = 0/30},
			{s = path .. "wfoly_pi_golf21_reload_magin_v2_01.ogg", t = 15/30},
            {s = path .. "wfoly_pi_golf21_reload_magin_v2_02.ogg", t = 20/30},
			{s = path .. "wfoly_pi_golf21_reload_fast_end.ogg", t = 28/30},
        },
    },
    ["stock_reload_xmag_fast_empty"] = {
        Source = "stock_reload_xmag_fast_empty",
		MinProgress = 0.9,
		PeekProgress = 0.8,
		RefillProgress = 0.575,
		FireASAP = true,
		DropMagAt = 0.47,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_golf21_reload_empty_fast_magout_01.ogg", t = 0/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_magin_v2_01.ogg", t = 18/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_magin_v2_02.ogg", t = 22/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_fast_chamber_01.ogg", t = 25/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_fast_end.ogg", t = 32/30},
        },
    },
    ["stock_reload_xmaglrg"] = {
        Source = "stock_reload_xmaglrg",
		MinProgress = 0.9,
		PeekProgress = 0.8,
		RefillProgress = 0.575,
		FireASAP = true,
		MagSwapTime = 3.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_golf21_reload_magout_01.ogg", t = 0/30},
            {s = path .. "wfoly_pi_golf21_reload_magin_v2_01.ogg", t = 23/30},
            {s = path .. "wfoly_pi_golf21_reload_magin_v2_02.ogg", t = 29/30},
			{s = path .. "wfoly_pi_golf21_reload_end.ogg", t = 35/30},
        },
    },
    ["stock_reload_xmaglrg_empty"] = {
        Source = "stock_reload_xmaglrg_empty",
		MinProgress = 0.9,
		PeekProgress = 0.775,
		RefillProgress = 0.75,
		FireASAP = true,
		DropMagAt = 0.8,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.75, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_golf21_reload_empty_magout_01.ogg", t = 0/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_down.ogg", t = 1/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_magin_v2_01.ogg", t = 16/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_magin_v2_02.ogg", t = 24/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_raise.ogg", t = 29/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_chamber_01.ogg", t = 36/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_end.ogg", t = 47/30},
        },
    },
    ["stock_reload_xmaglrg_fast"] = {
        Source = "stock_reload_xmaglrg_fast",
		MinProgress = 0.8,
		PeekProgress = 0.75,
		RefillProgress = 0.525,
		FireASAP = true,
		MagSwapTime = 1.5,
		DropMagAt = 0.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_golf21_reload_fast_magout_01.ogg", t = 0/30},
            {s = path .. "wfoly_pi_golf21_reload_magin_v2_01.ogg", t = 15/30},
            {s = path .. "wfoly_pi_golf21_reload_magin_v2_02.ogg", t = 21/30},
			{s = path .. "wfoly_pi_golf21_reload_fast_end.ogg", t = 27/30},
        },
    },
    ["stock_reload_xmaglrg_fast_empty"] = {
        Source = "stock_reload_xmaglrg_fast_empty",
		MinProgress = 0.9,
		PeekProgress = 0.8,
		RefillProgress = 0.575,
		FireASAP = true,
		DropMagAt = 0.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_golf21_reload_empty_magout_01.ogg", t = 1/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_down.ogg", t = 9/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_magin_v2_01.ogg", t = 17/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_magin_v2_02.ogg", t = 21/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_fast_chamber_01.ogg", t = 23/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_fast_end.ogg", t = 32/30},
        },
    },
    ["stock_ready"] = {
        Source = "stock_draw",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_pi_golf21_first_raise_open_slide.ogg", t = 0/30},
			{s = path .. "wfoly_pi_golf21_first_raise_slide_release.ogg", t = 19/30},
        },
    },
    ["stock_draw"] = {
        Source = "stock_draw_short",
		MinProgress = 0.2,
        FireASAP = true,
        EventTable = {
            {s = path .. "wfoly_pi_golf21_raise.ogg", t = 0/30},
        },
    },
    ["stock_holster"] = {
        Source = "stock_holster",
        EventTable = {
            {s = path .. "wfoly_pi_golf21_drop.ogg", t = 0/30},
        },
    },
    ["stock_idle"] = {
        Source = "stock_idle",
    },
    ["stock_idle_sprint"] = {
        Source = "stock_sprint",
    },
    ["stock_exit_sprint"] = {
        Source = "stock_sprint_out",
		NoStatAffectors = true
    },
    ["stock_enter_sprint"] = {
        Source = "stock_sprint_in",
		NoStatAffectors = true
    },
    ["stock_inspect"] = {
        Source = "stock_lookat01",
        MinProgress = 0.1,
        FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_pi_golf21_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_pi_golf21_inspect_02.ogg", t = 34/30},
			{s = path .. "wfoly_pi_golf21_inspect_03.ogg", t = 58/30},
			{s = path .. "wfoly_pi_golf21_inspect_04.ogg", t = 111/30},
        },
    },
    ["stock_bash"] = {
        Source = {"stock_melee","stock_melee2","stock_melee3"},
    },
}

-------------------------- ATTACHMENTS

--- Stock ---
local Translate_Stock = {
	["enter_sights"] = "stock_enter_sights",
    ["fire"] = "stock_fire",
    ["dryfire"] = "stock_dryfire",
    ["reload"] = "stock_reload",
    ["reload_empty"] = "stock_reload_empty",
	["ready"] = "stock_ready",
	["draw"] = "stock_draw",
	["holster"] = "stock_holster",
	["idle"] = "stock_idle",
	["idle_sprint"] = "stock_idle_sprint",
    ["enter_sprint"] = "stock_enter_sprint",
    ["exit_sprint"] = "stock_exit_sprint",
	["inspect"] = "stock_inspect",
    ["bash"] = "stock_bash",
}
local Translate_Stock_Fast = {
	["enter_sights"] = "stock_enter_sights",
    ["fire"] = "stock_fire",
    ["dryfire"] = "stock_dryfire",
    ["reload"] = "stock_reload_fast",
    ["reload_empty"] = "stock_reload_fast_empty",
	["ready"] = "stock_ready",
	["draw"] = "stock_draw",
	["holster"] = "stock_holster",
	["idle"] = "stock_idle",
	["idle_sprint"] = "stock_idle_sprint",
    ["enter_sprint"] = "stock_enter_sprint",
    ["exit_sprint"] = "stock_exit_sprint",
	["inspect"] = "stock_inspect",
    ["bash"] = "stock_bash",
}

--- 26 Round Mags ---
local Translate_XMag = {
    ["reload"] = "reload_xmag",
    ["reload_empty"] = "reload_xmag_empty",
}
local Translate_XMag_Fast = {
    ["reload"] = "reload_xmag_fast",
    ["reload_empty"] = "reload_xmag_fast_empty",
}
local Translate_XMagslrg = {
    ["reload"] = "reload_xmaglrg",
    ["reload_empty"] = "reload_xmaglrg_empty",
}
local Translate_XMagslrg_Fast = {
    ["reload"] = "reload_xmaglrg_fast",
    ["reload_empty"] = "reload_xmaglrg_fast_empty",
}

local Translate_Stock_XMag = {
    ["reload"] = "stock_reload_xmag",
    ["reload_empty"] = "stock_reload_xmag_empty",
}
local Translate_Stock_XMag_Fast = {
    ["reload"] = "stock_reload_xmag_fast",
    ["reload_empty"] = "stock_reload_xmag_fast_empty",
}
local Translate_Stock_XMagslrg = {
    ["reload"] = "stock_reload_xmaglrg",
    ["reload_empty"] = "stock_reload_xmaglrg_empty",
}
local Translate_Stock_XMagslrg_Fast = {
    ["reload"] = "stock_reload_xmaglrg_fast",
    ["reload_empty"] = "stock_reload_xmaglrg_fast_empty",
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
    local xmagslrg = wep:HasElement("mag_xmaglrg") or wep:HasElement("mag_xmagslrg")
	local stock = wep:HasElement("cod2019_x16_stock")

	local tanim = {
		sprint = Translate_TacSprint[anim],
		fast = Translate_Fast[anim],
		xmag = Translate_XMag[anim],
		xmagf = Translate_XMag_Fast[anim],
		xmagl = Translate_XMagslrg[anim],
		xmaglf = Translate_XMagslrg_Fast[anim],
		
		stock = {
			base = Translate_Stock[anim],
			fast = Translate_Stock_Fast[anim],
			xmag = Translate_Stock_XMag[anim],
			xmagf = Translate_Stock_XMag_Fast[anim],
			xmagl = Translate_Stock_XMagslrg[anim],
			xmaglf = Translate_Stock_XMagslrg_Fast[anim],
			},
		}

    if super_sprint and tanim.sprint then
        return tanim.sprint
    end
	
	if !stock then
		if speedload then
			if xmag and tanim.xmagf then return tanim.xmagf
			elseif xmagslrg and tanim.xmaglf then return tanim.xmaglf
			end
			if tanim.fast then return tanim.fast end
		else
			if xmag and tanim.xmag then return tanim.xmag
			elseif xmagslrg and tanim.xmagl then return tanim.xmagl
			end
			if tanim.base then return tanim.base end
		end
	elseif stock then
		if speedload then
			if xmag and tanim.stock.xmagf then return tanim.stock.xmagf
			elseif xmagslrg and tanim.stock.xmaglf then return tanim.stock.xmaglf
			end
			if tanim.stock.fast then return tanim.stock.fast end
		else
			if xmag and tanim.stock.xmag then return tanim.stock.xmag
			elseif xmagslrg and tanim.stock.xmagl then return tanim.stock.xmagl
			end
			if tanim.stock.base then return tanim.stock.base end
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
    ["cod2019_x16_stock"] = {
		CustomizeAng = Angle(90, 0, 0),
		CustomizePos = Vector(12, 25, 4.5),
		CustomizeRotateAnchor = Vector(12, -3.5, -4.5),
		SprintPos = Vector(1, 2, -2),
		-- SprintAng = Angle(0, 0, 25),
		PeekPos = Vector(0, -3, -5),
		PeekAng = Angle(0, 0, -45),
		ActivePos = Vector(-0.15, -0.5, -0.5),
		ActiveAng = Angle(0, 0, 0),
		MovingPos = Vector(-1, -0.8, -1),
		MovingAng = Angle(0, 0, -5),
    },
    ["cod2019_view_alt_pistol"] = {
		ActivePos = Vector(3, -1.5, 2),
		ActiveAng = Angle(0, 0, 20),
		MovingPos = Vector(-1,-2,-1),
		MovingAng = Angle(0,0,-8),
		CrouchPos = Vector(-1.2, 0, -1),
		CrouchAng = Angle(0, 0, -10),
		ReloadPos = Vector(0,0,0),
		ReloadAng = Angle(0,0,0)
    },
    ["cod2019_griptape_01"] = {
    Model = "models/weapons/cod2019/attachs/weapons/x16/attachment_vm_pi_golf21_pistolgrip_tape.mdl",
    },
    ["cod2019_griptape_02"] = {
    Model = "models/weapons/cod2019/attachs/weapons/x16/attachment_vm_pi_golf21_pistolgrip_tape.mdl",
    },
    ["cod2019_griptape_03"] = {
    Model = "models/weapons/cod2019/attachs/weapons/x16/attachment_vm_pi_golf21_pistolgrip_tape.mdl",
    },
    ["cod2019_trigger_light"] = {
    Model = "models/weapons/cod2019/attachs/weapons/x16/attachment_vm_pi_golf21_trigcust.mdl",
    },
    ["cod2019_trigger_heavy"] = {
    Model = "models/weapons/cod2019/attachs/weapons/x16/attachment_vm_pi_golf21_trigcust02.mdl",
    },
    ["cod2019_trigger_match"] = {
    Model = "models/weapons/cod2019/attachs/weapons/x16/attachment_vm_pi_golf21_trigcust03.mdl",
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
    ["slide_none"] = {
        Bodygroups = {
            {2,1},
        },
    },
    ["sight_mount"] = {
        Bodygroups = {
            {3,1},
        },
    },
    ["trigger_none"] = {
        Bodygroups = {
            {4,1},
        },
    },
}

SWEP.Attachments = {
    { -- 1
        PrintName = ARC9:GetPhrase("mw19_category_muzzle"),
        Category = "cod2019_muzzle_pistols",
        DefaultIcon = Material("entities/defattachs/muzzle-ar.png", "mips smooth"),
		Bone = "tag_silencer",
        Pos = Vector(0, 0, 0),
    },
    { -- 2
        PrintName = ARC9:GetPhrase("mw19_category_barrel"),
		DefaultIcon = Material("entities/defattachs/barrel-ar.png", "mips smooth"),
        Category = "cod2019_x16_slide",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(-4, 0, 0),
    },
    { -- 3
        PrintName = ARC9:GetPhrase("mw19_category_laser"),
		DefaultIcon = Material("entities/defattachs/laser-ar.png", "mips smooth"),
        Category = {"cod2019_tac_pistols","cod2019_grip_pistols"},
        Bone = "tag_laser_attach",
        Pos = Vector(0, 0, 0),
    },
    { -- 4
        PrintName = ARC9:GetPhrase("mw19_category_optic"),
		DefaultIcon = Material("entities/defattachs/optic.png", "mips smooth"),
        Bone = "tag_reflex",
        Pos = Vector(1, 0, 0),
        Category = {"cod2019_optics_pistols_alt"},
		InstalledElements = {"sight_mount"},
    },
    { -- 5
        PrintName = ARC9:GetPhrase("mw19_category_triggeraction"),
		-- DefaultIcon = Material("entities/defattachs/stock-ar.png", "mips smooth"),
        Category = {"cod2019_trigger"},
        Bone = "j_trigger",
        Pos = Vector(0, 0, 0),
		InstalledElements = {"trigger_none"},
    },
    { -- 6
        PrintName = ARC9:GetPhrase("mw19_category_magazine"),
		DefaultIcon = Material("entities/defattachs/magazine-ar.png", "mips smooth"),
		Bone = "tag_mag_attach",
        Category = {"cod2019_mag","cod2019_x16_mag"},
        Pos = Vector(0, 0, 0),
    },
    { -- 7
        PrintName = ARC9:GetPhrase("mw19_category_ammo"),
		DefaultIcon = Material("arc9/def_att_icons/ammotype.png", "mips smooth"),
        Bone = "tag_mag_attach",
		Category = {"cod2019_ammo"},
		Pos = Vector(-1, 0, 0),
    },
    { -- 8
        PrintName = ARC9:GetPhrase("mw19_category_reargrip") .. " / " .. ARC9:GetPhrase("mw19_category_stock"),
		DefaultIcon = Material("entities/defattachs/reargrip-ar.png", "mips smooth"),
        Category = "cod2019_pistolgrip",
        Bone = "tag_pistolgrip_attach",
        Pos = Vector(0, 0, 0),
		MergeSlots = {19},
    },
    { -- 9
        PrintName = ARC9:GetPhrase("mw19_category_perk"),
        Category = {"cod2019_perks","cod2019_perks_soh","cod2019_perks_ss"},
        Bone = "tag_pistol_attachments",
        Pos = Vector(3, 0, -1.5),
    },
	
	-- Unofficial
    { -- 10
        PrintName = ARC9:GetPhrase("mw19_category_receiver"),
        Category = "cod2019_x16_receiver",
        Bone = "tag_pistol_attachments",
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(0, 0, 1),
		Hidden = false,
    },
	
	-- Cosmetics
    { -- 11
        PrintName = ARC9:GetPhrase("mw19_category_skins"),
        Bone = "tag_cosmetic",
        Pos = Vector(3, 0, 1),
        Category = "cod2019_skins_x16",
		CosmeticOnly = true,
    },
    { -- 12
        PrintName = ARC9:GetPhrase("mw19_category_camouflage"),
        Category = {"universal_camo"},
        Bone = "tag_cosmetic",
        Pos = Vector(2, 0, 1),
        CosmeticOnly = true,
    },
    { -- 13
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/pist_x16_decal_a.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(1, 0, 1),
    },
    { -- 14
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/pist_x16_decal_b.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(0, 0, 1),
    },
    { -- 15
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/pist_x16_decal_c.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-1, 0, 1),
    },
    { -- 16
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/pist_x16_decal_d.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-2, 0, 1),
    },
    { -- 17
        PrintName = ARC9:GetPhrase("mw19_category_charm"),
        CosmeticOnly = true,
        Category = {"charm"},
        Bone = "tag_cosmetic",
        Pos = Vector(0.5, 0, 0),
		Icon_Offset = Vector(-3.5, 0, 1),
		Scale = 1,
    },
    { -- 18
        PrintName = ARC9:GetPhrase("mw19_category_stats"),
        Category = "killcounter",
        Bone = "tag_weapon",
        Pos = Vector(-4.5, -0.55, 1.4),
		Icon_Offset = Vector(-4.25, 0.05, 2),
		CosmeticOnly = true,
    },
    { -- 19
        PrintName = ARC9:GetPhrase("mw19_category_stock"),
		DefaultIcon = Material("arc9/def_att_icons/stock_ak.png", "mips smooth"),
        Category = "cod2019_x16_stock",
        Bone = "tag_stock_attach",
        Pos = Vector(0, 0, 0),
		Hidden = true,
    },
    { -- 20
        PrintName = ARC9:GetPhrase("mw19_category_view"),
        Category = "cod2019_pistols_view",
        Bone = "tag_cosmetic",
        Pos = Vector(-5, 0, 1),
		CosmeticOnly = false,
		ExcludeElements = {"cod2019_x16_stock"},
    },
}

SWEP.GripPoseParam = 4.6
SWEP.GripPoseParam2 = 0.6

-- Warzone-esque Stats; Add here to change only when using Warzone Stats variable.
if GetConVar("arc9_mw19_stats_warzone"):GetBool() then

-------------------------- DAMAGE PROFILE
SWEP.DamageMax = 36
SWEP.DamageMin = 30

SWEP.RangeMin = 12 / ARC9.HUToM
SWEP.RangeMax = 21 / ARC9.HUToM

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 2,
    [HITGROUP_CHEST] = 1.175,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 0.925,
    [HITGROUP_RIGHTARM] = 0.925,
    [HITGROUP_LEFTLEG] = 0.925,
    [HITGROUP_RIGHTLEG] = 0.925,
}

-------------------------- PHYS BULLET BALLISTICS
SWEP.PhysBulletMuzzleVelocity = 375 / ARC9.HUToM

-------------------------- FIREMODES
SWEP.RPM = 300

-------------------------- HANDLING
SWEP.AimDownSightsTime = 0.15
SWEP.SprintToFireTime = 0.162

end
