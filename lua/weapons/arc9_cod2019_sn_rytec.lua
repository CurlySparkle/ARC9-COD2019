AddCSLuaFile()
if CLIENT then
    killicon.Add( "arc9_cod2019_sn_rytec", "vgui/killicons/cod2019_sn_rytec.png", Color(251, 85, 25, 255))
end

SWEP.LoadoutImage = "entities/loadout/arc9_cod2019_sn_rytec.png"

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_sniper") or "Sniper Rifles"

SWEP.PrintName = ARC9:GetPhrase("mw19_weapon_rytec") or "Rytec AMR"

SWEP.Class = ARC9:GetPhrase("mw19_class_weapon_sniper") or "Sniper Rifle"
SWEP.Trivia = {
    [ ARC9:GetPhrase("mw19_country") ] = ARC9:GetPhrase("mw19_country_usa"),
    [ ARC9:GetPhrase("mw19_manufacturer") ] = ARC9:GetPhrase("mw19_manufacturer_silverfield"),
    [ ARC9:GetPhrase("mw19_caliber") ] = ARC9:GetPhrase("mw19_caliber_50bmg"),
    [ ARC9:GetPhrase("mw19_weight") ] = string.format(ARC9:GetPhrase("mw19_weight_val"), 15.1, 15.1 * 2.20),
    [ ARC9:GetPhrase("mw19_weight_projectile") ] = string.format(ARC9:GetPhrase("mw19_weight_projectile_val"), 360),
    -- [ ARC9:GetPhrase("mw19_muzzle_energy") ] = "1,390 ft/s",
    -- [ ARC9:GetPhrase("mw19_muzzle_velocity") ] = "2,094 joules"
}

SWEP.Credits = {
    [ ARC9:GetPhrase("mw19_author") ] = "Twilight Sparkle/Firmeteran",
    [ ARC9:GetPhrase("mw19_assets") ] = "Activision/Infinity Ward"
}

SWEP.Description = ARC9:GetPhrase("mw19_weapon_rytec_desc") or [[Semi-automatic Anti-Materiel Rifle is chambered in .50 BMG for dominant long range assaults. A 25x59mm high-explosive payload variant is officially listed as "experimental", but has been deployed on multiple classified missions with great effectiveness.]]

SWEP.ViewModel = "models/weapons/cod2019/c_snip_rytec.mdl"
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"

SWEP.Slot = 3

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_snip_rytec.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-12, 6, -7.5),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-8, 6, -1),
    TPIKAng = Angle(-10, 0, 175),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 175 -- Damage done at point blank range
SWEP.DamageMin = 80 -- Damage done at maximum range
SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 1000 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 8000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 25 -- Units of wood that can be penetrated by this gun.

SWEP.ImpactForce = 15

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 2999 * 12
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.5

-------------------------- MAGAZINE

SWEP.Ammo = "sniperPenetratedRound" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 5 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 2 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 150

SWEP.Firemodes = {
    {
        Mode = 1,
        -- add other attachment modifiers
    }
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 5

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 2 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.3

SWEP.RecoilDissipationRate = 7.5 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 1 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 3
SWEP.RecoilKickSights = 3

SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.8
SWEP.RecoilMultCrouch = 0.8

SWEP.RecoilPerShot = 2
SWEP.RecoilMax = 3

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilMultSights = 0.3
SWEP.VisualRecoilPunchSights = 5

SWEP.VisualRecoilPunch = 2
SWEP.VisualRecoilSpringMagnitude = 5
SWEP.VisualRecoilUp = 1
SWEP.VisualRecoilRoll = 50

SWEP.VisualRecoilDoingFunc = function(up, side, roll, punch, recamount)
    if recamount > 5 then
        recamount = 1.65 - math.Clamp((recamount - 2) / 3.5, 0, 1)
        
        local fakerandom = 1 + (((69+recamount%5*CurTime()%3)*2420)%4)/10 
        
        return up, side * fakerandom, roll, punch
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

SWEP.SpeedMultSights = 0.5

SWEP.AimDownSightsTime = 0.7 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.5 -- How long it takes to go from sprinting to being able to fire.

SWEP.InstantSprintIdle = false

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.255

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 255, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-3.53, 0, 0.8),
    Ang = Angle(0.5, 1.3, -2),
    Magnification = 1.19,
    ViewModelFOV = 56,
	CrosshairInSights = false
}

SWEP.SightMidPoint = { -- Where the gun should be at the middle of it's irons
    Pos = Vector(-3, 15, -5),
    Ang = Angle(0, 0, -45),
}

SWEP.ViewModelFOVBase = 64

SWEP.SprintMidPoint = {
    Pos = Vector(0, 0, 0),
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

SWEP.CustomizeAng = Angle(90, 0, 1.5)
SWEP.CustomizePos = Vector(18, 50, 4)
SWEP.CustomizeRotateAnchor = Vector(18, -3, -4)
SWEP.CustomizeSnapshotFOV = 65
SWEP.CustomizeSnapshotPos = Vector(1, 40, 5)
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeNoRotate = false

SWEP.PeekPos = Vector(2.5, 2, -1)
SWEP.PeekAng = Angle(-0.3, 0, -10)

SWEP.PeekMaxFOV = 54

SWEP.PeekPosReloading = Vector(4, 1, -1)
SWEP.PeekAngReloading = Angle(-0.3, 10, 10)

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

SWEP.MuzzleParticle = "AC_muzzle_sniper_heavy"
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
SWEP.ShellSounds = ARC9.COD2019_50bmg_Table

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_snip_rytec_mag1.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_01.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_02.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_03.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_04.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_05.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_06.ogg",
}
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineTime = 2
SWEP.DropMagazineQCA = 3
SWEP.DropMagazineAng = Angle(0, -90, 0)

-------------------------- SOUNDS

local path = "weapons/cod2019/rytec/"

SWEP.ShootSound = "COD2019.Rytec.Fire"
SWEP.ShootSoundIndoor = "COD2019.Rytec.Fire"

SWEP.ShootSoundSilenced = "COD2019.Rytec.Fire.S"
SWEP.ShootSoundSilencedIndoor = "COD2019.Rytec.Fire.S"

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

SWEP.EnterSightsSound = path .. "wfoly_sn_xmike109_ads_up.ogg"
SWEP.ExitSightsSound = path .. "wfoly_sn_xmike109_ads_down.ogg"

SWEP.TriggerDelay = 0.03 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayCancellable = false
SWEP.TriggerDelayTime = 0.03 -- Time until weapon fires.

SWEP.TriggerDownSound = "weapons/cod2019/svd/weap_delta_fire_first_plr_01.ogg"
SWEP.TriggerUpSound = "weapons/cod2019/svd/weap_delta_disconnector_plr_01.ogg"

SWEP.BulletBones = {
    [1] = "j_he_round_01",
    [2] = "j_he_round_02",
    [3] = "j_he_round_03",
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
		Source = "ads_in",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
	},
	["exit_sights"] = {
		Source = "ads_out",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
	},
    ["fire"] = {
        Source = "shoot1",
    },
    ["untrigger"] = {
        Source = "shoot1_settle",
    },
    ["dryfire"] = {
        Source = "dryfire",
		MinProgress = 0.01,
		FireASAP = true,
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
    },
    ["reload"] = {
        Source = "reload_short",
		MinProgress = 0.975,
		PeekProgress = 0.91,
		RefillProgress = 0.7,
		FireASAP = true,
		DropMagAt = 2.2,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.15, lhik = 1, rhik = 0 },
            { t = 0.25, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.825, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sn_xmike109_reload_up.ogg", t = 0.0},
            {s = path .. "wfoly_sn_xmike109_reload_magrelease.ogg", t = 0.9},
			{s = path .. "wfoly_sn_xmike109_reload_magout.ogg", t = 1.4},
			{s = path .. "wfoly_sn_xmike109_reload_arm.ogg", t = 2.367},
			{s = path .. "wfoly_sn_xmike109_reload_magin_01.ogg", t = 2.867},
			{s = path .. "wfoly_sn_xmike109_reload_magin_02.ogg", t = 3.1},
			{s = path .. "wfoly_sn_xmike109_reload_end.ogg", t = 3.567},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.975,
		PeekProgress = 0.925,
		RefillProgress = 0.85,
		FireASAP = true,
		DropMagAt = 2,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 1, rhik = 0 },
            { t = 0.225, lhik = 0, rhik = 0 },
            { t = 0.575, lhik = 0, rhik = 0 },
            { t = 0.675, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sn_xmike109_reload_empty_up.ogg", t = 0.033},
            {s = path .. "wfoly_sn_xmike109_reload_empty_magrelease.ogg", t = 1.05},
			{s = path .. "wfoly_sn_xmike109_reload_empty_magout.ogg", t = 1.45},
			{s = path .. "wfoly_sn_xmike109_reload_empty_arm.ogg", t = 2.2},
			{s = path .. "wfoly_sn_xmike109_reload_empty_magin_01.ogg", t = 2.78},
			{s = path .. "wfoly_sn_xmike109_reload_empty_magin_02.ogg", t = 3.2},
			{s = path .. "wfoly_sn_xmike109_reload_empty_rotate.ogg", t = 3.667},
			{s = path .. "wfoly_sn_xmike109_reload_empty_boltpull.ogg", t = 4.267},
			{s = path .. "wfoly_sn_xmike109_reload_empty_boltrelease.ogg", t = 4.8},
			{s = path .. "wfoly_sn_xmike109_reload_empty_end.ogg", t = 5.1},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.975,
		PeekProgress = 0.91,
		RefillProgress = 0.7,
		FireASAP = true,
		DropMagAt = 1.13,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 1, rhik = 0 },
            { t = 0.25, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.825, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sn_xmike109_reload_fast_up.ogg", t = 0.167},
			{s = path .. "wfoly_sn_xmike109_reload_fast_magout.ogg", t = 0.633},
			{s = path .. "wfoly_sn_xmike109_reload_fast_arm.ogg", t = 1.4},
			{s = path .. "wfoly_sn_xmike109_reload_fast_magin_01.ogg", t = 1.567},
			{s = path .. "wfoly_sn_xmike109_reload_fast_magin_02.ogg", t = 1.967},
            {s = path .. "wfoly_sn_xmike109_reload_fast_shake.ogg", t = 2.0},
			{s = path .. "wfoly_sn_xmike109_reload_fast_end.ogg", t = 2.467},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.975,
		PeekProgress = 0.925,
		RefillProgress = 0.85,
		FireASAP = true,
		DropMagAt = 1.15,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.075, lhik = 1, rhik = 0 },
            { t = 0.175, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.6, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sn_xmike109_reload_empty_fast_up.ogg", t = 0.267},
			{s = path .. "wfoly_sn_xmike109_reload_empty_fast_magout.ogg", t = 0.7},
			{s = path .. "wfoly_sn_xmike109_reload_empty_fast_arm.ogg", t = 1.333},
			{s = path .. "wfoly_sn_xmike109_reload_empty_fast_magin_01.ogg", t = 1.667},
			{s = path .. "wfoly_sn_xmike109_reload_empty_fast_magin_02.ogg", t = 1.967},
            {s = path .. "wfoly_sn_xmike109_reload_empty_fast_grab.ogg", t = 2.367},
			{s = path .. "wfoly_sn_xmike109_reload_empty_fast_boltpull.ogg", t = 2.75},
			{s = path .. "wfoly_sn_xmike109_reload_empty_fast_boltrelease.ogg", t = 3.25},
			{s = path .. "wfoly_sn_xmike109_reload_empty_fast_end.ogg", t = 3.533},
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
            {s = path .. "wfoly_sn_xmike109_first_raise_up.ogg", t = 0.1},
            {s = path .. "wfoly_sn_xmike109_first_raise_bolt_pull.ogg", t = 0.6},
            {s = path .. "wfoly_sn_xmike109_first_raise_bolt_release.ogg", t = 1.0},
			{s = path .. "wfoly_sn_xmike109_first_raise_end.ogg", t = 36/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
        MinProgress = 0.3,
        FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 0 },
            { t = 0.6, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sn_xmike109_first_raise_up.ogg", t = 0/30},
			{s = path .. "wfoly_sn_xmike109_first_raise_end.ogg", t = 10/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.5, lhik = 0, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sn_xmike109_first_raise_end.ogg", t = 0/30},
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
            { t = 0.325, lhik = 0, rhik = 0 },
            { t = 0.475, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sn_xmike109_inspect_up.ogg", t = 0.1},
			{s = path .. "wfoly_sn_xmike109_inspect_grabrotate.ogg", t = 1.7},
			{s = path .. "wfoly_sn_xmike109_inspect_move.ogg", t = 3.7},
			{s = path .. "wfoly_sn_xmike109_inspect_end.ogg", t = 111/30},
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
        Source = "bipod_in",
    },
    ["exit_bipod"] = {
        Source = "bipod_out",
    },
    ["hybrid_on"] = {
        Source = "hybrid_on",
        EventTable = {
            {s = "Viewmodel.SwitchSight", t = 0/30},
			{s = "switchsights/wpfoly_hybrid_toggle_on.ogg", t = 5/30},
        },
    },
    ["hybrid_off"] = {
        Source = "hybrid_off",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
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

SWEP.DefaultBodygroups = "0000000000000000000000"

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(19, 0, 0),
	ModelAngleOffset = Angle(0, 0, 0),
	Scale = 0.8,
    },
    ["cod2019_griptape_01"] = {
    Model = "models/weapons/cod2019/attachs/weapons/rytec/attachment_vm_sn_xmike109_griptape.mdl",
    },
    ["cod2019_griptape_02"] = {
    Model = "models/weapons/cod2019/attachs/weapons/rytec/attachment_vm_sn_xmike109_griptape.mdl",
    },
    ["cod2019_griptape_03"] = {
    Model = "models/weapons/cod2019/attachs/weapons/rytec/attachment_vm_sn_xmike109_griptape.mdl",
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
            {1,2},
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
    ["stock_none"] = {
        Bodygroups = {
            {4,1},
        },
    },
    ["rail_grip"] = {
        Bodygroups = {
            {6,1},
        },
    },
    ["bipod"] = {
        Bodygroups = {
            {6,2},
        },
    },
    ["rail_laser"] = {
        Bodygroups = {
            {7,1},
        },
    },
    ["sights_none"] = {
        Bodygroups = {
            {8,1},
        },
    },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model
    if wep:HasElement("bipod") then model:SetBodygroup(6,2) end
end

SWEP.Attachments = {
    { -- 1
        PrintName = ARC9:GetPhrase("mw19_category_muzzle"),
        Category = "cod2019_muzzle",
        DefaultIcon = Material("entities/defattachs/muzzle-ar.png", "mips smooth"),
		Bone = "tag_silencer",
        Pos = Vector(0, 0, 0),
		InstalledElements = {"muzzle_none"},
		Scale = 1.2,
    },
    { -- 2
        PrintName = ARC9:GetPhrase("mw19_category_barrel"),
		DefaultIcon = Material("entities/defattachs/barrel-ar.png", "mips smooth"),
        Category = "cod2019_rytec_barrel",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
    },
    { -- 3
        PrintName = ARC9:GetPhrase("mw19_category_laser"),
		DefaultIcon = Material("entities/defattachs/laser-ar.png", "mips smooth"),
        Category = "cod2019_tac_rail",
        Bone = "tag_laser_attach",
        Pos = Vector(-0.7, -1.5, 0.5),
		Ang = Angle(0, 0, 0),
    },
    { -- 4
        PrintName = ARC9:GetPhrase("mw19_category_optic"),
		DefaultIcon = Material("entities/defattachs/optic.png", "mips smooth"),
        Bone = "tag_scope",
        Pos = Vector(3, 0, -0.1),
        Category = {"cod2019_optic","cod2019_optic_rytec"},
		InstalledElements = {"sights_none"},
		Installed = "cod2019_optic_default_rytec",
		CorrectiveAng = Angle(1.5, 0.6, 0),
    },
    { -- 5
        PrintName = ARC9:GetPhrase("mw19_category_stock"),
		DefaultIcon = Material("entities/defattachs/stock-ar.png", "mips smooth"),
        Category = {"cod2019_rytec_stock"},
        Bone = "tag_stock_attach",
        Pos = Vector(0.6, 0, 0.5),
		InstalledElements = {"stock_none","stock_main_none"},
    },
    { -- 6
        PrintName = ARC9:GetPhrase("mw19_category_underbarrel"),
		DefaultIcon = Material("entities/defattachs/grip.png", "mips smooth"),
        Category = "cod2019_grip",
        Bone = "tag_attachments",
        Pos = Vector(18.7, 0.11, -1.2),
        Ang = Angle(0, 0, 180),
		InstalledElements = {"rail_grip"},
		MergeSlots = {22},
		RejectAttachments = { ["cod2019_grips_bipod_alt"] = true },
    },
    { -- 7
        PrintName = ARC9:GetPhrase("mw19_category_magazine"),
		DefaultIcon = Material("entities/defattachs/magazine-ar.png", "mips smooth"),
		Bone = "tag_mag_attach",
        Category = {"cod2019_mag","cod2019_rytec_mag"},
        Pos = Vector(0, 0, 0),
    },
    { -- 8
        PrintName = ARC9:GetPhrase("mw19_category_ammo"),
		DefaultIcon = Material("arc9/def_att_icons/ammotype.png", "mips smooth"),
        Bone = "tag_mag_attach",
		Category = {"cod2019_ammo", "cod2019_ammo_sniper"},
		Pos = Vector(-1.5, 0, 0),
		MergeSlots = {23},
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
        Pos = Vector(7, 0, -3.5),
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
        Category = "cod2019_rytec_receiver",
        Bone = "tag_attachments",
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(8.5, 0, 0),
		Hidden = false,
    },
	
	-- Cosmetics
    { -- 13
        PrintName = ARC9:GetPhrase("mw19_category_skins"),
        Bone = "tag_cosmetic",
        Pos = Vector(7, 0, 3),
        Category = "cod2019_skins_rytec",
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
        StickerModel = "models/weapons/cod2019/stickers/snip_rytec_decal_a.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(3, 0, 3),
    },
    { -- 16
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/snip_rytec_decal_b.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(1, 0, 3),
    },
    { -- 17
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/snip_rytec_decal_c.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-1, 0, 3),
    },
    { -- 18
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/snip_rytec_decal_d.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-3, 0, 3),
    },
    { -- 19
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/snip_rytec_decal_e.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-5, 0, 3),
    },
    { -- 20
        PrintName = ARC9:GetPhrase("mw19_category_charm"),
        CosmeticOnly = true,
        Category = {"charm"},
        Bone = "tag_cosmetic",
        Pos = Vector(-0.5, 0, 0),
		Icon_Offset = Vector(-6.5, 0, 3),
		Scale = 1.2,
    },
    { -- 21
        PrintName = ARC9:GetPhrase("mw19_category_stats"),
        Category = {"killcounter","killcounter2"},
        Bone = "tag_cosmetic",
        Pos = Vector(2, 0, 0),
		Icon_Offset = Vector(-11, 0, 3),
		RejectAttachments = { ["arc9_stat_proscreen_main"] = true },
		CosmeticOnly = true,
    },
    { -- 22
        PrintName = "Bipod",
        DefaultAttName = "Default",
        Category = {"cod2019_rytec_bipod"},
        Bone = "tag_bipod_attach",
		Scale = 1,
		Hidden = true,
        MergeSlots = {6},
    },
    { -- 23
        PrintName = ARC9:GetPhrase("mw19_category_ammo"),
        Category = {"cod2019_ammo_special"},
		RequireElements = {"mag_ftac"},
    },
}

SWEP.GripPoseParam = 3
SWEP.GripPoseParam2 = 0.1
SWEP.CodStubbyGripPoseParam = 26
SWEP.CodAngledGripPoseParam = 32.7
SWEP.CodStubbyTallGripPoseParam = 26

-- Warzone-esque Stats; Add here to change only when using Warzone Stats variable.
if GetConVar("arc9_mw19_stats_warzone"):GetBool() then

-------------------------- DAMAGE PROFILE
SWEP.DamageMax = 125 -- Damage done at point blank range
SWEP.DamageMin = 112 -- Damage done at maximum range

SWEP.RangeMin = 79 / ARC9.HUToM
SWEP.RangeMax = 80 / ARC9.HUToM

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 2.4,
    [HITGROUP_CHEST] = 1.095,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 0.9,
    [HITGROUP_RIGHTARM] = 0.9,
    [HITGROUP_LEFTLEG] = 0.9,
    [HITGROUP_RIGHTLEG] = 0.9,
}

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 760 / ARC9.HUToM

-------------------------- FIREMODES

SWEP.RPM = 167

-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.6 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.25 -- How long it takes to go from sprinting to being able to fire.

end
