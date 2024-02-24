AddCSLuaFile()
if CLIENT then
    killicon.Add( "arc9_cod2019_sm_bizon", "vgui/killicons/cod2019_sm_bizon.png", Color(251, 85, 25, 255))
end

SWEP.LoadoutImage = "entities/loadout/arc9_cod2019_sm_bizon.png"

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_smg") or "Submachine Guns"

SWEP.PrintName = ARC9:GetPhrase("mw19_weapon_pp19") or "PP19 Bizon"

SWEP.Class = ARC9:GetPhrase("mw19_class_weapon_smg") or "Submachine Gun"
SWEP.Trivia = {
    [ ARC9:GetPhrase("mw19_country") ] = ARC9:GetPhrase("mw19_country_russia"),
    [ ARC9:GetPhrase("mw19_caliber") ] = "9×18mm Makarov",
    [ ARC9:GetPhrase("mw19_weight") ] = "2.1 kg",
    [ ARC9:GetPhrase("mw19_weight_projectile") ] = "95 gr",
    [ ARC9:GetPhrase("mw19_muzzle_energy") ] = "1,050 ft/s",
    [ ARC9:GetPhrase("mw19_muzzle_velocity") ] = "315 joules"
}

SWEP.Credits = {
    [ ARC9:GetPhrase("mw19_author") ] = "Twilight Sparkle/Firmeteran",
    [ ARC9:GetPhrase("mw19_assets") ] = "Activision/Infinity Ward"
}

SWEP.Description = ARC9:GetPhrase("mw19_weapon_pp19_desc") or [[Well-balanced automatic submachine gun with a high capacity helical magazine.]]

SWEP.ViewModel = "models/weapons/cod2019/c_smg_bizon.mdl"
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_smg_bizon.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-12, 6, -7.5),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-6, 5, -1.8),
    TPIKAng = Angle(-9, 0, 175),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 30 -- Damage done at point blank range
SWEP.DamageMin = 17 -- Damage done at maximum range

SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 900 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 4000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 11 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.15

SWEP.ImpactForce = 11

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 1312 * 12
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.15

-------------------------- MAGAZINE

SWEP.Ammo = "smg1" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 64 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 10 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 610

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
		-- RunawayBurst = true,
		-- PostBurstDelay = 0.25
    -- },
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1.2

SWEP.RecoilSeed = 36387

SWEP.RecoilPatternDrift = 5

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.1
SWEP.RecoilRandomSide = 0.1

SWEP.RecoilDissipationRate = 25 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 0.5 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 1.7

SWEP.RecoilMultCrouch = 0.8

SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.85

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilPunch = 1.5
SWEP.VisualRecoilUp = 0.3

SWEP.VisualRecoilMultSights = 0.4
SWEP.VisualRecoilPunchSights = 15
SWEP.VisualRecoilRollSights = 5
SWEP.VisualRecoilSideSights = 0
SWEP.VisualRecoilUpSights = 0

SWEP.VisualRecoilRoll = 25
SWEP.VisualRecoilSide = -0.3

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
SWEP.SpreadMultRecoil = 1.2
SWEP.RecoilModifierCap = 1
SWEP.RecoilModifierCapSights = 0

SWEP.SpreadMultMove = 2
--SWEP.SpreadAddMidAir = 0
SWEP.SpreadAddHipFire = 0.015
SWEP.SpreadAddCrouch = -0.03
SWEP.SpreadAddSights = -0.5


-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.3 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.5 -- How long it takes to go from sprinting to being able to fire.

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
    Pos = Vector(-3.2, -3, 0.5),
    Ang = Angle(-0.3, -0.6, -3),
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
SWEP.CustomizePos = Vector(15, 30, 3)
SWEP.CustomizeRotateAnchor = Vector(15, -2.25, -4)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeSnapshotPos = Vector(-1, 5, 5)
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeNoRotate = false

SWEP.PeekPos = Vector(-1, 3, -3.5)
SWEP.PeekAng = Angle(0, 0, -45)

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

SWEP.MuzzleParticle = "AC_muzzle_rifle_fp"
SWEP.AfterShotParticle = "AC_muzzle_smoke_barrel"
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 4
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_9mm_hr.mdl"
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 0.07
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)
SWEP.ShellSounds = ARC9.COD2019_9mm_Table

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_smg_bizon_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
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
SWEP.DropMagazineAng = Angle(0, -90, 0)

-------------------------- SOUNDS

local path = "weapons/cod2019/bizon/"

SWEP.ShootSound = "COD2019.Bizon.Fire"
SWEP.ShootSoundIndoor = "COD2019.Bizon.Fire"

SWEP.ShootSoundSilenced = "COD2019.Bizon.Fire.S"
SWEP.ShootSoundSilencedIndoor = "COD2019.Bizon.Fire.S"

-- Non-Silenced Outside
SWEP.LayerSound = "Layer_Pistol.Outside"
SWEP.DistantShootSound = "Distant_SMG.Outside"
-- Inside
SWEP.LayerSoundIndoor = "Layer_Pistol.Inside"
SWEP.DistantShootSoundIndoor = "Distant_SMG.Inside"
---------------------------------------------------
-- Silenced Outside
SWEP.LayerSoundSilenced = "Layer_ARSUP.Outside"
SWEP.DistantShootSoundSilenced = "Distant_SMG_Sup.Outside"
-- Inside
SWEP.LayerSoundSilencedIndoor = "Layer_ARSUP.Inside"
SWEP.DistantShootSoundSilencedIndoor = "Distant_Pistol_Sup.Inside"
---------------------------------------------------

SWEP.EnterSightsSound = path .. "weap_sm_beta_ads_up.ogg"
SWEP.ExitSightsSound = path .. "weap_sm_beta_ads_down.ogg"

SWEP.BulletBones = {
    [1] = "j_bullet01",
    [2] = "j_bullet02",
	[3] = "j_bullet03",
	[4] = "j_bullet04",
}

SWEP.HideBones  = {
    [1] = "j_mag2",
}

SWEP.TriggerDelay = 0.015 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayCancellable = false
SWEP.TriggerDelayTime = 0.015 -- Time until weapon fires.

SWEP.TriggerDownSound = "weapons/cod2019/bizon/weap_beta_fire_first_plr_01.ogg"
SWEP.TriggerUpSound = "weapons/cod2019/bizon/weap_beta_disconnector_plr_01.ogg"

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
		MinProgress = 0.85,
		FireASAP = true,
		MagSwapTime = 3.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.2, lhik = 0, rhik = 1 },
            { t = 0.7, lhik = 0, rhik = 1 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sm_beta_reload_start.ogg", t = 0.067},
			{s = path .. "wfoly_plr_sm_beta_reload_magout_01.ogg", t = 0.167},
            {s = path .. "wfoly_plr_sm_beta_reload_rotate.ogg", t = 0.433},
			{s = path .. "wfoly_plr_sm_beta_reload_magin_v2_01.ogg", t = 1.2},
			{s = path .. "wfoly_plr_sm_beta_reload_magin_v2_02.ogg", t = 1.633},
			{s = path .. "wfoly_plr_sm_beta_reload_end.ogg", t = 1.667},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.9,
		FireASAP = true,
		DropMagAt = 0.8,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.2, lhik = 0, rhik = 1 },
            { t = 0.7, lhik = 0, rhik = 1 },
            { t = 0.95, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sm_beta_reload_empty_start.ogg", t = 0.033},
			{s = path .. "wfoly_plr_sm_beta_reload_empty_magout_01.ogg", t = 0.267},
            {s = path .. "wfoly_plr_sm_beta_reload_empty_rotate.ogg", t = 0.867},
			{s = path .. "wfoly_plr_sm_beta_reload_empty_magin_v2_01.ogg", t = 1.2},
			{s = path .. "wfoly_plr_sm_beta_reload_empty_magin_v2_02.ogg", t = 1.633},
			{s = path .. "wfoly_plr_sm_beta_reload_empty_charge_01.ogg", t = 2.0},
			{s = path .. "wfoly_plr_sm_beta_reload_empty_end.ogg", t = 2.033},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.85,
		FireASAP = true,
		MagSwapTime = 1.5,
		DropMagAt = 0.7,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.2, lhik = 0, rhik = 1 },
            { t = 0.7, lhik = 0, rhik = 1 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sm_beta_reload_fast_start.ogg", t = 0.0},
			{s = path .. "wfoly_plr_sm_beta_reload_fast_magout_01.ogg", t = 0.3},
            {s = path .. "wfoly_plr_sm_beta_reload_fast_rotate.ogg", t = 0.7},
			{s = path .. "wfoly_plr_sm_beta_reload_fast_magin_v2_01.ogg", t = 0.833},
			{s = path .. "wfoly_plr_sm_beta_reload_fast_magin_v2_02.ogg", t = 1.133},
			{s = path .. "wfoly_plr_sm_beta_reload_fast_end.ogg", t = 1.233},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.9,
		FireASAP = true,
		MagSwapTime = 1.5,
		DropMagAt = 0.7,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.2, lhik = 0, rhik = 1 },
            { t = 0.7, lhik = 0, rhik = 1 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sm_beta_reload_empty_fast_start.ogg", t = 0.0},
			{s = path .. "wfoly_plr_sm_beta_reload_empty_fast_magout_01.ogg", t = 0.233},
            {s = path .. "wfoly_plr_sm_beta_reload_empty_fast_rotate.ogg", t = 0.7},
			{s = path .. "wfoly_plr_sm_beta_reload_empty_fast_magin_v2_01.ogg", t = 0.833},
			{s = path .. "wfoly_plr_sm_beta_reload_empty_fast_magin_v2_02.ogg", t = 1.167},
			{s = path .. "wfoly_plr_sm_beta_reload_empty_fast_charge_01.ogg", t = 1.45},
			{s = path .. "wfoly_plr_sm_beta_reload_empty_fast_end.ogg", t = 1.53},
        },
    },
    ["reload_xmag"] = {
        Source = "reload_xmag",
		MinProgress = 0.85,
		FireASAP = true,
		MagSwapTime = 3.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.2, lhik = 0, rhik = 1 },
            { t = 0.7, lhik = 0, rhik = 1 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sm_beta_reload_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sm_beta_reload_rotate.ogg", t = 7/30},
			{s = path .. "wfoly_plr_sm_beta_reload_magout_01.ogg", t = 7/30},
			{s = path .. "wfoly_plr_sm_beta_reload_magin_v2_01.ogg", t = 35/30},
			{s = path .. "wfoly_plr_sm_beta_reload_magin_v2_02.ogg", t = 49/30},
			{s = path .. "wfoly_plr_sm_beta_reload_end.ogg", t = 49/30},
        },
    },
    ["reload_xmag_empty"] = {
        Source = "reload_xmag_empty",
		MinProgress = 0.9,
		FireASAP = true,
		DropMagAt = 0.8,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.2, lhik = 0, rhik = 1 },
            { t = 0.7, lhik = 0, rhik = 1 },
            { t = 0.95, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sm_beta_reload_empty_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sm_beta_reload_empty_rotate.ogg", t = 5/30},
			{s = path .. "wfoly_plr_sm_beta_reload_empty_magout_01.ogg", t = 6/30},
			{s = path .. "wfoly_plr_sm_beta_reload_empty_magin_v2_01.ogg", t = 36/30},
			{s = path .. "wfoly_plr_sm_beta_reload_empty_magin_v2_02.ogg", t = 50/30},
			{s = path .. "wfoly_plr_sm_beta_reload_empty_charge_01.ogg", t = 61/30},
			{s = path .. "wfoly_plr_sm_beta_reload_empty_end.ogg", t = 66/30},
        },
    },
    ["reload_xmag_fast"] = {
        Source = "reload_xmag_fast",
		MinProgress = 0.85,
		FireASAP = true,
		MagSwapTime = 1.5,
		DropMagAt = 0.7,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.2, lhik = 0, rhik = 1 },
            { t = 0.7, lhik = 0, rhik = 1 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sm_beta_reload_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sm_beta_reload_rotate.ogg", t = 4/30},
			{s = path .. "wfoly_plr_sm_beta_reload_magout_01.ogg", t = 5/30},
			{s = path .. "wfoly_plr_sm_beta_reload_magin_v2_01.ogg", t = 30/30},
			{s = path .. "wfoly_plr_sm_beta_reload_magin_v2_02.ogg", t = 35/30},
			{s = path .. "wfoly_plr_sm_beta_reload_end.ogg", t = 28/30},
        },
    },
    ["reload_xmag_fast_empty"] = {
        Source = "reload_xmag_fast_empty",
		MinProgress = 0.9,
		FireASAP = true,
		MagSwapTime = 1.5,
		DropMagAt = 0.7,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.2, lhik = 0, rhik = 1 },
            { t = 0.7, lhik = 0, rhik = 1 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sm_beta_reload_empty_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sm_beta_reload_empty_rotate.ogg", t = 4/30},
			{s = path .. "wfoly_plr_sm_beta_reload_empty_magout_01.ogg", t = 5/30},
			{s = path .. "wfoly_plr_sm_beta_reload_empty_magin_v2_01.ogg", t = 30/30},
			{s = path .. "wfoly_plr_sm_beta_reload_empty_magin_v2_02.ogg", t = 35/30},
			{s = path .. "wfoly_plr_sm_beta_reload_empty_charge_01.ogg", t = 43/30},
			{s = path .. "wfoly_plr_sm_beta_reload_empty_end.ogg", t = 45/30},
        },
    },
    ["ready"] = {
        Source = "draw",
		MinProgress = 0.9,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.2, lhik = 0, rhik = 1 },
            { t = 0.5, lhik = 0, rhik = 1 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_plr_sm_beta_raise_first_start.ogg", t = 0.0},
            {s = path .. "wfoly_plr_sm_beta_raise_first_charge.ogg", t = 0.5},
			{s = path .. "wfoly_plr_sm_beta_raise_first_end.ogg", t = 0.833},
        },
    },
    ["draw"] = {
        Source = "draw_short",
		MinProgress = 0.4,
		FireASAP = true,
        EventTable = {
            {s = path .. "wfoly_plr_sm_beta_raise_up.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            {s = path .. "wfoly_plr_sm_beta_drop_down.ogg", t = 0/30},
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
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
		Mult = 2,
    },
    ["super_sprint_idle"] = {
        Source = "super_sprint",
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 1 },
        },
    },
    ["super_sprint_in"] = {
        Source = "super_sprint_in",
		Mult = 2.3,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.1, lhik = 1, rhik = 1 },
            { t = 1, lhik = 0, rhik = 1 },
        },
    },
    ["super_sprint_out"] = {
        Source = "super_sprint_out",
		Mult = 2.3,
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
            { t = 0.7, lhik = 0, rhik = 1 },
            { t = 1.1, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sm_beta_inspect_01.ogg", t = 0.133},
			{s = path .. "wfoly_sm_beta_inspect_02.ogg", t = 1.467},
			{s = path .. "wfoly_sm_beta_inspect_03.ogg", t = 2.367},
			{s = path .. "wfoly_sm_beta_inspect_04.ogg", t = 3.467},
			{s = path .. "wfoly_sm_beta_inspect_05.ogg", t = 4.2},
        },
    },
    ["bash"] = {
        Source = {"melee","melee2","melee3"},
    },
    ["firemode_1"] = {
        Source = "semi_on",
        EventTable = {
            {s = path .. "weap_sm_beta_selector_on.ogg", t = 0/30},
        },
    },
    ["firemode_2"] = {
        Source = "semi_off",
        EventTable = {
            {s = path .. "weap_sm_beta_selector_off.ogg", t = 0/30},
        },
    },
    ["switchsights"] = {
        Source = "semi_on",
        EventTable = {
            {s = path .. "wfoly_sm_beta_inspect_03.ogg", t = 0/30},
        },
    },
}

-------------------------- ATTACHMENTS

--- 84 Round Mags ---
local Translate_XMag = {
    ["reload"] = "reload_xmag",
    ["reload_empty"] = "reload_xmag_empty",
}
local Translate_XMag_Fast = {
    ["reload"] = "reload_xmag_fast",
    ["reload_empty"] = "reload_xmag_fast_empty",
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

    if super_sprint and Translate_TacSprint[anim] then
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
end

-- SWEP.Hook_Think	= ARC9.COD2019.BlendSights2

SWEP.DefaultBodygroups = "00000000000000"

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(13.5, -0.5, -1.2),
	ModelAngleOffset = Angle(0, 0, -50),
	Scale = 0.9,
    },
    -- ["csgo_cod2019_laser_01"] = {
    -- Sights = {
    -- {
        -- Pos = Vector(3, 20, -2),
        -- Ang = Angle(0.7, -1.2, -45),
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
        -- Pos = Vector(3, 20, -2),
        -- Ang = Angle(0.7, -1.2, -45),
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
        -- Pos = Vector(3, 20, -2),
        -- Ang = Angle(0.7, -1.2, -45),
        -- ViewModelFOV = 45,
        -- Magnification = 1.25,
        -- IgnoreExtra = false,
		-- KeepBaseIrons = true,
    -- },
    -- },
    -- },
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
    ["stock_retract"] = {
        Bodygroups = {
            {5,1},
        },
    },
    ["stock_none"] = {
        Bodygroups = {
            {5,2},
        },
    },
    ["stock_adapter"] = {
        Bodygroups = {
            {5,2},
        },
    },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model
    if wep:HasElement("stock_retract") then model:SetBodygroup(5,1) end
	
    if wep:HasElement("mag_xmag") then 
     model:SetPoseParameter("grip_xmag_offset", 1)
    else
     model:SetPoseParameter("grip_xmag_offset", 0)
    end
end

SWEP.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_barrel"),
		DefaultIcon = Material("arc9/def_att_icons/barrel.png", "mips smooth"),
        DefaultAttName = "Standard Barrel",
        Category = "cod2019_bizon_barrel",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_muzzle"),
        DefaultAttName = "Standard Muzzle",
        Category = "cod2019_muzzle",
        Bone = "tag_silencer",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		InstalledElements = {"muzzle_none"},
		Scale = 1,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_optic"),
		DefaultIcon = Material("arc9/def_att_icons/optic.png", "mips smooth"),
        Bone = "tag_holo",
        Pos = Vector(1.5, 0, -0.1),
        Ang = Angle(0, 0, 0),
        Category = {"cod2019_optic",},
        CorrectiveAng = Angle(-0.9, 0.1, 0),
		InstalledElements = {"sights"},
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_laser"),
        DefaultAttName = "Default",
        Category = "cod2019_tac_rail_alt",
        Bone = "tag_laser_attach",
        Pos = Vector(-0.93, -0.76, 0.006),
        Ang = Angle(0, 0, 0),
		--InstalledElements = {"rail_laser"},
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_stock"),
		DefaultIcon = Material("arc9/def_att_icons/stock_ak.png", "mips smooth"),
        DefaultAttName = "Standard Stock",
        Category = {"cod2019_tube","stock_retract"},
        Bone = "tag_stock_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		InstalledElements = {"stock_adapter"},
		Scale = 1,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_receiver"),
        Category = "cod2019_bizon_reciever",
        Bone = "tag_attachments",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_ammo"),
		DefaultIcon = Material("arc9/def_att_icons/ammotype.png", "mips smooth"),
        Bone = "tag_mag_attach",
		Category = {"cod2019_ammo"},
		Pos = Vector(-1.5, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_magazine"),
		DefaultIcon = Material("arc9/def_att_icons/mag_ar.png", "mips smooth"),
		Bone = "tag_mag_attach",
        Category = {"cod2019_mag","cod2019_bizon_mag"},
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_perk"),
        Category = {"cod2019_perks","cod2019_perks_soh","cod2019_perks_ss"}
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_skins"),
        --Bone = "v_weapon.Clip",
        Category = "cod2019_skins_bizon",
		CosmeticOnly = true,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_camouflage"),
        Category = {"universal_camo"},
        CosmeticOnly = true,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/smg_bizon_decal_a.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/smg_bizon_decal_b.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/smg_bizon_decal_c.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/smg_bizon_decal_d.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_charm"),
        Category = "charm",
        Bone = "tag_attachments",
        Pos = Vector(1, -0.8, 1.5),
        Ang = Angle(0, 0, 0),
		Scale = 1.5,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_stats"),
        Category = {"killcounter","killcounter2"},
        Bone = "tag_attachments",
        Pos = Vector(7, -0.8, 1.5),
        Ang = Angle(0, 0, 0),
		CosmeticOnly = true,
    },
}

SWEP.GripPoseParam = 5
SWEP.GripPoseParam2 = 0.5

-- Warzone-esque Stats; Add here to change only when using Warzone Stats variable.
if GetConVar("arc9_mw19_stats_warzone"):GetBool() then

end
