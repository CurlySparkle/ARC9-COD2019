AddCSLuaFile()
include( "arc9_cod2019_pi_renetti.lua" )

SWEP.PrintName = string.format( ARC9:GetPhrase("mw19_weapon_akimbo"), SWEP.PrintName )

SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_handgun_akimbo") or "Akimbos"

SWEP.LoadoutImage = "entities/loadout/arc9_cod2019_pi_renetti_akimbo.png"

SWEP.ViewModel = "models/weapons/cod2019/c_akimbo_renetti.mdl"
SWEP.WorldModel = "models/weapons/cod2019/w_pist_50gs.mdl"

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.TPIKforcelefthand = true
SWEP.TPIKNoSprintAnim = true 
SWEP.NotForNPCs = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_akimbo_renetti.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-12, 6, -7.5),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-12.5, 9, -15),
    TPIKAng = Angle(-3, 0, 180),
    Scale = 1
}

-------------------------- MAGAZINE

SWEP.ChamberSize = 2
SWEP.ClipSizeOverride = SWEP.ClipSize * 2

-------------------------- FIREMODES

SWEP.RPM = SWEP.RPM * 1.75

-------------------------- MELEE

SWEP.SecondaryBash = true
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.2

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

SWEP.MovingPos = Vector(0, -1.5, -0.8)
SWEP.MovingAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(0, -1.5, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.SprintPos = Vector(-1, 0, -1)
SWEP.SprintAng = Angle(0, 0, -5)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(19, 42.5, 4.25)
SWEP.CustomizeRotateAnchor = Vector(19, 0, -4.25)
SWEP.CustomizeSnapshotFOV = 65
SWEP.CustomizeSnapshotPos = Vector(1.5, -2.5, 0)
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeNoRotate = false

-------------------------- HoldTypes

SWEP.HoldType = "duel"
SWEP.HoldTypeSprint = "duel"
SWEP.HoldTypeHolstered = "duel"
SWEP.HoldTypeSights = "duel"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_DUEL
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_DUEL
SWEP.NonTPIKAnimReload = ACT_HL2MP_GESTURE_RELOAD_DUEL
SWEP.AnimDraw = false

SWEP.Akimbo = true

-------------------------- EFFECTS

SWEP.TracerEffect = "cod2019_tracer"
SWEP.MuzzleEffectQCA = 1
SWEP.MuzzleEffectQCAEvenShot = 2
SWEP.CaseEffectQCA = 4
SWEP.CaseEffectQCAEvenShot = 3
SWEP.AfterShotQCA = 1
SWEP.AfterShotQCAEvenShot = 2

SWEP.CamQCA = 7
SWEP.CamQCA_Mult = 1

SWEP.DropMagazineAmount = 2
SWEP.DropMagazineTime = 0.4
SWEP.DropMagazineQCA = 6
SWEP.DropMagazineAng = Angle(0, -90, 0)

-------------------------- SOUNDS

local path = "weapons/cod2019/renetti/"

SWEP.BulletBones = {
    [1] = "j_bullet1_l",
	[2] = "j_bullet1",
}

SWEP.HideBones  = {
    [1] = "j_mag2",
	[2] = "j_mag2_l",
}

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
		DropMagAt = 0.4,
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
		DropMagAt = 0.4,
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
		Time = 0.25,
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
		Time = 0.25,
    },
    ["inspect"] = {
        Source = "lookat01",
		MinProgress = 0.9,
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

local Translate_Fast = {
    ["reload"] = "reload_fast",
    ["reload_empty"] = "reload_fast_empty",
}

SWEP.Hook_TranslateAnimation = function(wep, anim)
    --local attached = self:GetElements()

    local speedload = wep:HasElement("perk_speedreload")

    if speedload then
        if Translate_Fast[anim] then
            return Translate_Fast[anim]
            end
        end
    end

SWEP.DefaultBodygroups = "00000000000000"

SWEP.AttachmentTableOverrides = {
    ["cod2019_renetti_slide_auto"] = {
    Model = "models/weapons/cod2019/attachs/weapons/renetti/attachment_vm_pi_mike9_barauto_akimbo.mdl",
	FiremodesOverride = {
			{
				Mode = 6,
				RPMMult = 1.25,
				RunawayBurst = true,
				--TracerEffect = "ARC9_tracer",
			},
		},
	},
    ["cod2019_renetti_stock"] = {
    Model = "models/weapons/cod2019/attachs/weapons/renetti/attachment_vm_pi_mike9_stock_akimbo.mdl",
    SprintPos = Vector(-1, 0, -1),
    SprintAng = Angle(0, 0, 0)
    },
    ["cod2019_renetti_mag_xmag"] = {
    Model = "models/weapons/cod2019/attachs/weapons/renetti/attachment_vm_pi_mike9_xmags_akimbo.mdl",
	ClipSizeOverride = 36
	},
    ["cod2019_renetti_mag_xmaglrg"] = {
    Model = "models/weapons/cod2019/attachs/weapons/renetti/attachment_vm_pi_mike9_xmagslrg_akimbo.mdl",
	ClipSizeOverride = 54
	},
    ["cod2019_renetti_grip_light"] = {
    Model = "models/weapons/cod2019/attachs/weapons/renetti/attachment_vm_pi_mike9_pstlgrplght_akimbo.mdl",
	},
    ["cod2019_renetti_grip_custom"] = {
    Model = "models/weapons/cod2019/attachs/weapons/renetti/attachment_vm_pi_mike9_pstlgrpcust_akimbo.mdl",
	},
    ["cod2019_renetti_slide_long"] = {
    Model = "models/weapons/cod2019/attachs/weapons/renetti/attachment_vm_pi_mike9_barlong_akimbo.mdl",
	},
    ["cod2019_renetti_slide_light"] = {
    Model = "models/weapons/cod2019/attachs/weapons/renetti/attachment_vm_pi_mike9_barlight_akimbo.mdl",
	},
    ["cod2019_renetti_muzzle"] = {
    Model = "models/weapons/cod2019/attachs/weapons/renetti/attachment_vm_pi_mike9_compensator.mdl",
	},
    ["cod2019_trigger_light"] = {
    Model = "models/weapons/cod2019/attachs/weapons/renetti/attachment_vm_pi_mike9_trigcust01_akimbo.mdl",
    },
    ["cod2019_trigger_heavy"] = {
    Model = "models/weapons/cod2019/attachs/weapons/renetti/attachment_vm_pi_mike9_trigcust02_akimbo.mdl",
    },
    ["cod2019_trigger_match"] = {
    Model = "models/weapons/cod2019/attachs/weapons/renetti/attachment_vm_pi_mike9_trigcust03_akimbo.mdl",
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
    ["rail_sight"] = {
        Bodygroups = {
            {8,1},
            {9,1},
        },
    },
    ["trigger_none"] = {
        Bodygroups = {
            {10,1},
            {11,1},
        },
    },
    ["sight_mount"] = {
        Bodygroups = {
            {12,1},
            {13,1},
        },
    },
}

SWEP.Attachments = {
    { -- 1
        PrintName = ARC9:GetPhrase("mw19_category_muzzle"),
        Category = {"cod2019_muzzle_pistols", "cod2019_renetti_muzzle"},
        DefaultIcon = Material("entities/defattachs/muzzle-ar.png", "mips smooth"),
		Bone = "tag_silencer_l",
		DuplicateModels = { { Bone = "tag_silencer" } },
        Pos = Vector(-0.105, 0, 0),
    },
    { -- 2
        PrintName = ARC9:GetPhrase("mw19_category_barrel"),
		DefaultIcon = Material("entities/defattachs/barrel-ar.png", "mips smooth"),
        Category = "cod2019_renetti_slide",
        Bone = "tag_barrel_attach_l",
		DuplicateModels = { { Bone = "tag_barrel_attach" } },
        Pos = Vector(0, 0, 0),
    },
    { -- 3
        PrintName = ARC9:GetPhrase("mw19_category_laser") .. " / " .. ARC9:GetPhrase("mw19_category_underbarrel"),
		DefaultIcon = Material("entities/defattachs/laser-ar.png", "mips smooth"),
        Category = {"cod2019_tac_pistols","cod2019_grip_pistols"},
        Bone = "tag_laser_attach_l",
		DuplicateModels = { { Bone = "tag_laser_attach" } },
        Pos = Vector(0, 0, 0),
    },
    { -- 4
        PrintName = ARC9:GetPhrase("mw19_category_optic"),
		DefaultIcon = Material("entities/defattachs/optic.png", "mips smooth"),
        Bone = "j_slide_l",
		DuplicateModels = { { Bone = "j_slide" } },
        Pos = Vector(-1.44, 0, 0.645),
        Category = "cod2019_optics_pistols_alt",
		InstalledElements = {"sight_mount"},
		MergeSlots = {21},
    },
    { -- 5
        PrintName = ARC9:GetPhrase("mw19_category_stock"),
		DefaultIcon = Material("entities/defattachs/stock-ar.png", "mips smooth"),
        Category = "cod2019_renetti_stock",
        Bone = "tag_stock_attach_l",
        Pos = Vector(0, 0, 0),
    },
    { -- 6
        PrintName = ARC9:GetPhrase("mw19_category_triggeraction"),
		-- DefaultIcon = Material("entities/defattachs/stock-ar.png", "mips smooth"),
        Category = {"cod2019_trigger"},
        Bone = "j_trigger_l",
		DuplicateModels = { { Bone = "j_trigger" } },
        Pos = Vector(0, 0, 0),
    },
    { -- 7
        PrintName = ARC9:GetPhrase("mw19_category_magazine"),
		DefaultIcon = Material("entities/defattachs/magazine-ar.png", "mips smooth"),
		Bone = "tag_mag_attach_l",
		DuplicateModels = { { Bone = "tag_mag_attach" } },
        Category = {"cod2019_mag","cod2019_renetti_mag"},
        Pos = Vector(0, 0, 0),
    },
    { -- 8
        PrintName = ARC9:GetPhrase("mw19_category_ammo"),
		DefaultIcon = Material("arc9/def_att_icons/ammotype.png", "mips smooth"),
        Bone = "tag_mag_attach_l",
		DuplicateModels = { { Bone = "tag_mag_attach" } },
		Category = {"cod2019_ammo"},
		Pos = Vector(-1, 0, 0),
    },
    { -- 9
        PrintName = ARC9:GetPhrase("mw19_category_reargrip"),
		DefaultIcon = Material("entities/defattachs/reargrip-ar.png", "mips smooth"),
        Category = "cod2019_renetti_grip",
        Bone = "tag_pistolgrip_attach_l",
		DuplicateModels = { { Bone = "tag_pistolgrip_attach" } },
        Pos = Vector(0, 0, 0),
    },
    { -- 10
        PrintName = ARC9:GetPhrase("mw19_category_perk"),
        Category = {"cod2019_perks","cod2019_perks_soh","cod2019_perks_ss"},
        Bone = "tag_cosmetic_l",
        Pos = Vector(-2.5, 0, -2.25),
		RejectAttachments = { ["cod2019_perks_super_sprint"] = true },
    },
	
	-- Unofficial
    { -- 11
        PrintName = ARC9:GetPhrase("mw19_category_receiver"),
        Category = "cod2019_renetti_receiver",
        Bone = "tag_pistol_offset",
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(0, 0, 1),
		Hidden = false,
    },
	
	-- Cosmetics
    { -- 12
        PrintName = ARC9:GetPhrase("mw19_category_skins"),
        Bone = "tag_cosmetic_l",
        Pos = Vector(3, 0, 1.5),
        Category = "cod2019_skins_renetti",
		CosmeticOnly = true,
    },
    { -- 13
        PrintName = ARC9:GetPhrase("mw19_category_camouflage"),
        Category = {"universal_camo"},
        Bone = "tag_cosmetic_l",
        Pos = Vector(2, 0, 1.5),
        CosmeticOnly = true,
    },
    { -- 14
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/akimbo_renetti_decal_a.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic_l",
        Pos = Vector(1, 0, 1.5),
    },
    { -- 15
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/akimbo_renetti_decal_b.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic_l",
        Pos = Vector(0, 0, 1.5),
    },
    { -- 16
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/akimbo_renetti_decal_c.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic_l",
        Pos = Vector(-1, 0, 1.5),
    },
    { -- 17
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/akimbo_renetti_decal_d.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic_l",
        Pos = Vector(-2, 0, 1.5),
    },
    { -- 18
        PrintName = ARC9:GetPhrase("mw19_category_charm"),
        CosmeticOnly = true,
        Category = {"charm"},
        Bone = "tag_cosmetic_l",
		DuplicateModels = { { Bone = "tag_cosmetic" } },
        Pos = Vector(0.5, 0, 0),
		Icon_Offset = Vector(-3.5, 0, 1.5),
		Scale = 1,
    },
    { -- 19
        PrintName = ARC9:GetPhrase("mw19_category_stats"),
        Category = "killcounter",
        Bone = "tag_cosmetic_l",
		DuplicateModels = { { Bone = "tag_cosmetic" } },
        Pos = Vector(0, 0, -1),
		Icon_Offset = Vector(-2.5, 0.05, 1.5),
		CosmeticOnly = true,
    },
    { -- 20
        PrintName = ARC9:GetPhrase("mw19_category_view"),
        Category = "cod2019_pistols_view",
        Bone = "tag_cosmetic_l",
        Pos = Vector(-9, 0, 3),
		CosmeticOnly = true,
		ExcludeElements = {"stock"},
    },
    { -- 21
        PrintName = ARC9:GetPhrase("mw19_category_optic"),
        Category = "cod2019_optic_pistol",
        Bone = "tag_reflex_l",
		DuplicateModels = { { Bone = "tag_reflex" } },
        Pos = Vector(1, 0, -0.05),
		Hidden = true,
		InstalledElements = {"rail_sight"},
    },
}