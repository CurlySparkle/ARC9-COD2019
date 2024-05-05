AddCSLuaFile()
if CLIENT then
    killicon.Add( "arc9_cod2019_sn_svd", "vgui/killicons/cod2019_sn_svd.png", Color(251, 85, 25, 255))
end

SWEP.LoadoutImage = "entities/loadout/arc9_cod2019_sn_svd.png"

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_sniper") or "Sniper Rifles"

SWEP.PrintName = ARC9:GetPhrase("mw19_weapon_dragunov") or "Dragunov"

SWEP.Class = ARC9:GetPhrase("mw19_class_weapon_sniper") or "Sniper Rifle"
SWEP.Trivia = {
    [ ARC9:GetPhrase("mw19_country") ] = ARC9:GetPhrase("mw19_country_switzerland"),
    [ ARC9:GetPhrase("mw19_caliber") ] = ARC9:GetPhrase("mw19_caliber_762mmr"),
    [ ARC9:GetPhrase("mw19_weight") ] = string.format(ARC9:GetPhrase("mw19_weight_val"), 4.4, 4.4 * 2.20),
    [ ARC9:GetPhrase("mw19_weight_projectile") ] = string.format(ARC9:GetPhrase("mw19_weight_projectile_val"), 144),
    -- [ ARC9:GetPhrase("mw19_muzzle_energy") ] = "2,723 ft/s",
    -- [ ARC9:GetPhrase("mw19_muzzle_velocity") ] = "3,215 joules"
}

SWEP.Credits = {
    [ ARC9:GetPhrase("mw19_author") ] = "Twilight Sparkle/Firmeteran",
    [ ARC9:GetPhrase("mw19_assets") ] = "Activision/Infinity Ward"
}

SWEP.Description = ARC9:GetPhrase("mw19_weapon_dragunov_desc") or [[A Soviet workhorse chambered in 7.62mm x 54mmR. This gas-operated semi-automatic sniper rifle allows for rapid followup shots.]]

SWEP.ViewModel = "models/weapons/cod2019/c_snip_svd.mdl"
SWEP.WorldModel = "models/weapons/w_snip_g3sg1.mdl"

SWEP.Slot = 3

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_snip_svd.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-12, 6, -7.5),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-6, 4, 0),
    TPIKAng = Angle(-12, 0, 175),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 80 -- Damage done at point blank range
SWEP.DamageMin = 35 -- Damage done at maximum range

SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 1000 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 8000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 25 -- Units of wood that can be penetrated by this gun.

SWEP.ImpactForce = 11

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 2,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_LEFTARM] = 0.9,
    [HITGROUP_RIGHTARM] = 0.9,
}


-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 2800 * 12
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.15

-------------------------- MAGAZINE

SWEP.Ammo = "sniperPenetratedRound" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 10 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 2 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 297

SWEP.Firemodes = {
    {
        Mode = 1,
        -- add other attachment modifiers
    }
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 8

SWEP.RecoilSeed = 3584

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.3

SWEP.RecoilDissipationRate = 10 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 5 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 3

SWEP.RecoilMultCrouch = 0.8
SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.65

SWEP.RecoilPerShot = 0.5
SWEP.RecoilMax = 1.5

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilMultSights = 0.5
SWEP.VisualRecoilPunchSights = 5
SWEP.VisualRecoilRollSights = 5
SWEP.VisualRecoilSideSights = 0
SWEP.VisualRecoilUpSights = 0

SWEP.VisualRecoilPunch = 1
SWEP.VisualRecoilUp = 0.2
SWEP.VisualRecoilRoll = 50

SWEP.VisualRecoilSpringPunchDamping = 11
SWEP.VisualRecoilDampingConst = 10
SWEP.VisualRecoilDampingConstSights = 50
SWEP.VisualRecoilSpringMagnitude = 1

SWEP.VisualRecoilDoingFunc = function(up, side, roll, punch, recamount)
    if recamount > 5 then
        recamount = 1.65 - math.Clamp((recamount - 2) / 3.5, 0, 1)
        
        local fakerandom = 1 + (((69+recamount%5*CurTime()%3)*2420)%4)/10 
        
        return up, side * fakerandom, roll, punch
    end

    return up, side, roll, punch
end

-------------------------- SPREAD

SWEP.Spread = 0.075

SWEP.SpreadAddRecoil = 0.05

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

SWEP.AimDownSightsTime = 0.5 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.5 -- How long it takes to go from sprinting to being able to fire.

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.25

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 255, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-2.82, -4.3, 1.55),
    Ang = Angle(0, 0.2, 0),
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
SWEP.CustomizePos = Vector(18.5, 50, 3)
SWEP.CustomizeRotateAnchor = Vector(18.5, -3, -4)
SWEP.CustomizeSnapshotFOV = 65
SWEP.CustomizeSnapshotPos = Vector(1, 40, 5)
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeNoRotate = false

SWEP.PeekPos = Vector(-1.2, 1.5, -4)
SWEP.PeekAng = Angle(0, 0.4, -45)

SWEP.PeekMaxFOV = 64

SWEP.PeekPosReloading = Vector(0, 2, -1.75)
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
SWEP.ShellSounds = ARC9.COD2019_308_Table

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_snip_svd_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_01.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_02.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_03.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_04.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_05.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_06.ogg",
}
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineTime = 1
SWEP.DropMagazineQCA = 3
SWEP.DropMagazineAng = Angle(0, -90, 0)

-------------------------- SOUNDS

local path = "weapons/cod2019/svd/"

SWEP.ShootSound = "COD2019.SVD.Fire"
SWEP.ShootSoundIndoor = "COD2019.SVD.Fire"

SWEP.ShootSoundSilenced = "COD2019.SVD.Fire.S"
SWEP.ShootSoundSilencedIndoor = "COD2019.SVD.Fire.S"

-- Non-Silenced Outside
SWEP.LayerSound = "Layer_Sniper.Outside"
SWEP.DistantShootSound = "Distant_Sniper.Outside"
-- Inside
SWEP.LayerSoundIndoor = "Layer_Shotgun.Inside"
SWEP.DistantShootSoundIndoor = "Distant_Shotgun.Inside"
---------------------------------------------------
-- Silenced Outside
SWEP.LayerSoundSilenced = "Layer_Sniper.Outside"
SWEP.DistantShootSoundSilenced = "Distant_Sniper_Sup.Outside"
-- Inside
SWEP.LayerSoundSilencedIndoor = "Layer_ARSUP.Inside"
SWEP.DistantShootSoundSilencedIndoor = "Distant_DMR_Sup.Inside"
---------------------------------------------------

SWEP.EnterSightsSound = path .. "weap_sn_delta_ads_up.ogg"
SWEP.ExitSightsSound = path .. "weap_sn_delta_ads_down.ogg"

SWEP.TriggerDelay = 0.03 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayCancellable = false
SWEP.TriggerDelayTime = 0.03 -- Time until weapon fires.

SWEP.TriggerDownSound = "weapons/cod2019/svd/weap_delta_fire_first_plr_01.ogg"
SWEP.TriggerUpSound = "weapons/cod2019/svd/weap_delta_disconnector_plr_01.ogg"

SWEP.HideBones  = {
    [1] = "j_mag2",
}

SWEP.Animations = {
	["enter_sights"] = {
		Source = "idle",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
	},
    ["fire"] = {
        Source = "shoot1",
    },
    ["dryfire"] = {
        Source = "dryfire",
		MinProgress = 0.3,
		FireASAP = true,
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
    },
    ["reload"] = {
        Source = "reload_short",
		MinProgress = 0.925,
		PeekProgress = 0.85,
		RefillProgress = 0.675,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.675, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sn_delta_reload_raise.ogg", t = 0.033},
            {s = path .. "wfoly_sn_delta_reload_magout_01.ogg", t = 0.5},
			{s = path .. "wfoly_sn_delta_reload_cloth_01.ogg", t = 0.9},
			{s = path .. "wfoly_sn_delta_reload_cloth_02.ogg", t = 1.6},
			{s = path .. "wfoly_sn_delta_reload_magin_v2_01.ogg", t = 1.85},
			{s = path .. "wfoly_sn_delta_reload_magin_v2_02.ogg", t = 2.25},
			{s = path .. "wfoly_sn_delta_reload_end.ogg", t = 2.6},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.925,
		PeekProgress = 0.875,
		RefillProgress = 0.775,
		FireASAP = true,
		DropMagAt = 1.4,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.55, lhik = 0, rhik = 0 },
            { t = 0.6, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sn_delta_reload_empty_raise.ogg", t = 0.3},
            {s = path .. "wfoly_sn_delta_reload_empty_magout_01.ogg", t = 0.8},
			{s = path .. "wfoly_sn_delta_reload_empty_throw_mag.ogg", t = 0.9},
			{s = path .. "wfoly_sn_delta_reload_empty_magin_v2_01.ogg", t = 1.52},
			{s = path .. "wfoly_sn_delta_reload_empty_magin_v2_02.ogg", t = 2.25},
            {s = path .. "wfoly_sn_delta_reload_empty_end.ogg", t = 2.95},
			{s = path .. "wfoly_sn_delta_reload_empty_charge_01.ogg", t = 3.1},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.975,
		PeekProgress = 0.925,
		RefillProgress = 0.7,
		FireASAP = true,
		DropMagAt = 1.3,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.175, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.925, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sn_delta_reload_fast_raise.ogg", t = 0.15},
            {s = path .. "wfoly_sn_delta_reload_fast_magout_01.ogg", t = 0.4},
			{s = path .. "wfoly_sn_delta_reload_fast_rotate.ogg", t = 0.5},
			{s = path .. "wfoly_sn_delta_reload_fast_magin_v2_01.ogg", t = 1.15},
			{s = path .. "wfoly_sn_delta_reload_fast_magin_v2_02.ogg", t = 1.5},
			{s = path .. "wfoly_sn_delta_reload_fast_end.ogg", t = 1.8},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.975,
		PeekProgress = 0.925,
		RefillProgress = 0.8,
		FireASAP = true,
		DropMagAt = 1.3,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 1, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sn_delta_reload_empty_fast_raise.ogg", t = 0.167},
            {s = path .. "wfoly_sn_delta_reload_empty_fast_maghit_01.ogg", t = 0.77},
			{s = path .. "wfoly_sn_delta_reload_empty_fast_magout_01.ogg", t = 0.84},
			{s = path .. "wfoly_sn_delta_reload_empty_fast_magin_v2_01.ogg", t = 1.2},
			{s = path .. "wfoly_sn_delta_reload_empty_fast_magin_v2_02.ogg", t = 1.5},
            {s = path .. "wfoly_sn_delta_reload_empty_fast_charge_01.ogg", t = 1.875},
            {s = path .. "wfoly_sn_delta_reload_empty_fast_end.ogg", t = 2.15},
        },
    },
    ["reload_xmag"] = {
        Source = "reload_xmag",
		MinProgress = 0.925,
		PeekProgress = 0.85,
		RefillProgress = 0.675,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.675, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sn_delta_reload_raise.ogg", t = 0/30},
            {s = path .. "wfoly_sn_delta_reload_magout_01.ogg", t = 13/30},
			{s = path .. "wfoly_sn_delta_reload_cloth_01.ogg", t = 26/30},
			{s = path .. "wfoly_sn_delta_reload_cloth_02.ogg", t = 44/30},
			{s = path .. "wfoly_sn_delta_reload_magin_v2_01.ogg", t = 52/30},
			{s = path .. "wfoly_sn_delta_reload_magin_v2_02.ogg", t = 65/30},
			{s = path .. "wfoly_sn_delta_reload_end.ogg", t = 73/30},
        },
    },
    ["reload_xmag_empty"] = {
        Source = "reload_xmag_empty",
		MinProgress = 0.925,
		PeekProgress = 0.85,
		RefillProgress = 0.75,
		FireASAP = true,
		DropMagAt = 1.4,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.525, lhik = 0, rhik = 0 },
            { t = 0.575, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sn_delta_reload_empty_raise.ogg", t = 0/30},
            {s = path .. "wfoly_sn_delta_reload_empty_magout_01.ogg", t = 20/30},
			{s = path .. "wfoly_sn_delta_reload_empty_throw_mag.ogg", t = 23/30},
			{s = path .. "wfoly_sn_delta_reload_empty_magin_v2_01.ogg", t = 46/30},
			{s = path .. "wfoly_sn_delta_reload_empty_magin_v2_02.ogg", t = 67/30},
			{s = path .. "wfoly_sn_delta_reload_empty_end.ogg", t = 80/30},
			{s = path .. "wfoly_sn_delta_reload_empty_charge_01.ogg", t = 92/30},
        },
    },
    ["reload_xmag_fast"] = {
        Source = "reload_xmag_fast",
		MinProgress = 0.975,
		PeekProgress = 0.925,
		RefillProgress = 0.7,
		FireASAP = true,
		DropMagAt = 1.3,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.175, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.925, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sn_delta_reload_raise.ogg", t = 0/30},
            {s = path .. "wfoly_sn_delta_reload_empty_magout_01.ogg", t = 23/30},
			{s = path .. "wfoly_sn_delta_reload_empty_throw_mag.ogg", t = 26/30},
			{s = path .. "wfoly_sn_delta_reload_cloth_01.ogg", t = 34/30},
			{s = path .. "wfoly_sn_delta_reload_cloth_02.ogg", t = 35/30},
			{s = path .. "wfoly_sn_delta_reload_magin_v2_01.ogg", t = 37/30},
			{s = path .. "wfoly_sn_delta_reload_magin_v2_02.ogg", t = 45/30},
			{s = path .. "wfoly_sn_delta_reload_end.ogg", t = 50/30},
        },
    },
    ["reload_xmag_fast_empty"] = {
        Source = "reload_xmag_fast_empty",
		MinProgress = 0.975,
		PeekProgress = 0.925,
		RefillProgress = 0.8,
		FireASAP = true,
		DropMagAt = 1.3,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 1, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sn_delta_reload_raise.ogg", t = 0/30},
            {s = path .. "wfoly_sn_delta_reload_empty_magout_01.ogg", t = 22/30},
			{s = path .. "wfoly_sn_delta_reload_empty_throw_mag.ogg", t = 25/30},
			{s = path .. "wfoly_sn_delta_reload_cloth_01.ogg", t = 34/30},
			{s = path .. "wfoly_sn_delta_reload_cloth_02.ogg", t = 35/30},
			{s = path .. "wfoly_sn_delta_reload_magin_v2_01.ogg", t = 37/30},
			{s = path .. "wfoly_sn_delta_reload_magin_v2_02.ogg", t = 45/30},
            {s = path .. "wfoly_sn_delta_reload_empty_charge_01.ogg", t = 54.5/30},
			{s = path .. "wfoly_sn_delta_reload_end.ogg", t = 68/30},
        },
    },
    ["ready"] = {
        Source = "draw",
        MinProgress = 0.7,
        FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 1, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sn_delta_raise_first_mvmnt.ogg", t = 0.1},
            {s = path .. "wfoly_sn_delta_raise_first_charge_01.ogg", t = 0.467},
            {s = path .. "wfoly_sn_delta_raise_first_end.ogg", t = 0.9},
        },
    },
    ["draw"] = {
        Source = "draw_short",
        MinProgress = 0.5,
        FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 0 },
	            { t = 0.5, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sn_delta_raise_mvmnt.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.7, lhik = 0, rhik = 0 },
        },
        EventTable = {
            {s = path .. "wfoly_sn_delta_drop_mvmnt.ogg", t = 0/30},
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
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.35, lhik = 0, rhik = 0 },
            { t = 0.45, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sn_delta_inspect_01.ogg", t = 0.1},
            {s = path .. "wfoly_sn_delta_inspect_02.ogg", t = 1.767},
            {s = path .. "wfoly_sn_delta_inspect_03.ogg", t = 3.8},
        },
    },
    ["bash"] = {
        Source = {"melee", "melee2", "melee3"},
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 1, rhik = 1 },
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

SWEP.DefaultBodygroups = "00000000000000"

--- 15 Round Mags ---
local Translate_XMag = {
    ["reload"] = "reload_xmag",
    ["reload_empty"] = "reload_xmag_empty",
}
local Translate_XMag_Fast = {
    ["reload"] = "reload_xmag_fast",
    ["reload_empty"] = "reload_xmag_fast_empty",
}

--- 20 Round Mags ---
local Translate_XMagslrg = {
    ["reload"] = "reload_xmag",
    ["reload_empty"] = "reload_xmag_empty",
}
local Translate_XMagslrg_Fast = {
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
    local xmagslrg = wep:HasElement("mag_xmaglrg")

    if super_sprint and Translate_TacSprint[anim] then
        return Translate_TacSprint[anim]
    end

    if speedload then
        if xmag then
            if Translate_XMag_Fast[anim] then
                return Translate_XMag_Fast[anim]
            end
        elseif xmagslrg then
            if Translate_XMagslrg_Fast[anim] then
                return Translate_XMagslrg_Fast[anim]
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
        elseif xmagslrg then
            if Translate_XMagslrg[anim] then
                return Translate_XMagslrg[anim]
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

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(18, -0.2, 0.8),
	ModelAngleOffset = Angle(0, 0, 0),
	Scale = 0.9,
    },
    ["go_grip_angled"] = {
    ModelOffset = Vector(0.9, 0, 0.1),
    },
    ["cod2019_perks_auto"] = {
		RPMMult = 2.5,
		DamageMinMult = 0.5,
		DamageMaxMult = 0.5,
		-- RecoilKickMult = 1.3,
		-- RecoilSideMult = 1.4,
		-- RecoilUpMult = 0.7
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
    ["muzzle_none"] = {
        Bodygroups = {
            {4,1},
        },
    },
    ["grip_rail"] = {
        Bodygroups = {
            {5,1},
        },
    },
    ["laser_rail"] = {
        Bodygroups = {
            {6,1},
        },
    },
    ["sight_rail"] = {
        Bodygroups = {
            {7,1},
        },
    },
    ["foregrip_none"] = {
        Bodygroups = {
            {8,1},
        },
    },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model
    if wep:HasElement("scope_svd") then model:SetBodygroup(7,0) end
    if wep:HasElement("stock_custom") then model:SetBodygroup(3,2) end
end

SWEP.Attachments = {
    { -- 1
        PrintName = ARC9:GetPhrase("mw19_category_muzzle"),
        Category = "cod2019_muzzle",
        DefaultIcon = Material("entities/defattachs/muzzle-ar.png", "mips smooth"),
		Bone = "tag_silencer",
        Pos = Vector(0, 0, 0),
		InstalledElements = {"muzzle_none"},
    },
    { -- 2
        PrintName = ARC9:GetPhrase("mw19_category_barrel"),
		DefaultIcon = Material("entities/defattachs/barrel-ar.png", "mips smooth"),
        Category = "cod2019_svd_barrel",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
    },
    { -- 3
        PrintName = ARC9:GetPhrase("mw19_category_laser"),
		DefaultIcon = Material("entities/defattachs/laser-ar.png", "mips smooth"),
        Category = "cod2019_tac_rail_cylinder",
        Bone = "tag_laser_attach",
        Pos = Vector(-0.34, -1.34, 0),
    },
    { -- 4
        PrintName = ARC9:GetPhrase("mw19_category_optic"),
		DefaultIcon = Material("entities/defattachs/optic.png", "mips smooth"),
        Bone = "tag_rail",
        Pos = Vector(-4, 0, 3.55),
        Category = {"cod2019_optic","cod2019_optic_svd"},
		InstalledElements = {"sight_none"},
		Installed = "cod2019_optic_default_svd",
		InstalledElements = {"sight_rail"},
		ExcludeElements = {"body_none"},
    },
    { -- 5
        PrintName = ARC9:GetPhrase("mw19_category_stock"),
		DefaultIcon = Material("entities/defattachs/stock-ar.png", "mips smooth"),
        Category = {"cod2019_svd_stock","cod2019_tube"},
        Bone = "tag_stock_attach",
        Pos = Vector(0, 0, 0),
    },
    { -- 6
        PrintName = ARC9:GetPhrase("mw19_category_underbarrel"),
		DefaultIcon = Material("entities/defattachs/grip.png", "mips smooth"),
        Category = "cod2019_grip",
        Bone = "tag_attachments",
        Pos = Vector(13.6, 0, -1),
        Ang = Angle(0, 0, 180),
		InstalledElements = {"grip_rail"},
		MergeSlots = {21},
		RejectAttachments = { ["cod2019_grips_bipod_alt"] = true },
    },
    { -- 7
        PrintName = ARC9:GetPhrase("mw19_category_magazine"),
		DefaultIcon = Material("entities/defattachs/magazine-ar.png", "mips smooth"),
		Bone = "tag_mag_attach",
        Category = {"cod2019_mag","cod2019_svd_mag"},
        Pos = Vector(0, 0, 0),
    },
    { -- 8
        PrintName = ARC9:GetPhrase("mw19_category_ammo"),
		DefaultIcon = Material("arc9/def_att_icons/ammotype.png", "mips smooth"),
        Bone = "tag_mag_attach",
		Category = {"cod2019_ammo", "cod2019_ammo_sniper"},
		Pos = Vector(-1.5, 0, 0),
		MergeSlots = {22},
		RejectAttachments = { 
			["cod2019_ammo_db"] = true,
			["cod2019_ammo_he"] = true,
		}
    },
    { -- 9
        PrintName = ARC9:GetPhrase("mw19_category_reargrip"),
		DefaultIcon = Material("entities/defattachs/reargrip-ar.png", "mips smooth"),
        Category = "cod2019_pistolgrip",
        Bone = "tag_pistolgrip_attach",
        Pos = Vector(0, 0, 0),
    },
    { -- 10
        PrintName = ARC9:GetPhrase("mw19_category_perk"),
        Category = {"cod2019_perks","cod2019_perks_soh","cod2019_perks_ss"},
        Bone = "tag_attachments",
        Pos = Vector(3, 0, -2.5),
    },
	
	-- Unofficial
    { -- 11
        PrintName = ARC9:GetPhrase("mw19_category_triggeraction"),
		-- DefaultIcon = Material("entities/defattachs/stock-ar.png", "mips smooth"),
        Category = {"cod2019_trigger"},
        Bone = "j_trigger",
        Pos = Vector(0, 0, 0),
		Hidden = true,
    },
    { -- 12
        PrintName = ARC9:GetPhrase("mw19_category_receiver"),
        Category = "cod2019_svd_receiver",
        Bone = "tag_attachments",
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(3, 0, -0.25),
		Hidden = false,
    },
	
	-- Cosmetics
    { -- 13
        PrintName = ARC9:GetPhrase("mw19_category_skins"),
        Bone = "tag_cosmetic",
        Pos = Vector(7, 0, 3),
        Category = "cod2019_skins_svd",
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
        StickerModel = "models/weapons/cod2019/stickers/snip_svd_decal_a.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(3, 0, 3),
    },
    { -- 16
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/snip_svd_decal_b.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(1, 0, 3),
    },
    { -- 17
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/snip_svd_decal_c.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-1, 0, 3),
    },
    { -- 18
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/snip_svd_decal_d.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-3, 0, 3),
    },
    { -- 19
        PrintName = ARC9:GetPhrase("mw19_category_charm"),
        CosmeticOnly = true,
        Category = {"charm"},
        Bone = "tag_cosmetic",
        Pos = Vector(6.5, 0, -0.15),
		Icon_Offset = Vector(-11.5, 0, 3.15),
		Scale = 1.5,
    },
    { -- 20
        PrintName = ARC9:GetPhrase("mw19_category_stats"),
        Category = {"killcounter","killcounter2"},
        Bone = "tag_cosmetic",
        Pos = Vector(-1, 0, -0.5),
		Icon_Offset = Vector(-6, 0, 3.5),
		RejectAttachments = { ["arc9_stat_proscreen_main"] = true },
		CosmeticOnly = true,
    },
    { -- 21
        PrintName = "Bipod",
        DefaultAttName = "Default",
        Category = {"cod2019_svd_bipod"},
        Bone = "tag_bipod_attach",
		Scale = 1,
		Hidden = true,
        MergeSlots = {6},
    },
    { -- 22
        PrintName = ARC9:GetPhrase("mw19_category_ammo"),
        Category = {"cod2019_ammo_special"},
		RequireElements = {"mag_ftac"},
    },
}

SWEP.GripPoseParam = 4.5
SWEP.GripPoseParam2 = 0.5
--SWEP.CodAngledGripPoseParam = 32
SWEP.CodAngledGripPoseParam = 33
SWEP.CodStubbyGripPoseParam = 22
SWEP.CodStubbyTallGripPoseParam = 26

-- Warzone-esque Stats; Add here to change only when using Warzone Stats variable.
if GetConVar("arc9_mw19_stats_warzone"):GetBool() then

-------------------------- DAMAGE PROFILE
SWEP.DamageMax = 90 -- Damage done at point blank range
SWEP.DamageMin = 75 -- Damage done at maximum range

SWEP.RangeMin = 56 / ARC9.HUToM
SWEP.RangeMax = 57 / ARC9.HUToM

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 2,
    [HITGROUP_CHEST] = 1.9,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 1,
    [HITGROUP_RIGHTLEG] = 1,
}

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 680 / ARC9.HUToM

-------------------------- FIREMODES

SWEP.RPM = 188

-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.459 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.25 -- How long it takes to go from sprinting to being able to fire.

end
