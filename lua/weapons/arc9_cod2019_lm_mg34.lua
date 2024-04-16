AddCSLuaFile()
if CLIENT then
    killicon.Add( "arc9_cod2019_lm_mg34", "vgui/killicons/cod2019_lm_mg34.png", Color(251, 85, 25, 255))
end

SWEP.LoadoutImage = "entities/loadout/arc9_cod2019_lm_mg34.png"

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_lmg") or "Light Machine Guns"

SWEP.PrintName = ARC9:GetPhrase("mw19_weapon_mg34") or "MG34"

SWEP.Class = ARC9:GetPhrase("mw19_class_weapon_lmg") or "Light Machine Gun"
SWEP.Trivia = {
    [ ARC9:GetPhrase("mw19_country") ] = ARC9:GetPhrase("mw19_country_germany"),
    [ ARC9:GetPhrase("mw19_caliber") ] = ARC9:GetPhrase("mw19_caliber_762mauser"),
    [ ARC9:GetPhrase("mw19_weight") ] = string.format(ARC9:GetPhrase("mw19_weight_val"), 12.5, 12.5 * 2.20),
    [ ARC9:GetPhrase("mw19_weight_projectile") ] = string.format(ARC9:GetPhrase("mw19_weight_projectile_val"), 187),
    -- [ ARC9:GetPhrase("mw19_muzzle_energy") ] = "2,510 ft/s",
    -- [ ARC9:GetPhrase("mw19_muzzle_velocity") ] = "3,547 joules"
}

SWEP.Credits = {
    [ ARC9:GetPhrase("mw19_author") ] = "Twilight Sparkle/Firmeteran",
    [ ARC9:GetPhrase("mw19_assets") ] = "Activision/Infinity Ward"
}

SWEP.Description = ARC9:GetPhrase("mw19_weapon_mg34_desc") or [[Fully automatic weapon with a high rate of fire and punishing 7.92 Mauser ammunition. Salvaged WW2 machine guns are still reliable and deadly on the battlefield.]]

SWEP.ViewModel = "models/weapons/cod2019/c_lmg_mg34.mdl"
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_lmg_mg34.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-3.5, 4.25, -7),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-6.5, 4.5, -6),
    TPIKAng = Angle(-12.5, -1, 165),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 38 -- Damage done at point blank range
SWEP.DamageMin = 23 -- Damage done at maximum range

SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 22 / ARC9.HUToM
SWEP.RangeMax = 55 / ARC9.HUToM

SWEP.Penetration = 15 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.15

SWEP.ImpactForce = 12

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 1.375,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 1,
    [HITGROUP_RIGHTLEG] = 1,
}

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 765 / ARC9.HUToM
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

SWEP.RPM = 857

SWEP.Firemodes = {
    {
        Mode = -1,
    },
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1 + 1

SWEP.RecoilSeed = nil

SWEP.RecoilPatternDrift = 55

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 0.2 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.4

SWEP.RecoilDissipationRate = 10 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 0.5 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 1.7

SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.85
SWEP.RecoilMultCrouch = 0.85

SWEP.RecoilPerShot = 1
SWEP.RecoilMax = 3

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilSights = 0.4
SWEP.VisualRecoilPunchSights = 10
SWEP.VisualRecoilRollSights = 15
SWEP.VisualRecoilSideSights = 0
SWEP.VisualRecoilUpSights = 0

SWEP.VisualRecoilPunch = 3
SWEP.VisualRecoilUp = 0.4
SWEP.VisualRecoilRoll = 15
SWEP.VisualRecoilSide = 0.2

SWEP.VisualRecoilDoingFunc = function(up, side, roll, punch, recamount)
    if recamount > 5 then
        recamount = 1.65 - math.Clamp((recamount - 2) / 3.5, 0, 1)
        
        local fakerandom = 1 + (((69+recamount%5*CurTime()%3)*2420)%4)/10 
        
        return up, side * fakerandom, roll, punch
    end

    return up, side, roll, punch
end

-------------------------- SPREAD

SWEP.Spread = 0.0325

SWEP.SpreadAddRecoil = 0.01

SWEP.SpreadAddHipFire = 0
SWEP.SpreadAddMove = 0.02
SWEP.SpreadAddMidAir = 0.045
SWEP.SpreadAddCrouch = -0.03
SWEP.SpreadAddSights = -(SWEP.Spread * 2.75)

SWEP.SpreadMultRecoil = 1.2
SWEP.RecoilModifierCap = 3
SWEP.RecoilModifierCapMove = 0
SWEP.RecoilModifierCapSights = 0

-------------------------- HANDLING

SWEP.SpeedMult = 0.95 -- Walk speed multiplier
SWEP.SpeedMultSights = 0.8 -- When aiming
SWEP.SpeedMultShooting = 0.8

SWEP.AimDownSightsTime = 0.472 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.375 -- How long it takes to go from sprinting to being able to fire.

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
    Pos = Vector(-3.65, -2, 1.3),
    Ang = Angle(0, 0, 4.25),
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
    Pos = Vector(0, -0.5, -0.5),
    Ang = Angle(0, 0, 0)
}

SWEP.MovingPos = Vector(-0.8, -0.8, -0.8)
SWEP.MovingAng = Angle(0, 0, -8)

SWEP.CrouchPos = Vector(-1, -0.5, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.SprintPos = Vector(1, 0, -1)
SWEP.SprintAng = Angle(0, 0, 25)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(19, 40, 5)
SWEP.CustomizeRotateAnchor = Vector(19, -3.5, -4)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeSnapshotPos = Vector(-1, 7, 5)
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeNoRotate = false

SWEP.PeekPos = Vector(2, 7, -1)
SWEP.PeekAng = Angle(0, 0, 5)

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

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_mg34_hr.mdl"
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 0.05
SWEP.ShellPhysBox = Vector(1, 1, 1)
SWEP.ShellSounds = ARC9.COD2019_556_Table

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

SWEP.Overheat = true
SWEP.HeatCapacity = 45
SWEP.HeatDissipation = 22.5
SWEP.HeatDelayTime = 0.25
SWEP.HeatPerShot = 1
SWEP.HeatLockout = false
SWEP.MalfunctionWait = 0.25

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
		MinProgress = 0.95,
		FireASAP = true,
		RefillProgress = 0.835,
		MagSwapTime = 3,
		DropMagAt = 4,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.3, lhik = 1, rhik = 0 },
            { t = 0.35, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 0, rhik = 0 },
            { t = 0.925, lhik = 1, rhik = 1 },
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
		MinProgress = 0.95,
		FireASAP = true,
		RefillProgress = 0.835,
		DropMagAt = 4,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.3, lhik = 1, rhik = 0 },
            { t = 0.35, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 0, rhik = 0 },
            { t = 0.925, lhik = 1, rhik = 1 },
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
		MinProgress = 0.95,
		FireASAP = true,
		RefillProgress = 0.835,
		MagSwapTime = 2.5,
		DropMagAt = 3.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.35, lhik = 1, rhik = 0 },
            { t = 0.4, lhik = 0, rhik = 0 },
            { t = 0.875, lhik = 0, rhik = 0 },
            { t = 0.925, lhik = 1, rhik = 1 },
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
		MinProgress = 0.95,
		FireASAP = true,
		RefillProgress = 0.815,
		MagSwapTime = 2.5,
		DropMagAt = 3.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.35, lhik = 1, rhik = 0 },
            { t = 0.4, lhik = 0, rhik = 0 },
            { t = 0.875, lhik = 0, rhik = 0 },
            { t = 0.925, lhik = 1, rhik = 1 },
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
            { t = 0, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.95, lhik = 1, rhik = 1 },
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
		MinProgress = 0.5,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 1 },
            { t = 0.6, lhik = 0, rhik = 1 },
            { t = 0.675, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_plr_lm_mgolf34_raise_up.ogg", t = 10/30},
            {s = path .. "wfoly_plr_lm_mgolf34_raise_settle.ogg", t = 34/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.2, lhik = 0, rhik = 1 },
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
            { t = 0.35, lhik = 1, rhik = 1 },
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
            { t = 0.025, lhik = 1, rhik = 0 },
            { t = 0.15, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 1, rhik = 1 },
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
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 1, rhik = 1 },
        },
    },
    ["jam"] = {
        Source = "jam",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 1, rhik = 1 },
        },
    },
    ["fix"] = {
        Source = "jam_fix",
		EjectAt = 0.6,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_lm_mgolf34_reload_empty_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_lm_mgolf34_reload_empty_boltopen_01.ogg", t = 12/30},
			{s = path .. "wfoly_plr_lm_mgolf34_reload_empty_boltclose_01.ogg", t = 24/30},
            {s = path .. "wfoly_plr_lm_mgolf34_reload_fast_end.ogg", t = 24/30},
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

-- SWEP.Hook_Think	= ARC9.COD2019.BlendSights2

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

    if super_sprint and Translate_TacSprint[anim] then
        return Translate_TacSprint[anim]
    end

    if speedload then
        if Translate_Fast[anim] then
            return Translate_Fast[anim]
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

SWEP.DefaultBodygroups = "000000000000000000"

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(16, 0, -1.2),
	ModelAngleOffset = Angle(0, 0, 0),
	Scale = 0.9,
    },
    ["go_grip_angled"] = {
    ModelOffset = Vector(0, 0, 0.1),
    },
    ["cod2019_griptape_01"] = {
    Model = "models/weapons/cod2019/attachs/weapons/mg34/attachment_vm_lm_mgolf34_pistolgrip_tape.mdl",
    },
    ["cod2019_griptape_02"] = {
    Model = "models/weapons/cod2019/attachs/weapons/mg34/attachment_vm_lm_mgolf34_pistolgrip_tape.mdl",
    },
    ["cod2019_griptape_03"] = {
    Model = "models/weapons/cod2019/attachs/weapons/mg34/attachment_vm_lm_mgolf34_pistolgrip_tape.mdl",
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
	["sight_back_folded"] = {
        Bodygroups = {
            {5,1},
        },
    },
	["sight_back_none"] = {
        Bodygroups = {
            {5,2},
        },
    },
	["sight_front_folded"] = {
        Bodygroups = {
            {8,1},
        },
    },
	["sight_front_none"] = {
        Bodygroups = {
            {8,2},
        },
    },
	["grip_rail"] = {
        Bodygroups = {
            {6,1},
        },
    },
	["laser_rail"] = {
        Bodygroups = {
            {0, 0},
        },
    },
    ["barrel_custom"] = {
		AttPosMods = { 
			[3] = { Pos = Vector(-1, -0.85, 0.02), },
		},
    },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model
    if wep:HasElement("barrel_none") then model:SetBodygroup(8,1) end
    if wep:HasElement("barrel_custom") then model:SetBodygroup(8,1) end
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
        Category = "cod2019_mg34_barrel",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
    },
    { -- 3
        PrintName = ARC9:GetPhrase("mw19_category_laser"),
		DefaultIcon = Material("entities/defattachs/laser-ar.png", "mips smooth"),
        Category = "cod2019_tac_rail_alt",
        Bone = "tag_laser_attach",
        Pos = Vector(1.5, -0.75, 0.02),
        Ang = Angle(0, 0, 0),
    },
    { -- 4
        PrintName = ARC9:GetPhrase("mw19_category_optic"),
		DefaultIcon = Material("entities/defattachs/optic.png", "mips smooth"),
        Category = {"cod2019_optic"},
        Bone = "tag_holo",
        Pos = Vector(1.5, 0, -0.13),
		InstalledElements = {"sight_back_folded","sight_front_folded"},
    },
    { -- 5
        PrintName = ARC9:GetPhrase("mw19_category_stock"),
		DefaultIcon = Material("entities/defattachs/stock-ar.png", "mips smooth"),
        Category = {"cod2019_tube","cod2019_mg34_stock"},
        Bone = "tag_stock_attach",
        Pos = Vector(0, 0, 0),
		InstalledElements = {"stock_adapter"},
    },
    { -- 6
        PrintName = ARC9:GetPhrase("mw19_category_underbarrel"),
		DefaultIcon = Material("entities/defattachs/grip.png", "mips smooth"),
        Category = "cod2019_grip",
        Bone = "tag_grip_attach",
        Pos = Vector(-2.6, 0, 0),
        Ang = Angle(0, 0, 180),
		InstalledElements = {"grip_rail"},
		MergeSlots = {21}, -- Bipod
    },
    { -- 7
        PrintName = ARC9:GetPhrase("mw19_category_magazine"),
		DefaultIcon = Material("entities/defattachs/magazine-ar.png", "mips smooth"),
		Bone = "tag_mag_attach",
        Category = {"cod2019_mg34_mag","cod2019_mag"},
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(1, -3, -3),
    },
    { -- 8
        PrintName = ARC9:GetPhrase("mw19_category_ammo"),
		DefaultIcon = Material("arc9/def_att_icons/ammotype.png", "mips smooth"),
        Bone = "tag_mag_attach",
		Category = {"cod2019_ammo"},
		Pos = Vector(-1.5, 0, 0),
		Icon_Offset = Vector(1, -3, -3),
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
        Pos = Vector(15, 0, -4),
    },
	
	-- Unofficial
    { -- 11
        PrintName = ARC9:GetPhrase("mw19_category_receiver"),
        Category = "cod2019_mg34_receiver",
        Bone = "tag_attachments",
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(5, 0, 0),
		Hidden = false,
    },
	
	-- Cosmetics
    { -- 12
        PrintName = ARC9:GetPhrase("mw19_category_skins"),
        Bone = "tag_cosmetic",
        Pos = Vector(14, -1, 0),
        Category = "cod2019_skins_mg34",
		CosmeticOnly = true,
    },
    { -- 13
        PrintName = ARC9:GetPhrase("mw19_category_camouflage"),
        Category = {"universal_camo"},
        Bone = "tag_cosmetic",
        Pos = Vector(12, -1.25, 0),
        CosmeticOnly = true,
    },
    { -- 14
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/lmg_mg34_decal_a.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(10, -1.5, 0),
    },
    { -- 15
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/lmg_mg34_decal_b.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(8, -1.75, 0),
    },
    { -- 16
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/lmg_mg34_decal_c.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(6, -2, 0),
    },
    { -- 17
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/lmg_mg34_decal_d.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(4, -2.25, 0),
    },
    { -- 18
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/lmg_mg34_decal_e.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(2, -2.5, 0),
    },
    { -- 19
        PrintName = ARC9:GetPhrase("mw19_category_charm"),
        CosmeticOnly = true,
        Category = {"charm"},
        Bone = "tag_cosmetic",
        Pos = Vector(-0, 0.4, -0.35),
		Ang = Angle(0, 0, -90),
		Icon_Offset = Vector(0, 0.3, 3.15),
		Scale = 1.5,
    },
    { -- 20
        PrintName = ARC9:GetPhrase("mw19_category_stats"),
        Category = {"killcounter","killcounter2"},
        Bone = "tag_cosmetic",
		RejectAttachments = { ["arc9_stat_proscreen"] = true, ["arc9_stat_proscreen_main"] = true },
        Pos = Vector(1, -0.175, 0.7),
		Ang = Angle(-90, 0, -35),
		Icon_Offset = Vector(0, -4.25, -1),
		CosmeticOnly = true,
    },
    { -- 21
        PrintName = "Bipod",
        Category = {"cod2019_mg34_bipod"},
        Bone = "tag_bipod_attach",
        Pos = Vector(0, 0, 0),
		Hidden = true,
    },
}

SWEP.GripPoseParam = 5
SWEP.GripPoseParam2 = 0.5
SWEP.CodAngledGripPoseParam = 4
SWEP.CodStubbyGripPoseParam = 26
SWEP.CodStubbyTallGripPoseParam = 26

-- Warzone-esque Stats; Add here to change only when using Warzone Stats variable.
if GetConVar("arc9_mw19_stats_warzone"):GetBool() then

-------------------------- DAMAGE PROFILE
SWEP.DamageMax = 29 -- Damage done at point blank range
SWEP.DamageMin = 27 -- Damage done at maximum range

SWEP.RangeMin = 34 / ARC9.HUToM
SWEP.RangeMax = 35 / ARC9.HUToM

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 1.375,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 1,
    [HITGROUP_RIGHTLEG] = 1,
}

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 765 / ARC9.HUToM

-------------------------- FIREMODES

SWEP.RPM = 857

-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.472 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.25 -- How long it takes to go from sprinting to being able to fire.

end
