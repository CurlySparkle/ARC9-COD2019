AddCSLuaFile()
SWEP.Base = "arc9_cod2019_pi_x16"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"

SWEP.PrintName = string.format( ARC9:GetPhrase("mw19_weapon_akimbo"), ARC9:GetPhrase("mw19_weapon_glock") )

SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_handgun_akimbo") or "Akimbos"

SWEP.LoadoutImage = "entities/loadout/arc9_cod2019_pi_x16_akimbo.png"

SWEP.ViewModel = "models/weapons/cod2019/c_akimbo_x16.mdl"

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.TPIKforcelefthand = true
SWEP.TPIKNoSprintAnim = true 
SWEP.NotForNPCs = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_akimbo_x16.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-12, 6, -7.5),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-12.5, 9, -15),
    TPIKAng = Angle(-3, 0, 180),
    Scale = 1
}

-------------------------- MAGAZINE

SWEP.ChamberSize = 2
SWEP.ClipSize = 26

-------------------------- FIREMODES

SWEP.RPMMult = 1.75

-------------------------- MELEE

SWEP.SecondaryBash = true
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.3

-------------------------- POSITIONS

SWEP.HasSights = false

SWEP.ViewModelFOVBase = 60

SWEP.MovingPos = Vector(0, -1.5, -0.8)

SWEP.CrouchPos = Vector(0, -1.5, -1)
SWEP.CrouchAng = Angle(0, 0, 0)

SWEP.SprintPos = Vector(-1, 0, -1)
SWEP.SprintAng = Angle(0, 0, -5)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(19, 35, 5)
SWEP.CustomizeRotateAnchor = Vector(19, 0, -4.25)
SWEP.CustomizeSnapshotPos = Vector(-0.5, 5, 0)

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

local path = "weapons/cod2019/x16/"

SWEP.BulletBones = {
    [1] = "j_bullet_l",
	[2] = "j_bullet",
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
		MinProgress = 0.7,
		MagSwapTime = 3.5,
		DropMagAt = 0.45,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_golf21_reload_fast_magout_01.ogg", t = 0/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_magout_01.ogg", t = 0/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_magout_01.ogg", t = 3/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_down.ogg", t = 14/30},
			{s = path .. "wfoly_pi_golf21_reload_magin_v2_02.ogg", t = 44/30},
			{s = path .. "wfoly_pi_golf21_reload_fast_magin_v2_02.ogg", t = 49/30},
			{s = path .. "wfoly_pi_golf21_reload_magin_v2_02.ogg", t = 54/30},
			{s = path .. "wfoly_pi_golf21_reload_fast_magin_v2_02.ogg", t = 57/30},
			{s = path .. "wfoly_pi_golf21_reload_end.ogg", t = 70/30},
			{s = path .. "wfoly_pi_golf21_reload_fast_end.ogg", t = 70/30},
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
		MinProgress = 0.825,
		DropMagAt = 0.45,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.95, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_golf21_reload_empty_magout_01.ogg", t = 4/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_fast_magout_01.ogg", t = 4/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_magout_01.ogg", t = 6/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_fast_magout_01.ogg", t = 6/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_down.ogg", t = 20/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_magin_v2_02.ogg", t = 47/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_fast_magin_v2_02.ogg", t = 47/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_magin_v2_02.ogg", t = 55/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_fast_magin_v2_02.ogg", t = 55/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_raise.ogg", t = 72/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_fast_chamber_01.ogg", t = 72/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_fast_chamber_01.ogg", t = 77/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_fast_end.ogg", t = 84/30},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.7,
		MagSwapTime = 3.5,
		DropMagAt = 0.4,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_golf21_reload_fast_magout_01.ogg", t = 0/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_magout_01.ogg", t = 0/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_magout_01.ogg", t = 2/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_down.ogg", t = 14/30},
			{s = path .. "wfoly_pi_golf21_reload_magin_v2_02.ogg", t = 28/30},
			{s = path .. "wfoly_pi_golf21_reload_fast_magin_v2_02.ogg", t = 33/30},
			{s = path .. "wfoly_pi_golf21_reload_magin_v2_02.ogg", t = 38/30},
			{s = path .. "wfoly_pi_golf21_reload_fast_magin_v2_02.ogg", t = 41/30},
			{s = path .. "wfoly_pi_golf21_reload_end.ogg", t = 50/30},
			{s = path .. "wfoly_pi_golf21_reload_fast_end.ogg", t = 50/30},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.8,
		DropMagAt = 0.4,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.95, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_golf21_reload_empty_magout_01.ogg", t = 4/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_fast_magout_01.ogg", t = 4/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_magout_01.ogg", t = 6/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_fast_magout_01.ogg", t = 6/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_down.ogg", t = 20/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_magin_v2_02.ogg", t = 37/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_fast_magin_v2_02.ogg", t = 37/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_magin_v2_02.ogg", t = 45/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_fast_magin_v2_02.ogg", t = 45/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_raise.ogg", t = 55/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_fast_chamber_01.ogg", t = 55/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_fast_chamber_01.ogg", t = 57.5/30},
			{s = path .. "wfoly_pi_golf21_reload_empty_fast_end.ogg", t = 68/30},
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
            {s = path .. "wfoly_pi_golf21_first_raise_open_slide.ogg", t = 7/30},
            {s = path .. "wfoly_pi_golf21_first_raise_slide_release.ogg", t = 12/30},
        },
    },
    ["draw"] = {
        Source = "draw",
		MinProgress = 0.2,
        FireASAP = true,
        EventTable = {
            {s = path .. "wfoly_pi_golf21_reload_end.ogg", t = 9/30},
            {s = path .. "wfoly_pi_golf21_reload_fast_end.ogg", t = 9/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            {s = path .. "wfoly_pi_golf21_reload_empty_raise.ogg", t = 0/30},
            {s = path .. "wfoly_pi_golf21_reload_fast_end.ogg", t = 5/30},
        },
    },
    ["idle"] = {
        Source = "idle",
    },
    ["idle_sprint"] = {
        Source = "sprint2",
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
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 1.1, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_pi_golf21_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_pi_golf21_inspect_02.ogg", t = 36/30},
			{s = path .. "wfoly_pi_golf21_inspect_03.ogg", t = 61/30},
			{s = path .. "wfoly_pi_golf21_inspect_04.ogg", t = 114/30},
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
    end

SWEP.DefaultBodygroups = "00000000000000"

SWEP.AttachmentTableOverrides = {
    ["cod2019_x16_slide_light"] = {
    Model = "models/weapons/cod2019/attachs/weapons/x16/attachment_vm_pi_golf21_slide_auto_akimbo.mdl"
    },
    ["cod2019_x16_slide_slong"] = {
    Model = "models/weapons/cod2019/attachs/weapons/x16/attachment_vm_pi_golf21_slide_long_akimbo.mdl"
    },
    ["cod2019_x16_slide_heavy"] = {
    Model = "models/weapons/cod2019/attachs/weapons/x16/attachment_vm_pi_golf21_slide_v3_akimbo.mdl",
	FiremodesOverride = {
			{
				Mode = 6,
				RPMMult = 1.25,
				RunawayBurst = true,
				--TracerEffect = "ARC9_tracer",
			},
		},
    },
    ["cod2019_x16_mag_xmag2"] = {
    Model = "models/weapons/cod2019/attachs/weapons/x16/attachment_vm_pi_golf21_mag_xmags2_akimbo.mdl",
	ClipSizeOverride = 39
    },
    ["cod2019_x16_stock"] = {
    Model = "models/weapons/cod2019/attachs/weapons/x16/attachment_vm_pi_golf21_stock_akimbo.mdl"
    },
    ["cod2019_griptape_01"] = {
    Model = "models/weapons/cod2019/attachs/weapons/x16/attachment_vm_pi_golf21_pistolgrip_tape_akimbo.mdl",
    },
    ["cod2019_griptape_02"] = {
    Model = "models/weapons/cod2019/attachs/weapons/x16/attachment_vm_pi_golf21_pistolgrip_tape_akimbo.mdl",
    },
    ["cod2019_griptape_03"] = {
    Model = "models/weapons/cod2019/attachs/weapons/x16/attachment_vm_pi_golf21_pistolgrip_tape_akimbo.mdl",
    },
    ["cod2019_trigger_light"] = {
    Model = "models/weapons/cod2019/attachs/weapons/x16/attachment_vm_pi_golf21_trigcust_akimbo.mdl",
    },
    ["cod2019_trigger_heavy"] = {
    Model = "models/weapons/cod2019/attachs/weapons/x16/attachment_vm_pi_golf21_trigcust02_akimbo.mdl",
    },
    ["cod2019_trigger_match"] = {
    Model = "models/weapons/cod2019/attachs/weapons/x16/attachment_vm_pi_golf21_trigcust03_akimbo.mdl",
    },
}

SWEP.AttachmentElements = {
    ["body_none"] = {
        Bodygroups = {
            {0,1},
        },
    },
    ["slide_none"] = {
        Bodygroups = {
            {1,1},
            {4,1},
        },
    },
    ["mag_none"] = {
        Bodygroups = {
            {2,1},
            {5,1},
        },
    },
    ["x16_slide_auto"] = {
    AttPosMods = { [2] = { Pos = Vector(0, 0, 0), } }
    },
    ["sight_mount"] = {
        Bodygroups = {
            {6,1},
            {7,1},
        },
    },
    ["trigger_none"] = {
        Bodygroups = {
            {8,1},
            {9,1},
        },
    },
}

SWEP.Attachments = {
    { -- 1
		Bone = "tag_silencer_l",
		DuplicateModels = { { Bone = "tag_silencer" } },
    },
    { -- 2
        Bone = "tag_barrel_attach_l",
		DuplicateModels = { { Bone = "tag_barrel_attach" } },
    },
    { -- 3
        Category = {"cod2019_tac_pistols"},
        Bone = "tag_laser_attach_l",
		DuplicateModels = { { Bone = "tag_laser_attach" } },
    },
    { -- 4
        Bone = "tag_reflex_l",
		DuplicateModels = { { Bone = "tag_reflex" } },
    },
    { -- 5
        Bone = "j_trigger_l",
		DuplicateModels = { { Bone = "j_trigger" } },
    },
    { -- 6
		Bone = "tag_mag_attach_l",
		DuplicateModels = { { Bone = "tag_mag_attach" } },
    },
    { -- 7
        Bone = "tag_mag_attach_l",
		DuplicateModels = { { Bone = "tag_mag_attach" } },
		Pos = Vector(-1, 0, 0),
    },
    { -- 8
        Bone = "tag_pistolgrip_attach_l",
		DuplicateModels = { { Bone = "tag_pistolgrip_attach" } },
    },
    { -- 9
        Bone = "tag_cosmetic_l",
        Pos = Vector(-1.5, 0, -2.25),
    },
	
	-- Unofficial
    { -- 10
        Category = "cod2019_x16_akimbo_receiver",
        Bone = "tag_pistol_offset",
		Icon_Offset = Vector(0, 0, 1),
    },
	
	-- Cosmetics
    { -- 11
        Bone = "tag_cosmetic_l",
        Category = "cod2019_skins_x16",
    },
    { -- 12
        Bone = "tag_cosmetic_l",
    },
    { -- 13
        StickerModel = "models/weapons/cod2019/stickers/akimbo_x16_decal_a.mdl",
        Bone = "tag_cosmetic_l",
    },
    { -- 14
        StickerModel = "models/weapons/cod2019/stickers/akimbo_x16_decal_b.mdl",
        Bone = "tag_cosmetic_l",
    },
    { -- 15
        StickerModel = "models/weapons/cod2019/stickers/akimbo_x16_decal_c.mdl",
        Bone = "tag_cosmetic_l",
    },
    { -- 16
        StickerModel = "models/weapons/cod2019/stickers/akimbo_x16_decal_d.mdl",
        Bone = "tag_cosmetic_l",
    },
    { -- 17
        Bone = "tag_cosmetic_l",
		DuplicateModels = { { Bone = "tag_cosmetic" } },
    },
    { -- 18
        Bone = "tag_weapon_l",
		DuplicateModels = { { Bone = "tag_weapon" } },
		Icon_Offset = Vector(-4.25, 0.05, 2),
    },
    { -- 19
        Bone = "tag_stock_attach_l",
		DuplicateModels = { { Bone = "tag_stock_attach" } },
    },
    { -- 20
        Bone = "tag_cosmetic_l",
		Hidden = true,
    },
}
