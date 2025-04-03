AddCSLuaFile()
if CLIENT then
    killicon.Add( "arc9_cod2019_sh_r90", "vgui/killicons/cod2019_sh_r90.png", Color(251, 85, 25, 255))
end

SWEP.LoadoutImage = "entities/loadout/arc9_cod2019_sh_r90.png"

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.NotForNPCs = false
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_shotgun") or "Shotguns"
SWEP.ARC9WeaponCategory = 2

SWEP.PrintName = ARC9:GetPhrase("mw19_weapon_r90") or "R9-0"

SWEP.Class = ARC9:GetPhrase("mw19_class_weapon_shotgun") or "Shotgun"
SWEP.Trivia = {
    [ ARC9:GetPhrase("mw19_country") ] = ARC9:GetPhrase("mw19_country_usa"),
    [ ARC9:GetPhrase("mw19_manufacturer") ] = ARC9:GetPhrase("mw19_manufacturer_forgetac"),
    [ ARC9:GetPhrase("mw19_caliber") ] = ARC9:GetPhrase("mw19_caliber_12gauge"),
    [ ARC9:GetPhrase("mw19_weight") ] = string.format(ARC9:GetPhrase("mw19_weight_val"), 4.2, 4.2 * 2.20),
    [ ARC9:GetPhrase("mw19_weight_projectile") ] = string.format(ARC9:GetPhrase("mw19_weight_projectile_val"), 493),
}

SWEP.Credits = {
    [ ARC9:GetPhrase("mw19_author") ] = "Twilight Sparkle/Firmeteran",
    [ ARC9:GetPhrase("mw19_assets") ] = "Activision/Infinity Ward"
}

SWEP.Description = ARC9:GetPhrase("mw19_weapon_r90_desc") or [[Double barrels provide two rapid shots before each re-chamber.]]

SWEP.ViewModel = "models/weapons/cod2019/c_shot_r90.mdl"
SWEP.WorldModel = "models/weapons/cod2019/w_shot_r90.mdl"
SWEP.DefaultBodygroups = "00000000"

SWEP.Slot = 3

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_shot_r90.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-3, 3, -8),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-5, 5, -5),
    TPIKAng = Angle(-12.5, -1, 165),
    Scale = 1,
	
	TPIKPosSightOffset = Vector(1, 1, -2),
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 95 -- Damage done at point blank range
SWEP.DamageMin = 25 -- Damage done at maximum range
SWEP.DistributeDamage = true

SWEP.Num = 6

SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 12 / ARC9.HUToM
SWEP.RangeMax = 15 / ARC9.HUToM

SWEP.Penetration = 5 -- Units of wood that can be penetrated by this gun.
SWEP.ImpactForce = 6.5
SWEP.RicochetChance = 0
SWEP.DamageType = DMG_BULLET + DMG_BUCKSHOT
SWEP.CurvedDamageScaling = true

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 1410.76 * 12
SWEP.PhysBulletGravity = 2
SWEP.PhysBulletDrag = 3

-------------------------- MAGAZINE

SWEP.Ammo = "buckshot" -- What ammo type this gun uses.

SWEP.ChamberSize = 2 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 14 -- Self-explanatory.
SWEP.SupplyLimit = 8 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 2 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true
SWEP.ForceStandardCrosshair = false

SWEP.ManualAction = true
SWEP.NoLastCycle = true

SWEP.ManualAction = true
SWEP.ManualActionNoLastCycle = true

-------------------------- FIREMODES

SWEP.RPM = 600

SWEP.Firemodes = {
    {
        Mode = 1,
    },
}

-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 2

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 3 -- Multiplier for vertical recoil

SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.3

SWEP.RecoilDissipationRate = 10 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0.1 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 5 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 1.5

SWEP.RecoilMultCrouch = 0.8
SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 1

SWEP.RecoilPerShot = 2
SWEP.RecoilMax = 4

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilPunch = 2
SWEP.VisualRecoilUp = 0.3

-------------------------- SPREAD

SWEP.Spread = 0.075

SWEP.SpreadAddRecoil = 0.01

SWEP.SpreadAddHipFire = SWEP.Spread * 0
SWEP.SpreadAddMove = SWEP.Spread * 0.2
SWEP.SpreadAddMidAir = SWEP.Spread * 0.5
SWEP.SpreadAddCrouch = -SWEP.Spread * 0.1
SWEP.SpreadAddSights = -SWEP.Spread * 0.25

SWEP.SpreadMultRecoil = 1.1
SWEP.RecoilModifierCap = SWEP.RecoilMax
SWEP.RecoilModifierCapMove = 0

-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.3 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.3 -- How long it takes to go from sprinting to being able to fire.

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.2

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 255, 155) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-2.95, -2, 0.3),
    Ang = Angle(0, 0, -3.5),
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

SWEP.MovingPos = Vector(-1, -0.8, -1)
SWEP.MovingAng = Angle(0, 0, -10)

SWEP.CrouchPos = Vector(-1, -0.5, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.SprintPos = Vector(1, 0, -1)
SWEP.SprintAng = Angle(0, 0, 25)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(7.5, 35, 4.5)
SWEP.CustomizeRotateAnchor = Vector(7.5, -3, -4)
SWEP.CustomizeSnapshotFOV = 65
SWEP.CustomizeNoRotate = false
SWEP.CustomizeSnapshotPos = Vector(0, 35, 0)

SWEP.PeekPos = Vector(-1.2, 1.5, -3.5)
SWEP.PeekAng = Angle(0, 0.4, -45)

-------------------------- HoldTypes

SWEP.HoldType = "smg"
SWEP.HoldTypeNPC = "smg"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeHolstered = "passive"
SWEP.HoldTypeSights = "smg"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "muzzleflash_shotgun"
SWEP.AfterShotParticle = "barrel_smoke"
SWEP.TracerEffect = "cod2019_tracer_slow"
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 3
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_origin12.mdl"
SWEP.ShellSounds = ARC9.COD2019_Shotgun_Table
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 1.3
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)
SWEP.NoShellEject = true

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.ShotgunReload = true
SWEP.ManualActionChamber = 2

-------------------------- SOUNDS

local path = "weapons/cod2019/r90/"

SWEP.ShootSound = "COD2019.R90.Fire"
SWEP.ShootSoundIndoor = "COD2019.R90.Fire"

SWEP.ShootSoundSilenced = "COD2019.R90.Fire.S"
SWEP.ShootSoundSilencedIndoor = "COD2019.R90.Fire.S"

-- Non-Silenced
SWEP.LayerSound = "Layer_Shotgun.Outside"
SWEP.DistantShootSound = "Distant_Sniper.Outside"
-- Inside
SWEP.LayerSoundIndoor = "Layer_Sniper.Inside"
SWEP.DistantShootSoundIndoor = "Distant_Shotgun.Inside"
---------------------------------------------------
-- Silenced
SWEP.LayerSoundSilenced = "Layer_ARSUP.Outside"
SWEP.DistantShootSoundSilenced = "Distant_Shotgun2.Outside"
-- Inside
SWEP.LayerSoundSilencedIndoor = "Layer_ShotgunSUP.Inside"
SWEP.DistantShootSoundSilencedIndoor = "Distant_ShotgunSUP.Inside"
---------------------------------------------------

SWEP.EnterSightsSound = path .. "wfoly_sh_dpapa12_ads_up.ogg"
SWEP.ExitSightsSound = path .. "wfoly_sh_dpapa12_ads_down.ogg"

SWEP.HideBones  = {
    [1] = "j_shell",
    [2] = "j_fired_shell",
    [3] = "j_group2_fired_shell02",
    [4] = "j_group2_shell02",
    [5] = "j_group2_shell03",
    [6] = "j_group2_shell04",
    [7] = "j_group2_shell05",
}

SWEP.TriggerDelay = 0.025 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayCancellable = false
SWEP.TriggerDelayTime = 0.025 -- Time until weapon fires.

SWEP.TriggerDownSound = ""
SWEP.TriggerUpSound = ""

SWEP.Animations = {
    ["fire"] = {
        Source = "shoot1",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
    },
    ["cycle"] = {
        Source = "pump",
		EjectAt = 0.2,
		MinProgress = 0.6,
		FireASAP = true,
        EventTable = {
            {s = "COD2019.R90.Rechamber_A", t = 0.09},
			{s = "COD2019.R90.Rechamber_B", t = 0.24},
        },
    },
    ["reload_start_twobullet"] = {
        Source = "reload_start_twobullet",
		RestoreAmmo = 1,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sh_dpapa12_reload_start_rotate.ogg", t = 0/30},
			{s = "COD2019.R90.ShellIn", t = 20/30},
			{s = path .. "wfoly_sh_dpapa12_reload_loop_cloth.ogg", t = 20/30},
			{s = "COD2019.R90.ShellIn", t = 33/30},
        },
    },
    ["reload_start"] = {
        Source = "reload_start_onebullet",
		RestoreAmmo = 1,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sh_dpapa12_reload_start_rotate.ogg", t = 0/30},
			{s = "COD2019.R90.ShellIn", t = 20/30},
			{s = path .. "wfoly_sh_dpapa12_reload_loop_cloth.ogg", t = 20/30},
        },
    },
    ["reload_insert"] = {
        Source = {"reload_loop"},
		RestoreAmmo = 1,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = "COD2019.R90.ShellIn", t = 4/30},
			{s = path .. "wfoly_sh_dpapa12_reload_loop_cloth.ogg", t = 4/30},
			{s = "COD2019.R90.ShellIn", t = 17/30},
			{s = path .. "wfoly_sh_dpapa12_reload_loop_cloth.ogg", t = 17/30},
        },
    },
    ["reload_finish"] = {
        Source = "reload_end",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.4, lhik = 1, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_sh_dpapa12_reload_empty_end_rotate.ogg", t = 0/30},
        },
    },
    ["reload_finish_empty"] = {
        Source = "reload_end_empty",
		EjectAt = 0.4,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.5, lhik = 1, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sh_dpapa12_reload_empty_end_rotate.ogg", t = 0/30},
			{s = "COD2019.R90.Rechamber_Empty", t = 9/30},
        },
    },
    ["ready"] = {
        Source = "draw",
		MinProgress = 0.7,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sh_dpapa12_raise_first_lift.ogg", t = 0.033},
			{s = path .. "wfoly_sh_dpapa12_rechamber_chamber_v3_01a.ogg", t = 17/30},
			{s = path .. "wfoly_sh_dpapa12_rechamber_chamber_v3_02a.ogg", t = 22/30},
			{s = path .. "wfoly_sh_dpapa12_raise_first_end.ogg", t = 0.96},
        },
    },
    ["draw"] = {
        Source = "draw_short",
		MinProgress = 0.5,
		FireASAP = true,
        EventTable = {
            {s = path .. "wfoly_sh_dpapa12_raise.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            {s = path .. "wfoly_sh_dpapa12_drop.ogg", t = 0/30},
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
		MinProgress = 0.9,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.325, lhik = 0, rhik = 0 },
            { t = 0.6, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sh_dpapa12_inspect_01.ogg", t = 0.033},
			{s = path .. "wfoly_sh_dpapa12_inspect_02.ogg", t = 1.4},
			{s = path .. "wfoly_sh_dpapa12_inspect_03.ogg", t = 2.43},
			{s = path .. "wfoly_sh_dpapa12_inspect_04.ogg", t = 3.36},
			{s = path .. "wfoly_sh_dpapa12_inspect_05.ogg", t = 4.23},
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

-- SWEP.Hook_Think	= ARC9.COD2019.BlendSights2

-------------------------- ATTACHMENTS

local Translate_TacSprint = {
    ["idle_sprint"] = "super_sprint_idle",
    ["enter_sprint"] = "super_sprint_in",
    ["exit_sprint"] = "super_sprint_out",
}

SWEP.Hook_TranslateAnimation = function(wep, anim)
    --local attached = self:GetElements()

    local super_sprint = wep:HasElement("perk_super_sprint")

    if super_sprint and Translate_TacSprint[anim] then
        return Translate_TacSprint[anim]
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
    ModelOffset = Vector(7, 0, -1.3),
	ModelAngleOffset = Angle(0, 0, -20),
	Scale = 0.8,
    },
    ["go_grip_angled"] = {
    ModelOffset = Vector(0, 0, 0.1),
    },
    ["go_holdstyle_1"] = {
    ModelOffset = Vector(0, -0.5, 0.2),
	ModelAngleOffset = Angle(0, 0, 170)
    },
    ["cod2019_attach_muzzlebrake_shgn01"] = {
    Model = "models/weapons/cod2019/attachs/weapons/r90/attachment_vm_sh_dpapa12_muzzlebrake.mdl",
    },
    ["cod2019_attach_romeo870_choke"] = {
    Model = "models/weapons/cod2019/attachs/weapons/r90/attachment_vm_sh_dpapa12_choke.mdl",
    },
    ["cod2019_attach_compensator_shgn01"] = {
    Model = "models/weapons/cod2019/attachs/weapons/r90/attachment_vm_sh_dpapa12_lincomp.mdl",
    },
    ["cod2019_attach_muzzlemelee_shgn01"] = {
    Model = "models/weapons/cod2019/attachs/weapons/r90/attachment_vm_sh_dpapa12_muzzlemelee.mdl",
    },
    ["cod2019_attach_flashhider_shtgn01"] = {
    Model = "models/weapons/cod2019/attachs/weapons/r90/attachment_vm_sh_dpapa12_flashhider.mdl",
    },
    ["cod2019_attach_muzzle_silencer_shotgun_01"] = {
    Model = "models/weapons/cod2019/attachs/weapons/r90/attachment_vm_sh_dpapa12_silencer03.mdl",
    },
    ["cod2019_attach_muzzle_silencer_shotgun_02"] = {
    Model = "models/weapons/cod2019/attachs/weapons/r90/attachment_vm_sh_dpapa12_silencer02.mdl",
    },
    ["cod2019_attach_muzzle_silencer_shotgun_03"] = {
    Model = "models/weapons/cod2019/attachs/weapons/r90/attachment_vm_sh_dpapa12_silencer01.mdl",
    },
    ["cod2019_griptape_01"] = {
    Model = "models/weapons/cod2019/attachs/weapons/r90/attachment_vm_sh_dpapa12_pistolgrip_tape.mdl",
    },
    ["cod2019_griptape_02"] = {
    Model = "models/weapons/cod2019/attachs/weapons/r90/attachment_vm_sh_dpapa12_pistolgrip_tape.mdl",
    },
    ["cod2019_griptape_03"] = {
    Model = "models/weapons/cod2019/attachs/weapons/r90/attachment_vm_sh_dpapa12_pistolgrip_tape.mdl",
    },
}

SWEP.AttachmentElements = {
    ["base_none"] = {
        Bodygroups = {
            {0,1},
        },
    },
    ["barrel_none"] = {
        Bodygroups = {
            {6,1},
        },
    },
    ["grip"] = {
        Bodygroups = {
            {1,1},
        },
    },
    ["pump_none"] = {
        Bodygroups = {
            {2,1},
        },
    },
    ["sight_off"] = {
        Bodygroups = {
            {3,1},
        },
    },
    ["rail_laser"] = {
        Bodygroups = {
            {4,1},
        },
    },
}

-- SWEP.Hook_ModifyBodygroups = function(wep, data)
    -- local model = data.model
    -- if wep:HasElement("stock_retract") then model:SetBodygroup(4,0) end
-- end

SWEP.Attachments = {
    { -- 1
        PrintName = ARC9:GetPhrase("mw19_category_muzzle"),
        Category = "cod2019_muzzle_shot",
        DefaultIcon = Material("entities/defattachs/muzzle-ar.png", "mips smooth"),
		Bone = "tag_silencer",
        Pos = Vector(0, 0, 0),
    },
    { -- 2
        PrintName = ARC9:GetPhrase("mw19_category_barrel"),
		DefaultIcon = Material("entities/defattachs/barrel-ar.png", "mips smooth"),
        Category = "cod2019_r90_barrel",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(2, 0, 1),
    },
    { -- 3
        PrintName = ARC9:GetPhrase("mw19_category_laser"),
		DefaultIcon = Material("entities/defattachs/laser-ar.png", "mips smooth"),
        Category = "cod2019_tac_rail",
        Bone = "tag_laser_attach",
        Pos = Vector(2.5, 0, -0.11),
    },
    { -- 4
        PrintName = ARC9:GetPhrase("mw19_category_optic"),
		DefaultIcon = Material("entities/defattachs/optic.png", "mips smooth"),
        Bone = "tag_holo",
        Pos = Vector(1.5, 0, -0.1),
        Category = {"cod2019_optic"},
		InstalledElements = {"sight_off"},
    },
    { -- 5
        PrintName = ARC9:GetPhrase("mw19_category_pump"),
		-- DefaultIcon = Material("entities/defattachs/stock-ar.png", "mips smooth"),
        Category = {"cod2019_r90_pump"},
        Bone = "tag_guard_attach",
        Pos = Vector(0, 0, 0),
    },
    { -- 6
        PrintName = ARC9:GetPhrase("mw19_category_underbarrel"),
		DefaultIcon = Material("entities/defattachs/grip.png", "mips smooth"),
        Category = "cod2019_grip",
        Bone = "tag_grip_attach",
        Pos = Vector(-1.5, 0, 0),
        Ang = Angle(0, 0, 180),
		InstalledElements = {"grip"},
    },
    { -- 7
        PrintName = ARC9:GetPhrase("mw19_category_magazine"),
		DefaultIcon = Material("entities/defattachs/magazine-ar.png", "mips smooth"),
		Bone = "tag_mag_attach",
        Category = {"cod2019_mag","cod2019_r90_mag"},
        Pos = Vector(7, 0, 0),
    },
    { -- 8
        PrintName = ARC9:GetPhrase("mw19_category_ammo"),
		DefaultIcon = Material("arc9/def_att_icons/ammotype.png", "mips smooth"),
        Bone = "tag_mag_attach",
		Category = {"cod2019_ammo_sg"},
		Pos = Vector(8.5, 0, 0),
    },
    { -- 9
        PrintName = ARC9:GetPhrase("mw19_category_reargrip"),
		DefaultIcon = Material("entities/defattachs/reargrip-ar.png", "mips smooth"),
        Category = "cod2019_pistolgrip",
        Bone = "tag_pistolgrip_attach",
        Pos = Vector(0, 0, 0),
    },
    { -- 10
        PrintName = ARC9:GetPhrase("mw19_category_triggeraction"),
		-- DefaultIcon = Material("entities/defattachs/stock-ar.png", "mips smooth"),
        Category = {"cod2019_trigger"},
        Bone = "j_trigger",
        Pos = Vector(0, 0, 0),
		Hidden = true,
    },
    { -- 11
        PrintName = ARC9:GetPhrase("mw19_category_perk"),
        Category = {"cod2019_perks","cod2019_perks_soh","cod2019_perks_ss","cod2019_perks_burst_2"},
        Bone = "tag_attachments",
        Pos = Vector(6, 0, -4),
    },
	
	-- Unofficial
    { -- 12
        PrintName = ARC9:GetPhrase("mw19_category_receiver"),
        Category = "cod2019_r90_receiver",
        Bone = "tag_attachments",
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(3.5, 0, -1),
		Hidden = false,
    },
	
	-- Cosmetics
    { -- 13
        PrintName = ARC9:GetPhrase("mw19_category_skins"),
        Bone = "tag_cosmetic",
        Pos = Vector(7, 0, 3),
        Category = "cod2019_skins_r90",
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
        StickerModel = "models/weapons/cod2019/stickers/shot_r90_decal_a.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(3, 0, 3),
    },
    { -- 16
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/shot_r90_decal_b.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(1, 0, 3),
    },
    { -- 17
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/shot_r90_decal_c.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-1, 0, 3),
    },
    { -- 18
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/shot_r90_decal_d.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-3, 0, 3),
		ExcludeElements = {"pump_none"},
    },
    { -- 19
        PrintName = ARC9:GetPhrase("mw19_category_charm"),
        CosmeticOnly = true,
        Category = {"charm"},
        Bone = "tag_cosmetic",
        Pos = Vector(3, 0, 0),
		Icon_Offset = Vector(-8, 0, 3),
		Scale = 1.5,
    },
    { -- 20
        PrintName = ARC9:GetPhrase("mw19_category_stats"),
        Category = {"killcounter","killcounter2"},
        Bone = "tag_cosmetic",
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(-7, 0, 3),
		CosmeticOnly = true,
		RejectAttachments = { ["arc9_stat_proscreen_main"] = true },
    },
}

SWEP.CodAngledGripPoseParam = 37
SWEP.CodStubbyGripPoseParam = 26
SWEP.CodStubbyTallGripPoseParam = 26
SWEP.GripPoseParam = 0.3
SWEP.GripPoseParam2 = 0

-- Warzone-esque Stats; Add here to change only when using Warzone Stats variable.
if GetConVar("arc9_mw19_stats_warzone"):GetBool() then
-------------------------- DAMAGE PROFILE
SWEP.DamageMax = 24
SWEP.DamageMin = 10

SWEP.DistributeDamage = false

SWEP.Num = 8

SWEP.RangeMin = 11.4 / ARC9.HUToM
SWEP.RangeMax = 21.6 / ARC9.HUToM

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 1,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.625,
    [HITGROUP_RIGHTLEG] = 0.625,
}

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 300 / ARC9.HUToM

-------------------------- FIREMODES

SWEP.RPM = 300

-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.32 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.25 -- How long it takes to go from sprinting to being able to fire.

end
