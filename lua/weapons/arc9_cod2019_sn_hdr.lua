AddCSLuaFile()
if CLIENT then
    killicon.Add( "arc9_cod2019_sn_hdr", "vgui/killicons/cod2019_sn_hdr.png", Color(251, 85, 25, 255))
end

SWEP.LoadoutImage = "entities/loadout/arc9_cod2019_sn_hdr.png"

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_sniper") or "Sniper Rifles"

SWEP.PrintName = ARC9:GetPhrase("mw19_weapon_hdr") or "HDR"

SWEP.Class = ARC9:GetPhrase("mw19_class_weapon_sniper") or "Sniper Rifle"
SWEP.Trivia = {
    [ ARC9:GetPhrase("mw19_country") ] = ARC9:GetPhrase("mw19_country_russia"),
    [ ARC9:GetPhrase("mw19_manufacturer") ] = ARC9:GetPhrase("mw19_manufacturer_vlk"),
    [ ARC9:GetPhrase("mw19_caliber") ] = ARC9:GetPhrase("mw19_caliber_127x108"),
    [ ARC9:GetPhrase("mw19_weight") ] = string.format(ARC9:GetPhrase("mw19_weight_val"), 6.06, 6.06 * 2.20),
    [ ARC9:GetPhrase("mw19_weight_projectile") ] = string.format(ARC9:GetPhrase("mw19_weight_projectile_val"), 914),
    -- [ ARC9:GetPhrase("mw19_muzzle_energy") ] = "1,580 ft/s",
    -- [ ARC9:GetPhrase("mw19_muzzle_velocity") ] = "6,870 joules"
}

SWEP.Credits = {
    [ ARC9:GetPhrase("mw19_author") ] = "Twilight Sparkle/Firmeteran",
    [ ARC9:GetPhrase("mw19_assets") ] = "Activision/Infinity Ward"
}

SWEP.Description = ARC9:GetPhrase("mw19_weapon_hdr_desc") or [[Anti-material bolt action sniper rifle chambered in 12.7x108mm ammunition. 745 gr bullets have a lower muzzle velocity, but are devastating at very long ranges.]]

SWEP.ViewModel = "models/weapons/cod2019/c_snip_hdr.mdl"
SWEP.WorldModel = "models/weapons/w_shot_m3super90.mdl"
SWEP.DefaultBodygroups = "00000000"

SWEP.Slot = 3

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_snip_hdr.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-11, 6, -2.5),
    Ang = Angle(-17, 3, 180),
    TPIKPos = Vector(-7, 5, -2),
    TPIKAng = Angle(-10, 3, 180),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 111 -- Damage done at point blank range
SWEP.DamageMin = 34 -- Damage done at maximum range

SWEP.Num = 1

SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 2000 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 11000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 15 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.5

SWEP.ImpactForce = 25

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

SWEP.RPM = 297

SWEP.Firemodes = {
    {
        Mode = 1,
    },
}

-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 4

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 3 -- Multiplier for vertical recoil

SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.3

SWEP.RecoilDissipationRate = 7.5 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 5 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 5

SWEP.RecoilMultCrouch = 0.8
SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.7

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
SWEP.SprintToFireTime = 0.4 -- How long it takes to go from sprinting to being able to fire.

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
    Pos = Vector(-4.75, -3, -0.2),
    Ang = Angle(-0.8, 0.3, -8),
    Magnification = 1.17,
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

SWEP.MovingPos = Vector(-1, -0.8, -1.5)
SWEP.MovingAng = Angle(0, 0, -10)

SWEP.CrouchPos = Vector(-1, -0.5, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.SprintPos = Vector(1, 0, -1)
SWEP.SprintAng = Angle(0, 0, 25)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(16, 50, 3)
SWEP.CustomizeRotateAnchor = Vector(16, -4, -4)
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

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_MAGIC
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

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_762_hr.mdl"
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 0.1
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)
SWEP.EjectDelay = 0.4
SWEP.ShellSounds = ARC9.COD2019_50bmg_Table

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_snip_hdr_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_01.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_02.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_03.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_04.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_05.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_06.ogg",
}
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineTime = 2.15
SWEP.DropMagazineQCA = 3
SWEP.DropMagazineAng = Angle(0, -90, 0)

-------------------------- SOUNDS

local path = "weapons/cod2019/hdr/"

SWEP.ShootSound = "COD2019.HDR.Fire"
SWEP.ShootSoundIndoor = "COD2019.HDR.Fire"

SWEP.ShootSoundSilenced = "COD2019.HDR.Fire.S"
SWEP.ShootSoundSilencedIndoor = "COD2019.HDR.Fire.S"

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

SWEP.EnterSightsSound = path .. "weap_sn_hdromeo_ads_up.ogg"
SWEP.ExitSightsSound = path .. "weap_sn_hdromeo_ads_down.ogg"

SWEP.TriggerDelay = 0.03 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayTime = 0.03 -- Time until weapon fires.

SWEP.TriggerDownSound = "weapons/cod2019/svd/weap_delta_fire_first_plr_01.ogg"
SWEP.TriggerUpSound = "weapons/cod2019/svd/weap_delta_disconnector_plr_01.ogg"

SWEP.BulletBones = {
    [1] = {"j_bullet1","j_ammo1"},
    [2] = {"j_bullet2","j_ammo2"},
    [3] = {"j_bullet3","j_ammo3"},
}

SWEP.HideBones  = {
    [1] = "j_mag2",
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
		FireASAP = true,
        EventTable = {
            {s = "COD2019.HDR.Rechamber", v = 0.4, t = 0.2},
			{s = path .. "wfoly_plr_sn_hdromeo_rechamber_boltclose_01.ogg", v = 0.4, t = 0.6},
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
		PeekProgress = 0.88,
		RefillProgress = 0.725,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sn_hdromeo_reload_start.ogg", t = 0.0},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_magout_01.ogg", t = 0.567},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_pull.ogg", t = 0.933},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_rattle.ogg", t = 2.033},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_magin_v2_01.ogg", t = 2.167},
            {s = path .. "wfoly_plr_sn_hdromeo_reload_magin_v2_02.ogg", t = 2.7},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_end.ogg", t = 3.033},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.95,
		PeekProgress = 0.925,
		RefillProgress = 0.875,
		FireASAP = true,
		EjectAt = 0.35,
		DropMagAt = 2.2,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.175, lhik = 1, rhik = 0 },
            { t = 0.3, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.825, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_plr_sn_hdromeo_reload_empty_start.ogg", t = 0.0},
            {s = "COD2019.HDR.Rechamber", v = 0.4, t = 0.067},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_pull.ogg", t = 0.433},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_raise.ogg", t = 0.867},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_magout_01.ogg", t = 1.333},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_toss.ogg", t = 1.667},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_arm.ogg", t = 2.4},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_magin_v2_01.ogg", t = 2.767},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_magin_v2_02.ogg", t = 3.267},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_end.ogg", t = 3.567},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_fast_boltclose_01.ogg", t = 3.9},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.925,
		PeekProgress = 0.9,
		RefillProgress = 0.725,
		FireASAP = true,
		DropMagAt = 1.1,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sn_hdromeo_reload_fast_start.ogg", t = 0.0},
            {s = path .. "wfoly_plr_sn_hdromeo_reload_fast_magout_01.ogg", t = 0.535},
            {s = path .. "wfoly_plr_sn_hdromeo_reload_fast_pull.ogg", t = 0.667},
            {s = path .. "wfoly_plr_sn_hdromeo_reload_fast_tilt.ogg", t = 1.433},
            {s = path .. "wfoly_plr_sn_hdromeo_reload_fast_magin_v2_01.ogg", t = 1.567},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_fast_magin_v2_02.ogg", t = 1.91},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_fast_shake.ogg", t = 1.91},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_fast_end.ogg", t = 2.233},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.95,
		PeekProgress = 0.925,
		RefillProgress = 0.875,
		FireASAP = true,
		EjectAt = 0.35,
		DropMagAt = 1.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 1, rhik = 0 },
            { t = 0.35, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = "COD2019.HDR.Rechamber", v = 0.4, t = 0.1},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_fast_start.ogg", t = 0.2},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_fast_handmove.ogg", t = 0.767},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_fast_magout_01.ogg", t = 1.2},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_fast_shake.ogg", t = 1.333},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_fast_arm.ogg", t = 2.133},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_fast_magin_v2_01.ogg", t = 2.133},
            {s = path .. "wfoly_plr_sn_hdromeo_reload_empty_fast_magin_v2_02.ogg", t = 2.5},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_fast_rattle.ogg", t = 2.5},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_fast_boltclose_01.ogg", t = 3.033},
            {s = path .. "wfoly_plr_sn_hdromeo_reload_empty_fast_armforward.ogg", t = 3.067},
            {s = path .. "wfoly_plr_sn_hdromeo_reload_empty_fast_end.ogg", t = 3.333},
        },
    },
    ["reload_xmag"] = {
        Source = "reload_xmag",
		MinProgress = 0.925,
		PeekProgress = 0.88,
		RefillProgress = 0.725,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sn_hdromeo_reload_start.ogg", t = 0.0},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_magout_01.ogg", t = 0.567},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_pull.ogg", t = 0.933},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_rattle.ogg", t = 2.033},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_magin_v2_01.ogg", t = 2.167},
            {s = path .. "wfoly_plr_sn_hdromeo_reload_magin_v2_02.ogg", t = 2.7},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_end.ogg", t = 3.033},
        },
    },
    ["reload_xmag_empty"] = {
        Source = "reload_empty_xmag",
		MinProgress = 0.95,
		PeekProgress = 0.925,
		RefillProgress = 0.875,
		FireASAP = true,
		EjectAt = 0.35,
		DropMagAt = 2.2,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.175, lhik = 1, rhik = 0 },
            { t = 0.3, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.825, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_plr_sn_hdromeo_reload_empty_start.ogg", t = 0.0},
            {s = "COD2019.HDR.Rechamber", v = 0.4, t = 0.067},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_pull.ogg", t = 0.433},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_raise.ogg", t = 0.867},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_magout_01.ogg", t = 1.333},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_toss.ogg", t = 1.667},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_arm.ogg", t = 2.4},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_magin_v2_01.ogg", t = 2.767},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_magin_v2_02.ogg", t = 3.267},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_end.ogg", t = 3.567},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_fast_boltclose_01.ogg", t = 3.9},
        },
    },
    ["reload_xmag_fast"] = {
        Source = "reload_xmag_fast",
		MinProgress = 0.925,
		PeekProgress = 0.9,
		RefillProgress = 0.725,
		FireASAP = true,
		DropMagAt = 1.1,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sn_hdromeo_reload_fast_start.ogg", t = 0.0},
            {s = path .. "wfoly_plr_sn_hdromeo_reload_fast_magout_01.ogg", t = 0.535},
            {s = path .. "wfoly_plr_sn_hdromeo_reload_fast_pull.ogg", t = 0.667},
            {s = path .. "wfoly_plr_sn_hdromeo_reload_fast_tilt.ogg", t = 1.433},
            {s = path .. "wfoly_plr_sn_hdromeo_reload_fast_magin_v2_01.ogg", t = 1.567},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_fast_magin_v2_02.ogg", t = 1.91},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_fast_shake.ogg", t = 1.91},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_fast_end.ogg", t = 2.233},
        },
    },
    ["reload_xmag_fast_empty"] = {
        Source = "reload_empty_xmag_fast",
		MinProgress = 0.95,
		PeekProgress = 0.925,
		RefillProgress = 0.875,
		FireASAP = true,
		EjectAt = 0.35,
		DropMagAt = 1.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 1, rhik = 0 },
            { t = 0.35, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = "COD2019.HDR.Rechamber", v = 0.4, t = 0.1},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_fast_start.ogg", t = 0.2},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_fast_handmove.ogg", t = 0.767},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_fast_magout_01.ogg", t = 1.2},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_fast_shake.ogg", t = 1.333},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_fast_arm.ogg", t = 2.133},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_fast_magin_v2_01.ogg", t = 2.133},
            {s = path .. "wfoly_plr_sn_hdromeo_reload_empty_fast_magin_v2_02.ogg", t = 2.5},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_fast_rattle.ogg", t = 2.5},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_fast_boltclose_01.ogg", t = 3.033},
            {s = path .. "wfoly_plr_sn_hdromeo_reload_empty_fast_armforward.ogg", t = 3.067},
            {s = path .. "wfoly_plr_sn_hdromeo_reload_empty_fast_end.ogg", t = 3.333},
        },
    },
    ["ready"] = {
        Source = "draw",
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_plr_sn_hdromeo_raise_first_up.ogg", t = 0.033},
			{s = path .. "wfoly_plr_sn_hdromeo_raise_first_boltclose_01.ogg", t = 0.3},
			{s = path .. "wfoly_plr_sn_hdromeo_raise_first_adjust.ogg", t = 1.0},
			{s = path .. "wfoly_plr_sn_hdromeo_raise_first_settle.ogg", t = 1.4},
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
            {s = path .. "wfoly_plr_sn_hdromeo_raise_up.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sn_hdromeo_raise_hand.ogg", t = 33/30},
			{s = path .. "wfoly_plr_sn_hdromeo_raise_settle.ogg", t = 45/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.2, lhik = 0, rhik = 0 },
        },
        EventTable = {
            {s = path .. "wfoly_plr_sn_hdromeo_reload_empty_end.ogg", t = 0/30},
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
            { t = 0.4, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 1, rhik = 0 },
            { t = 1.1, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sn_hdromeo_inspect_01.ogg", t = 0.033},
			{s = path .. "wfoly_sn_hdromeo_inspect_02.ogg", t = 1.7},
			{s = path .. "wfoly_sn_hdromeo_inspect_03.ogg", t = 3.867},
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
        Source = "bipod_out",
    },
    ["hybrid_on"] = {
        Source = "hybrid_off",
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
        Source = "hybrid_on",
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
    ModelOffset = Vector(1, 0, 0),
    },
    ["cod2019_rytec_bipod"] = {
    BipodPos = Vector(-1.5, -3, 0),
    BipodAng = Angle(-1, 0, -7)
    },
    ["cod2019_ax50_bipod"] = {
    BipodPos = Vector(-1.5, -3, 0),
    BipodAng = Angle(-1, 0, -7)
    },
}

SWEP.AttachmentElements = {
    ["base_none"] = {
        Bodygroups = {
            {0,1},
        },
    },
    ["body2_none"] = {
        Bodygroups = {
            {1,1},
        },
    },
    ["mag_extend"] = {
        Bodygroups = {
            {2,1},
        },
    },
    ["mag_none"] = {
        Bodygroups = {
            {2,2},
        },
    },
    ["pistol_grip_none"] = {
        Bodygroups = {
            {3,1},
        },
    },
    ["muzzle_none"] = {
        Bodygroups = {
            {4,1},
        },
    },
    ["guard_none"] = {
        Bodygroups = {
            {5,1},
        },
    },
    ["stock_none"] = {
        Bodygroups = {
            {6,1},
        },
    },
    ["sight_none"] = {
        Bodygroups = {
            {7,1},
        },
    },
	["scope_hdr"] = {
    -- AttPosMods = { [3] = { Pos = Vector(7.5, 0, -0.1), } }	
	}
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model
    if wep:HasElement("stock_retract") then 
	model:SetBodygroup(5,0)
	model:SetBodygroup(6,0)	
	end
end

SWEP.Attachments = {
    { -- 1
        PrintName = ARC9:GetPhrase("mw19_category_muzzle"),
        Category = "cod2019_muzzle",
        DefaultIcon = Material("entities/defattachs/muzzle-ar.png", "mips smooth"),
		Bone = "tag_silencer",
        Pos = Vector(-0.23, 0, 0),
    },
    { -- 2
        PrintName = ARC9:GetPhrase("mw19_category_barrel"),
		DefaultIcon = Material("entities/defattachs/barrel-ar.png", "mips smooth"),
        Category = "cod2019_hdr_barrel",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(16, 0, 0),
    },
    { -- 3
        PrintName = ARC9:GetPhrase("mw19_category_laser"),
		DefaultIcon = Material("entities/defattachs/laser-ar.png", "mips smooth"),
        Category = "cod2019_tac",
        Bone = "tag_laser_attach",
        Pos = Vector(0, 0, -0.1),
		Ang = Angle(0, 0, 180),
    },
    { -- 4
        PrintName = ARC9:GetPhrase("mw19_category_optic"),
		DefaultIcon = Material("entities/defattachs/optic.png", "mips smooth"),
        Bone = "tag_scope",
        Pos = Vector(1.5, 0, -0.1),
        Category = {"cod2019_optic","cod2019_optic_hdr"},
		InstalledElements = {"sight_none"},
		Installed = "cod2019_optic_default_hdr",
		CorrectiveAng = Angle(-0.5, 1.15, 0),
    },
    { -- 5
        PrintName = ARC9:GetPhrase("mw19_category_stock"),
		DefaultIcon = Material("entities/defattachs/stock-ar.png", "mips smooth"),
        Category = {"cod2019_hdr_stock","cod2019_tube"},
        Bone = "tag_stock_attach",
        Pos = Vector(0.6, 0, 0.5),
		InstalledElements = {"stock_none","stock_main_none"},
    },
    { -- 6
        PrintName = ARC9:GetPhrase("mw19_category_underbarrel"),
		DefaultIcon = Material("entities/defattachs/grip.png", "mips smooth"),
        Category = "cod2019_grip",
        Bone = "tag_attachments",
        Pos = Vector(14.5, 0, -0.4),
        Ang = Angle(0, 0, 180),
		InstalledElements = {"guard_none"},
		MergeSlots = {21},
		RejectAttachments = { ["cod2019_grips_bipod_alt"] = true },
    },
    { -- 7
        PrintName = ARC9:GetPhrase("mw19_category_magazine"),
		DefaultIcon = Material("entities/defattachs/magazine-ar.png", "mips smooth"),
		Bone = "tag_mag_attach",
        Category = {"cod2019_mag","cod2019_hdr_mag"},
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
		Hidden = true,
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
        Category = "cod2019_hdr_receiver",
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
        Category = "cod2019_skins_hdr",
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
        StickerModel = "models/weapons/cod2019/stickers/snip_hdr_decal_a.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(3, 0, 3),
    },
    { -- 16
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/snip_hdr_decal_b.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(1, 0, 3),
    },
    { -- 17
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/snip_hdr_decal_c.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-1, 0, 3),
    },
    { -- 18
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/snip_hdr_decal_d.mdl",
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
		RejectAttachments = { ["arc9_stat_proscreen_main"] = true },
		CosmeticOnly = true,
    },
    { -- 21
        PrintName = "Bipod",
        DefaultAttName = "Default",
        Category = {"cod2019_hdr_bipod"},
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

SWEP.GripPoseParam = 3
SWEP.CodAngledGripPoseParam = 4
SWEP.CodStubbyGripPoseParam = 22
SWEP.CodStubbyTallGripPoseParam = 26
SWEP.GripPoseParam2 = 0.5

-- Warzone-esque Stats; Add here to change only when using Warzone Stats variable.
if GetConVar("arc9_mw19_stats_warzone"):GetBool() then

-------------------------- DAMAGE PROFILE
SWEP.DamageMax = 112 -- Damage done at point blank range
SWEP.DamageMin = 108 -- Damage done at maximum range

SWEP.RangeMin = 116 / ARC9.HUToM
SWEP.RangeMax = 117 / ARC9.HUToM

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 2.68,
    [HITGROUP_CHEST] = 1.05,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 0.815,
    [HITGROUP_RIGHTARM] = 0.815,
    [HITGROUP_LEFTLEG] = 0.815,
    [HITGROUP_RIGHTLEG] = 0.815,
}

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 720 / ARC9.HUToM

-------------------------- FIREMODES

-- SWEP.RPM = 600

-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.6 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.25 -- How long it takes to go from sprinting to being able to fire.

end
