AddCSLuaFile()

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = "Sniper Rifles"

SWEP.PrintName = "Rytec AMR"

SWEP.Class = "Sniper Rifle"
SWEP.Trivia = {
    ["Country of Origin"] = "United States",
    ["Manufacturer"] = "Silverfield Ordnance",
    ["Caliber"] = ".50 BMG",
    ["Weight (Loaded)"] = "15.1 kg",
    ["Projectile Weight"] = "360 gr",
    ["Muzzle Velocity"] = "1,390 ft/s",
    ["Muzzle Energy"] = "2,094 joules"
}

SWEP.Credits = {
    Author = "Twilight Sparkle/Firmeteran",
    Assets = "Infinity Ward/Valve/New World Interactive"
}

SWEP.Description = [[Semi-automatic Anti-Materiel Rifle is chambered in .50 BMG for dominant long range assaults. A 25x59mm high-explosive payload variant is officially listed as "experimental", but has been deployed on multiple classified missions with great effectiveness.]]

SWEP.ViewModel = "models/weapons/cod2019/c_snip_rytec.mdl"
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"

SWEP.Slot = 3

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_snip_rytec.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-12, 6, -7.5),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-10, 4, 0),
    TPIKAng = Angle(0, 0, 175),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 91 -- Damage done at point blank range
SWEP.DamageMin = 55 -- Damage done at maximum range

SWEP.DamageRand = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 1000 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 8000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 25 -- Units of wood that can be penetrated by this gun.

SWEP.ImpactForce = 15

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 2,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_LEFTARM] = 0.9,
    [HITGROUP_RIGHTARM] = 0.9,
}


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

SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 165

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
SWEP.RecoilUp = 0.7 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.3

SWEP.RecoilDissipationRate = 100 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 1 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 1.5

SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.6
SWEP.RecoilMultCrouch = 0.7

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilPunch = 1
SWEP.VisualRecoilUp = 1

-------------------------- SPREAD

SWEP.Spread = 0.002

SWEP.SpreadAddRecoil = 0.0002 -- Applied per unit of recoil.

SWEP.SpreadAddMove = 0.2
--SWEP.SpreadAddMidAir = 0
SWEP.SpreadAddHipFire = 0.05
SWEP.SpreadAddCrouch = -0.01
SWEP.SpreadAddSights = -0.1


-------------------------- HANDLING

SWEP.SpeedMultSights = 0.5

SWEP.AimDownSightsTime = 0.5 -- How long it takes to go from hip fire to aiming down sights.
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
    Pos = Vector(-4.84, -9, 2.15),
    Ang = Angle(1.1, -3, 0),
    Magnification = 1.15,
    ViewModelFOV = 56,
	CrosshairInSights = false
}

SWEP.ViewModelFOVBase = 60

SWEP.SprintMidPoint = {
    Pos = Vector(0, 0, 0),
    Ang = Angle(0, 0, 0)
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0.5, 0.7, 0)

SWEP.MovingMidPoint = {
    Pos = Vector(0, -0.5, -0.5),
    Ang = Angle(0, 0, 0)
}

SWEP.MovingPos = Vector(0, -0.4, -0.4)
SWEP.MovingAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-0.5, -0, -1)
SWEP.CrouchAng = Angle(0.5, 0.7, -5)

SWEP.SprintPos = Vector(0, 0, 0)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.CustomizeAng = Angle(90, 0, 1.5)
SWEP.CustomizePos = Vector(22, 35, 2)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeSnapshotPos = Vector(0, 25, 5)
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

SWEP.MuzzleParticle = "AC_muzzle_sniper_heavy"
SWEP.AfterShotParticle = "AC_muzzle_smoke_barrel"
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 4
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/weapons/shared/shell_rytec.mdl"
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 1
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_snip_rytec_mag1.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {"physics/metal/weapon_impact_soft1.wav", "physics/metal/weapon_impact_soft2.wav", "physics/metal/weapon_impact_soft3.wav"}
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineTime = 2
SWEP.DropMagazineQCA = 3
SWEP.DropMagazineAng = Angle(0, -90, 0)

-------------------------- SOUNDS

local path = "weapons/cod2019/rytec/"

SWEP.ShootSound = "COD2019.Rytec.Fire"
SWEP.ShootSoundSilenced = "COD2019.Rytec.Silenced_Fire"
SWEP.DistantShootSound = "CSGO.AWP.Distance_Fire"
SWEP.DryFireSound = "weapons/clipempty_rifle.wav"

SWEP.FiremodeSound = "CSGO.Rifle.Switch_Mode"

SWEP.EnterSightsSound = "COD2019.Iron.In_Rifle"
SWEP.ExitSightsSound = "COD2019.Iron.Out_Rifle"

SWEP.BulletBones = {
    [1] = "j_he_round_01",
    [2] = "j_he_round_02",
    [3] = "j_he_round_03",
}

SWEP.Animations = {
    ["fire"] = {
        Source = {"shoot1"},
    },
    ["fire_sights"] = {
        Source = "shoot1_ads",
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
                t = 0.85,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_sn_xmike109_reload_up.ogg", t = 0/30},
            {s = path .. "wfoly_sn_xmike109_reload_magrelease.ogg", t = 24/30},
			{s = path .. "wfoly_sn_xmike109_reload_magout.ogg", t = 41/30},
			{s = path .. "wfoly_sn_xmike109_reload_arm.ogg", t = 68/30},
			{s = path .. "wfoly_sn_xmike109_reload_magin_01.ogg", t = 78/30},
			{s = path .. "wfoly_sn_xmike109_reload_magin_02.ogg", t = 92/30},
			{s = path .. "wfoly_sn_xmike109_reload_end.ogg", t = 104/30},
        },
    },
    ["1_reload"] = {
        Source = "reload_fast",
		MinProgress = 0.8,
		DropMagAt = 1,
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
            {s = path .. "wfoly_sn_xmike109_reload_up.ogg", t = 0/30},
			{s = path .. "wfoly_sn_xmike109_reload_magout.ogg", t = 10/30},
			{s = path .. "wfoly_sn_xmike109_reload_arm.ogg", t = 35/30},
			{s = path .. "wfoly_sn_xmike109_reload_magin_01.ogg", t = 45/30},
			{s = path .. "wfoly_sn_xmike109_reload_magin_02.ogg", t = 55/30},
			{s = path .. "wfoly_sn_xmike109_reload_end.ogg", t = 57/30},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.9,
		DropMagAt = 2,
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
                t = 0.95,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_sn_xmike109_reload_empty_up.ogg", t = 0/30},
            {s = path .. "wfoly_sn_xmike109_reload_empty_magrelease.ogg", t = 26/30},
			{s = path .. "wfoly_sn_xmike109_reload_empty_magout.ogg", t = 43/30},
			{s = path .. "wfoly_sn_xmike109_reload_empty_arm.ogg", t = 58/30},
			{s = path .. "wfoly_sn_xmike109_reload_empty_magin_01.ogg", t = 81/30},
			{s = path .. "wfoly_sn_xmike109_reload_empty_magin_02.ogg", t = 95/30},
			{s = path .. "wfoly_sn_xmike109_reload_empty_rotate.ogg", t = 104/30},
			{s = path .. "wfoly_sn_xmike109_reload_empty_boltpull.ogg", t = 128/30},
			{s = path .. "wfoly_sn_xmike109_reload_empty_boltrelease.ogg", t = 142/30},
			{s = path .. "wfoly_sn_xmike109_reload_empty_end.ogg", t = 149/30},
        },
    },
    ["1_reload_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.8,
		DropMagAt = 1,
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
                t = 0.6,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_sn_xmike109_reload_empty_up.ogg", t = 0/30},
			{s = path .. "wfoly_sn_xmike109_reload_empty_magout.ogg", t = 14/30},
			{s = path .. "wfoly_sn_xmike109_reload_empty_arm.ogg", t = 35/30},
			{s = path .. "wfoly_sn_xmike109_reload_empty_magin_01.ogg", t = 45/30},
			{s = path .. "wfoly_sn_xmike109_reload_empty_magin_02.ogg", t = 55/30},
			{s = path .. "wfoly_sn_xmike109_first_raise_bolt_pull.ogg", t = 83/30},
			{s = path .. "wfoly_sn_xmike109_first_raise_bolt_release.ogg", t = 96/30},
			{s = path .. "wfoly_sn_xmike109_reload_empty_end.ogg", t = 99/30},
        },
    },
    ["ready"] = {
        Source = "draw",
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
                t = 0.7,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_sn_xmike109_first_raise_up.ogg", t = 0/30},
            {s = path .. "wfoly_sn_xmike109_first_raise_bolt_pull.ogg", t = 15/30},
            {s = path .. "wfoly_sn_xmike109_first_raise_bolt_release.ogg", t = 25/30},
			{s = path .. "wfoly_sn_xmike109_first_raise_end.ogg", t = 30/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
        EventTable = {
            {s = path .. "wfoly_sn_xmike109_first_raise_up.ogg", t = 0/30},
			{s = path .. "wfoly_sn_xmike109_first_raise_end.ogg", t = 10/30},
        },
    },
    ["holster"] = {
        Source = "holster",
		Mult = 0.8,
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
                t = 0.3,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.57,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_sn_xmike109_inspect_up.ogg", t = 0/30},
			{s = path .. "wfoly_sn_xmike109_inspect_grabrotate.ogg", t = 49/30},
			{s = path .. "wfoly_sn_xmike109_inspect_move.ogg", t = 89/30},
			{s = path .. "wfoly_sn_xmike109_inspect_end.ogg", t = 111/30},
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

-------------------------- ATTACHMENTS

SWEP.DefaultBodygroups = "00000000000000"

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(-1.7, -0.2, 0.8),
	ModelAngleOffset = Angle(0, 0, 35),
	Scale = 0.8,
    },
}

SWEP.AttachmentElements = {
    ["mag"] = {
        Bodygroups = {
            {1,1},
        },
    },
    ["barrel_long"] = {
        Bodygroups = {
            {2,1},
			{3,1},
        },
	AttPosMods = { [3] = { Pos = Vector(6, 0, 0.1), } }	
    },
    ["barrel_short"] = {
        Bodygroups = {
            {2,2},
			{3,2},
        },
	AttPosMods = { [3] = { Pos = Vector(-5, 0, 0), } }	
    },
    ["muzzle"] = {
        Bodygroups = {
            {3,3},
        },
    },
    ["no_stock"] = {
        Bodygroups = {
            {4,1},
        },
    },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model
    if wep:HasElement("barrel_long") and wep.Attachments[3].Installed then model:SetBodygroup(3,3) end
	if wep:HasElement("barrel_short") and wep.Attachments[3].Installed then model:SetBodygroup(3,3) end
end

SWEP.Attachments = {
    {
        PrintName = "Barrels",
        DefaultAttName = "Standard Barrel",
        Category = {"cod2019_rytec_barrel"},
        Bone = "tag_attachments",
        Pos = Vector(30, 0, 0.25),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Optics",
        Bone = "tag_attachments",
        Pos = Vector(10, 0, 2),
        Ang = Angle(0, 0, 0),
        Category = {"csgo_optic","cod2019_optic_rytec"},
        CorrectiveAng = Angle(1.5, 0.6, 0),
		Installed = "cod2019_optic_scope_rytec",
        Integral = "cod2019_optic_scope_rytec",
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Category = {"muzzle","muzzle_snipers"},
        Bone = "tag_silencer",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		InstalledElements = {"muzzle",},
		Scale = 1,
    },
    {
        PrintName = "Tactical",
        DefaultAttName = "Default",
        Category = "csgo_tac",
        Bone = "tag_attachments",
        Pos = Vector(19.3, 1, 0.9),
        Ang = Angle(0, 0, -130),
    },
    {
        PrintName = "Grips",
        DefaultAttName = "Default",
        Category = "grip",
        Bone = "tag_attachments",
        Pos = Vector(18.7, 0.11, -1.2),
        Ang = Angle(0, 0, 180),
		Scale = 1,
    },
    {
        PrintName = "Stock",
        DefaultAttName = "Standard Stock",
        Category = {"cod2019_rytec_stock"},
        Bone = "tag_attachments",
        Pos = Vector(0, 0, 0.25),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Ammo",
        Bone = "j_mag1",
        Category = {"go_ammo","go_ammo_sniper"},
        Pos = Vector(0, -1.5, -1.5),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Mag",
		Bone = "j_mag1",
        Category = "cod2019_rytec_mag",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Perk",
        Category = "go_perk"
    },
    {
        PrintName = "Skins",
        --Bone = "v_weapon.Clip",
        Category = "cod2019_skins_rytec",
		CosmeticOnly = true,
    },
    {
        PrintName = "Cosmetic",
        Category = {"universal_camo"},
        CosmeticOnly = true,
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/snip_rytec_decal_a.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/snip_rytec_decal_b.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/snip_rytec_decal_c.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/snip_rytec_decal_d.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/snip_rytec_decal_e.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Charm",
        Category = "charm",
        Bone = "tag_attachments",
        Pos = Vector(9, -1.15, 0.2),
        Ang = Angle(0, 0, 0),
		Scale = 1.5,
    },
    {
        PrintName = "Stats",
        Category = {"killcounter","killcounter2"},
        Bone = "tag_attachments",
        Pos = Vector(9, -1.15, 0.1),
        Ang = Angle(0, 0, 0),
		CosmeticOnly = true,
    },
    {
        PrintName = "lhik",
        Bone = "tag_attachments",
        Pos = Vector(19.5, -0.3, -0.3),
        Ang = Angle(0, 0, 180),
        Category = "cod2019_lhik_rytec",
		Installed = "csgo_cod2019_lhik_rytec",
        Integral = true,
        Hidden = true,		
    },	
}

SWEP.GripPoseParam = 3
SWEP.GripPoseParam2 = 0.1
SWEP.CodStubbyGripPoseParam = 1
SWEP.CodAngledGripPoseParam = 1