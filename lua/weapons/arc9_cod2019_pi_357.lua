AddCSLuaFile()
if CLIENT then
    killicon.Add( "arc9_cod2019_pi_357", "vgui/killicons/cod2019_pi_357.png", Color(251, 85, 25, 255))
    killicon.Add( "arc9_cod2019_pi_357_akimbo", "vgui/killicons/cod2019_pi_akimbo_357.png", Color(251, 85, 25, 255))
end

SWEP.LoadoutImage = "entities/loadout/arc9_cod2019_pi_357.png"

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_handgun") or "Handguns"

SWEP.PrintName = ARC9:GetPhrase("mw19_weapon_357") or ".357"

SWEP.Class = ARC9:GetPhrase("mw19_class_weapon_handgun") or "Handgun"
SWEP.Trivia = {
    [ ARC9:GetPhrase("mw19_country") ] = ARC9:GetPhrase("mw19_country_usa"),
    [ ARC9:GetPhrase("mw19_caliber") ] = ARC9:GetPhrase("mw19_caliber_357"),
    [ ARC9:GetPhrase("mw19_weight") ] = string.format(ARC9:GetPhrase("mw19_weight_val"), 1.1, 1.1 * 2.20),
    [ ARC9:GetPhrase("mw19_weight_projectile") ] = string.format(ARC9:GetPhrase("mw19_weight_projectile_val"), 125),
    -- [ ARC9:GetPhrase("mw19_muzzle_energy") ] = "1,450 ft/s",
    -- [ ARC9:GetPhrase("mw19_muzzle_velocity") ] = "791 joules"
}

SWEP.Credits = {
    [ ARC9:GetPhrase("mw19_author") ] = "Twilight Sparkle/Firmeteran",
    [ ARC9:GetPhrase("mw19_assets") ] = "Activision/Infinity Ward"
}

SWEP.Description = ARC9:GetPhrase("mw19_weapon_357_desc") or [[Double action revolver firing .357 Magnum ammunition for powerful damage over extended ranges.]]

SWEP.ViewModel = "models/weapons/cod2019/c_pist_357.mdl"
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"

SWEP.Slot = 1

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_pist_357.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-7, 3.25, -5),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-13, 3, -4.5),
    TPIKAng = Angle(-5, 0, 175),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 77 -- Damage done at point blank range
SWEP.DamageMin = 52 -- Damage done at maximum range

SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 25 / ARC9.HUToM
SWEP.RangeMax = 26 / ARC9.HUToM

SWEP.Penetration = 4 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.35

SWEP.ImpactForce = 11

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 1.4,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 0.95,
    [HITGROUP_LEFTARM] = 0.915,
    [HITGROUP_RIGHTARM] = 0.915,
    [HITGROUP_LEFTLEG] = 0.915,
    [HITGROUP_RIGHTLEG] = 0.915,
}

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 470 / ARC9.HUToM
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 2.5

-------------------------- MAGAZINE

SWEP.Ammo = "357" -- What ammo type this gun uses.

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 6 -- Self-explanatory.
SWEP.SupplyLimit = 12 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 10 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

SWEP.CustomCrosshairSize = 30
SWEP.CustomCrosshairMaterial = Material("hud/arc9_cod2019/shotguncrosshair.png", "mips smooth")

-------------------------- FIREMODES

SWEP.RPM = 120 * 1.4

SWEP.Firemodes = {
    {
        Mode = 1,
    },
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 2

--SWEP.RecoilSeed = nil

SWEP.RecoilPatternDrift = 35

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.1

SWEP.RecoilDissipationRate = 10 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 1 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 6

SWEP.RecoilMultCrouch = 0.8

SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.8

SWEP.RecoilPerShot = 3
SWEP.RecoilMax = 5

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilPunch = 1
SWEP.VisualRecoilUp = 0

-------------------------- SPREAD

SWEP.Spread = 0.0325

SWEP.SpreadAddRecoil = 0.01

SWEP.SpreadAddHipFire = 0
SWEP.SpreadAddMove = 0.025
SWEP.SpreadAddMidAir = 0.045
SWEP.SpreadAddCrouch = -0.03
SWEP.SpreadAddSights = -(SWEP.Spread * 1.2)

SWEP.SpreadMultRecoil = 1.1
SWEP.RecoilModifierCap = 1
SWEP.RecoilModifierCapMove = 0
SWEP.RecoilModifierCapSights = 0

-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.25 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.149 -- How long it takes to go from sprinting to being able to fire.

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
    Pos = Vector(-2.05, -3, 1.75),
    Ang = Angle(0, 0, 0),
    Magnification = 1.15,
	CrosshairInSights = false
}

SWEP.IronSightsHook = function(self) -- If any attachments equipped should alter Irons
    local attached = self:GetElements()

    if attached["357_stock"] then
        return {
			Pos = Vector(-2.85, -3, 1.325),
			Ang = Angle(0, 0, 4.5),
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

SWEP.SprintPos = Vector(-3.5, 1, 4.7)
SWEP.SprintAng = Angle(0, -25, -5)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(14, 25, 4.5)
SWEP.CustomizeRotateAnchor = Vector(14, -1.75, -4.5)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeSnapshotPos = Vector(2, -5, 0)
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeNoRotate = false

SWEP.PeekPos = Vector(-1.5, -1, -4.5)
SWEP.PeekAng = Angle(0, 0.4, -45)

-------------------------- HoldTypes

SWEP.HoldType = "revolver"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeSights = "revolver"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "AC_muzzle_desert_fp"
SWEP.AfterShotParticle = "AC_muzzle_smoke_barrel"
SWEP.TracerEffect = "cod2019_tracer_small"
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 4
SWEP.CamQCA_Mult = 1

SWEP.NoShellEject = true

SWEP.DropMagazineModel = "models/weapons/cod2019/shared/shell_357.mdl"
SWEP.DropMagazineSounds = {"weapons/cod2019/shared/casings/blt_case_bounce_9_01.ogg", "weapons/cod2019/shared/casings/blt_case_bounce_9_02.ogg", "weapons/cod2019/shared/casings/blt_case_bounce_9_03.ogg", "weapons/cod2019/shared/casings/blt_case_bounce_9_04.ogg"}
SWEP.DropMagazineAmount = 6
SWEP.DropMagazineTime = 1
SWEP.DropMagazineQCA = 5
SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false

-------------------------- SOUNDS

local path = "weapons/cod2019/357/"

SWEP.ShootSound = "COD2019.357.Fire"
SWEP.ShootSoundIndoor = "COD2019.357.Fire"

SWEP.ShootSoundSilenced = "COD2019.357.Fire.S"
SWEP.ShootSoundSilencedIndoor = "COD2019.357.Fire.S"

-- Non-Silenced
SWEP.LayerSound = "Layer_Pistol.Outside"
SWEP.DistantShootSound = "Distant_Pistol_Mag.Outside"
-- Inside
SWEP.LayerSoundIndoor = "Layer_Shotgun.Inside"
SWEP.DistantShootSoundIndoor = "Distant_Shotgun.Inside"
---------------------------------------------------
-- Silenced
SWEP.LayerSoundSilenced = "Layer_ARSUP.Outside"
SWEP.DistantShootSoundSilenced = "Distant_Pistol_Mag_Sup.Outside"
-- Inside
SWEP.LayerSoundSilencedIndoor = "Layer_ARSUP.Inside"
SWEP.DistantShootSoundSilencedIndoor = "Distant_Pistol_Sup.Inside"
---------------------------------------------------

SWEP.EnterSightsSound = path .. "wfoly_pi_cpapa_ads_up.ogg"
SWEP.ExitSightsSound = path .. "wfoly_pi_cpapa_ads_down.ogg"

SWEP.HideBones = {
    [1] = "j_b_loader_01",
    [2] = "j_b_loader_02",
	[3] = "j_b_loader_03",
	[4] = "j_b_loader_04",
	[5] = "j_b_loader_05",
	[6] = "j_b_loader_06",
	[7] = "j_mag1",
	[8] = "j_b_loader",
}

SWEP.TriggerDelay = 0.075 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayCancellable = false
SWEP.TriggerDelayTime = 0.075 -- Time until weapon fires.

SWEP.Animations = {
	["enter_sights"] = {
		Source = "idle",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
	},
    ["fire"] = {
        Source = "shoot1",
    },
    ["dryfire"] = {
        Source = "shoot1_cycle",
        EventTable = {
			{s = path .. "wfoly_pi_cpapa_charge_in_trigger_pull.ogg", t = 0/30},
        },
    },
    ["trigger"] = {
        Source = "shoot1_cycle",
        EventTable = {
			{s = path .. "wfoly_pi_cpapa_charge_in_trigger_pull.ogg", t = 0/30},
        },
    },
    ["reload"] = {
        Source = "reload",
		MinProgress = 0.85,
		MagSwapTime = 3.5,
		DropMagAt = 0.6,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 0, rhik = 0 },
            { t = 0.95, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_cpapa_charge_reload_start.ogg", t = 0/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_cylinderopen_01.ogg", t = 0/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_shake.ogg", t = 15/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_shelleject_01.ogg", t = 17/30},
            {s = path .. "wfoly_pi_cpapa_charge_reload_shelleject_02.ogg", t = 17/30},
            {s = path .. "wfoly_pi_cpapa_charge_reload_shelleject_03.ogg", t = 17/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_arm.ogg", t = 27/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_speedloader_01.ogg", t = 50/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_ejectorrod_01.ogg", t = 64/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_fast_cylinderclose_01.ogg", t = 75/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_end.ogg", t = 78/30},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.8,
		MagSwapTime = 3.5,
		DropMagAt = 0.43,
        IKTimeLine = {
           { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.725, lhik = 0, rhik = 0 },
            { t = 0.875, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_cpapa_charge_reload_fast_start.ogg", t = 0},
			{s = path .. "wfoly_pi_cpapa_charge_reload_fast_cylinderopen_01.ogg", t = 0.2},
            {s = path .. "wfoly_pi_cpapa_charge_reload_fast_grip.ogg", t = 0.35},
			{s = path .. "wfoly_pi_cpapa_charge_reload_fast_shelleject_01.ogg", t = 0.4},
            {s = path .. "wfoly_pi_cpapa_charge_reload_fast_shelleject_02.ogg", t = 0.4},
            {s = path .. "wfoly_pi_cpapa_charge_reload_fast_shelleject_03.ogg", t = 0.4},
            {s = path .. "wfoly_pi_cpapa_charge_reload_fast_arm.ogg", t = 0.78},
			{s = path .. "wfoly_pi_cpapa_charge_reload_fast_speedloader_01.ogg", t = 0.96},
			{s = path .. "wfoly_pi_cpapa_charge_reload_fast_ejectorrod_01.ogg", t = 1.06},
			{s = path .. "wfoly_pi_cpapa_charge_reload_fast_cylinderclose_01.ogg", t = 1.6},
			{s = path .. "wfoly_pi_cpapa_charge_reload_fast_end.ogg", t = 1.84},
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
            {s = path .. "wfoly_pi_cpapa_first_raise_start.ogg", t = 11/30},
            {s = path .. "wfoly_pi_cpapa_first_raise_cylinderopen_01.ogg", t = 11/30},
			{s = path .. "wfoly_pi_cpapa_first_raise_cylinderclose_01.ogg", t = 24/30},
			{s = path .. "wfoly_pi_cpapa_first_raise_end.ogg", t = 27/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
		MinProgress = 0.2,
		FireASAP = true,
        EventTable = {
            {s = path .. "wfoly_pi_cpapa_charge_raise.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            {s = path .. "wfoly_pi_cpapa_charge_reload_fast_grip.ogg", t = 0/30},
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
        Source = "lookat02",
		MinProgress = 0.1,
		FireASAP = true,
        RareSource = "lookat01_empty", -- Has a small chance to play instead of normal source
        RareSourceChance = 0.1, -- chance that rare source will play
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.75, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_pi_cpapa_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_pi_cpapa_inspect_02.ogg", t = 34/30},
			{s = path .. "wfoly_pi_cpapa_inspect_03.ogg", t = 58/30},
			{s = path .. "wfoly_pi_cpapa_inspect_04.ogg", t = 111/30},
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
	
-- Stock Anims
	["enter_sights_stock"] = {
		Source = "idle_stock",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
	},
    ["fire_stock"] = {
        Source = "shoot1_stock",
    },
    ["dryfire_stock"] = {
        Source = "shoot1_cycle_stock",
        EventTable = {
			{s = path .. "wfoly_pi_cpapa_charge_in_trigger_pull.ogg", t = 0/30},
        },
    },
    ["trigger_stock"] = {
        Source = "shoot1_cycle_stock",
        EventTable = {
			{s = path .. "wfoly_pi_cpapa_charge_in_trigger_pull.ogg", t = 0/30},
        },
    },
    ["reload_stock"] = {
        Source = "reload_stock",
		MinProgress = 0.85,
		MagSwapTime = 3.5,
        IKTimeLine = {
			{ t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 0, rhik = 0 },
            { t = 0.975, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_cpapa_charge_reload_start.ogg", t = 0/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_cylinderopen_01.ogg", t = 0/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_shake.ogg", t = 15/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_shelleject_01.ogg", t = 17/30},
            {s = path .. "wfoly_pi_cpapa_charge_reload_shelleject_02.ogg", t = 17/30},
            {s = path .. "wfoly_pi_cpapa_charge_reload_shelleject_03.ogg", t = 17/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_arm.ogg", t = 27/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_speedloader_01.ogg", t = 50/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_ejectorrod_01.ogg", t = 64/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_fast_cylinderclose_01.ogg", t = 75/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_end.ogg", t = 78/30},
        },
    },
    ["reload_fast_stock"] = {
        Source = "reload_fast_stock",
		MinProgress = 0.8,
		MagSwapTime = 3.5,
        IKTimeLine = {
			{ t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 0, rhik = 0 },
            { t = 0.975, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_cpapa_charge_reload_fast_start.ogg", t = 0},
			{s = path .. "wfoly_pi_cpapa_charge_reload_fast_cylinderopen_01.ogg", t = 0.2},
            {s = path .. "wfoly_pi_cpapa_charge_reload_fast_grip.ogg", t = 0.35},
			{s = path .. "wfoly_pi_cpapa_charge_reload_fast_shelleject_01.ogg", t = 0.4},
            {s = path .. "wfoly_pi_cpapa_charge_reload_fast_shelleject_02.ogg", t = 0.4},
            {s = path .. "wfoly_pi_cpapa_charge_reload_fast_shelleject_03.ogg", t = 0.4},
            {s = path .. "wfoly_pi_cpapa_charge_reload_fast_arm.ogg", t = 0.78},
			{s = path .. "wfoly_pi_cpapa_charge_reload_fast_speedloader_01.ogg", t = 0.96},
			{s = path .. "wfoly_pi_cpapa_charge_reload_fast_ejectorrod_01.ogg", t = 1.06},
			{s = path .. "wfoly_pi_cpapa_charge_reload_fast_cylinderclose_01.ogg", t = 1.6},
			{s = path .. "wfoly_pi_cpapa_charge_reload_fast_end.ogg", t = 1.84},
        },
    },
    ["ready_stock"] = {
        Source = "draw_stock",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_pi_cpapa_first_raise_start.ogg", t = 12/30},
            {s = path .. "wfoly_pi_cpapa_first_raise_cylinderopen_01.ogg", t = 12/30},
			{s = path .. "wfoly_pi_cpapa_first_raise_cylinderclose_01.ogg", t = 26/30},
			{s = path .. "wfoly_pi_cpapa_first_raise_end.ogg", t = 29/30},
        },
    },
    ["draw_stock"] = {
        Source = "draw_short_stock",
		MinProgress = 0.2,
		FireASAP = true,
        EventTable = {
            {s = path .. "wfoly_pi_cpapa_charge_raise.ogg", t = 0/30},
        },
    },
    ["holster_stock"] = {
        Source = "holster_stock",
        EventTable = {
            {s = path .. "wfoly_pi_cpapa_charge_reload_fast_grip.ogg", t = 0/30},
        },
    },
    ["idle_stock"] = {
        Source = "idle_stock",
    },
    ["inspect_stock"] = {
        Source = "lookat01_stock",
		MinProgress = 0.1,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.75, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_pi_cpapa_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_pi_cpapa_inspect_02.ogg", t = 34/30},
			{s = path .. "wfoly_pi_cpapa_inspect_03.ogg", t = 58/30},
			{s = path .. "wfoly_pi_cpapa_inspect_04.ogg", t = 111/30},
        },
    },
    ["bash_stock"] = {
        Source = {"melee_stock","melee2_stock"},
	    IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.6, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
    },
}

-------------------------- ATTACHMENTS

--SWEP.Hook_Think	= ARC9.COD2019.BlendEmpty2

--- Stock ---
local Translate_Stock = {
	["enter_sights"] = "enter_sights_stock",
	["fire"] = "fire_stock",
	["dryfire"] = "dryfire_stock",
	["trigger"] = "trigger_stock_stock",
    ["reload"] = "reload_stock",
	["ready"] = "ready_stock",
	["draw"] = "draw_stock",
	["holster"] = "holster_stock",
	["idle"] = "idle_stock",
	["inspect"] = "inspect_stock",
    ["bash"] = "bash_stock",
}

local Translate_Stock_Fast = {
	["enter_sights"] = "enter_sights_stock",
	["fire"] = "fire_stock",
	["dryfire"] = "dryfire_stock",
	["trigger"] = "trigger_stock_stock",
    ["reload"] = "reload_fast_stock",
	["ready"] = "ready_stock",
	["draw"] = "draw_stock",
	["holster"] = "holster_stock",
	["idle"] = "idle_stock",
	["inspect"] = "inspect_stock",
    ["bash"] = "bash_stock",
}

--- Fast & Tac. Sprint ---
local Translate_Fast = {
    ["reload"] = "reload_fast",
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
	local stock = wep:HasElement("357_stock")

	local tanim = {
		sprint = Translate_TacSprint[anim],
		fast = Translate_Fast[anim],

		stock = {
			base = Translate_Stock[anim],
			fast = Translate_Stock_Fast[anim],
			},
		}

    if super_sprint and tanim.sprint then
        return tanim.sprint
    end
	
	if !stock then
		if speedload then
			if tanim.fast then return tanim.fast end
		else
			if tanim.base then return tanim.base end
		end
	elseif stock then
		if speedload then
			if tanim.stock.fast then return tanim.stock.fast end
		else
			if tanim.stock.base then return tanim.stock.base end
		end
	end
end

SWEP.DefaultBodygroups = "00000000000000"

SWEP.AttachmentTableOverrides = {
    ["cod2019_trigger_light"] = {
		RPMAdd = 20,
    },
    ["cod2019_trigger_heavy"] = {
		RPMAdd = 20,
    },
    ["cod2019_griptape_01"] = {
    Model = "models/weapons/cod2019/attachs/weapons/357/attachment_vm_pi_cpapa_pistolgrip_tape.mdl",
    },
    ["cod2019_griptape_02"] = {
    Model = "models/weapons/cod2019/attachs/weapons/357/attachment_vm_pi_cpapa_pistolgrip_tape.mdl",
    },
    ["cod2019_griptape_03"] = {
    Model = "models/weapons/cod2019/attachs/weapons/357/attachment_vm_pi_cpapa_pistolgrip_tape.mdl",
    },
    ["cod2019_trigger_light"] = {
    Model = "models/weapons/cod2019/attachs/weapons/357/attachment_vm_pi_cpapa_trigcust.mdl",
    },
    ["cod2019_trigger_heavy"] = {
    Model = "models/weapons/cod2019/attachs/weapons/357/attachment_vm_pi_cpapa_trigcust02.mdl",
    },
    ["cod2019_trigger_match"] = {
    Model = "models/weapons/cod2019/attachs/weapons/357/attachment_vm_pi_cpapa_trigcust03.mdl",
    },
}

SWEP.AttachmentElements = {
    ["body_none"] = {
        Bodygroups = {
            {0,1},
        },
    },
    ["barrel_none"] = {
        Bodygroups = {
            {1,1},
        },
    },
    ["grip_none"] = {
        Bodygroups = {
            {2,1},
        },
    },
    ["rail_sight"] = {
        Bodygroups = {
            {3,1},
        },
    },
    ["rail_laser"] = {
        Bodygroups = {
            {4,1},
        },
    },
    ["mag_none"] = {
        Bodygroups = {
            {5,1},
        },
    },
    ["trigger_none"] = {
        Bodygroups = {
            {6,1},
        },
    },
    ["cod2019_attach_grip_support"] = {
		AttPosMods = { 
			[3] = { -- Laser
			Pos = Vector(0.5, 0.05, 0.1),
			},
		},
    },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model
	local attached = data.elements
    local camo = 0
    if attached["universal_camo"] then
        camo = 1
    end
    model:SetSkin(camo)
end

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
        Category = "cod2019_357_barrel",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
    },
    { -- 3
        PrintName = ARC9:GetPhrase("mw19_category_laser"),
		DefaultIcon = Material("entities/defattachs/laser-ar.png", "mips smooth"),
        Category = {"cod2019_tac_pistols","cod2019_grip_pistols"},
        Bone = "tag_laser_attach",
        Pos = Vector(0.3, 0, 0),
		InstalledElements = {"rail_laser"},
    },
    { -- 4
        PrintName = ARC9:GetPhrase("mw19_category_optic"),
		DefaultIcon = Material("entities/defattachs/optic.png", "mips smooth"),
        Bone = "tag_reflex",
        Pos = Vector(1, 0, -0.07),
        Category = {"cod2019_optic_pistol"},
		InstalledElements = {"rail_sight"},
    },
    { -- 5
        PrintName = ARC9:GetPhrase("mw19_category_triggeraction"),
		-- DefaultIcon = Material("entities/defattachs/stock-ar.png", "mips smooth"),
        Category = {"cod2019_trigger"},
        Bone = "j_trigger",
        Pos = Vector(0, 0, 0),
    },
    { -- 6
        PrintName = ARC9:GetPhrase("mw19_category_magazine"),
		DefaultIcon = Material("entities/defattachs/magazine-ar.png", "mips smooth"),
		Bone = "tag_mag_attach",
        Category = "cod2019_357_mag",
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(-6.5, 0, 2),
    },
    { -- 7
        PrintName = ARC9:GetPhrase("mw19_category_ammo"),
		DefaultIcon = Material("arc9/def_att_icons/ammotype.png", "mips smooth"),
        Bone = "tag_mag_attach",
		Category = {"cod2019_ammo"},
		Pos = Vector(-1, 0, 0),
		Icon_Offset = Vector(-6.5, 0, 2),
    },
    { -- 8
        PrintName = ARC9:GetPhrase("mw19_category_reargrip") .. " / " .. ARC9:GetPhrase("mw19_category_stock"),
		DefaultIcon = Material("entities/defattachs/reargrip-ar.png", "mips smooth"),
        Category = {"cod2019_pistolgrip", "cod2019_357_grip"},
        Bone = "tag_pistolgrip_attach",
        Pos = Vector(0, 0, 0),
    },
    { -- 9
        PrintName = ARC9:GetPhrase("mw19_category_perk"),
        Category = {"cod2019_perks","cod2019_perks_soh","cod2019_perks_ss"},
        Bone = "tag_pistolgrip_attach",
        Pos = Vector(3, 0, 0),
    },
	
	-- Unofficial
    { -- 10
        PrintName = ARC9:GetPhrase("mw19_category_receiver"),
        Category = "cod2019_357_receiver",
        Bone = "tag_pistolgrip_attach",
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(0, 0, 1),
		Hidden = false,
    },
	
	-- Cosmetics
    { -- 11
        PrintName = ARC9:GetPhrase("mw19_category_skins"),
        Bone = "tag_cosmetic",
        Pos = Vector(3, 0, 1.5),
        Category = "cod2019_skins_357",
		CosmeticOnly = true,
    },
    { -- 12
        PrintName = ARC9:GetPhrase("mw19_category_camouflage"),
        Category = {"universal_camo"},
        Bone = "tag_cosmetic",
        Pos = Vector(2, 0, 1.5),
        CosmeticOnly = true,
    },
    { -- 13
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/pist_357_decal_a.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(1, 0, 1.5),
    },
    { -- 14
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/pist_357_decal_b.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(0, 0, 1.5),
    },
    { -- 15
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/pist_357_decal_c.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-1, 0, 1.5),
    },
    { -- 16
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/pist_357_decal_d.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-2, 0, 1.5),
    },
    { -- 17
        PrintName = ARC9:GetPhrase("mw19_category_charm"),
        CosmeticOnly = true,
        Category = {"charm"},
        Bone = "tag_cosmetic",
        Pos = Vector(-2.3, 0, -0.15),
		Icon_Offset = Vector(-0.7, 0, 1.6),
		Scale = 1,
    },
    { -- 18
        PrintName = ARC9:GetPhrase("mw19_category_stats"),
        Category = "killcounter",
        Bone = "tag_cosmetic",
        Pos = Vector(-3, 0.05, -1.7),
		Icon_Offset = Vector(-1, 0.05, 3.25),
		CosmeticOnly = true,
		Scale = 0.8,
    },
}

SWEP.GripPoseParam = 4.6
SWEP.GripPoseParam2 = 0.6

-- Warzone-esque Stats; Add here to change only when using Warzone Stats variable.
if GetConVar("arc9_mw19_stats_warzone"):GetBool() then

-------------------------- DAMAGE PROFILE
SWEP.DamageMax = 73 -- Damage done at point blank range
SWEP.DamageMin = 50 -- Damage done at maximum range

SWEP.RangeMin = 24 / ARC9.HUToM
SWEP.RangeMax = 25 / ARC9.HUToM

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 1.4,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 0.95,
    [HITGROUP_LEFTARM] = 0.915,
    [HITGROUP_RIGHTARM] = 0.915,
    [HITGROUP_LEFTLEG] = 0.915,
    [HITGROUP_RIGHTLEG] = 0.915,
}

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 440 / ARC9.HUToM

-------------------------- FIREMODES

SWEP.RPM = 120

-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.25 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.078 -- How long it takes to go from sprinting to being able to fire.

end
