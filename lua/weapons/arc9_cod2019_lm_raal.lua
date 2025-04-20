AddCSLuaFile()
if CLIENT then
    killicon.Add( "arc9_cod2019_lm_raal", "vgui/killicons/cod2019_lm_raal.png", Color(251, 85, 25, 255))
end

SWEP.LoadoutImage = "entities/loadout/arc9_cod2019_lm_raal.png"

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.NotForNPCs = false
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_lmg") or "Light Machine Guns"
SWEP.ARC9WeaponCategory = 4

SWEP.PrintName = ARC9:GetPhrase("mw19_weapon_raal") or "RAAL"

SWEP.Class = ARC9:GetPhrase("mw19_class_weapon_lmg") or "Light Machine Gun"
SWEP.Trivia = {
    [ ARC9:GetPhrase("mw19_country") ] = ARC9:GetPhrase("mw19_country_usa"),
    [ ARC9:GetPhrase("mw19_manufacturer") ] = ARC9:GetPhrase("mw19_manufacturer_zlr"),
    [ ARC9:GetPhrase("mw19_caliber") ] = ARC9:GetPhrase("mw19_caliber_338"),
    [ ARC9:GetPhrase("mw19_weight") ] = string.format(ARC9:GetPhrase("mw19_weight_val"), 10, 10 * 2.20),
    [ ARC9:GetPhrase("mw19_weight_projectile") ] = string.format(ARC9:GetPhrase("mw19_weight_projectile_val"), 300),
}

SWEP.Credits = {
    [ ARC9:GetPhrase("mw19_author") ] = "Twilight Sparkle/Firmeteran",
    [ ARC9:GetPhrase("mw19_assets") ] = "Activision/Infinity Ward"
}

SWEP.Description = ARC9:GetPhrase("mw19_weapon_raal_desc") or [[The Reconnaissance Auxiliary Assault Lightweight Machine Gun uses a low fire rate and a reciprocating barrel to mitigate the powerful .338 Norma Mag recoil. Advanced titanium construction keeps the weight manageable.]]

SWEP.ViewModel = "models/weapons/cod2019/c_lmg_raal.mdl"
SWEP.WorldModel = "models/weapons/cod2019/w_lmg_raal.mdl"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_lmg_raal.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-4, 4.25, -8.75),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-9, 5.5, -4),
    TPIKAng = Angle(-12.5, -1, 165),
    Scale = 1,
	
	TPIKPosSightOffset = Vector(3, 0, -2),
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 37 -- Damage done at point blank range
SWEP.DamageMin = 27 -- Damage done at maximum range

SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 26 / ARC9.HUToM
SWEP.RangeMax = 50 / ARC9.HUToM

SWEP.Penetration = 15 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.15

SWEP.ImpactForce = 12

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 1.6,
    [HITGROUP_CHEST] = 1.075,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 1,
    [HITGROUP_RIGHTLEG] = 1,
}

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 730 / ARC9.HUToM
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.5

-------------------------- MAGAZINE

SWEP.Ammo = "ar2" -- What ammo type this gun uses.

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 100 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 10 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 556

SWEP.Firemodes = {
    {
        Mode = -1,
    },
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1.6

SWEP.RecoilSeed = 24366

SWEP.RecoilPatternDrift = 55

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 0.8 -- Multiplier for vertical recoil
SWEP.RecoilSide = 0.1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.1
SWEP.RecoilRandomSide = 0.2

SWEP.RecoilDissipationRate = 10 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 0.5 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 2

SWEP.RecoilMultCrouch = 0.8

SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.85

SWEP.RecoilMax = 3
SWEP.RecoilPerShot = 1

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilMultSights = 0.5
SWEP.VisualRecoilPunchSights = 10
SWEP.VisualRecoilRollSights = 5
SWEP.VisualRecoilSideSights = 0
SWEP.VisualRecoilUpSights = 0

SWEP.VisualRecoilPunch = 4
SWEP.VisualRecoilUp = 0.5
SWEP.VisualRecoilRoll = 5
SWEP.VisualRecoilSide = 0.5

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

SWEP.SpreadHook = function(self, orig)
    local rec = self:GetRecoilAmount()
    local maxmult = -0.5 -- minimal ever spread mult after this (0.5 = 2x more accurate after many shots)
    local speedofthis = 0.5 -- per shot multiplier, or just speed
    local minshots = 3 -- minimal amount of shoots to make this thing work
	--print(math.max(orig * maxmult, orig * (1 - (rec - minshots) * speedofthis)))
    
    if rec > minshots then

      return  math.max(orig * maxmult, orig * (1 - (rec - minshots) * speedofthis))
   end
end


-------------------------- HANDLING

SWEP.SpeedMult = 0.95 -- Walk speed multiplier
SWEP.SpeedMultSights = 0.8 -- When aiming
SWEP.SpeedMultShooting = 0.8

SWEP.AimDownSightsTime = 0.55 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.375 -- How long it takes to go from sprinting to being able to fire.

SWEP.Bipod = true

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
    Pos = Vector(-2.75, -1, 1),
    Ang = Angle(0, 0, 2),
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

SWEP.MovingPos = Vector(-1, -0.7, -1)
SWEP.MovingAng = Angle(0, 0, -10)

SWEP.CrouchPos = Vector(-1, -0.5, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.SprintPos = Vector(1, 0, -1)
SWEP.SprintAng = Angle(0, 0, 25)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(21, 45, 5)
SWEP.CustomizeRotateAnchor = Vector(21, -2.25, -5)
SWEP.CustomizeSnapshotFOV = 65
SWEP.CustomizeSnapshotPos = Vector(0, 55, 0)
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeNoRotate = false

SWEP.PeekPos = Vector(2, 2, -1)
SWEP.PeekAng = Angle(0, 0, 5)

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

SWEP.MuzzleParticle = "muzzleflash_lmg"
SWEP.AfterShotParticle = "barrel_smoke"
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 4
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_762_hr.mdl"
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 0.08
SWEP.ShellPhysBox = Vector(1, 1, 1)
SWEP.ShellSounds = ARC9.COD2019_338_Table

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
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_lmg_raal_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
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

local path = "weapons/cod2019/raal/"

SWEP.ShootSound = "COD2019.RAAL.Fire"
SWEP.ShootSoundIndoor = "COD2019.RAAL.Fire"

SWEP.ShootSoundSilenced = "COD2019.RAAL.Fire.S"
SWEP.ShootSoundSilencedIndoor = "COD2019.RAAL.Fire.S"

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

SWEP.EnterSightsSound = "weapons/cod2019/raal/wfoly_lm_slima_ads_up.ogg"
SWEP.ExitSightsSound = "weapons/cod2019/raal/wfoly_lm_slima_ads_down.ogg"

SWEP.BulletBones = {
    [1] = "j_bullet1",
    [2] = "j_bullet2",
    [3] = "j_bullet3",
    [4] = "j_bullet4",
	[5] = "j_bullet5",
	[6] = "j_bullet6",
	[7] = "j_bullet7",
	[8] = "j_bullet8",
	[9] = "j_bullet9",
	[10] = "j_bullet10",
	[11] = "j_bullet11",
	[12] = "j_bullet12",
	[13] = "j_bullet13",
}

SWEP.HideBones = {
    [1] = "j_mag2",
}

SWEP.ReloadHideBoneTables = {
	[1] = {
		"j_mag2"
	},
	[2] = {
		"j_mag2",
		"j_bullet12",
		"j_bullet13"
	},
	[3] = {
		"j_mag2",
		"j_bulletlink_spent1",
		"j_bullet12",
		"j_bullet13"
	},
	[4] = {
		"j_mag2",
		"j_bulletlink_spent1",
		"j_bulletlink_spent2",
		"j_bullet12",
		"j_bullet13"
	},
	[5] = {
		"j_mag2",
		"j_mag1",
		"j_bulletlink_spent1",
		"j_bulletlink_spent2",
		"j_ammobox_flap",
		"j_bullet1",
		"j_bullet2",
		"j_bullet3",
		"j_bullet4",
		"j_bullet5",
		"j_bullet6",
		"j_bullet7",
		"j_bullet8",
		"j_bullet9",
		"j_bullet10",
		"j_bullet11",
		"j_bullet12",
		"j_bullet13"
	},
	[6] = {
		"j_mag2",
		"j_bullet1",
		"j_bullet2",
		"j_bullet3",
		"j_bullet4",
		"j_bullet5",
		"j_bullet6",
		"j_bullet7",
		"j_bullet8",
		"j_bullet9",
		"j_bullet10",
		"j_bullet11",
		"j_bullet12",
		"j_bullet13"
	},
	[7] = {
		"j_mag2",
		"j_bulletlink_spent1",
		"j_bullet1",
		"j_bullet2",
		"j_bullet3",
		"j_bullet4",
		"j_bullet5",
		"j_bullet6",
		"j_bullet7",
		"j_bullet8",
		"j_bullet9",
		"j_bullet10",
		"j_bullet11",
		"j_bullet12",
		"j_bullet13"
	},
	[8] = {
		"j_mag2",
		"j_bulletlink_spent1"
	},
	[9] = {
		"j_mag2",
		"j_bullet9",
		"j_bullet10",
		"j_bullet11",
		"j_bullet12",
		"j_bullet13"
	},
	[10] = {
		"j_mag2",
		"j_bulletlink_spent1",
		"j_bullet9",
		"j_bullet10",
		"j_bullet11",
		"j_bullet12",
		"j_bullet13"
	},
	[11] = {
		"j_mag2",
		"j_bulletlink_spent1",
		"j_bulletlink_spent2",
		"j_bullet9",
		"j_bullet10",
		"j_bullet11",
		"j_bullet12",
		"j_bullet13"
	},
}

SWEP.TriggerDelay = 0.15 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayCancellable = false
SWEP.TriggerDelayTime = 0.15 -- Time until weapon fires.

SWEP.TriggerDownSound = "weapons/cod2019/raal/weap_slima_prefire_plr_01.ogg"
SWEP.TriggerUpSound = ""

SWEP.Overheat = true
SWEP.HeatCapacity = 60
SWEP.HeatDissipation = 22.5
SWEP.HeatDelayTime = 0.25
SWEP.HeatPerShot = 1
SWEP.HeatLockout = false
SWEP.MalfunctionWait = 0.25

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
		MinProgress = 0.95,
		FireASAP = true,
		RefillProgress = 0.85,
		MagSwapTime = 3,
		DropMagAt = 3,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.025, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.825, lhik = 0, rhik = 0 },
            { t = 0.925, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_lm_slima_reload_lower.ogg", t = 0/30},
			{s = path .. "wfoly_lm_slima_reload_top_cover_open.ogg", t = 20/30},
			{s = path .. "wfoly_lm_slima_reload_clean_tray.ogg", t = 35/30},
			{s = path .. "wfoly_lm_slima_reload_arm_down.ogg", t = 66/30},
			{s = path .. "wfoly_lm_slima_reload_magout.ogg", t = 84/30},
			{s = path .. "wfoly_lm_slima_reload_lift.ogg", t = 102/30},
			{s = path .. "wfoly_lm_slima_reload_maghit.ogg", t = 126/30},
			{s = path .. "wfoly_lm_slima_reload_magin.ogg", t = 140/30},
			{s = path .. "wfoly_lm_slima_reload_bullets_into_tray.ogg", t = 152/30},
			{s = path .. "wfoly_lm_slima_reload_top_cover_close.ogg", t = 197/30},
			{s = path .. "wfoly_lm_slima_reload_end.ogg", t = 214/30},
			{hide = 1, t = 0},
			{hide = 2, t = 1.4},
			{hide = 3, t = 1.45},
			{hide = 2, t = 1.9},
			{hide = 4, t = 2.2},
			{hide = 5, t = 3},
			{hide = 1, t = 4},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.95,
		FireASAP = true,
		RefillProgress = 0.85,
		MagSwapTime = 3,
		DropMagAt = 4,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 1, rhik = 0 },
            { t = 0.25, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 0, rhik = 0 },
            { t = 0.925, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_lm_slima_reload_empty_lower.ogg", t = 0/30},
			{s = path .. "wfoly_lm_slima_reload_empty_bolt_pull.ogg", t = 15/30},
			{s = path .. "wfoly_lm_slima_reload_empty_bolt_close.ogg", t = 29/30},
			{s = path .. "wfoly_lm_slima_reload_empty_settle.ogg", t = 41/30},
			{s = path .. "wfoly_lm_slima_reload_empty_top_cover_open.ogg", t = 58/30},
			{s = path .. "wfoly_lm_slima_reload_empty_clean_tray.ogg", t = 75/30},
			{s = path .. "wfoly_lm_slima_reload_empty_lift.ogg", t = 90/30},
			{s = path .. "wfoly_lm_slima_reload_empty_magout.ogg", t = 102/30},
			{s = path .. "wfoly_lm_slima_reload_empty_maghit.ogg", t = 138/30},
			{s = path .. "wfoly_lm_slima_reload_empty_magin.ogg", t = 148/30},
			{s = path .. "wfoly_lm_slima_reload_empty_bullets_into_tray.ogg", t = 165/30},
			{s = path .. "wfoly_lm_slima_reload_empty_top_cover_close.ogg", t = 204/30},
			{s = path .. "wfoly_lm_slima_reload_empty_end.ogg", t = 226/30},
			{hide = 6, t = 0},
			{hide = 7, t = 3},
			{hide = 5, t = 4},
			{hide = 1, t = 4.4},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.9,
		FireASAP = true,
		RefillProgress = 0.85,
		MagSwapTime = 2.25,
		DropMagAt = 1.9,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.025, lhik = 1, rhik = 0 },
            { t = 0.125, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_lm_slima_reload_fast_lower.ogg", t = 0/30},
			{s = path .. "wfoly_lm_slima_reload_fast_top_cover_open.ogg", t = 6/30},
			{s = path .. "wfoly_lm_slima_reload_fast_clean_tray.ogg", t = 35/30},
			{s = path .. "wfoly_lm_slima_reload_fast_magout.ogg", t = 48/30},
			{s = path .. "wfoly_lm_slima_reload_fast_raise.ogg", t = 71/30},
			{s = path .. "wfoly_lm_slima_reload_fast_maghit.ogg", t = 88/30},
			{s = path .. "wfoly_lm_slima_reload_fast_magin.ogg", t = 97/30},
			{s = path .. "wfoly_lm_slima_reload_fast_bullets_into_tray.ogg", t = 104/30},
			{s = path .. "wfoly_lm_slima_reload_fast_top_cover_close.ogg", t = 135/30},
			{s = path .. "wfoly_lm_slima_reload_fast_end.ogg", t = 142/30},
			{hide = 1, t = 0},
			{hide = 4, t = 1.33},
			{hide = 5, t = 1.9},
			{hide = 1, t = 2.75},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.9,
		FireASAP = true,
		RefillProgress = 0.8,
		MagSwapTime = 2.25,
		DropMagAt = 2.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.225, lhik = 1, rhik = 0 },
            { t = 0.275, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_lm_slima_reload_empty_fast_lower.ogg", t = 1/30},
			{s = path .. "wfoly_lm_slima_reload_empty_fast_bolt_pull.ogg", t = 18/30},
			{s = path .. "wfoly_lm_slima_reload_empty_fast_bolt_close.ogg", t = 23/30},
			{s = path .. "wfoly_lm_slima_reload_empty_fast_top_cover_pop.ogg", t = 39/30},
			{s = path .. "wfoly_lm_slima_reload_empty_fast_magout.ogg", t = 51/30},
			{s = path .. "wfoly_lm_slima_reload_empty_fast_maghit.ogg", t = 81/30},
			{s = path .. "wfoly_lm_slima_reload_empty_fast_magin.ogg", t = 105/30},
			{s = path .. "wfoly_lm_slima_reload_empty_fast_bullets_into_tray.ogg", t = 114/30},
			{s = path .. "wfoly_lm_slima_reload_empty_fast_top_cover_close.ogg", t = 137/30},
			{s = path .. "wfoly_lm_slima_reload_empty_fast_end.ogg", t = 165/30},
			{hide = 6, t = 0},
			{hide = 5, t = 2.5},
			{hide = 1, t = 3},
			{hide = 8, t = 4.7},
        },
    },
    ["reload_smag"] = {
        Source = "reload_smag",
		MinProgress = 0.95,
		FireASAP = true,
		RefillProgress = 0.85,
		MagSwapTime = 3,
		DropMagAt = 2.8,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.025, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.825, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_lm_slima_reload_lower.ogg", t = 0/30},
			{s = path .. "wfoly_lm_slima_reload_top_cover_open.ogg", t = 17/30},
			{s = path .. "wfoly_lm_slima_reload_clean_tray.ogg", t = 27.5/30},
			{s = path .. "wfoly_lm_slima_reload_arm_down.ogg", t = 50/30},
			{s = path .. "wfoly_lm_slima_reload_magout.ogg", t = 70/30},
			{s = path .. "wfoly_lm_slima_reload_lift.ogg", t = 85/30},
			{s = path .. "wfoly_lm_slima_reload_maghit.ogg", t = 100/30},
			{s = path .. "wfoly_lm_slima_reload_magin.ogg", t = 106/30},
			{s = path .. "wfoly_lm_slima_reload_bullets_into_tray.ogg", t = 122/30},
			{s = path .. "wfoly_lm_slima_reload_top_cover_close.ogg", t = 160/30},
			{s = path .. "wfoly_lm_slima_reload_end.ogg", t = 174/30},
			{hide = 1, t = 0},
			{hide = 9, t = 1.33},
			{hide = 10, t = 1.45},
			{hide = 9, t = 1.85},
			{hide = 11, t = 2.16},
			{hide = 5, t = 2.8},
			{hide = 1, t = 3.2},
        },
    },
    ["reload_smag_empty"] = {
        Source = "reload_smag_empty",
		MinProgress = 0.95,
		FireASAP = true,
		RefillProgress = 0.85,
		MagSwapTime = 3,
		DropMagAt = 3.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 1, rhik = 0 },
            { t = 0.25, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_lm_slima_reload_empty_lower.ogg", t = 0/30},
			{s = path .. "wfoly_lm_slima_reload_empty_bolt_pull.ogg", t = 12/30},
			{s = path .. "wfoly_lm_slima_reload_empty_bolt_close.ogg", t = 23/30},
			{s = path .. "wfoly_lm_slima_reload_empty_settle.ogg", t = 31/30},
			{s = path .. "wfoly_lm_slima_reload_empty_top_cover_open.ogg", t = 48/30},
			{s = path .. "wfoly_lm_slima_reload_empty_clean_tray.ogg", t = 62.5/30},
			{s = path .. "wfoly_lm_slima_reload_empty_lift.ogg", t = 70/30},
			{s = path .. "wfoly_lm_slima_reload_empty_magout.ogg", t = 95/30},
			{s = path .. "wfoly_lm_slima_reload_empty_maghit.ogg", t = 118/30},
			{s = path .. "wfoly_lm_slima_reload_empty_magin.ogg", t = 125/30},
			{s = path .. "wfoly_lm_slima_reload_empty_bullets_into_tray.ogg", t = 145/30},
			{s = path .. "wfoly_lm_slima_reload_empty_top_cover_close.ogg", t = 174/30},
			{s = path .. "wfoly_lm_slima_reload_empty_end.ogg", t = 190/30},
			{hide = 6, t = 0},
			{hide = 7, t = 2.75},
			{hide = 5, t = 3.5},
			{hide = 1, t = 3.75},
        },
    },
    ["reload_smag_fast"] = {
        Source = "reload_smag_fast",
		MinProgress = 0.9,
		FireASAP = true,
		RefillProgress = 0.8,
		MagSwapTime = 2.25,
		DropMagAt = 1.8,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.025, lhik = 1, rhik = 0 },
            { t = 0.125, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_lm_slima_reload_fast_lower.ogg", t = 0/30},
			{s = path .. "wfoly_lm_slima_reload_fast_top_cover_open.ogg", t = 6/30},
			{s = path .. "wfoly_lm_slima_reload_fast_clean_tray.ogg", t = 35/30},
			{s = path .. "wfoly_lm_slima_reload_fast_magout.ogg", t = 48/30},
			{s = path .. "wfoly_lm_slima_reload_fast_raise.ogg", t = 61/30},
			{s = path .. "wfoly_lm_slima_reload_fast_maghit.ogg", t = 78/30},
			{s = path .. "wfoly_lm_slima_reload_fast_magin.ogg", t = 87/30},
			{s = path .. "wfoly_lm_slima_reload_fast_bullets_into_tray.ogg", t = 94/30},
			{s = path .. "wfoly_lm_slima_reload_fast_top_cover_close.ogg", t = 122.5/30},
			{s = path .. "wfoly_lm_slima_reload_fast_end.ogg", t = 125/30},
			{hide = 1, t = 0},
			{hide = 11, t = 1.3},
			{hide = 5, t = 1.8},
			{hide = 1, t = 2.4},
        },
    },
    ["reload_smag_fast_empty"] = {
        Source = "reload_smag_fast_empty",
		MinProgress = 0.9,
		FireASAP = true,
		RefillProgress = 0.8,
		MagSwapTime = 2.25,
		DropMagAt = 2.15,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.225, lhik = 1, rhik = 0 },
            { t = 0.275, lhik = 0, rhik = 0 },
            { t = 0.775, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_lm_slima_reload_empty_fast_lower.ogg", t = 1/30},
			{s = path .. "wfoly_lm_slima_reload_empty_fast_bolt_pull.ogg", t = 14/30},
			{s = path .. "wfoly_lm_slima_reload_empty_fast_bolt_close.ogg", t = 19/30},
			{s = path .. "wfoly_lm_slima_reload_empty_fast_top_cover_pop.ogg", t = 39/30},
			{s = path .. "wfoly_lm_slima_reload_empty_fast_magout.ogg", t = 47.5/30},
			{s = path .. "wfoly_lm_slima_reload_empty_fast_maghit.ogg", t = 61/30},
			{s = path .. "wfoly_lm_slima_reload_empty_fast_magin.ogg", t = 85/30},
			{s = path .. "wfoly_lm_slima_reload_empty_fast_bullets_into_tray.ogg", t = 94/30},
			{s = path .. "wfoly_lm_slima_reload_empty_fast_top_cover_close.ogg", t = 117/30},
			{s = path .. "wfoly_lm_slima_reload_empty_fast_end.ogg", t = 120/30},
			{hide = 6, t = 0},
			{hide = 5, t = 2.15},
			{hide = 1, t = 2.5},
			{hide = 8, t = 3.9},
        },
    },
    ["ready"] = {
        Source = "draw",
		MinProgress = 0.7,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
        },
        EventTable = {
            {s = path .. "wfoly_lm_slima_raise_first_lift.ogg", t = 0/30},
            {s = path .. "wfoly_lm_slima_raise_first_bolt_pull.ogg", t = 19/30},
			{s = path .. "wfoly_lm_slima_raise_first_bolt_close.ogg", t = 24/30},
			{s = path .. "wfoly_lm_slima_raise_first_end.ogg", t = 35/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
		MinProgress = 0.5,
		FireASAP = true,
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
        EventTable = {
            {s = path .. "wfoly_lm_slima_raise.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
		IKTimeLine = {{t = 0,  lhik = 1, rhik = 1},{t = 0.5,  lhik = 0, rhik = 1},},
        EventTable = {
            {s = path .. "wfoly_lm_slima_drop.ogg", t = 0/30},
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
		MinProgress = 0.9,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.05, lhik = 1, rhik = 0 },
            { t = 0.125, lhik = 0, rhik = 0 },
            { t = 0.55, lhik = 0, rhik = 0 },
            { t = 0.625, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_lm_slima_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_lm_slima_inspect_02.ogg", t = 25/30},
			{s = path .. "wfoly_lm_slima_inspect_03.ogg", t = 47/30},
			{s = path .. "wfoly_lm_slima_inspect_04.ogg", t = 79/30},
			{s = path .. "wfoly_lm_slima_inspect_05.ogg", t = 121/30},
			{s = path .. "wfoly_lm_slima_inspect_06.ogg", t = 168/30},
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
        EventTable = {
			{s = path .. "wfoly_lm_slima_reload_empty_fast_lower.ogg", t = 1/30},
			{s = path .. "wfoly_lm_slima_reload_empty_fast_bolt_pull.ogg", t = 14/30},
			{s = path .. "wfoly_lm_slima_reload_empty_fast_bolt_close.ogg", t = 19/30},
            {s = path .. "wfoly_lm_slima_reload_empty_fast_end.ogg", t = 26/30},
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
}

-------------------------- ATTACHMENTS

-- SWEP.Hook_Think	= ARC9.COD2019.BlendSights2

--- 50 Round Belt ---
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
    local smag = wep:HasElement("mag_smag")

    if super_sprint and Translate_TacSprint[anim] then
        return Translate_TacSprint[anim]
    end

    if speedload then
        if smag then
            if Translate_SMag_Fast[anim] then
                return Translate_SMag_Fast[anim]
            end
        else
            if Translate_Fast[anim] then
                return Translate_Fast[anim]
            end
        end
    else 
        if smag then
            if Translate_SMag[anim] then
                return Translate_SMag[anim]
            end
        end
    end

    wep.MWHybridSwitching = nil
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
    -- ["arc9_stat_proscreen_main"] = {
    -- ModelOffset = Vector(11.5, -0.5, -1),
	-- ModelAngleOffset = Angle(0, 0, 0),
	-- Scale = 1,
    -- },
    ["cod2019_optic_reflex_west05_hybrid"] = { ModelOffset = Vector(-4, 0, 0.1) },
    ["cod2019_optic_hybrid_west02"] = { ModelOffset = Vector(-4, 0, 0.1) },
    ["cod2019_optic_hybrid_west02_thermal"] = { ModelOffset = Vector(-4, 0, 0.1) },
    ["cod2019_optic_raal_scope"] = { ModelOffset = Vector(-3, 0, 0.1) },
    ["cod2019_optic_scope_mike14"] = { ModelOffset = Vector(-3.5, 0, 0.1) },
    ["cod2019_crossbow_scope"] = { ModelOffset = Vector(-4, 0, 0.1) },
    ["cod2019_crossbow_scope_vz"] = { ModelOffset = Vector(-4, 0, 0.1) },
    ["cod2019_optic_scope_vz"] = { ModelOffset = Vector(-4, 0, 0.1) },
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
    ["barrel_thing_none"] = {
        Bodygroups = {
            {10,1},
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
	["sight_folded"] = {
        Bodygroups = {
            {5,1},
        },
    },
	["sight_none"] = {
        Bodygroups = {
            {5,2},
        },
    },
	["bipod_none"] = {
        Bodygroups = {
            {7,2},
        },
    },
	["grip_rail"] = {
        Bodygroups = {
            {9,1},
        },
    },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model
	local nobipodatts = !wep:HasElement("cod2019_grips_bipod") and !wep:HasElement("cod2019_grips_bipod_alt")

    if wep:HasElement("optic_scope") then model:SetBodygroup(5,2) end

    if wep:GetBipod() and nobipodatts then
        if wep:GetEnterBipodTime() + 0.2 < CurTime() then
            model:SetBodygroup(7, 1) -- Change to Bipod BG
        end
    end

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
        Category = "cod2019_raal_barrel",
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
        Category = {"cod2019_optic", "cod2019_optic_big", "cod2019_raal_optic"},
        Bone = "tag_holo",
        Pos = Vector(1.5, 0, -0.1),
		InstalledElements = {"sight_folded"},
    },
    { -- 5
        PrintName = ARC9:GetPhrase("mw19_category_stock"),
		DefaultIcon = Material("entities/defattachs/stock-ar.png", "mips smooth"),
        Category = {"cod2019_tube","cod2019_raal_stock"},
        Bone = "tag_stock_attach",
        Pos = Vector(0, 0, 0.7),
    },
    { -- 6
        PrintName = ARC9:GetPhrase("mw19_category_underbarrel"),
		DefaultIcon = Material("entities/defattachs/grip.png", "mips smooth"),
        Category = {"cod2019_grips_side", "cod2019_raal_grip"},
        Bone = "tag_grip_attach",
        Pos = Vector(1.15, 0.1, 0),
        Ang = Angle(0, 0, 180),
		InstalledElements = {"grip_none"},
		MergeSlots = {20}, -- Bipod
    },
    { -- 8
        PrintName = ARC9:GetPhrase("mw19_category_magazine"),
		DefaultIcon = Material("entities/defattachs/magazine-ar.png", "mips smooth"),
		Bone = "tag_mag_attach",
        Category = {"cod2019_raal_mag","cod2019_mag"},
        Pos = Vector(0, 0, 0),
    },
    { -- 9
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
        PrintName = ARC9:GetPhrase("mw19_category_perk"),
        Category = {"cod2019_perks","cod2019_perks_soh","cod2019_perks_ss"},
        Bone = "tag_attachments",
        Pos = Vector(5, 0, -2.5),
    },
	
	-- Unofficial
    { -- 11
        PrintName = ARC9:GetPhrase("mw19_category_receiver"),
        Category = "cod2019_raal_receiver",
        Bone = "tag_attachments",
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(6, 0, 0),
		Hidden = false,
    },
	
	-- Cosmetics
    { -- 12
        PrintName = ARC9:GetPhrase("mw19_category_skins"),
        Bone = "tag_cosmetic",
        Pos = Vector(7, 0, 3),
        Category = "cod2019_skins_raal",
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
        StickerModel = "models/weapons/cod2019/stickers/lmg_raal_decal_a.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(3, 0, 3),
    },
    { -- 15
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/lmg_raal_decal_b.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(1, 0, 3),
    },
    { -- 16
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/lmg_raal_decal_c.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-1, 0, 3),
    },
    { -- 17
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/lmg_raal_decal_d.mdl",
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
		Scale = 1.5,
    },
    { -- 19
        PrintName = ARC9:GetPhrase("mw19_category_stats"),
        Category = {"killcounter","killcounter2"},
        Bone = "tag_cosmetic",
        Pos = Vector(-2, 0, 0),
		Icon_Offset = Vector(-5, 0, 3),
		CosmeticOnly = true,
		RejectAttachments = {["arc9_stat_proscreen_main"] = true},
    },
    { -- 20
        PrintName = "Bipod",
        Category = {"cod2019_raal_bipod"},
        Bone = "tag_attachments",
        Pos = Vector(0, 0, 0),
		Hidden = true,
    },
}

SWEP.GripPoseParam = 5
SWEP.GripPoseParam2 = 0.5
SWEP.CodAngledGripPoseParam = 4

-- Warzone-esque Stats; Add here to change only when using Warzone Stats variable.
if GetConVar("arc9_mw19_stats_warzone"):GetBool() then

-------------------------- DAMAGE PROFILE
SWEP.DamageMax = 37 -- Damage done at point blank range
SWEP.DamageMin = 34 -- Damage done at maximum range

SWEP.RangeMin = 37 / ARC9.HUToM
SWEP.RangeMax = 38 / ARC9.HUToM

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 1.6,
    [HITGROUP_CHEST] = 1.075,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 1,
    [HITGROUP_RIGHTLEG] = 1,
}

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 730 / ARC9.HUToM

-------------------------- FIREMODES

SWEP.RPM = 556

-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.46 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.25 -- How long it takes to go from sprinting to being able to fire.

end
