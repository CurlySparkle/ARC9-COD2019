AddCSLuaFile()

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = "Sniper Rifles"

SWEP.PrintName = "Kar98k"

SWEP.Class = "Marksman Rifle"
SWEP.Trivia = {
    ["Country of Origin"] = "Nazi Germany",
    ["Caliber"] = "7.92×57mm Mauser",
    ["Weight (Loaded)"] = "3.7 kg",
    ["Projectile Weight"] = "178.2 gr",
    ["Muzzle Velocity"] = "2,493 ft/s",
    ["Muzzle Energy"] = "3,335 joules"
}

SWEP.Credits = {
    Author = "Twilight Sparkle/Firmeteran",
    Assets = "Infinity Ward/Valve/New World Interactive"
}

SWEP.Description = [[Bolt action rifle chambered in 7.92 Mauser. A WW2 relic that is still extremely lethal in the hands of a rebel marksman.]]

SWEP.ViewModel = "models/weapons/cod2019/c_snip_kar98k.mdl"
SWEP.WorldModel = "models/weapons/w_shot_m3super90.mdl"
SWEP.DefaultBodygroups = "00000000"

SWEP.Slot = 3

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_snip_kar98k.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-11, 6, -2.5),
    Ang = Angle(-17, 3, 180),
    TPIKPos = Vector(-5, 3, 0),
    TPIKAng = Angle(-10, 3, 180),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 86 -- Damage done at point blank range
SWEP.DamageMin = 57 -- Damage done at maximum range

SWEP.Num = 1

SWEP.DamageRand = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 2000 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 11000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 15 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.5

SWEP.ImpactForce = 15

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 2580 * 12
SWEP.PhysBulletGravity = 0.5
SWEP.PhysBulletDrag = 1

-------------------------- MAGAZINE

SWEP.Ammo = "SniperPenetratedRound" -- What ammo type this gun uses.

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 5 -- Self-explanatory.
SWEP.SupplyLimit = 8 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 2 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

SWEP.ManualAction = true
SWEP.NoLastCycle = true
SWEP.ManualActionNoLastCycle = true

--SWEP.ShotgunReload = true
--SWEP.ManualActionChamber = 1

SWEP.BarrelLength = 20

-------------------------- FIREMODES

SWEP.RPM = 200

SWEP.Firemodes = {
    {
        Mode = 1,
    },
}

-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 7

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

SWEP.RecoilKick = 3

SWEP.RecoilMultCrouch = 0.8
SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.6

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilPunch = 2
SWEP.VisualRecoilUp = 0.1

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
    Pos = Vector(-3.5, -3, 1.2),
    Ang = Angle(0, 0, -4.5),
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

SWEP.SprintPos = Vector(0, 0, -1.5)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(20, 35, 3)
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

SWEP.MuzzleParticle = "AC_muzzle_shotgun"
SWEP.AfterShotParticle = "AC_muzzle_smoke_barrel"
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 4
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/models/weapons/shared/shell_762_hr.mdl"
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 0.09
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.EjectDelay = 0.5

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_snip_spr208_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {"physics/metal/weapon_impact_soft1.wav", "physics/metal/weapon_impact_soft2.wav", "physics/metal/weapon_impact_soft3.wav"}
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineTime = 1.6
SWEP.DropMagazineQCA = 3
SWEP.DropMagazineAng = Angle(0, -90, 0)

-------------------------- SOUNDS

local path = "weapons/cod2019/kar98k/"

SWEP.ShootSound = "COD2019.Kar98k.Fire"
SWEP.ShootSoundSilenced = "COD2019.Kar98k.Silenced_Fire"
SWEP.DistantShootSound = "CSGO.Awp.Fire.Distance"
SWEP.DryFireSound = "weapons/cod2019/svd/weap_delta_empty.ogg"

SWEP.EnterSightsSound = "COD2019.Iron.In_Rifle"
SWEP.ExitSightsSound = "COD2019.Iron.Out_Rifle"

SWEP.ReloadHideBonesFirstPerson = true
SWEP.HideBones  = {
    [1] = "j_clip",
	[2] = "j_b_01",
	[3] = "j_b_02",
	[4] = "j_b_03",
	[5] = "j_b_04",
	[6] = "j_b_05",
}

SWEP.ReloadHideBoneTables  = {
    [1] = "j_clip",
	[2] = "j_b_01",
	[3] = "j_b_02",
	[4] = "j_b_03",
	[5] = "j_b_04",
	[6] = "j_b_05",
}

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
            {s = path .. "wfoly_sn_kilo98_rechamber_boltopen_01.ogg", v = 0.4, t = 20/60},
			{s = path .. "wfoly_sn_kilo98_rechamber_cloth.ogg", v = 0.4, t = 28/60},
			{s = path .. "wfoly_sn_kilo98_rechamber_boltclose_01.ogg", v = 0.4, t = 43/60},
        },
    },
    ["cycle_sights"] = {
        Source = "cycle",
		--EjectAt = 0.2,
		MinProgress = 0.8,
        EventTable = {
            {s = path .. "wfoly_sn_kilo98_rechamber_boltopen_01.ogg", v = 0.4, t = 20/60},
			{s = path .. "wfoly_sn_kilo98_rechamber_cloth.ogg", v = 0.4, t = 28/60},
			{s = path .. "wfoly_sn_kilo98_rechamber_boltclose_01.ogg", v = 0.4, t = 43/60},
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
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.7,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.95,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_sn_kilo98_reload_boltopen_01.ogg", t = 0/30},
			{s = path .. "wfoly_sn_kilo98_reload_cloth01.ogg", t = 7/30},
			{s = path .. "wfoly_sn_kilo98_reload_load_v2_01.ogg", t = 33/30},
			{s = path .. "wfoly_sn_kilo98_reload_load_v2_02.ogg", t = 52/30},
			{s = path .. "wfoly_sn_kilo98_reload_cloth02.ogg", t = 61/30},
			{s = path .. "wfoly_sn_kilo98_reload_boltclose_01.ogg", t = 81/30},
			{s = path .. "wfoly_sn_kilo98_reload_end.ogg", t = 88/30},
        },
    },
    -- ["1_reload"] = {
        -- Source = "reload_short2",
		-- MinProgress = 0.8,
		-- DropMagAt = 0.8,
        -- IKTimeLine = {
            -- {
                -- t = 0,
                -- lhik = 1,
                -- rhik = 0
            -- },
            -- {
                -- t = 0.2,
                -- lhik = 0,
                -- rhik = 0
            -- },
            -- {
                -- t = 0.7,
                -- lhik = 0,
                -- rhik = 0
            -- },
            -- {
                -- t = 0.75,
                -- lhik = 1,
                -- rhik = 1
            -- },
        -- },
        -- EventTable = {
			-- {s = path .. "wfoly_sh_mark26_reload_up.ogg", t = 0/30},
			-- {s = path .. "wfoly_sh_mark26_reload_empty_mag_release.ogg", t = 10/30},
			-- {s = path .. "wfoly_sh_mark26_reload_magout.ogg", t = 15/30},
			-- {s = path .. "wfoly_sh_mark26_reload_empty_arm_up.ogg", t = 30/30},
			-- {s = path .. "wfoly_sh_mark26_reload_maghit.ogg", t = 40/30},
			-- {s = path .. "wfoly_sh_mark26_reload_magin.ogg", t = 50/30},
			-- {s = path .. "wfoly_sh_mark26_reload_end.ogg", t = 55/30},
        -- },
    -- },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.9,
		EjectAt = 0.5,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.2,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.5,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.8,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_sn_kilo98_reload_empty_boltopen_01.ogg", t = 0/30},
			{s = path .. "wfoly_sn_kilo98_reload_empty_cloth01.ogg", t = 5/30},
			{s = path .. "wfoly_sn_kilo98_reload_empty_load_v2_01.ogg", t = 38/30},
			{s = path .. "wfoly_sn_kilo98_reload_empty_load_v2_02.ogg", t = 55/30},
			{s = path .. "wfoly_sn_kilo98_reload_empty_cloth02.ogg", t = 80/30},
			{s = path .. "wfoly_sn_kilo98_reload_empty_boltclose_01.ogg", t = 84/30},
			{s = path .. "wfoly_sn_kilo98_reload_empty_end.ogg", t = 96/30},
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
            {s = path .. "wfoly_sn_kilo98_raise_first_raise.ogg", t = 0/30},
			{s = path .. "wfoly_sn_kilo98_raise_first_safety_01.ogg", t = 22/30},
			{s = path .. "wfoly_sn_kilo98_raise_first_end.ogg", t = 17/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
		MinProgress = 0.7,
		FireASAP = true,
        EventTable = {
            {s = path .. "wfoly_sn_kilo98_raise.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            {s = path .. "wfoly_sn_kilo98_reload_end.ogg", t = 0/30},
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
            {s = path .. "wfoly_sn_kilo98_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_sn_kilo98_inspect_02.ogg", t = 37/30},
			{s = path .. "wfoly_sn_kilo98_inspect_03.ogg", t = 70/30},
			{s = path .. "wfoly_sn_kilo98_inspect_04.ogg", t = 98/30},
			{s = path .. "wfoly_sn_kilo98_inspect_05.ogg", t = 120/30},
        },
    },
    ["bash"] = {
        Source = {"melee", "melee2","melee3"},
    },
}

--SWEP.Hook_Think	= ARC9.CSGO.BlendSights

-------------------------- ATTACHMENTS

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(8, -0.3, -0.1),
	ModelAngleOffset = Angle(0, 0, 0),
	Scale = 0.8,
    },
    ["go_grip_angled"] = {
    ModelOffset = Vector(0, 0, 0.15),
    },
}

SWEP.AttachmentElements = {
    ["mag_none"] = {
        Bodygroups = {
            {1,1},
        },
    },
    ["sight_rail"] = {
        Bodygroups = {
            {2,1},
        },
    },
    ["stock_none"] = {
        Bodygroups = {
            {3,1},
        },
    },
    ["sling"] = {
        Bodygroups = {
            {4,1},
        },
    },
    ["rail_grip"] = {
        Bodygroups = {
            {5,1},
        },
    },
    ["rail_laser"] = {
        Bodygroups = {
            {6,1},
        },
    },
}

-- SWEP.Hook_ModifyBodygroups = function(wep, data)
    -- local model = data.model
    -- if wep:HasElement("stock_retract") then 
	-- model:SetBodygroup(5,0)
	-- model:SetBodygroup(6,0)	
	-- end
-- end

SWEP.Attachments = {
    {
        PrintName = "Barrels",
        DefaultAttName = "Standard Barrel",
        Category = "cod2019_kar98k_barrel",
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
        Pos = Vector(2.5, 0, -0.07),
        Ang = Angle(0, 0, 0),
        Category = {"csgo_optic"},
        CorrectiveAng = Angle(0, 0, 0),
		InstalledElements = {"sight_rail"},
		--Installed = "cod2019_optic_scope_spr208",
        --Integral = "cod2019_optic_scope_spr208",
    },
    {
        PrintName = "Tactical",
        DefaultAttName = "Default",
        Category = "csgo_tac",
        Bone = "tag_laser_attach",
        Pos = Vector(-10, -0.5, -0.5),
        Ang = Angle(0, 0, -90),
		InstalledElements = {"rail_laser"},
    },
    {
        PrintName = "Stock",
        DefaultAttName = "Standard Stock",
        Category = "cod2019_kar98k_stock",
        Bone = "tag_stock_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		--InstalledElements = {"stock_none","stock_main_none"},
		Scale = 1,
    },
    {
        PrintName = "Grips",
        DefaultAttName = "Default",
        Category = "grip",
        Bone = "tag_attachments",
        Pos = Vector(18.2, 0, 0.55),
        Ang = Angle(0, 0, 180),
		Scale = 1,
		InstalledElements = {"rail_grip"},
    },
    {
        PrintName = "Ammo",
		Bone = "tag_attachments",
        Category = {"go_ammo","go_ammo_sniper"},
        Pos = Vector(11, 0, 1),
        Ang = Angle(0, 0, 0),
    },
    -- {
        -- PrintName = "Mag",
		-- Bone = "tag_attachments",
        -- Category = "go_mag",
        -- Pos = Vector(11, 0, 3),
        -- Ang = Angle(0, 0, 0),
    -- },
    {
        PrintName = "Perk",
        Category = "go_perk"
    },
    {
        PrintName = "Skins",
        --Bone = "v_weapon.Clip",
        Category = "cod2019_skins_kar98k",
		CosmeticOnly = true,
    },
    {
        PrintName = "Cosmetic",
        Category = {"universal_camo"},
        CosmeticOnly = true,
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/snip_kar98k_decal_a.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/snip_kar98k_decal_b.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/snip_kar98k_decal_c.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/snip_kar98k_decal_d.mdl",
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
        Pos = Vector(-15, 0.3, 0),
        Ang = Angle(0, 0, 0),
		CosmeticOnly = true,
    },
}

SWEP.GripPoseParam = 4.3
SWEP.GripPoseParam2 = 0.6