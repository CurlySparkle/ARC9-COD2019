AddCSLuaFile()

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = "Sniper Rifles"

SWEP.PrintName = "HDR"

SWEP.Class = "Sniper Rifles"
SWEP.Trivia = {
    ["Country of Origin"] = "Russia",
    ["Manufacturer"] = "VLK",
    ["Caliber"] = "12.7×108mm",
    ["Weight (Loaded)"] = "2.26 kg",
    ["Projectile Weight"] = "914 gr",
    ["Muzzle Velocity"] = "1,580 ft/s",
    ["Muzzle Energy"] = "6,870 joules"
}

SWEP.Credits = {
    Author = "Twilight Sparkle/Firmeteran",
    Assets = "Infinity Ward/Valve/New World Interactive"
}

SWEP.Description = [[Anti-material bolt action sniper rifle chambered in 12.7x108mm ammunition. 745 gr bullets have a lower muzzle velocity, but are devastating at very long ranges.]]

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
    TPIKPos = Vector(-5, 5, -2),
    TPIKAng = Angle(-10, 3, 180),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 111 -- Damage done at point blank range
SWEP.DamageMin = 34 -- Damage done at maximum range

SWEP.Num = 1

SWEP.DamageRand = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

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

SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.
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
SWEP.RecoilUp = 3 -- Multiplier for vertical recoil

SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.3

SWEP.RecoilDissipationRate = 40 -- How much recoil dissipates per second.
SWEP.RecoilDissipationRateSights = 50
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 5 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 2

SWEP.RecoilMultCrouch = 0.8
SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.7

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilPunch = 2
SWEP.VisualRecoilUp = 0.5

-------------------------- SPREAD

SWEP.Spread = 0.002

SWEP.SpreadAddRecoil = 0.0002 -- Applied per unit of recoil.

SWEP.SpreadAddMove = 0.2
--SWEP.SpreadAddMidAir = 0
SWEP.SpreadAddHipFire = 0.05
SWEP.SpreadAddCrouch = -0.01
SWEP.SpreadAddSights = -0.1

-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.3 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.5 -- How long it takes to go from sprinting to being able to fire.

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
    Pos = Vector(-1.37, -2, 1.05),
    Ang = Angle(0, 0, 6.5),
    Magnification = 1.1,
    ViewModelFOV = 56,
    CrosshairInSights = false
}

SWEP.ViewModelFOVBase = 65

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

SWEP.MovingPos = Vector(0, -0.4, -0.4)
SWEP.MovingAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-0.5, -0, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.SprintPos = Vector(-3, 0, -1)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(20, 40, 3)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeNoRotate = false
SWEP.CustomizeSnapshotPos = Vector(0, 15, 3)

-------------------------- HoldTypes

SWEP.HoldType = "rpg"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeHolstered = "rpg"
SWEP.HoldTypeSights = "rpg"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "AC_muzzle_rifle"
SWEP.AfterShotParticle = "AC_muzzle_smoke_barrel"
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 4
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_rytec.mdl"
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 1
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)
SWEP.EjectDelay = 0.4

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_snip_hdr_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {"physics/metal/weapon_impact_soft1.wav", "physics/metal/weapon_impact_soft2.wav", "physics/metal/weapon_impact_soft3.wav"}
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineTime = 2.15
SWEP.DropMagazineQCA = 3
SWEP.DropMagazineAng = Angle(0, -90, 0)

-------------------------- SOUNDS

local path = "weapons/cod2019/hdr/"

SWEP.ShootSound = "COD2019.HDR.Fire"
SWEP.ShootSoundSilenced = "COD2019.HDR.Silenced_Fire"
SWEP.ShootSoundIndoor = "COD2019.HDR.Fire_Inside"
SWEP.ShootSoundSilencedIndoor = "COD2019.HDR.Silenced_Fire_Inside"

--SWEP.DistantShootSound = "CSGO.Awp.Fire.Distance"
SWEP.DryFireSound = "weapons/cod2019/svd/weap_delta_empty.ogg"

SWEP.EnterSightsSound = "COD2019.Iron.In_Rifle"
SWEP.ExitSightsSound = "COD2019.Iron.Out_Rifle"

SWEP.TriggerDelay = 0.03 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayTime = 0.03 -- Time until weapon fires.

SWEP.TriggerDownSound = "weapons/cod2019/svd/weap_delta_fire_first_plr_01.ogg"
SWEP.TriggerUpSound = "weapons/cod2019/svd/weap_delta_disconnector_plr_01.ogg"

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
    ["fire"] = {
        Source = "shoot1",
    },
    ["fire_sights"] = {
        Source = "shoot1_ads",
    },
    ["cycle"] = {
        Source = "cycle",
		--EjectAt = 0.2,
		MinProgress = 0.8,
        EventTable = {
            {s = "COD2019.HDR.Rechamber", v = 0.4, t = 7/30},
			{s = path .. "wfoly_plr_sn_hdromeo_rechamber_boltclose_01.ogg", v = 0.4, t = 18/30},
        },
    },
    ["cycle_sights"] = {
        Source = "cycle_ads",
		--EjectAt = 0.2,
		MinProgress = 0.8,
        EventTable = {
            {s = "COD2019.HDR.Rechamber", v = 0.4, t = 7/30},
			{s = path .. "wfoly_plr_sn_hdromeo_rechamber_boltclose_01.ogg", v = 0.4, t = 18/30},
        },
    },
    ["reload"] = {
        Source = "reload_short",
		MinProgress = 0.8,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.7,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.95,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sn_hdromeo_reload_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_cloth_v2_01.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_magout_01.ogg", t = 15/30},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_cloth_v2_02.ogg", t = 21/30},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_rattle.ogg", t = 26/30},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_cloth_v2_03.ogg", t = 48/30},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_magin_v2_01.ogg", t = 63/30},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_magin_v2_02.ogg", t = 80/30},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_end.ogg", t = 90/30},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.8,
		DropMagAt = 1.1,
		Mult = 1.1,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.7,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.85,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sn_hdromeo_reload_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_cloth_v2_01.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_magout_01.ogg", t = 18/30},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_cloth_v2_02.ogg", t = 18/30},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_rattle.ogg", t = 26/30},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_cloth_v2_03.ogg", t = 48/30},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_magin_v2_01.ogg", t = 54/30},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_magin_v2_02.ogg", t = 57/30},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_end.ogg", t = 67/30},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.9,
		EjectAt = 0.35,
		DropMagAt = 2.2,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.4,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.5,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1.2,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_eject_01.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_cloth_v2_01.ogg", t = 10/30},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_cloth_v2_02.ogg", t = 22/30},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_magout_01.ogg", t = 39/30},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_cloth_v2_03.ogg", t = 40/30},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_cloth_v2_04.ogg", t = 65/30},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_magin_v2_01.ogg", t = 81/30},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_magin_v2_02.ogg", t = 97/30},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_cloth_v2_05.ogg", t = 98/30},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_end.ogg", t = 103/30},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_load_01.ogg", t = 114/30},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.9,
		EjectAt = 0.35,
		DropMagAt = 1.5,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.4,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.5,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1.2,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_eject_01.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_cloth_v2_01.ogg", t = 10/30},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_cloth_v2_02.ogg", t = 22/30},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_magout_01.ogg", t = 40/30},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_cloth_v2_03.ogg", t = 40/30},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_cloth_v2_04.ogg", t = 65/30},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_magin_v2_01.ogg", t = 71/30},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_magin_v2_02.ogg", t = 75/30},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_cloth_v2_05.ogg", t = 85/30},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_end.ogg", t = 103/30},
			{s = path .. "wfoly_plr_sn_hdromeo_reload_empty_load_01.ogg", t = 90/30},
        },
    },
    ["ready"] = {
        Source = "draw",
        IKTimeLine = {
            {
                t = 0,
                lhik = 0,
                rhik = 1
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_plr_sn_hdromeo_raise_first_up.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sn_hdromeo_raise_first_boltclose_01.ogg", t = 11/30},
			{s = path .. "wfoly_plr_sn_hdromeo_raise_first_adjust.ogg", t = 30/30},
			{s = path .. "wfoly_plr_sn_hdromeo_raise_first_settle.ogg", t = 43/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
		MinProgress = 0.7,
		FireASAP = true,
        EventTable = {
            {s = path .. "wfoly_plr_sn_hdromeo_raise_up.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sn_hdromeo_raise_hand.ogg", t = 33/30},
			{s = path .. "wfoly_plr_sn_hdromeo_raise_settle.ogg", t = 45/30},
        },
    },
    ["holster"] = {
        Source = "holster",
		Mult = 0.8,
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
		Mult = 2,
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
		Mult = 2,
    },
    ["inspect"] = {
        Source = "lookat01",
        MinProgress = 0.1,
        FireASAP = true,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.7,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1.1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_sn_hdromeo_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_sn_hdromeo_inspect_02.ogg", t = 56/30},
			{s = path .. "wfoly_sn_hdromeo_inspect_03.ogg", t = 114/30},
        },
    },
    ["bash"] = {
       Source = {"melee", "melee2"},
       IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.7,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.8,
                lhik = 1,
                rhik = 1
            },
        },
    },
}

--SWEP.Hook_Think	= ARC9.CSGO.BlendSights

-------------------------- ATTACHMENTS

SWEP.Hook_TranslateAnimation = function (wep, anim)
    --local attached = self:GetElements()

    if anim == "reload" and wep:HasElement("perk_speedreload") then
        return "reload_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") then 
        return "reload_fast_empty"
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
    ["mag_grip"] = {
        Bodygroups = {
            {2,1},
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
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model
    if wep:HasElement("stock_retract") then 
	model:SetBodygroup(5,0)
	model:SetBodygroup(6,0)	
	end
end

SWEP.Attachments = {
    {
        PrintName = "Barrels",
        DefaultAttName = "Standard Barrel",
        Category = "cod2019_hdr_barrel",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Category = {"muzzle_shotgun","muzzle"},
        Bone = "tag_silencer",
        Pos = Vector(-0.23, 0, 0),
        Ang = Angle(0, 0, 0),
		--InstalledElements = {"muzzle_none"},
		Scale = 1,
    },
    {
        PrintName = "Optics",
        Bone = "tag_scope",
        Pos = Vector(6.2, 0, 0),
        Ang = Angle(0, 0, 0),
        Category = {"cod2019_optic","cod2019_optic_hdr"},
        CorrectiveAng = Angle(-0.5, 1.15, 0),
		InstalledElements = {"sight_none"},
		Installed = "cod2019_optic_scope_hdr",
        Integral = "cod2019_optic_scope_hdr",
    },
    {
        PrintName = "Tactical",
        DefaultAttName = "Default",
        Category = "cod2019_tac",
        Bone = "tag_laser_attach",
        Pos = Vector(0, 0, -3.2),
        Ang = Angle(0, 0, 0),
		--InstalledElements = {"rail_laser"},
    },
    {
        PrintName = "Stock",
        DefaultAttName = "Standard Stock",
        Category = "cod2019_tube",
        Bone = "tag_stock_attach",
        Pos = Vector(0.6, 0, 0.5),
        Ang = Angle(0, 0, 0),
		InstalledElements = {"stock_none","stock_main_none"},
		Scale = 1,
    },
    {
        PrintName = "Grips",
        DefaultAttName = "Default",
        Category = "cod2019_grip",
        Bone = "tag_attachments",
        Pos = Vector(16, 0, -0.4),
        Ang = Angle(0, 0, 180),
		Scale = 1,
		InstalledElements = {"guard_none"},
    },
    {
        PrintName = "Ammo",
        Bone = "j_mag1",
        Category = {"go_ammo","go_ammo_sniper"},
        Pos = Vector(0, 0, -1.5),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Mag",
		Bone = "j_mag1",
        Category = {"cod2019_mag"},
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Perk",
        Category = {"cod2019_perks","cod2019_perks_soh"}
    },
    {
        PrintName = "Skins",
        --Bone = "v_weapon.Clip",
        Category = "cod2019_skins_vlk",
		CosmeticOnly = true,
    },
    {
        PrintName = "Cosmetic",
        Category = {"universal_camo"},
        CosmeticOnly = true,
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/snip_hdr_decal_a.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/snip_hdr_decal_b.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/snip_hdr_decal_c.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/snip_hdr_decal_d.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Charm",
        Category = "charm",
        Bone = "tag_cosmetic",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		Scale = 1.5,
    },
    {
        PrintName = "Stats",
        Category = {"killcounter","killcounter2"},
        Bone = "tag_cosmetic",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		CosmeticOnly = true,
    },
}

SWEP.GripPoseParam = 3
SWEP.CodAngledGripPoseParam = 3
SWEP.GripPoseParam2 = 0.5