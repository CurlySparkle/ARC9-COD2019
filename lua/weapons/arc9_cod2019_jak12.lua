AddCSLuaFile()

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = "Shotguns"

SWEP.PrintName = "JAK-12"

SWEP.Class = "Shotgun"
SWEP.Trivia = {
    ["Country of Origin"] = "United States",
    ["Manufacturer"] = "XRX",
    ["Caliber"] = "12-gauge",
    ["Weight (Loaded)"] = "5.5 kg",
    ["Projectile Weight"] = "493 gr",
    ["Muzzle Velocity"] = "1,100 ft/s",
    ["Muzzle Energy"] = "1,796 joules"
}

SWEP.Credits = {
    Author = "Twilight Sparkle/Firmeteran",
    Assets = "Infinity Ward/Valve/New World Interactive"
}

SWEP.Description = [[Fully automatic open bolt shotgun with a recoil reducing gas blowback system. This combat shotgun unloads high volumes of lead down range at a steady rate.]]

SWEP.ViewModel = "models/weapons/cod2019/c_shot_jak12.mdl"
SWEP.WorldModel = "models/weapons/w_shot_m3super90.mdl"

SWEP.Slot = 3

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_shot_jak12.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-11, 6, -2.5),
    Ang = Angle(-17, 3, 180),
    TPIKPos = Vector(-3, 3, 0),
    TPIKAng = Angle(0, 0, 180),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 60 -- Damage done at point blank range
SWEP.DamageMin = 35 -- Damage done at maximum range

SWEP.DistributeDamage = false

SWEP.Num = 6

SWEP.DamageRand = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 500
SWEP.RangeMax = 3000

SWEP.Penetration = 1 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.1

SWEP.ImpactForce = 11

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 1710.76 * 12
SWEP.PhysBulletGravity = 2
SWEP.PhysBulletDrag = 3

SWEP.RicochetChance = 0

-------------------------- MAGAZINE

SWEP.Ammo = "buckshot" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 8 -- Self-explanatory.
SWEP.SupplyLimit = 12 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 2 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 339

SWEP.Firemodes = {
    {
        Mode = -1,
    },
}

SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayTime = 0.1 -- Time until weapon fires.

-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 3

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 2 -- Multiplier for vertical recoil

SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.3

SWEP.RecoilDissipationRate = 40 -- How much recoil dissipates per second.
SWEP.RecoilDissipationRateSights = 50
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 5 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 4

SWEP.RecoilMultCrouch = 0.8
SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.9

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilMultSights = 1
SWEP.VisualRecoilPunchSights = 20
SWEP.VisualRecoilPunch = 2
SWEP.VisualRecoilUp = 0
SWEP.VisualRecoilRoll = 5
SWEP.VisualRecoilSide = -1/6

-------------------------- SPREAD

SWEP.Spread = 190 * ARC9.MOAToAcc
SWEP.UseDispersion = true
SWEP.DispersionSpread = 0.04
SWEP.DispersionSpreadAddHipFire = 0

-------------------------- HANDLING

SWEP.FreeAimRadius = 0 -- In degrees, how much this gun can free aim in hip fire.
SWEP.Sway = 0 -- How much the gun sways.

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
    Pos = Vector(-2.38, -2, -0.05),
    Ang = Angle(0, 0, -2),
    Magnification = 1.1,
    ViewModelFOV = 56,
    CrosshairInSights = false
}

SWEP.ViewModelFOVBase = 65

SWEP.SprintPos = Vector(0, 0, 0)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.SprintMidPoint = {
    Pos = Vector(0, -1, 0),
    Ang = Angle(-2.5, 0, 2.5)
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.MovingMidPoint = {
    Pos = Vector(0, -0.5, -0.5),
    Ang = Angle(0, 0, 0)
}

SWEP.MovingPos = Vector(0, -0.4, -0.4)
SWEP.MovingAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-0.5, -0, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(17, 35, 3)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeNoRotate = false
SWEP.CustomizeSnapshotPos = Vector(0, 7, 3)

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

SWEP.MuzzleParticle = "AC_muzzle_shotgun"
SWEP.AfterShotParticle = "AC_muzzle_smoke_barrel"
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 4
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_jak12.mdl"
SWEP.ShellSounds = ARC9.ShotgunShellSoundsTable
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 1.1
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = true
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_shot_vlk_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {"physics/metal/weapon_impact_soft1.wav", "physics/metal/weapon_impact_soft2.wav", "physics/metal/weapon_impact_soft3.wav"}
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineTime = 1.1
SWEP.DropMagazineQCA = 3
SWEP.DropMagazineAng = Angle(0, -90, 0)

SWEP.NoShellEject = true

-------------------------- SOUNDS

local path = "weapons/cod2019/jak12/"

SWEP.ShootPitchVariation = 10
SWEP.ShootSound = {path .. "weap_aalpha12_fire_plr_01.ogg", path .. "weap_aalpha12_fire_plr_02.ogg", path .. "weap_aalpha12_fire_plr_03.ogg", path .. "weap_aalpha12_fire_plr_04.ogg"}
SWEP.ShootSoundSilenced = {path .. "weap_aalpha12_fire_silenced_plr_01.ogg", path .. "weap_aalpha12_fire_silenced_plr_02.ogg", path .. "weap_aalpha12_fire_silenced_plr_03.ogg", path .. "weap_aalpha12_fire_silenced_plr_04.ogg"}
SWEP.ShootSoundIndoor = {path .. "weap_aalpha12_fire_plr_inside_01.ogg", path .. "weap_aalpha12_fire_plr_inside_02.ogg", path .. "weap_aalpha12_fire_plr_inside_03.ogg", path .. "weap_aalpha12_fire_plr_inside_04.ogg"}
SWEP.ShootSoundSilencedIndoor = {path .. "weap_aalpha12_fire_silenced_plr_inside_01.ogg", path .. "weap_aalpha12_fire_silenced_plr_inside_02.ogg", path .. "weap_aalpha12_fire_silenced_plr_inside_03.ogg", path .. "weap_aalpha12_fire_silenced_plr_inside_04.ogg"}

--SWEP.DistantShootSound = "CSGO.Nova.Fire.Distance"
SWEP.DryFireSound = "weapons/cod2019/svd/weap_delta_empty.ogg"

SWEP.EnterSightsSound = "COD2019.Iron.In_Rifle"
SWEP.ExitSightsSound = "COD2019.Iron.Out_Rifle"

SWEP.TriggerDownSound = "weapons/cod2019/jak12/weap_aalpha12_prefire_plr_01.ogg"
SWEP.TriggerUpSound = ""

SWEP.HideBones  = {
    [1] = "j_mag2",
}

SWEP.Animations = {
    ["fire"] = {
        Source = "shoot1",
		EjectAt = 0.1,
    },
    ["fire_sights"] = {
        Source = "shoot1_ads",
		EjectAt = 0.1,
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
                t = 0.9,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_sh_aalpha12_reload_raise.ogg", t = 0/30},
			{s = path .. "wfoly_sh_aalpha12_reload_mvmnt.ogg", t = 10/30},
			{s = path .. "wfoly_sh_aalpha12_reload_magout.ogg", t = 24/30},
			{s = path .. "wfoly_sh_aalpha12_reload_maghits.ogg", t = 39/30},
			{s = path .. "wfoly_sh_aalpha12_reload_magin.ogg", t = 44/30},
			{s = path .. "wfoly_sh_aalpha12_reload_end.ogg", t = 53/30},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.9,
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
                t = 0.5,
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
			{s = path .. "wfoly_sh_aalpha12_reload_raise.ogg", t = 0/30},
			{s = path .. "wfoly_sh_aalpha12_reload_magout.ogg", t = 5/30},
			{s = path .. "wfoly_sh_aalpha12_reload_maghits.ogg", t = 28/30},
			{s = path .. "wfoly_sh_aalpha12_reload_magin.ogg", t = 33/30},
			{s = path .. "wfoly_sh_aalpha12_reload_end.ogg", t = 34/30},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.9,
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
                t = 0.5,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1.22,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_sh_aalpha12_reload_empty_boltpull.ogg", t = 0/30},
			{s = path .. "wfoly_sh_aalpha12_reload_empty_magout.ogg", t = 21/30},
			{s = path .. "wfoly_sh_aalpha12_reload_empty_magin.ogg", t = 51/30},
			{s = path .. "wfoly_sh_aalpha12_reload_empty_boltforward.ogg", t = 70/30},
			{s = path .. "wfoly_sh_aalpha12_reload_empty_end.ogg", t = 80/30},
        },
    },
    ["ready"] = {
        Source = "draw",
		MinProgress = 0.9,
		FireASAP = true,
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
            {s = path .. "wfoly_sh_aalpha12_raise_first_up.ogg", t = 0/30},
			{s = path .. "wfoly_sh_aalpha12_raise_first_bolt.ogg", t = 4/30},
			{s = path .. "wfoly_sh_aalpha12_raise_first_end.ogg", t = 24/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
		MinProgress = 0.6,
		FireASAP = true,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_sh_aalpha12_raise.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
		Mult = 0.8,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.5,
                lhik = 0,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_sh_aalpha12_reload_raise.ogg", t = 0/30},
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
                t = 0.1,
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
            {s = path .. "wfoly_sh_aalpha12_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_sh_aalpha12_inspect_02.ogg", t = 12/30},
			{s = path .. "wfoly_sh_aalpha12_inspect_03.ogg", t = 55/30},
			{s = path .. "wfoly_sh_aalpha12_inspect_04.ogg", t = 66/30},
			{s = path .. "wfoly_sh_aalpha12_inspect_05.ogg", t = 103/30},
			{s = path .. "wfoly_sh_aalpha12_inspect_06.ogg", t = 105/30},
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
                t = 0.5,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.85,
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
    -- elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") then 
        -- return "reload_fast_empty"
    end
end

SWEP.DefaultBodygroups = "00000000"

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(4.9, -0.3, 0.25),
	ModelAngleOffset = Angle(0, 0, 0),
	Scale = 0.8,
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
    ["body_none"] = {
        Bodygroups = {
            {1,1},
        },
    },
    ["mag_none"] = {
        Bodygroups = {
            {2,1},
        },
    },
    ["barrel_none"] = {
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
            {5,1},
        },
    },
}

-- SWEP.Hook_ModifyBodygroups = function(wep, data)
    -- local model = data.model
    -- if wep:HasElement("stock_retract") then model:SetBodygroup(4,0) end
-- end

SWEP.Attachments = {
    {
        PrintName = "Barrels",
        DefaultAttName = "Standard Barrel",
        Category = "cod2019_jak12_barrel",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Category = "cod2019_muzzle_shot",
        Bone = "tag_silencer",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		--InstalledElements = {"muzzle_none"},
		Scale = 1,
    },
    {
        PrintName = "Optics",
        Bone = "tag_holo",
        Pos = Vector(1.3, 0, -0.05),
        Ang = Angle(0, 0, 0),
        Category = {"cod2019_optic",},
        CorrectiveAng = Angle(0, 0, 0),
		InstalledElements = {"sight_none"},
    },
    {
        PrintName = "Tactical",
        DefaultAttName = "Default",
        Category = "cod2019_tac",
        Bone = "tag_laser_attach",
        Pos = Vector(1.5, 0, -0.1),
        Ang = Angle(0, 0, 180),
		--InstalledElements = {"rail_grip"},
    },
    {
        PrintName = "Grips",
        DefaultAttName = "Default",
        Category = "cod2019_grip",
        Bone = "tag_grip_attach",
        Pos = Vector(-3, 0, 0),
        Ang = Angle(0, 0, 180),
		Scale = 1,
		--InstalledElements = {"rail_grip"},
    },
    {
        PrintName = "Stock",
        DefaultAttName = "Standard Stock",
        Category = "cod2019_jak12_stock",
        Bone = "tag_stock_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		--InstalledElements = {"rail_grip"},
    },
    {
        PrintName = "Ammo",
        Bone = "j_mag1",
        Category = {"go_ammo_sg"},
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
        Category = "cod2019_skins_jak12",
		CosmeticOnly = true,
    },
    {
        PrintName = "Cosmetic",
        Category = {"universal_camo"},
        CosmeticOnly = true,
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/shot_jak12_decal_a.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/shot_jak12_decal_b.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/shot_jak12_decal_c.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/shot_jak12_decal_d.mdl",
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
        Pos = Vector(1.5, 0.1, -1),
        Ang = Angle(0, 0, 0),
		CosmeticOnly = true,
    },
}

SWEP.GripPoseParam = 4.2
SWEP.GripPoseParam2 = 0.7
SWEP.CodAngledGripPoseParam = 1
SWEP.CodStubbyGripPoseParam = 6.5