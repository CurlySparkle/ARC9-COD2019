AddCSLuaFile()
if CLIENT then
    killicon.Add( "arc9_cod2019_pi_renetti_akimbo", "vgui/killicons/cod2019_pi_akimbo_renetti.png", Color(251, 85, 25, 255))
end

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_handgun_akimbo") or "Akimbos"

SWEP.PrintName = ARC9:GetPhrase("mw19_weapon_m9") or "Renetti"

SWEP.Class = ARC9:GetPhrase("mw19_class_weapon_handgun") or "Handgun"
SWEP.Trivia = {
    [ ARC9:GetPhrase("mw19_country") ] = ARC9:GetPhrase("mw19_country_usa"),
    [ ARC9:GetPhrase("mw19_manufacturer") ] = ARC9:GetPhrase("mw19_manufacturer_silverfield"),
    [ ARC9:GetPhrase("mw19_caliber") ] = "9×19mm Parabellum",
    [ ARC9:GetPhrase("mw19_weight") ] = "2 kg",
    [ ARC9:GetPhrase("mw19_weight_projectile") ] = "124 gr",
    [ ARC9:GetPhrase("mw19_muzzle_energy") ] = "1,250 ft/s",
    [ ARC9:GetPhrase("mw19_muzzle_velocity") ] = "583 joules"
}

SWEP.Credits = {
    [ ARC9:GetPhrase("mw19_author") ] = "Twilight Sparkle/Firmeteran",
    [ ARC9:GetPhrase("mw19_assets") ] = "Activision/Infinity Ward"
}

SWEP.Description = ARC9:GetPhrase("mw19_weapon_m9_desc") or [[Well rounded semi-auto 9mm pistol. This unassuming sidearm excels in close range combat, and features gunsmithing capabilities unique to the pistol class that permit a variety of engagement styles.]]

SWEP.ViewModel = "models/weapons/cod2019/c_akimbo_renetti.mdl"
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"

SWEP.Slot = 1

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.TPIKforcelefthand = true
SWEP.TPIKNoSprintAnim = true 
SWEP.WorldModelMirror = "models/weapons/cod2019/c_akimbo_renetti.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-12, 6, -7.5),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-15, 7.5, -15),
    TPIKAng = Angle(-3, 0, 180),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 33 -- Damage done at point blank range
SWEP.DamageMin = 18 -- Damage done at maximum range

SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 600 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 4000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 2 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.2

SWEP.ImpactForce = 8

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 1300 * 12
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.15

-------------------------- MAGAZINE

SWEP.Ammo = "pistol" -- What ammo type this gun uses.

SWEP.ChamberSize = 2 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 30 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 10 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 353 * 2

SWEP.Firemodes = {
    {
        Mode = 1,
    },
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1

--SWEP.RecoilSeed = nil

SWEP.RecoilPatternDrift = 15

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.5

SWEP.RecoilDissipationRate = 50 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0.05 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 1

SWEP.RecoilKick = 2

SWEP.RecoilMultCrouch = 0.8
SWEP.RecoilMultMove = 1.25
SWEP.RecoilMultSights = 0.6

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilMultSights = 0.2
SWEP.VisualRecoilPunchSights = 75
SWEP.VisualRecoilPunch = 2
SWEP.VisualRecoilUp = 0.1
SWEP.VisualRecoilRoll = 55
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
SWEP.SpreadMultRecoil = 1
SWEP.RecoilModifierCap = 2

SWEP.SpreadAddMove = 0.02
--SWEP.SpreadAddMidAir = 0
SWEP.SpreadAddHipFire = 0.015
SWEP.SpreadAddCrouch = -0.01
SWEP.SpreadAddSights = -0.5


-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.3 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.3 -- How long it takes to go from sprinting to being able to fire.

-------------------------- MELEE

SWEP.Bash = true
SWEP.SecondaryBash = true
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.2

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 255, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.HasSights = false

SWEP.ViewModelFOVBase = 60

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

SWEP.MovingPos = Vector(0, -1, -1)
SWEP.MovingAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-1, -0.5, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.SprintPos = Vector(-1, 0, -1)
SWEP.SprintAng = Angle(0, 0, -5)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(19, 30, 3)
SWEP.CustomizeRotateAnchor = Vector(19, -2.25, -4)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeSnapshotPos = Vector(1, -10, 3)
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeNoRotate = false

-------------------------- HoldTypes

SWEP.HoldType = "duel"
SWEP.HoldTypeSprint = "duel"
SWEP.HoldTypeHolstered = "duel"
SWEP.HoldTypeSights = "duel"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

-- SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_DUEL
-- SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_DUEL
SWEP.NonTPIKAnimReload = ACT_HL2MP_GESTURE_RELOAD_DUEL
SWEP.AnimDraw = false

SWEP.Akimbo = true

-------------------------- EFFECTS

SWEP.MuzzleParticle = "AC_muzzle_pistol_fp"
SWEP.AfterShotParticle = "AC_muzzle_smoke_barrel"
SWEP.TracerEffect = "cod2019_tracer_small"
SWEP.MuzzleEffectQCA = 1
SWEP.MuzzleEffectQCAEvenShot = 2
SWEP.CaseEffectQCA = 4
SWEP.CaseEffectQCAEvenShot = 3
SWEP.AfterShotQCA = 1
SWEP.AfterShotQCAEvenShot = 2

SWEP.CamQCA = 7
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_9mm_hr.mdl"
SWEP.ShellSounds = ARC9.COD2019_9mm_Table
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 0.06
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_pist_renetti_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_poly_concrete_01.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_poly_concrete_02.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_poly_concrete_03.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_poly_concrete_04.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_poly_concrete_05.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_poly_concrete_06.ogg",
}
SWEP.DropMagazineAmount = 2 -- Amount of mags to drop.
SWEP.DropMagazineTime = 0.4
SWEP.DropMagazineQCA = 6
SWEP.DropMagazineAng = Angle(0, -90, 0)

-------------------------- SOUNDS

local path = "weapons/cod2019/renetti/"

SWEP.ShootSound = "COD2019.Renetti.Fire"
SWEP.ShootSoundIndoor = "COD2019.Renetti.Fire"

SWEP.ShootSoundSilenced = "COD2019.Renetti.Fire.S"
SWEP.ShootSoundSilencedIndoor = "COD2019.Renetti.Fire.S"

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

SWEP.EnterSightsSound = path .. "wfoly_pi_mike9_ads_up.ogg"
SWEP.ExitSightsSound = path .. "wfoly_pi_mike9_ads_down.ogg"

SWEP.BulletBones = {
    [1] = "j_bullet1_l",
	[2] = "j_bullet1",
}

SWEP.HideBones  = {
    [1] = "j_mag2",
	[2] = "j_mag2_l",
}

SWEP.TriggerDelay = 0.025 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayCancellable = false
SWEP.TriggerDelayTime = 0.025 -- Time until weapon fires.

SWEP.TriggerDownSound = "weapons/cod2019/renetti/weap_mike9a3_hammer_plr_01.ogg"
SWEP.TriggerUpSound = "weapons/cod2019/renetti/weap_mike9a3_disconnector_plr_01.ogg"

SWEP.Animations = {
    ["fire_left"] = {
        Source = "fire_left",
    },
    ["fire_right"] = {
        Source = "fire_right",
    },
    ["reload"] = {
        Source = "reload",
		MinProgress = 0.725,
		MagSwapTime = 3.5,
		DropMagAt = 0.35,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_mike9_reload_empty_fast_raise.ogg", t = 0/30},
			{s = path .. "wfoly_pi_mike9_reload_fast_raise.ogg", t = 0/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_fast_magout.ogg", t = 6/30},
			{s = path .. "wfoly_pi_mike9_reload_fast_magout.ogg", t = 9/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_fast_magin.ogg", t = 35/30},
			{s = path .. "wfoly_pi_mike9_reload_fast_maghit.ogg", t = 38/30},
			{s = path .. "wfoly_pi_mike9_reload_fast_magin.ogg", t = 56/30},
			{s = path .. "wfoly_pi_mike9_reload_fast_end.ogg", t = 67/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_fast_end.ogg", t = 67/30},
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
		MinProgress = 0.8,
		DropMagAt = 0.35,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.95, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_mike9_reload_empty_fast_raise.ogg", t = 0/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_raise.ogg", t = 1/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_fast_magout.ogg", t = 8/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_magout.ogg", t = 11/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_magin.ogg", t = 55/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_fast_magin.ogg", t = 56/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_fast_charge.ogg", t = 73/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_charge.ogg", t = 76/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_fast_end.ogg", t = 78/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_end.ogg", t = 78/30},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.7,
		MagSwapTime = 3.5,
		DropMagAt = 0.35,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_mike9_reload_empty_fast_raise.ogg", t = 0/30},
			{s = path .. "wfoly_pi_mike9_reload_fast_raise.ogg", t = 0/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_fast_magout.ogg", t = 6/30},
			{s = path .. "wfoly_pi_mike9_reload_fast_magout.ogg", t = 9/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_fast_magin.ogg", t = 19/30},
			{s = path .. "wfoly_pi_mike9_reload_fast_maghit.ogg", t = 21/30},
			{s = path .. "wfoly_pi_mike9_reload_fast_magin.ogg", t = 34/30},
			{s = path .. "wfoly_pi_mike9_reload_fast_end.ogg", t = 46/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_fast_end.ogg", t = 47/30},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.775,
		DropMagAt = 0.35,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.95, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_mike9_reload_empty_fast_raise.ogg", t = 0/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_raise.ogg", t = 1/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_fast_magout.ogg", t = 8/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_magout.ogg", t = 11/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_magin.ogg", t = 21/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_fast_magin.ogg", t = 36/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_fast_charge.ogg", t = 56/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_charge.ogg", t = 58/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_fast_end.ogg", t = 60/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_end.ogg", t = 60/30},
        },
    },
    ["ready"] = {
        Source = "draw_first",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_pi_mike9_raise_first_up.ogg", t = 0/30},
            {s = path .. "wfoly_pi_mike9_raise_first_hammer.ogg", t = 12/30},
            {s = path .. "wfoly_pi_mike9_raise_first_hammer.ogg", t = 15/30},
			{s = path .. "wfoly_pi_mike9_raise_first_end.ogg", t = 25/30},
        },
    },
    ["draw"] = {
        Source = "draw",
		MinProgress = 0.3,
        FireASAP = true,
        EventTable = {
            {s = path .. "wfoly_pi_mike9_raise.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            {s = path .. "wfoly_pi_mike9_reload_empty_end.ogg", t = 0/30},
            {s = path .. "wfoly_pi_mike9_inspect_05.ogg", t = 5/30},
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
    ["inspect"] = {
        Source = "lookat01",
		MinProgress = 0.1,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 1.1, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_pi_mike9_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_pi_mike9_inspect_02.ogg", t = 37/30},
			{s = path .. "wfoly_pi_mike9_inspect_03.ogg", t = 60/30},
			{s = path .. "wfoly_pi_mike9_inspect_04.ogg", t = 97/30},
			{s = path .. "wfoly_pi_mike9_inspect_05.ogg", t = 113/30},
        },
    },
    ["bash"] = {
        Source = {"melee","melee2","melee3"},
    },
}

-------------------------- ATTACHMENTS

-- SWEP.Hook_Think	= ARC9.COD2019.BlendEmptyElite

SWEP.Hook_TranslateAnimation = function (wep, anim)
    --local attached = self:GetElements()
    --------------------------------------------------------------------------
    if anim == "reload" and wep:HasElement("perk_speedreload") then
        return "reload_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") then 
        return "reload_fast_empty"
    --------------------------------------------------------------------------
    end
end

SWEP.DefaultBodygroups = "00000000000000"

SWEP.AttachmentTableOverrides = {
    ["cod2019_renetti_slide_auto"] = {
    Model = "models/weapons/cod2019/attachs/weapons/renetti/attachment_vm_pi_mike9_barauto_akimbo.mdl"
    },
    ["cod2019_renetti_mag_xmag"] = {
    Model = "models/weapons/cod2019/attachs/weapons/renetti/attachment_vm_pi_mike9_xmags_akimbo.mdl",
	ClipSizeOverride = 20 * 2
    },
    ["cod2019_renetti_stock"] = {
    Model = "models/weapons/cod2019/attachs/weapons/renetti/attachment_vm_pi_mike9_stock_akimbo.mdl",
    SprintPos = Vector(-1, 0, -1),
    SprintAng = Angle(0, 0, 0)
    },
}

SWEP.AttachmentElements = {
    ["body_none"] = {
        Bodygroups = {
            {0,1},
            {4,1},
        },
    },
    ["slide_none"] = {
        Bodygroups = {
            {1,1},
            {5,1},
        },
    },
    ["mag_none"] = {
        Bodygroups = {
            {2,1},
            {6,1},
        },
    },
    ["grip_none"] = {
        Bodygroups = {
            {3,1},
            {7,1},
        },
    },
    ["rail_mount_sight"] = {
        Bodygroups = {
            {8,1},
            {9,1},
        },
    },
}

SWEP.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_slide"),
        DefaultAttName = "Standard slide",
        Category = "cod2019_renetti_slide",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        DuplicateModels = {
            {
                Bone = "tag_barrel_attach_l",
            }
        },
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_muzzle"),
        DefaultAttName = "Standard Muzzle",
        Category = "cod2019_muzzle_pistols",
        Bone = "tag_silencer_l",
        Pos = Vector(-0.2, 0, -0.03),
        Ang = Angle(0, 0, 0),
		--InstalledElements = {"muzzle_none"},
		Scale = 1,
        DuplicateModels = {
            {
                Bone = "tag_silencer",
            }
        },
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_optic"),
        Bone = "tag_reflex",
        Pos = Vector(1, 0, 0),
        Ang = Angle(0, 0, 0),
        Category = "cod2019_optic",
        CorrectiveAng = Angle(1.8, -1.8, 0),
		Scale = 1,
		InstalledElements = {"rail_mount_sight"},
        DuplicateModels = {
            {
                Bone = "tag_reflex_l",
            }
        },
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_laser"),
        DefaultAttName = "Default",
        Category = "cod2019_tac_pistols",
        Bone = "tag_laser_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		--InstalledElements = {"rail_laser"},
		--LaserCorrectionAngle = Angle(-1.5, 0, 0.1),
        DuplicateModels = {
            {
                Bone = "tag_laser_attach_l",
				--LaserCorrectionAngle = Angle(0.1, 0, 2),
            }
        },
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_reargrip"),
        DefaultAttName = "Default",
        Category = "cod2019_renetti_grip",
        Bone = "tag_stock_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 180),
		Scale = 1,
		--InstalledElements = {"rail_grip"},
        DuplicateModels = {
            {
                Bone = "tag_stock_attach_l",
            }
        },
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_stock"),
        DefaultAttName = "Default",
        Category = "cod2019_renetti_stock",
        Bone = "tag_stock_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 180),
		Scale = 1,
        DuplicateModels = {
            {
                Bone = "tag_stock_attach_l",
            }
        },
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_ammo"),
        Bone = "j_mag1",
        Category = "cod2019_ammo",
        Pos = Vector(0, 0, -1.5),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_magazine"),
		Bone = "tag_mag_attach",
        Category = {"cod2019_mag","cod2019_renetti_mag"},
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        DuplicateModels = {
            {
                Bone = "tag_mag_attach_l",
            }
        },
    },
    {
		PrintName = ARC9:GetPhrase("mw19_category_perk"),
        Category = {"cod2019_perks","cod2019_perks_soh"}
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_skins"),
        --Bone = "v_weapon.Clip",
        Category = "cod2019_skins_renetti",
		CosmeticOnly = true,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_camouflage"),
        Category = "universal_camo",
        CosmeticOnly = true,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/akimbo_renetti_decal_a.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/akimbo_renetti_decal_b.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/akimbo_renetti_decal_c.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/akimbo_renetti_decal_d.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_charm"),
        Category = "charm",
        Bone = "tag_cosmetic",
        Pos = Vector(0.5, 0, 0),
        Ang = Angle(0, 0, 0),
		Scale = 1,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_stats"),
        Category = "killcounter",
        Bone = "tag_cosmetic",
        Pos = Vector(0, 0, -1),
        Ang = Angle(0, 0, 0),
		CosmeticOnly = true,
    },
}

SWEP.GripPoseParam = 4.6
SWEP.GripPoseParam2 = 0.6