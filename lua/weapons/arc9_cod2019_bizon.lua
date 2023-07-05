AddCSLuaFile()

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = "Submachine Guns"

SWEP.PrintName = "PP19 Bizon"

SWEP.Class = "Submachine Gun"
SWEP.Trivia = {
    ["Country of Origin"] = "Russia",
    ["Caliber"] = "9×18mm Makarov",
    ["Weight (Loaded)"] = "2.1 kg",
    ["Projectile Weight"] = "95 gr",
    ["Muzzle Velocity"] = "1,050 ft/s",
    ["Muzzle Energy"] = "315 joules"
}

SWEP.Credits = {
    Author = "Twilight Sparkle/Firmeteran",
    Assets = "Infinity Ward/Valve/New World Interactive"
}

SWEP.Description = [[Well-balanced automatic submachine gun with a high capacity helical magazine.]]

SWEP.ViewModel = "models/weapons/cod2019/c_smg_bizon.mdl"
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_smg_bizon.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-12, 6, -7.5),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-6, 5, -1.8),
    TPIKAng = Angle(-9, 0, 175),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 30 -- Damage done at point blank range
SWEP.DamageMin = 17 -- Damage done at maximum range

SWEP.DamageRand = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 900 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 4000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 11 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.15

SWEP.ImpactForce = 11

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 1312 * 12
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.15

-------------------------- MAGAZINE

SWEP.Ammo = "smg1" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 64 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 10 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 659

SWEP.Firemodes = {
    {
        Mode = -1,
    },
    {
        Mode = 1,
    },
    -- {
        -- Mode = 3,
		-- RunawayBurst = true,
		-- PostBurstDelay = 0.25
    -- },
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1.3

SWEP.RecoilSeed = 36387

SWEP.RecoilPatternDrift = 35

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.1

SWEP.RecoilDissipationRate = 25 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 0.5 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 1.7

SWEP.RecoilMultCrouch = 0.8

SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.6

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilPunch = 0.8
SWEP.VisualRecoilUp = 1

-------------------------- SPREAD

SWEP.Spread = 0.002

SWEP.SpreadAddRecoil = 0.01
SWEP.SpreadMultRecoil = 1.2
SWEP.RecoilModifierCap = 1
SWEP.RecoilModifierCapSights = 0

SWEP.SpreadMultMove = 2
--SWEP.SpreadAddMidAir = 0
SWEP.SpreadAddHipFire = 0.05
SWEP.SpreadAddCrouch = -0.03
SWEP.SpreadAddSights = -0.5


-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.3 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.5 -- How long it takes to go from sprinting to being able to fire.

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.2

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 255, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-3.2, -3, 0.5),
    Ang = Angle(-0.3, -0.6, -3),
    Magnification = 1.15,
    ViewModelFOV = 56,
	CrosshairInSights = false
}

SWEP.ViewModelFOVBase = 65

SWEP.SprintPos = Vector(0, 0, 0)
SWEP.SprintAng = Angle(0, 0, 0)

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

SWEP.MovingPos = Vector(0, -0.5, -0.5)
SWEP.MovingAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-0.5, -0, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(15, 30, 3)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeSnapshotPos = Vector(-1, 20, 5)
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeNoRotate = false

-------------------------- HoldTypes

SWEP.HoldType = "rpg"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeHolstered = "rpg"
SWEP.HoldTypeSights = "rpg"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "AC_muzzle_rifle"
SWEP.AfterShotParticle = "AC_muzzle_smoke_barrel"
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 4
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_9mm_hr.mdl"
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 0.07
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = true
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_smg_bizon_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {"physics/metal/weapon_impact_soft1.wav", "physics/metal/weapon_impact_soft2.wav", "physics/metal/weapon_impact_soft3.wav"}
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineTime = 0.4
SWEP.DropMagazineQCA = 3
SWEP.DropMagazineAng = Angle(0, -90, 0)

-------------------------- SOUNDS

local path = "weapons/cod2019/bizon/"

SWEP.ShootSound = "COD2019.bizon.Fire"
SWEP.ShootSoundSilenced = "COD2019.bizon.Silenced_Fire"
SWEP.ShootSoundIndoor = "COD2019.bizon.Fire_Inside"
SWEP.ShootSoundSilencedIndoor = "COD2019.bizon.Silenced_Fire_Inside"

SWEP.DistantShootSound = "CSGO.Bizon.Fire.Distance"
SWEP.DryFireSound = "weapons/clipempty_rifle.wav"

SWEP.FiremodeSound = "CSGO.Rifle.Switch_Mode"

SWEP.EnterSightsSound = "COD2019.Iron.In_SMG"
SWEP.ExitSightsSound = "COD2019.Iron.Out_SMG"

SWEP.BulletBones = {
    [1] = "j_bullet01",
    [2] = "j_bullet02",
	[3] = "j_bullet03",
	[4] = "j_bullet04",
}

SWEP.HideBones  = {
    [1] = "j_mag2",
}

SWEP.TriggerDelay = 0.015 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayTime = 0.015 -- Time until weapon fires.

SWEP.TriggerDownSound = "weapons/cod2019/m13/weap_mcharlie_fire_first_plr_01.ogg"
SWEP.TriggerUpSound = "weapons/cod2019/m4a1/weap_mike4_fire_plr_disconnector_01.ogg"

SWEP.Animations = {
    ["fire"] = {
        Source = "shoot1",
    },
    ["fire_sights"] = {
        Source = "shoot1_ads",
    },
    ["reload"] = {
        Source = "reload_short",
		MinProgress = 0.8,
		MagSwapTime = 3.5,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.7,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.85,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sm_beta_reload_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sm_beta_reload_rotate.ogg", t = 4/30},
			{s = path .. "wfoly_plr_sm_beta_reload_magout_01.ogg", t = 4/30},
			{s = path .. "wfoly_plr_sm_beta_reload_magin_v2_01.ogg", t = 35/30},
			{s = path .. "wfoly_plr_sm_beta_reload_magin_v2_02.ogg", t = 49/30},
			{s = path .. "wfoly_plr_sm_beta_reload_end.ogg", t = 52/30},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.8,
		MagSwapTime = 1.5,
		DropMagAt = 0.7,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.7,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.85,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sm_beta_reload_empty_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sm_beta_reload_empty_rotate.ogg", t = 4/30},
			{s = path .. "wfoly_plr_sm_beta_reload_empty_magout_01.ogg", t = 5/30},
			{s = path .. "wfoly_plr_sm_beta_reload_empty_magin_v2_01.ogg", t = 30/30},
			{s = path .. "wfoly_plr_sm_beta_reload_empty_magin_v2_02.ogg", t = 35/30},
			{s = path .. "wfoly_plr_sm_beta_reload_empty_end.ogg", t = 28/30},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.9,
		DropMagAt = 0.8,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.7,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.95,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_plr_sm_beta_reload_empty_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_sm_beta_reload_empty_rotate.ogg", t = 4/30},
			{s = path .. "wfoly_plr_sm_beta_reload_empty_magout_01.ogg", t = 5/30},
			{s = path .. "wfoly_plr_sm_beta_reload_empty_magin_v2_01.ogg", t = 36/30},
			{s = path .. "wfoly_plr_sm_beta_reload_empty_magin_v2_02.ogg", t = 50/30},
			{s = path .. "wfoly_plr_sm_beta_reload_empty_charge_01.ogg", t = 61/30},
			{s = path .. "wfoly_plr_sm_beta_reload_empty_end.ogg", t = 66/30},
        },
    },
    ["ready"] = {
        Source = "draw",
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.5,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.7,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_plr_sm_beta_raise_first_start.ogg", t = 0/30},
            {s = path .. "wfoly_plr_sm_beta_raise_first_charge.ogg", t = 13/30},
			{s = path .. "wfoly_plr_sm_beta_raise_first_end.ogg", t = 28/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
        EventTable = {
            {s = path .. "wfoly_plr_sm_beta_raise_up.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
		Mult = 0.7,
        EventTable = {
            {s = path .. "wfoly_plr_sm_beta_reload_end.ogg", t = 0/30},
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
                rhik = 1
            },
            {
                t = 0.1,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.7,
                lhik = 0,
                rhik = 1
            },
            {
                t = 1.1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_sm_beta_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_sm_beta_inspect_02.ogg", t = 40/30},
			{s = path .. "wfoly_sm_beta_inspect_03.ogg", t = 69/30},
			{s = path .. "wfoly_sm_beta_inspect_04.ogg", t = 94/30},
			{s = path .. "wfoly_sm_beta_inspect_05.ogg", t = 124/30},
        },
    },
    ["bash"] = {
        Source = {"melee", "melee2"},
    },
}

-------------------------- ATTACHMENTS\

SWEP.Hook_TranslateAnimation = function (wep, anim)
    --local attached = self:GetElements()

    if anim == "reload" and wep:HasElement("perk_speedreload") then
        return "reload_fast"
    -- elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") then 
        -- return "reload_fast_empty"
    end
end

--SWEP.Hook_Think	= ARC9.COD2019.BlendEmpty2

SWEP.DefaultBodygroups = "00000000000000"

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(13.5, -0.5, -1.2),
	ModelAngleOffset = Angle(0, 0, -50),
	Scale = 0.9,
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
    ["sights"] = {
        Bodygroups = {
            {4,1},
        },
    },
    ["stock_retract"] = {
        Bodygroups = {
            {5,1},
        },
    },
    ["stock_none"] = {
        Bodygroups = {
            {5,2},
        },
    },
    ["stock_adapter"] = {
        Bodygroups = {
            {5,2},
        },
    },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model
    if wep:HasElement("stock_retract") then model:SetBodygroup(5,1) end
end

SWEP.Attachments = {
    {
        PrintName = "Barrels",
        DefaultAttName = "Standard Barrel",
        Category = "cod2019_bizon_barrel",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Category = "cod2019_muzzle",
        Bone = "tag_silencer",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		InstalledElements = {"muzzle_none"},
		Scale = 1,
    },
    {
        PrintName = "Optics",
        Bone = "tag_holo",
        Pos = Vector(2.2, 0, -0.07),
        Ang = Angle(0, 0, 0),
        Category = {"cod2019_optic",},
        CorrectiveAng = Angle(-0.9, 0.1, 0),
		InstalledElements = {"sights"},
    },
    {
        PrintName = "Tactical",
        DefaultAttName = "Default",
        Category = "cod2019_tac",
        Bone = "tag_laser_attach",
        Pos = Vector(-1, -0.5, 0),
        Ang = Angle(0, 0, -90),
		--InstalledElements = {"rail_laser"},
    },
    {
        PrintName = "Stock",
        DefaultAttName = "Standard Stock",
        Category = {"cod2019_tube","stock_retract"},
        Bone = "tag_stock_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		InstalledElements = {"stock_adapter"},
		Scale = 1,
    },
    {
        PrintName = "Ammo",
        Bone = "j_mag1",
        Category = {"go_ammo"},
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
        Category = "cod2019_skins_bizon",
		CosmeticOnly = true,
    },
    {
        PrintName = "Cosmetic",
        Category = {"universal_camo"},
        CosmeticOnly = true,
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/smg_bizon_decal_a.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/smg_bizon_decal_b.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/smg_bizon_decal_c.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/smg_bizon_decal_d.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Charm",
        Category = "charm",
        Bone = "tag_cosmetic",
        Pos = Vector(-2.5, 0, 0),
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
    {
        PrintName = "lhik",
        Bone = "tag_attachments",
        Pos = Vector(10, -0.4, -1),
        Ang = Angle(0, 0, 180),
        Category = "cod2019_lhik_bizon",
		Installed = "csgo_cod2019_lhik_bizon",
        Integral = true,
        Hidden = true,		
    },	
}

SWEP.GripPoseParam = 5
SWEP.GripPoseParam2 = 0.5