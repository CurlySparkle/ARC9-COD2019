AddCSLuaFile()
if CLIENT then
    killicon.Add( "arc9_cod2019_sn_ax50", "vgui/killicons/cod2019_sn_ax50.png", Color(251, 85, 25, 255))
end

SWEP.LoadoutImage = "entities/loadout/arc9_cod2019_sn_ax50.png"

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_sniper") or "Sniper Rifles"

SWEP.PrintName = ARC9:GetPhrase("mw19_weapon_ax50") or "AX-50"

SWEP.Class = ARC9:GetPhrase("mw19_class_weapon_sniper") or "Sniper Rifle"
SWEP.Trivia = {
    [ ARC9:GetPhrase("mw19_country") ] = ARC9:GetPhrase("mw19_country_uk"),
    [ ARC9:GetPhrase("mw19_manufacturer") ] = ARC9:GetPhrase("mw19_manufacturer_cronen"),
    [ ARC9:GetPhrase("mw19_caliber") ] = ARC9:GetPhrase("mw19_caliber_50bmg"),
    [ ARC9:GetPhrase("mw19_weight") ] = string.format(ARC9:GetPhrase("mw19_weight_val"), 13, 13 * 2.20),
    [ ARC9:GetPhrase("mw19_weight_projectile") ] = string.format(ARC9:GetPhrase("mw19_weight_projectile_val"), 290),
    -- [ ARC9:GetPhrase("mw19_muzzle_energy") ] = "2,953 ft/s",
    -- [ ARC9:GetPhrase("mw19_muzzle_velocity") ] = "7,615 joules"
}

SWEP.Credits = {
    [ ARC9:GetPhrase("mw19_author") ] = "Twilight Sparkle/Firmeteran",
    [ ARC9:GetPhrase("mw19_assets") ] = "Activision/Infinity Ward"
}

SWEP.Description = ARC9:GetPhrase("mw19_weapon_ax50_desc") or [[Hard hitting, bolt action sniper rifle with .50 cal BMG ammunition. Its tungsten sabot tipped bullets are fast and powerful, but require precise shots over long distances.]]

SWEP.ViewModel = "models/weapons/cod2019/c_snip_ax50.mdl"
SWEP.WorldModel = "models/weapons/w_shot_m3super90.mdl"
SWEP.DefaultBodygroups = "00000000"

SWEP.Slot = 3

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_snip_ax50.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-11, 6, -2.5),
    Ang = Angle(-17, 3, 180),
    TPIKPos = Vector(-8, 6, -1),
    TPIKAng = Angle(-9, 0, 170),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 94 -- Damage done at point blank range
SWEP.DamageMin = 54 -- Damage done at maximum range

SWEP.Num = 1

SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 2000 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 11000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 15 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.5

SWEP.ImpactForce = 15

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 2799 * 12
SWEP.PhysBulletGravity = 2
SWEP.PhysBulletDrag = 2.5

-------------------------- MAGAZINE

SWEP.Ammo = "SniperPenetratedRound" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 5 -- Self-explanatory.
SWEP.SupplyLimit = 8 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 2 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

SWEP.ManualAction = true
SWEP.NoLastCycle = true
SWEP.ManualActionNoLastCycle = true

--SWEP.ShotgunReload = true
--SWEP.ManualActionChamber = 1

SWEP.BarrelLength = 20

-------------------------- FIREMODES

SWEP.RPM = 150

SWEP.Firemodes = {
    {
        Mode = 1,
    },
}

-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 4

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil

SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.3

SWEP.RecoilDissipationRate = 7.5 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 1 -- Multiplier for automatic recoil control.
--SWEP.RecoilAutoControlSights = 0 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 3

SWEP.RecoilMultCrouch = 0.8
SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 1
SWEP.RecoilMultSights = 1

SWEP.RecoilPerShot = 1
SWEP.RecoilMax = 1

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilPunch = 3
SWEP.VisualRecoilUp = 0.5

SWEP.VisualRecoilMultSights = 1
SWEP.VisualRecoilPunchSights = 25
SWEP.VisualRecoilRoll = 5
SWEP.VisualRecoilSide = 0.2

SWEP.VisualRecoilDoingFunc = function(up, side, roll, punch, recamount)
    if recamount > 5 then
        recamount = 1.65 - math.Clamp((recamount - 2) / 3.5, 0, 1)
        
        local fakerandom = 1 + (((69+recamount%5*CurTime()%3)*2420)%4)/10 
        
        return up, side * fakerandom, roll, punch * 9999
    end

    return up, side, roll, punch
end

-------------------------- SPREAD

SWEP.Spread = 0.1

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

SWEP.AimDownSightsTime = 0.3 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.5 -- How long it takes to go from sprinting to being able to fire.

-------------------------- AIM ASSIST

SWEP.NoAimAssist = true

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.255

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 255, 155) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-3.665, -3.5, 0.65),
    Ang = Angle(0, 0, -2),
    Magnification = 1.1,
    ViewModelFOV = 56,
    CrosshairInSights = false
}

SWEP.ViewModelFOVBase = 64

SWEP.SprintMidPoint = {
    Pos = Vector(0, -1, 0),
    Ang = Angle(-2.5, 0, 2.5)
}

SWEP.MovingMidPoint = {
    Pos = Vector(0, -0.5, -0.5),
    Ang = Angle(0, 0, 0)
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.MovingPos = Vector(-1, -0.5, -1)
SWEP.MovingAng = Angle(0, 0, -10)

SWEP.CrouchPos = Vector(-1, -0.5, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.SprintPos = Vector(1, 0, -1)
SWEP.SprintAng = Angle(0, 0, 25)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(20, 50, 3)
SWEP.CustomizeRotateAnchor = Vector(20, -3, -4)
SWEP.CustomizeSnapshotFOV = 65
SWEP.CustomizeNoRotate = false
SWEP.CustomizeSnapshotPos = Vector(1, 40, 5)

SWEP.PeekPos = Vector(2.5, 4, -1)
SWEP.PeekAng = Angle(-0.3, 0, -10)

SWEP.PeekMaxFOV = 54

SWEP.PeekPosReloading = Vector(4, 3, 0)
SWEP.PeekAngReloading = Angle(-0.3, 0, 10)

-------------------------- HoldTypes

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeHolstered = "passive"
SWEP.HoldTypeSights = "ar2"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "AC_muzzle_rifle_fp"
SWEP.AfterShotParticle = "AC_muzzle_smoke_barrel"
SWEP.TracerEffect = "cod2019_tracer_slow"
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 4
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_rytec.mdl"
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 1
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)
SWEP.EjectDelay = 0.4
SWEP.ShellSounds = ARC9.COD2019_50bmg_Table

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_snip_ax50_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_01.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_02.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_03.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_04.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_05.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_06.ogg",
}
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineTime = 1.6
SWEP.DropMagazineQCA = 3
SWEP.DropMagazineAng = Angle(0, -90, 0)

-------------------------- SOUNDS

local path = "weapons/cod2019/ax50/"

SWEP.ShootSound = "COD2019.AX50.Fire"
SWEP.ShootSoundIndoor = "COD2019.AX50.Fire"

SWEP.ShootSoundSilenced = "COD2019.AX50.Fire.S"
SWEP.ShootSoundSilencedIndoor = "COD2019.AX50.Fire.S"

-- Non-Silenced Outside
SWEP.LayerSound = "layer_Sniper.Outside"
SWEP.DistantShootSound = "distant_Sniper.Outside"
-- Inside
SWEP.LayerSoundIndoor = "layer_Shotgun.Inside"
SWEP.DistantShootSoundIndoor = "distant_Shotgun.Inside"
---------------------------------------------------
-- Silenced Outside
SWEP.LayerSoundSilenced = "layer_Sniper.Outside"
SWEP.DistantShootSoundSilenced = "distant_Sniper_Sup.Outside"
-- Inside
SWEP.LayerSoundSilencedIndoor = "layer_ARSUP.Inside"
SWEP.DistantShootSoundSilencedIndoor = "distant_DMR_Sup.Inside"
---------------------------------------------------

SWEP.EnterSightsSound = path .. "wfoly_sn_alpha50_ads_up.ogg"
SWEP.ExitSightsSound = path .. "wfoly_sn_alpha50_ads_down.ogg"

SWEP.TriggerDelay = 0.03 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayCancellable = false
SWEP.TriggerDelayTime = 0.03 -- Time until weapon fires.

SWEP.TriggerDownSound = "weapons/cod2019/svd/weap_delta_fire_first_plr_01.ogg"
SWEP.TriggerUpSound = "weapons/cod2019/svd/weap_delta_disconnector_plr_01.ogg"

SWEP.HideBones  = {
    [1] = "j_mag2",
}

SWEP.BulletBones = {
    [1] = "j_bullet_01",
    [2] = "j_bullet_02",
}

function SWEP:PrimaryAttack()
    local clip = self:Clip1()
    weapons.Get(self.Base).PrimaryAttack(self)
    if (clip != self:Clip1()) then
        self:MakeEnvironmentDust(150)
    end
end

SWEP.Animations = {
	["enter_sights"] = {
		Source = "idle",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
	},
    ["fire"] = {
        Source = "shoot1",
    },
    ["cycle"] = {
        Source = "cycle",
		--EjectAt = 0.2,
		MinProgress = 0.8,
        EventTable = {
            {s = "COD2019.AX50.Rechamber", v = 0.4, t = 6/30},
			{s = path .. "wfoly_sn_alpha50_rechamber_02.ogg", v = 0.4, t = 19/30},
        },
    },
    ["dryfire"] = {
        Source = "dryfire",
		MinProgress = 0.01,
		FireASAP = true,
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
    },
    ["reload"] = {
        Source = "reload_short",
		MinProgress = 0.925,
		PeekProgress = 0.875,
		RefillProgress = 0.725,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.725, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_sn_alpha50_reload_raise.ogg", t = 0.167},
			{s = path .. "wfoly_sn_alpha50_reload_magout_01.ogg", t = 0.733},
			{s = path .. "wfoly_sn_alpha50_reload_arm.ogg", t = 1.3},
			{s = path .. "wfoly_sn_alpha50_reload_maghit.ogg", t = 1.8},
			{s = path .. "wfoly_sn_alpha50_reload_magin_v2_01.ogg", t = 2.1},
			{s = path .. "wfoly_sn_alpha50_reload_magin_v2_02.ogg", t = 2.233},
			{s = path .. "wfoly_sn_alpha50_reload_end.ogg", t = 2.367},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.975,
		PeekProgress = 0.95,
		RefillProgress = 0.9,
		FireASAP = true,
		EjectAt = 0.35,
		DropMagAt = 1.9,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 1, rhik = 0 },
            { t = 0.275, lhik = 0, rhik = 0 },
            { t = 0.65, lhik = 0, rhik = 0 },
            { t = 0.825, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = "COD2019.AX50.Rechamber", t = 0.2},
            {s = path .. "wfoly_sn_alpha50_reload_empty_arm.ogg", t = 0.367},
            {s = path .. "wfoly_sn_alpha50_reload_empty_magout_01.ogg", t = 1.3},
			{s = path .. "wfoly_sn_alpha50_reload_empty_maggrab.ogg", t = 1.533},
			{s = path .. "wfoly_sn_alpha50_reload_empty_magin_v2_01.ogg", t = 2.5},
			{s = path .. "wfoly_sn_alpha50_reload_empty_magin_v2_02.ogg", t = 2.8},
			{s = path .. "wfoly_sn_alpha50_reload_empty_maghit_01.ogg", t = 3.1},
            {s = path .. "wfoly_sn_alpha50_reload_empty_end.ogg", t = 3.733},
			{s = path .. "wfoly_sn_alpha50_reload_empty_boltclose_01.ogg", t = 3.733},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.9,
		PeekProgress = 0.85,
		RefillProgress = 0.65,
		FireASAP = true,
		DropMagAt = 0.8,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.625, lhik = 0, rhik = 0 },
            { t = 0.825, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_sn_alpha50_reload_fast_mvmnt.ogg", t = 0.133},
			{s = path .. "wfoly_sn_alpha50_reload_fast_magout_01.ogg", t = 0.3},
            {s = path .. "wfoly_sn_alpha50_reload_fast_magin_v2_01.ogg", t = 1.13},
			{s = path .. "wfoly_sn_alpha50_reload_fast_magin_v2_02.ogg", t = 1.25},
			{s = path .. "wfoly_sn_alpha50_reload_fast_end.ogg", t = 1.3},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.975,
		PeekProgress = 0.925,
		RefillProgress = 0.85,
		FireASAP = true,
		EjectAt = 0.35,
		DropMagAt = 1.4,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 1, rhik = 0 },
            { t = 0.3, lhik = 0, rhik = 0 },
            { t = 0.6, lhik = 0, rhik = 0 },
            { t = 0.725, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = "COD2019.AX50.Rechamber", t = 0.05},
            {s = path .. "wfoly_sn_alpha50_reload_empty_fast_raise.ogg", t = 0.233},
            {s = path .. "wfoly_sn_alpha50_reload_empty_fast_magout_01.ogg", v = 2.0, t = 0.75},
			{s = path .. "wfoly_sn_alpha50_reload_empty_fast_maggrab.ogg", t = 1.0},
			{s = path .. "wfoly_sn_alpha50_reload_empty_fast_magin_v2_01.ogg", v = 2.0, t = 1.6},
			{s = path .. "wfoly_sn_alpha50_reload_empty_fast_magin_v2_02.ogg", v = 2.0, t = 1.8},
			{s = path .. "wfoly_sn_alpha50_reload_empty_fast_boltclose_01.ogg", t = 2.3},
			{s = path .. "wfoly_sn_alpha50_reload_empty_fast_end.ogg", t = 2.667},
        },
    },
    ["reload_xmag"] = {
        Source = "reload_xmag",
		MinProgress = 0.925,
		PeekProgress = 0.875,
		RefillProgress = 0.725,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.725, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_sn_alpha50_reload_raise.ogg", t = 0/30},
			{s = path .. "wfoly_sn_alpha50_reload_magout_01.ogg", t = 19/30},
			{s = path .. "wfoly_sn_alpha50_reload_arm.ogg", t = 40/30},
			{s = path .. "wfoly_sn_alpha50_reload_maghit.ogg", t = 57/30},
			{s = path .. "wfoly_sn_alpha50_reload_magin_v2_01.ogg", t = 62/30},
			{s = path .. "wfoly_sn_alpha50_reload_magin_v2_02.ogg", t = 66/30},
			{s = path .. "wfoly_sn_alpha50_reload_end.ogg", t = 68/30},
        },
    },
    ["reload_xmag_empty"] = {
        Source = "reload_empty_xmag",
		MinProgress = 0.975,
		PeekProgress = 0.95,
		RefillProgress = 0.9,
		FireASAP = true,
		EjectAt = 0.35,
		DropMagAt = 1.9,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 1, rhik = 0 },
            { t = 0.275, lhik = 0, rhik = 0 },
            { t = 0.65, lhik = 0, rhik = 0 },
            { t = 0.825, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_sn_alpha50_reload_empty_boltopen_01.ogg", t = 0/30},
			{s = path .. "wfoly_sn_alpha50_reload_empty_maggrab.ogg", t = 22/30},
			{s = path .. "wfoly_sn_alpha50_reload_empty_magout_01.ogg", t = 35/30},
			{s = path .. "wfoly_sn_alpha50_reload_empty_arm.ogg", t = 55/30},
			{s = path .. "wfoly_sn_alpha50_reload_empty_magin_v2_01.ogg", t = 73/30},
			{s = path .. "wfoly_sn_alpha50_reload_empty_magin_v2_02.ogg", t = 82/30},
			{s = path .. "wfoly_sn_alpha50_reload_empty_maghit_01.ogg", t = 92/30},
			{s = path .. "wfoly_sn_alpha50_reload_empty_boltclose_01.ogg", t = 110/30},
			{s = path .. "wfoly_sn_alpha50_reload_empty_end.ogg", t = 108/30},
        },
    },
    ["reload_xmag_fast"] = {
        Source = "reload_xmag_fast",
		MinProgress = 0.9,
		PeekProgress = 0.85,
		RefillProgress = 0.65,
		FireASAP = true,
		DropMagAt = 0.8,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.625, lhik = 0, rhik = 0 },
            { t = 0.825, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_sn_alpha50_reload_raise.ogg", t = 0/30},
			{s = path .. "wfoly_sn_alpha50_reload_magout_01.ogg", t = 9/30},
			{s = path .. "wfoly_sn_alpha50_reload_arm.ogg", t = 20/30},
			{s = path .. "wfoly_sn_alpha50_reload_maghit.ogg", t = 32/30},
			{s = path .. "wfoly_sn_alpha50_reload_magin_v2_01.ogg", t = 35/30},
			{s = path .. "wfoly_sn_alpha50_reload_magin_v2_02.ogg", t = 39/30},
			{s = path .. "wfoly_sn_alpha50_reload_end.ogg", t = 46/30},
        },
    },
    ["reload_xmag_fast_empty"] = {
        Source = "reload_empty_xmag_fast",
		MinProgress = 0.975,
		PeekProgress = 0.925,
		RefillProgress = 0.85,
		FireASAP = true,
		EjectAt = 0.35,
		DropMagAt = 1.4,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 1, rhik = 0 },
            { t = 0.3, lhik = 0, rhik = 0 },
            { t = 0.6, lhik = 0, rhik = 0 },
            { t = 0.725, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_sn_alpha50_reload_empty_boltopen_01.ogg", t = 0/30},
			{s = path .. "wfoly_sn_alpha50_reload_empty_maggrab.ogg", t = 20/30},
			{s = path .. "wfoly_sn_alpha50_reload_empty_magout_01.ogg", t = 26/30},
			{s = path .. "wfoly_sn_alpha50_reload_empty_arm.ogg", t = 34/30},
			{s = path .. "wfoly_sn_alpha50_reload_empty_magin_v2_01.ogg", t = 48/30},
			{s = path .. "wfoly_sn_alpha50_reload_empty_magin_v2_02.ogg", t = 53/30},
			{s = path .. "wfoly_sn_alpha50_reload_empty_maghit_01.ogg", t = 57/30},
			{s = path .. "wfoly_sn_alpha50_reload_empty_boltclose_01.ogg", t = 69/30},
			{s = path .. "wfoly_sn_alpha50_reload_empty_end.ogg", t = 79/30},
        },
    },
    ["ready"] = {
        Source = "draw",
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sn_alpha50_raise_first.ogg", t = 0.2},
			{s = path .. "wfoly_sn_alpha50_raise_first_boltclose_01.ogg", t = 0.567},
        },
    },
    ["draw"] = {
        Source = "draw_short",
		MinProgress = 0.8,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sn_alpha50_raise.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.3, lhik = 0, rhik = 0 },
        },
        EventTable = {
            {s = path .. "wfoly_sn_alpha50_drop.ogg", t = 0/30},
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
    },
    ["super_sprint_in"] = {
        Source = "super_sprint_in",
		Time = 1,
    },
    ["super_sprint_out"] = {
        Source = "super_sprint_out",
		Time = 1,
    },
    ["inspect"] = {
        Source = "lookat01",
        MinProgress = 0.1,
        FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.35, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sn_alpha50_inspect_01.ogg", t = 0.033},
			{s = path .. "wfoly_sn_alpha50_inspect_02.ogg", t = 1.7},
			{s = path .. "wfoly_sn_alpha50_inspect_03.ogg", t = 3.867},
        },
    },
    ["bash"] = {
        Source = {"melee","melee2","melee3"},
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 1, rhik = 1 },
        },
    },
    ["enter_bipod"] = {
        Source = "bipod_out",
    },
    ["exit_bipod"] = {
        Source = "bipod_in",
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

-- SWEP.Hook_Think	= ARC9.COD2019.BlendSights2

-------------------------- ATTACHMENTS

--- 6 & ?? Round Mags ---
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
    local magex = wep:HasElement("mag_extend")

    if magex and speedload and Translate_XMag_Fast[anim] then
        return Translate_XMag_Fast[anim]
    elseif magex and Translate_XMag[anim] then
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

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(17, -0.85, -0.04),
	ModelAngleOffset = Angle(0, 0, 0),
	Scale = 1,
    },
    ["go_grip_angled"] = {
    ModelOffset = Vector(0, 0, 0.1),
    },
}

SWEP.AttachmentElements = {
    ["base_none"] = {
        Bodygroups = {
            {0,1},
        },
    },
    ["mag_extend"] = {
        Bodygroups = {
            {1,1},
        },
    },
    ["mag_none"] = {
        Bodygroups = {
            {1,2},
        },
    },
    ["barrel_none"] = {
        Bodygroups = {
            {7,1},
        },
    },
    ["muzzle_none"] = {
        Bodygroups = {
            {2,1},
        },
    },
    ["guard_none"] = {
        Bodygroups = {
            {3,1},
        },
    },
    ["sight_none"] = {
        Bodygroups = {
            {4,1},
        },
    },
    ["stock_none"] = {
        Bodygroups = {
            {5,2},
        },
    },
    ["stock_main_none"] = {
        Bodygroups = {
            {6,1},
        },
    },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model
	local attached = data.elements
    if wep:HasElement("stock_retract") then 
	model:SetBodygroup(5,0)
	model:SetBodygroup(6,0)	
	end
	
    local camo = 0
    if attached["universal_camo"] then
        camo = 1
    end
    model:SetSkin(camo)
end

SWEP.Attachments = {
    { -- 1
        PrintName = ARC9:GetPhrase("mw19_category_muzzle"),
        Category = "cod2019_muzzle",
        DefaultIcon = Material("entities/defattachs/muzzle-ar.png", "mips smooth"),
		Bone = "tag_silencer",
        Pos = Vector(-0.23, 0, 0),
		InstalledElements = {"muzzle_none"},
    },
    { -- 2
        PrintName = ARC9:GetPhrase("mw19_category_barrel"),
		DefaultIcon = Material("entities/defattachs/barrel-ar.png", "mips smooth"),
        Category = "cod2019_ax50_barrel",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
    },
    { -- 3
        PrintName = ARC9:GetPhrase("mw19_category_laser"),
		DefaultIcon = Material("entities/defattachs/laser-ar.png", "mips smooth"),
        Category = "cod2019_tac",
        Bone = "tag_laser_attach",
        Pos = Vector(1.5, 0, -0.1),
		Ang = Angle(0, 0, 180),
    },
    { -- 4
        PrintName = ARC9:GetPhrase("mw19_category_optic"),
		DefaultIcon = Material("entities/defattachs/optic.png", "mips smooth"),
        Bone = "tag_scope",
        Pos = Vector(1.5, 0, -0.1),
        Category = {"cod2019_optic","cod2019_optic_ax50"},
		InstalledElements = {"sight_none"},
		Installed = "cod2019_optic_default_ax50",
    },
    { -- 5
        PrintName = ARC9:GetPhrase("mw19_category_stock"),
		DefaultIcon = Material("entities/defattachs/stock-ar.png", "mips smooth"),
        Category = {"cod2019_ax50_stock","cod2019_tube"},
        Bone = "tag_stock_attach",
        Pos = Vector(0.9, 0, -0.05),
		InstalledElements = {"stock_none","stock_main_none"},
    },
    { -- 6
        PrintName = ARC9:GetPhrase("mw19_category_underbarrel"),
		DefaultIcon = Material("entities/defattachs/grip.png", "mips smooth"),
        Category = "cod2019_grip",
        Bone = "tag_attachments",
        Pos = Vector(16, 0, -1.1),
        Ang = Angle(0, 0, 180),
		InstalledElements = {"guard_none"},
		MergeSlots = {21},
		RejectAttachments = { ["cod2019_grips_bipod_alt"] = true },
    },
    { -- 7
        PrintName = ARC9:GetPhrase("mw19_category_magazine"),
		DefaultIcon = Material("entities/defattachs/magazine-ar.png", "mips smooth"),
		Bone = "tag_mag_attach",
        Category = {"cod2019_mag","cod2019_ax50_mag"},
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
        Pos = Vector(4, 0, -2.5),
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
        Category = "cod2019_ax50_receiver",
        Bone = "tag_attachments",
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(8, 0, 0.5),
		Hidden = false,
    },
	
	-- Cosmetics
    { -- 13
        PrintName = ARC9:GetPhrase("mw19_category_skins"),
        Bone = "tag_cosmetic",
        Pos = Vector(7, 0, 3),
        Category = "cod2019_skins_ax50",
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
        StickerModel = "models/weapons/cod2019/stickers/snip_ax50_decal_a.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(3, 0, 3),
    },
    { -- 16
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/snip_ax50_decal_b.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(1, 0, 3),
    },
    { -- 17
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/snip_ax50_decal_c.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-1, 0, 3),
    },
    { -- 18
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/snip_ax50_decal_d.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-3, 0, 3),
    },
    { -- 19
        PrintName = ARC9:GetPhrase("mw19_category_charm"),
        CosmeticOnly = true,
        Category = {"charm"},
        Bone = "tag_cosmetic",
        Pos = Vector(-0.5, 0, 0),
		Icon_Offset = Vector(-4.5, 0, 3),
		Scale = 1.5,
    },
    { -- 20
        PrintName = ARC9:GetPhrase("mw19_category_stats"),
        Category = {"killcounter","killcounter2"},
        Bone = "tag_cosmetic",
        Pos = Vector(2, 0, 0),
		Icon_Offset = Vector(-9, 0, 3),
		-- RejectAttachments = { ["arc9_stat_proscreen"] = true },
		CosmeticOnly = true,
    },
    { -- 21
        PrintName = "Bipod",
        DefaultAttName = "Default",
        Category = {"cod2019_ax50_bipod"},
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

SWEP.GripPoseParam = 4
SWEP.CodAngledGripPoseParam = 4.5
SWEP.CodStubbyGripPoseParam = 6
SWEP.CodStubbyTallGripPoseParam = 22
SWEP.GripPoseParam2 = 0.5

-- Warzone-esque Stats; Add here to change only when using Warzone Stats variable.
if GetConVar("arc9_mw19_stats_warzone"):GetBool() then

-------------------------- DAMAGE PROFILE
SWEP.DamageMax = 107 -- Damage done at point blank range
SWEP.DamageMin = 99 -- Damage done at maximum range

SWEP.RangeMin = 87 / ARC9.HUToM
SWEP.RangeMax = 107 / ARC9.HUToM

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 3,
    [HITGROUP_CHEST] = 1.05,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 0.85,
    [HITGROUP_RIGHTARM] = 0.85,
    [HITGROUP_LEFTLEG] = 0.85,
    [HITGROUP_RIGHTLEG] = 0.85,
}

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 760 / ARC9.HUToM

-------------------------- FIREMODES

-- SWEP.RPM = 600

-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.6 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.25 -- How long it takes to go from sprinting to being able to fire.

end
