AddCSLuaFile()
if CLIENT then
    killicon.Add( "arc9_cod2019_lm_finn", "vgui/killicons/cod2019_lm_finn.png", Color(251, 85, 25, 255))
end

SWEP.LoadoutImage = "entities/loadout/arc9_cod2019_lm_finn.png"

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.NotForNPCs = false
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_lmg") or "Light Machine Guns"
SWEP.ARC9WeaponCategory = 4

SWEP.PrintName = ARC9:GetPhrase("mw19_weapon_finn") or "FiNN"

SWEP.Class = ARC9:GetPhrase("mw19_class_weapon_lmg") or "Light Machine Gun"
SWEP.Trivia = {
    [ ARC9:GetPhrase("mw19_country") ] = ARC9:GetPhrase("mw19_country_usa"),
    [ ARC9:GetPhrase("mw19_manufacturer") ] = ARC9:GetPhrase("mw19_manufacturer_tempus"),
    [ ARC9:GetPhrase("mw19_caliber") ] = ARC9:GetPhrase("mw19_caliber_556"),
    [ ARC9:GetPhrase("mw19_weight") ] = string.format(ARC9:GetPhrase("mw19_weight_val"), 4.5, 4.5 * 2.20),
    [ ARC9:GetPhrase("mw19_weight_projectile") ] = string.format(ARC9:GetPhrase("mw19_weight_projectile_val"), 62),
}

SWEP.Credits = {
    [ ARC9:GetPhrase("mw19_author") ] = "Twilight Sparkle/Firmeteran",
    [ ARC9:GetPhrase("mw19_assets") ] = "Activision/Infinity Ward"
}

SWEP.Description = ARC9:GetPhrase("mw19_weapon_finn_desc") or [[An ultra-light open bolt 5.56 machine gun with a low cyclic rate and advanced recoil controls, giving the FiNN exceptional full-auto accuracy.]]

SWEP.ViewModel = "models/weapons/cod2019/c_lmg_finn.mdl"
SWEP.WorldModel = "models/weapons/cod2019/w_lmg_finn.mdl"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_lmg_finn.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-6.5, 3.25, -6.75),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-8.5, 4.5, -4),
    TPIKAng = Angle(-12.5, -1, 165),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 26 -- Damage done at point blank range
SWEP.DamageMin = 20 -- Damage done at maximum range

SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 15 / ARC9.HUToM
SWEP.RangeMax = 40 / ARC9.HUToM

SWEP.Penetration = 15 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.15

SWEP.ImpactForce = 12

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 1.3,
    [HITGROUP_CHEST] = 1.3,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 1,
    [HITGROUP_RIGHTLEG] = 1,
}

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 810 / ARC9.HUToM
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.5

-------------------------- MAGAZINE

SWEP.Ammo = "ar2" -- What ammo type this gun uses.

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 75 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 10 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 632

SWEP.Firemodes = {
    {
        Mode = -1,
    },
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1.4

--SWEP.RecoilSeed = nil

SWEP.RecoilPatternDrift = 5

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.1
SWEP.RecoilRandomSide = 0.1

SWEP.RecoilDissipationRate = 10 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 0.5 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 2

SWEP.RecoilMultCrouch = 0.8

SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.95

SWEP.RecoilPerShot = 1
SWEP.RecoilMax = 3

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilMultSights = 0.5
SWEP.VisualRecoilPunchSights = 15
SWEP.VisualRecoilRollSights = 5
SWEP.VisualRecoilSideSights = 0
SWEP.VisualRecoilUpSights = 0

SWEP.VisualRecoilPunch = 2
SWEP.VisualRecoilUp = 0.4
SWEP.VisualRecoilRoll = 5
SWEP.VisualRecoilSide = 0.5

SWEP.VisualRecoilSpringPunchDamping = 11
SWEP.VisualRecoilDampingConst = 75
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

SWEP.AimDownSightsTime = 0.35 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.375 -- How long it takes to go from sprinting to being able to fire.

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.35

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 255, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-2.37, -1, 0.525),
    Ang = Angle(0, 0, 2.5),
    Magnification = 1.1,
    ViewModelFOV = 56,
	CrosshairInSights = false
}

SWEP.IronSightsHook = function(self) -- If any attachments equipped should alter Irons
    local attached = self:GetElements()

    if attached["cod2019_finn_stock_saw"] then
        return {
			Pos = Vector(1, -3, -5),
			Ang = Angle(0, 0, -20),
			Magnification = 1.1,
			ViewModelFOV = 56,
			CrosshairInSights = true
        }
    end

end

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

SWEP.MovingPos = Vector(-1, -0.8, -1)
SWEP.MovingAng = Angle(0, 0, -10)

SWEP.CrouchPos = Vector(-1, -0.5, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.SprintPos = Vector(1, 0, -1)
SWEP.SprintAng = Angle(0, 0, 25)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(15, 50, 3)
SWEP.CustomizeRotateAnchor = Vector(15, -2.25, -4)
SWEP.CustomizeSnapshotFOV = 65
SWEP.CustomizeSnapshotPos = Vector(-1, 25, 2.5)
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeNoRotate = false

SWEP.PeekPos = Vector(2, 2, -1)
SWEP.PeekAng = Angle(0, 0, 5)

SWEP.PeekMaxFOV = 65

-------------------------- HoldTypes

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeHolstered = "passive"
SWEP.HoldTypeSights = "ar2"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"
SWEP.HoldTypeNPC = "ar2"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "muzzleflash_lmg"
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

SWEP.ExtraShellModels = {
    [1] = {
        model = "models/weapons/cod2019/shared/lmg_link.mdl",
        physbox = Vector(1, 1, 1),
        smoke = false
    },
    [2] = {
        model = "models/weapons/cod2019/shared/lmg_link.mdl",
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
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_lmg_finn_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
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
SWEP.DropMagazineAng = Angle(0, -90, -90)

-------------------------- SOUNDS

local path = "weapons/cod2019/finn/"

SWEP.ShootSound = "COD2019.FiNN.Fire"
SWEP.ShootSoundIndoor = "COD2019.FiNN.Fire"

SWEP.ShootSoundSilenced = "COD2019.FiNN.Fire.S"
SWEP.ShootSoundSilencedIndoor = "COD2019.FiNN.Fire.S"

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

SWEP.EnterSightsSound = "weapons/cod2019/ak47/wfoly_ar_akilo47_ads_up.ogg"
SWEP.ExitSightsSound = "weapons/cod2019/ak47/wfoly_ar_akilo47_ads_down.ogg"

SWEP.BulletBones = {
    [1] = "j_bullet01",
    [2] = "j_bullet02",
	[3] = "j_bullet03",
	[4] = "j_bullet04",
	[5] = "j_bullet05",
	[6] = "j_bullet06",
	[7] = "j_bullet07",
	[8] = "j_bullet08",
	[9] = "j_bullet09",
	[10] = "j_bullet010",
	[11] = "j_bullet011",
	[12] = "j_bullet012",
	[13] = "j_bullet013",
	[14] = "j_bullet014",
	[15] = "j_bullet015",
	[16] = "j_bullet016",
}

SWEP.HideBones  = {
    [1] = "j_mag2",
}

SWEP.TriggerDelay = 0.05 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayCancellable = false
SWEP.TriggerDelayTime = 0.05 -- Time until weapon fires.

SWEP.TriggerDownSound = "weapons/cod2019/finn/weap_sierrax_prefire_plr_01.ogg"
SWEP.TriggerUpSound = "weapons/cod2019/finn/weap_sierrax_disconnector_plr_01.ogg"

SWEP.Animations = {
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
		MinProgress = 0.925,
		FireASAP = true,
		RefillProgress = 0.8,
		MagSwapTime = 3,
		DropMagAt = 2,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_lm_sierrax_reload_lift.ogg", t = 0/30},
			{s = path .. "wfoly_lm_sierrax_reload_coveropen.ogg", t = 12/30},
			{s = path .. "wfoly_lm_sierrax_reload_magout.ogg", t = 42/30},
			{s = path .. "wfoly_lm_sierrax_reload_rotate.ogg", t = 65/30},
			{s = path .. "wfoly_lm_sierrax_reload_maghit.ogg", t = 86/30},
			{s = path .. "wfoly_lm_sierrax_reload_magin.ogg", t = 98/30},
			{s = path .. "wfoly_lm_sierrax_reload_beltpull.ogg", t = 107/30},
			{s = path .. "wfoly_lm_sierrax_reload_bullets.ogg", t = 114/30},
			{s = path .. "wfoly_lm_sierrax_reload_closecover.ogg", t = 143/30},
			{s = path .. "wfoly_lm_sierrax_reload_end.ogg", t = 152/30},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.925,
		FireASAP = true,
		RefillProgress = 0.825,
		MagSwapTime = 3,
		DropMagAt = 3.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.05, lhik = 1, rhik = 0 },
            { t = 0.15, lhik = 0, rhik = 0 },
            { t = 0.825, lhik = 0, rhik = 0 },
            { t = 0.925, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_lm_sierrax_reload_empty_lift.ogg", t = 1/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_charge.ogg", t = 29/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_coveropen.ogg", t = 57/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_magout.ogg", t = 77/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_adjust.ogg", t = 108/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_magup.ogg", t = 118/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_maghit.ogg", t = 129/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_magin.ogg", t = 137/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_bullets.ogg", t = 147/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_coverclose.ogg", t = 184/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_end.ogg", t = 192/30},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.9,
		FireASAP = true,
		RefillProgress = 0.775,
		MagSwapTime = 2,
		DropMagAt = 1.1,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.05, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_lm_sierrax_reload_fast_lift.ogg", t = 2/30},
			{s = path .. "wfoly_lm_sierrax_reload_fast_coveropen.ogg", t = 4/30},
			{s = path .. "wfoly_lm_sierrax_reload_fast_magout.ogg", t = 27/30},
			{s = path .. "wfoly_lm_sierrax_reload_fast_up.ogg", t = 52/30},
			{s = path .. "wfoly_lm_sierrax_reload_fast_magin.ogg", t = 62/30},
			{s = path .. "wfoly_lm_sierrax_reload_fast_bullets.ogg", t = 77/30},
			{s = path .. "wfoly_lm_sierrax_reload_fast_coverclose.ogg", t = 107/30},
			{s = path .. "wfoly_lm_sierrax_reload_fast_end.ogg", t = 117/30},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.9,
		FireASAP = true,
		RefillProgress = 0.775,
		MagSwapTime = 2,
		DropMagAt = 1.9,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.05, lhik = 0, rhik = 0 },
            { t = 0.825, lhik = 0, rhik = 0 },
            { t = 0.875, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_lm_sierrax_reload_empty_fast_lift.ogg", t = 0/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_fast_charge.ogg", t = 11/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_fast_coveropen.ogg", t = 31/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_fast_magout.ogg", t = 44/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_fast_adjust.ogg", t = 63/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_fast_magup.ogg", t = 74/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_fast_magin.ogg", t = 91/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_fast_beltpull.ogg", t = 100/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_fast_coverclose.ogg", t = 129/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_fast_end.ogg", t = 131/30},
        },
    },
    ["ready"] = {
        Source = "draw",
        IKTimeLine = { { t = 0, lhik = 1,  rhik = 1 } },
        EventTable = {
            {s = path .. "wfoly_lm_sierrax_raise_first_lift.ogg", t = 0/30},
            {s = path .. "wfoly_lm_sierrax_raise_first_coverplate.ogg", t = 20/30},
			{s = path .. "wfoly_lm_sierrax_raise_first_end.ogg", t = 29/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
        MinProgress = 0.3,
        FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_lm_sierrax_raise.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.5, lhik = 0, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_lm_sierrax_drop.ogg", t = 0/30},
        },
    },
    ["idle"] = {
        Source = "idle",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
        },
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
		MinProgress = 0.9,
		FireASAP = true,
        IKTimeLine = { -- little shakey shakey
		{ t = 0, lhik = 1,  rhik = 1 },
		{ t = 0.05, lhik = 1,  rhik = 1 },
		{ t = 0.1, lhik = 0,  rhik = 1 },
		{ t = 0.5, lhik = 0,  rhik = 1 },
		{ t = 0.7, lhik = 0,  rhik = 1 },
		{ t = 0.85, lhik = 1,  rhik = 1 },
		},
        EventTable = {
            {s = path .. "wfoly_lm_sierrax_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_lm_sierrax_inspect_02.ogg", t = 48/30},
			{s = path .. "wfoly_lm_sierrax_inspect_03.ogg", t = 123/30},
			{s = path .. "wfoly_lm_sierrax_inspect_04.ogg", t = 135/30},
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
			{s = path .. "wfoly_lm_sierrax_reload_empty_lift.ogg", t = 1/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_charge.ogg", t = 7.5/30},
        },
    },
    ["enter_bipod"] = {
        Source = "bipod_in",
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
----- SAW ANIMATIONS
	["enter_sights_saw"] = {
		Source = "idle_saw",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
	},
    ["fire_saw"] = {
        Source = "shoot1_saw",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
        },
    },
    ["dryfire_saw"] = {
        Source = "dryfire_saw",
		MinProgress = 0.01,
		FireASAP = true,
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
    },
    ["reload_saw"] = {
        Source = "reload_short_saw",
		MinProgress = 0.925,
		FireASAP = true,
		RefillProgress = 0.8,
		MagSwapTime = 3,
		DropMagAt = 2,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 1.05, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_lm_sierrax_reload_lift.ogg", t = 0/30},
			{s = path .. "wfoly_lm_sierrax_reload_coveropen.ogg", t = 12/30},
			{s = path .. "wfoly_lm_sierrax_reload_magout.ogg", t = 42/30},
			{s = path .. "wfoly_lm_sierrax_reload_rotate.ogg", t = 65/30},
			{s = path .. "wfoly_lm_sierrax_reload_maghit.ogg", t = 86/30},
			{s = path .. "wfoly_lm_sierrax_reload_magin.ogg", t = 98/30},
			{s = path .. "wfoly_lm_sierrax_reload_beltpull.ogg", t = 107/30},
			{s = path .. "wfoly_lm_sierrax_reload_bullets.ogg", t = 114/30},
			{s = path .. "wfoly_lm_sierrax_reload_closecover.ogg", t = 143/30},
			{s = path .. "wfoly_lm_sierrax_reload_end.ogg", t = 152/30},
        },
    },
    ["reload_empty_saw"] = {
        Source = "reload_saw",
		MinProgress = 0.925,
		FireASAP = true,
		RefillProgress = 0.85,
		MagSwapTime = 3,
		DropMagAt = 3.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 1.05, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_lm_sierrax_reload_empty_lift.ogg", t = 1/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_charge.ogg", t = 30/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_coveropen.ogg", t = 57/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_magout.ogg", t = 77/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_adjust.ogg", t = 108/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_magup.ogg", t = 118/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_maghit.ogg", t = 129/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_magin.ogg", t = 137/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_bullets.ogg", t = 147/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_coverclose.ogg", t = 185/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_end.ogg", t = 192/30},
        },
    },
    ["reload_fast_saw"] = {
        Source = "reload_fast_saw",
		MinProgress = 0.9,
		FireASAP = true,
		RefillProgress = 0.775,
		MagSwapTime = 2,
		DropMagAt = 1.1,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 1.1, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_lm_sierrax_reload_fast_lift.ogg", t = 2/30},
			{s = path .. "wfoly_lm_sierrax_reload_fast_coveropen.ogg", t = 4/30},
			{s = path .. "wfoly_lm_sierrax_reload_fast_magout.ogg", t = 27/30},
			{s = path .. "wfoly_lm_sierrax_reload_fast_up.ogg", t = 52/30},
			{s = path .. "wfoly_lm_sierrax_reload_fast_magin.ogg", t = 62/30},
			{s = path .. "wfoly_lm_sierrax_reload_fast_bullets.ogg", t = 77/30},
			{s = path .. "wfoly_lm_sierrax_reload_fast_coverclose.ogg", t = 107/30},
			{s = path .. "wfoly_lm_sierrax_reload_fast_end.ogg", t = 117/30},
        },
    },
    ["reload_fast_empty_saw"] = {
        Source = "reload_fast_empty_saw",
		MinProgress = 0.9,
		FireASAP = true,
		RefillProgress = 0.8,
		MagSwapTime = 2,
		DropMagAt = 1.9,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 1.1, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_lm_sierrax_reload_empty_fast_lift.ogg", t = 0/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_fast_charge.ogg", t = 11/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_fast_coveropen.ogg", t = 31/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_fast_magout.ogg", t = 44/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_fast_adjust.ogg", t = 63/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_fast_magup.ogg", t = 74/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_fast_magin.ogg", t = 91/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_fast_beltpull.ogg", t = 100/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_fast_coverclose.ogg", t = 129/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_fast_end.ogg", t = 131/30},
        },
    },
    ["ready_saw"] = {
        Source = "draw_saw",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_lm_sierrax_raise_first_lift.ogg", t = 0/30},
            {s = path .. "wfoly_lm_sierrax_raise_first_coverplate.ogg", t = 18/30},
			{s = path .. "wfoly_lm_sierrax_raise_first_end.ogg", t = 26/30},
        },
    },
    ["draw_saw"] = {
        Source = "draw_short_saw",
        MinProgress = 0.35,
        FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_lm_sierrax_raise.ogg", t = 0/30},
        },
    },
    ["holster_saw"] = {
        Source = "holster_saw",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.5, lhik = 0, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_lm_sierrax_reload_empty_end.ogg", t = 0/30},
        },
    },
    ["idle_saw"] = {
        Source = "idle_saw",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
        },
    },
    ["idle_sprint_saw"] = {
        Source = "sprint_saw",
    },
    ["exit_sprint_saw"] = {
        Source = "sprint_out_saw",
		Mult = 2.3,
    },
    ["enter_sprint_saw"] = {
        Source = "sprint_in_saw",
		Mult = 2.3,
    },
    ["super_sprint_idle_saw"] = {
        Source = "super_sprint_saw",
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 1 },
        },
    },
    ["super_sprint_in_saw"] = {
        Source = "super_sprint_in_saw",
		Mult = 2.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.35, lhik = 1, rhik = 1 },
            { t = 1, lhik = 0, rhik = 1 },
        },
    },
    ["super_sprint_out_saw"] = {
        Source = "super_sprint_out_saw",
		Mult = 2.5,
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 1 },
            { t = 0.1, lhik = 0, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        },
    },
    ["inspect_saw"] = {
        Source = "lookat01_saw",
        MinProgress = 0.9,
        FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.3, lhik = 0, rhik = 0 },
            { t = 0.45, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_lm_sierrax_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_lm_sierrax_inspect_02.ogg", t = 48/30},
			{s = path .. "wfoly_lm_sierrax_inspect_03.ogg", t = 123/30},
			{s = path .. "wfoly_lm_sierrax_inspect_04.ogg", t = 135/30},
        },
    },
    ["bash_saw"] = {
        Source = {"melee_saw","melee2_saw","melee3_saw"},
	    IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.6, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
    },
    ["jam_saw"] = {
        Source = "jam_saw",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 1, rhik = 1 },
        },
    },
    ["fix_saw"] = {
        Source = "jam_fix_saw",
		EjectAt = 0.6,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_lm_sierrax_reload_empty_lift.ogg", t = 1/30},
			{s = path .. "wfoly_lm_sierrax_reload_empty_charge.ogg", t = 29/30},
        },
    },
}

-------------------------- ATTACHMENTS

-- SWEP.Hook_Think	= ARC9.COD2019.BlendSights2

--- ChainSAW ---
local Translate_SAW = {
	["enter_sights"] = "enter_sights_saw",
    ["fire"] = "fire_saw",
	["dryfire"] = "dryfire_saw",
    ["reload"] = "reload_saw",
    ["reload_empty"] = "reload_empty_saw",
	["ready"] = "ready_saw",
	["draw"] = "draw_saw",
	["holster"] = "holster_saw",
	["idle"] = "idle_saw",
	["idle_sprint"] = "idle_sprint_saw",
    ["enter_sprint"] = "enter_sprint_saw",
    ["exit_sprint"] = "exit_sprint_saw",
	["inspect"] = "inspect_saw",
    ["bash"] = "bash_saw",
    ["fix"] = "fix_saw",
    ["jam"] = "jam_saw",
}
local Translate_SAW_Fast = {
	["enter_sights"] = "enter_sights_saw",
    ["fire"] = "fire_saw",
	["dryfire"] = "dryfire_saw",
    ["reload"] = "reload_fast_saw",
    ["reload_empty"] = "reload_fast_empty_saw",
	["ready"] = "ready_saw",
	["draw"] = "draw_saw",
	["holster"] = "holster_saw",
	["idle"] = "idle_saw",
	["idle_sprint"] = "idle_sprint_saw",
    ["enter_sprint"] = "enter_sprint_saw",
    ["exit_sprint"] = "exit_sprint_saw",
	["inspect"] = "inspect_saw",
    ["bash"] = "bash_saw",
    ["fix"] = "fix_saw",
    ["jam"] = "jam_saw",
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
	["idle_sprint_saw"] = "super_sprint_idle_saw",
    ["enter_sprint_saw"] = "super_sprint_in_saw",
    ["exit_sprint_saw"] = "super_sprint_out_saw",
	
}

SWEP.Hook_TranslateAnimation = function(wep, anim)
    --local attached = self:GetElements()

    local speedload = wep:HasElement("perk_speedreload")
    local super_sprint = wep:HasElement("perk_super_sprint")
	local saw = wep:HasElement("stock_saw")

    if super_sprint and Translate_TacSprint[anim] then
        return Translate_TacSprint[anim]
    end

    if speedload then
		if saw then
            if Translate_SAW_Fast[anim] then
                return Translate_SAW_Fast[anim]
            end
        else
            if Translate_Fast[anim] then
                return Translate_Fast[anim]
            end
        end
    else
		if saw then
            if Translate_SAW[anim] then
                return Translate_SAW[anim]
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

SWEP.DefaultBodygroups = "00000000000000"

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(14, -0.8, -0.4),
	ModelAngleOffset = Angle(0, 0, 0),
	Scale = 0.9,
    },
    ["go_grip_angled"] = {
    ModelOffset = Vector(0, 0, 0.1),
    },
    ["cod2019_griptape_01"] = {
		Model = "models/weapons/cod2019/attachs/weapons/m4a1/attachment_vm_ar_mike4_pistolgrip_tape.mdl",
    },
    ["cod2019_griptape_02"] = {
		Model = "models/weapons/cod2019/attachs/weapons/m4a1/attachment_vm_ar_mike4_pistolgrip_tape.mdl",
    },
    ["cod2019_griptape_03"] = {
		Model = "models/weapons/cod2019/attachs/weapons/m4a1/attachment_vm_ar_mike4_pistolgrip_tape.mdl",
    },
}

SWEP.AttachmentElements = {
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
            {4,2},
        },
    },
    ["stock_none"] = {
        Bodygroups = {
            {4,1},
        },
    },
    ["sight"] = {
        Bodygroups = {
            {5,1},
        },
    },
    ["sight_none"] = {
        Bodygroups = {
            {5,2},
        },
    },
    ["pistol_grip_none"] = {
        Bodygroups = {
            {6,1},
        },
    },
    ["ziptie"] = {
        Bodygroups = {
            {7,1},
        },
    },
	["stock_none2"] = {
    AttPosMods = { [7] = { Pos = Vector(-0.3, 0, 0.14), } }
	}
}

-- SWEP.Hook_ModifyBodygroups = function(wep, data)
    -- local model = data.model
    -- if wep:HasElement("stock_retract") then model:SetBodygroup(4,1) end
-- end

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
        Category = "cod2019_finn_barrel",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
    },
    { -- 3
        PrintName = ARC9:GetPhrase("mw19_category_laser"),
		DefaultIcon = Material("entities/defattachs/laser-ar.png", "mips smooth"),
        Category = "cod2019_tac",
        Bone = "tag_laser_attach",
        Pos = Vector(1, 0, 0),
        Ang = Angle(0, 0, 180),
    },
    { -- 4
        PrintName = ARC9:GetPhrase("mw19_category_optic"),
		DefaultIcon = Material("entities/defattachs/optic.png", "mips smooth"),
        Category = {"cod2019_optic", "cod2019_optic_big"},
        Bone = "tag_holo",
        Pos = Vector(1.5, 0, -0.1),
		InstalledElements = {"sight"},
		ExcludeElements = {"stock_saw"},
    },
    { -- 5
        PrintName = ARC9:GetPhrase("mw19_category_stock"),
		DefaultIcon = Material("entities/defattachs/stock-ar.png", "mips smooth"),
        Category = {"cod2019_tube","cod2019_finn_stock"},
        Bone = "tag_stock_attach",
        Pos = Vector(0, 0, 0),
    },
    { -- 6
        PrintName = ARC9:GetPhrase("mw19_category_underbarrel"),
		DefaultIcon = Material("entities/defattachs/grip.png", "mips smooth"),
        Category = "cod2019_grip",
        Bone = "tag_grip_attach",
        Pos = Vector(-4, 0, 0),
        Ang = Angle(0, 0, 180),
		InstalledElements = {"rail_grip"},
		ExcludeElements = {"stock_saw"},
		MergeSlots = {19}, -- Bipod
    },
    { -- 7
        PrintName = ARC9:GetPhrase("mw19_category_magazine"),
		DefaultIcon = Material("entities/defattachs/magazine-ar.png", "mips smooth"),
		Bone = "tag_mag_attach",
        Category = {"cod2019_mag","cod2019_finn_mag"},
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
        Pos = Vector(12, 0, 1),
    },
	
	-- Unofficial
    { -- 10
        PrintName = ARC9:GetPhrase("mw19_category_receiver"),
        Category = "cod2019_finn_receiver",
        Bone = "tag_attachments",
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(7, 0, 1),
		Hidden = false,
    },
	
	-- Cosmetics
    { -- 11
        PrintName = ARC9:GetPhrase("mw19_category_skins"),
        Bone = "tag_cosmetic",
        Pos = Vector(7, 0, 3),
        Category = "cod2019_skins_finn",
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
        StickerModel = "models/weapons/cod2019/stickers/lmg_finn_decal_a.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(3, 0, 3),
    },
    { -- 14
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/lmg_finn_decal_b.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(1, 0, 3),
    },
    { -- 15
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/lmg_finn_decal_c.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-1, 0, 3),
    },
    { -- 16
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/lmg_finn_decal_d.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-3, 0, 3),
    },
    { -- 17
        PrintName = ARC9:GetPhrase("mw19_category_charm"),
        CosmeticOnly = true,
        Category = {"charm"},
        Bone = "tag_cosmetic",
        Pos = Vector(-0.5, 0, -1),
		Icon_Offset = Vector(-4.5, 0, 4),
		Scale = 1.5,
    },
    { -- 18
        PrintName = ARC9:GetPhrase("mw19_category_stats"),
        Category = {"killcounter","killcounter2"},
        Bone = "tag_cosmetic",
        Pos = Vector(-2, 0.3, -0.5),
		Icon_Offset = Vector(-5, -0.3, 3.5),
		CosmeticOnly = true,
    },
    { -- 19
        PrintName = "Bipod",
        Category = {"cod2019_finn_bipod"},
        Bone = "tag_attachments",
        Pos = Vector(0, 0, 0),
		Hidden = true,
    },
}

SWEP.GripPoseParam = 5
SWEP.GripPoseParam2 = 0.5
SWEP.CodAngledGripPoseParam = 4
SWEP.CodStubbyTallGripPoseParam = 7

-- Warzone-esque Stats; Add here to change only when using Warzone Stats variable.
if GetConVar("arc9_mw19_stats_warzone"):GetBool() then

-------------------------- DAMAGE PROFILE
SWEP.DamageMax = 28 -- Damage done at point blank range
SWEP.DamageMin = 22 -- Damage done at maximum range

SWEP.RangeMin = 29 / ARC9.HUToM
SWEP.RangeMax = 30 / ARC9.HUToM

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 1.3,
    [HITGROUP_CHEST] = 1.3,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 1,
    [HITGROUP_RIGHTLEG] = 1,
}

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 810 / ARC9.HUToM

-------------------------- FIREMODES

SWEP.RPM = 750

-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.35 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.25 -- How long it takes to go from sprinting to being able to fire.

end
