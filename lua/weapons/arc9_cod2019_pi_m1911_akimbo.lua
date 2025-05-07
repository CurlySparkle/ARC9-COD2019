AddCSLuaFile()
SWEP.Base = "arc9_cod2019_pi_m1911"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"

SWEP.PrintName = string.format( ARC9:GetPhrase("mw19_weapon_akimbo"), ARC9:GetPhrase("mw19_weapon_1911") )

SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_handgun_akimbo") or "Akimbos"

SWEP.LoadoutImage = "entities/loadout/arc9_cod2019_pi_m1911_akimbo.png"

SWEP.ViewModel = "models/weapons/cod2019/c_akimbo_m1911.mdl"

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.TPIKforcelefthand = true
SWEP.TPIKNoSprintAnim = true 
SWEP.NotForNPCs = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_akimbo_m1911.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-12, 6, -7.5),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-12.5, 9, -15),
    TPIKAng = Angle(-3, 0, 180),
    Scale = 1
}

-------------------------- MAGAZINE

SWEP.ChamberSize = 2
SWEP.ClipSize = 14

-------------------------- FIREMODES

SWEP.RPMMult = 1.75

-------------------------- RECOIL

SWEP.RecoilUp = 1
SWEP.RecoilSide = 0.1 -- Multiplier for vertical recoil
SWEP.RecoilRandomSide = 0.5

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilSide = 0.05
SWEP.VisualRecoilRoll = 55
SWEP.VisualRecoilUp = 0.1


-------------------------- MELEE

SWEP.SecondaryBash = true
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.35

-------------------------- POSITIONS

SWEP.HasSights = false

SWEP.ViewModelFOVBase = 60

SWEP.MovingPos = Vector(0, -1.5, -0.8)

SWEP.CrouchPos = Vector(0, -1.5, -1)
SWEP.CrouchAng = Angle(0, 0, 0)

SWEP.SprintPos = Vector(-1, 0, -1)
SWEP.SprintAng = Angle(0, 0, -5)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(18, 35, 4.25)
SWEP.CustomizeRotateAnchor = Vector(18, 0, -4.25)
SWEP.CustomizeSnapshotPos = Vector(0, 5, 0)

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

-------------------------- SOUNDS

local path = "weapons/cod2019/m1911/"

SWEP.BulletBones = {
    [1] = "j_bullet",
    [2] = "j_bullet2",
	[3] = "j_bullet_grp2",
	[4] = "j_bullet_grp3",
	[5] = "j_bullet_grp4",
	[6] = "j_bullet_grp5",
	[7] = "j_bullet_grp6",
	[8] = "j_bullet_grp7",
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
        Source = "reload_short",
		MinProgress = 0.725,
		MagSwapTime = 3.5,
		DropMagAt = 0.65,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_mike1911_reload_empty_lift.ogg", t = 0/30},
			{s = path .. "wfoly_pi_mike1911_fast_reload_empty_lift.ogg", t = 4/30},
			{s = path .. "wfoly_pi_mike1911_reload_empty_magout_01.ogg", t = 6/30},
			{s = path .. "wfoly_pi_mike1911_fast_reload_empty_magout_01.ogg", t = 10/30},
			{s = path .. "wfoly_pi_mike1911_reload_empty_magin_v2_01.ogg", t = 49/30},
			{s = path .. "wfoly_pi_mike1911_reload_empty_magin_v2_01.ogg", t = 52/30},
			{s = path .. "wfoly_pi_mike1911_reload_empty_magin_v2_02.ogg", t = 54/30},
			{s = path .. "wfoly_pi_mike1911_fast_reload_magin_01.ogg", t = 54/30},
			{s = path .. "wfoly_pi_mike1911_reload_end.ogg", t = 62/30},
			{s = path .. "wfoly_pi_mike1911_fast_reload_end.ogg", t = 62/30},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.8,
		DropMagAt = 0.65,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.95, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_mike1911_reload_empty_lift.ogg", t = 0/30},
			{s = path .. "wfoly_pi_mike1911_fast_reload_empty_lift.ogg", t = 5/30},
			{s = path .. "wfoly_pi_mike1911_reload_empty_magout_01.ogg", t = 7/30},
			{s = path .. "wfoly_pi_mike1911_fast_reload_empty_magout_01.ogg", t = 12/30},
			{s = path .. "wfoly_pi_mike1911_reload_empty_magin_v2_01.ogg", t = 52/30},
			{s = path .. "wfoly_pi_mike1911_fast_reload_empty_magin_01.ogg", t = 54/30},
			{s = path .. "wfoly_pi_mike1911_reload_empty_end.ogg", t = 60/30},
			{s = path .. "wfoly_pi_mike1911_reload_empty_end.ogg", t = 61/30},
			{s = path .. "wfoly_pi_mike1911_reload_empty_chamber_01.ogg", t = 73/30},
			{s = path .. "wfoly_pi_mike1911_reload_empty_chamber_01.ogg", t = 76/30},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.725,
		MagSwapTime = 3.5,
		DropMagAt = 0.6,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_mike1911_reload_empty_lift.ogg", t = 0/30},
			{s = path .. "wfoly_pi_mike1911_fast_reload_empty_lift.ogg", t = 4/30},
			{s = path .. "wfoly_pi_mike1911_reload_empty_magout_01.ogg", t = 6/30},
			{s = path .. "wfoly_pi_mike1911_fast_reload_empty_magout_01.ogg", t = 10/30},
			{s = path .. "wfoly_pi_mike1911_reload_empty_magin_v2_01.ogg", t = 40/30},
			{s = path .. "wfoly_pi_mike1911_reload_empty_magin_v2_01.ogg", t = 43/30},
			{s = path .. "wfoly_pi_mike1911_reload_empty_magin_v2_02.ogg", t = 45/30},
			{s = path .. "wfoly_pi_mike1911_fast_reload_magin_01.ogg", t = 45/30},
			{s = path .. "wfoly_pi_mike1911_reload_end.ogg", t = 54/30},
			{s = path .. "wfoly_pi_mike1911_fast_reload_end.ogg", t = 54/30},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.8,
		DropMagAt = 0.35,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.95, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_mike1911_reload_empty_lift.ogg", t = 0/30},
			{s = path .. "wfoly_pi_mike1911_fast_reload_empty_lift.ogg", t = 5/30},
			{s = path .. "wfoly_pi_mike1911_reload_empty_magout_01.ogg", t = 7/30},
			{s = path .. "wfoly_pi_mike1911_fast_reload_empty_magout_01.ogg", t = 12/30},
			{s = path .. "wfoly_pi_mike1911_reload_empty_magin_v2_01.ogg", t = 39/30},
			{s = path .. "wfoly_pi_mike1911_fast_reload_empty_magin_01.ogg", t = 41/30},
			{s = path .. "wfoly_pi_mike1911_reload_empty_chamber_01.ogg", t = 59/30},
			{s = path .. "wfoly_pi_mike1911_reload_empty_chamber_01.ogg", t = 62/30},
            {s = path .. "wfoly_pi_mike1911_reload_empty_end.ogg", t = 65/30},
			{s = path .. "wfoly_pi_mike1911_reload_empty_end.ogg", t = 66/30},
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
            {s = path .. "wfoly_pi_mike1911_first_raise_lift.ogg", t = 0/30},
            {s = path .. "wfoly_pi_mike1911_first_raise_slide_pull.ogg", t = 24/30},
			{s = path .. "wfoly_pi_mike1911_first_raise_slide_release.ogg", t = 25/30},
			{s = path .. "wfoly_pi_mike1911_first_raise_chamber_end.ogg", t = 28/30},
        },
    },
    ["draw"] = {
        Source = "draw",
		MinProgress = 0.3,
        FireASAP = true,
        EventTable = {
            {s = path .. "wfoly_pi_mike1911_raise.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            {s = path .. "wfoly_pi_mike1911_reload_empty_end.ogg", t = 0/30},
            {s = path .. "wfoly_pi_mike1911_fast_reload_end.ogg", t = 5/30},
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
            {s = path .. "wfoly_pi_mike1911_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_pi_mike1911_inspect_02.ogg", t = 36/30},
			{s = path .. "wfoly_pi_mike1911_inspect_03.ogg", t = 61/30},
			{s = path .. "wfoly_pi_mike1911_inspect_04.ogg", t = 112/30},
        },
    },
    ["bash"] = {
        Source = {"melee","melee2","melee3"},
    },
}

-------------------------- ATTACHMENTS

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


-- SWEP.Hook_Think	= ARC9.COD2019.BlendEmpty

SWEP.DefaultBodygroups = "00000000000000"

SWEP.AttachmentTableOverrides = {
    ["cod2019_m1911_slide_long"] = {
    Model = "models/weapons/cod2019/attachs/weapons/m1911/attachment_vm_pi_mike1911_barlong_akimbo.mdl",
    },
    ["cod2019_m1911_slide_short"] = {
    Model = "models/weapons/cod2019/attachs/weapons/m1911/attachment_vm_pi_mike1911_barshort_akimbo.mdl",
    },
	["cod2019_m1911_mag_10"] = {
    Model = "models/weapons/cod2019/attachs/weapons/m1911/attachment_vm_pi_mike1911_mmags_akimbo.mdl",
	ClipSizeOverride = 17
    },
    ["cod2019_m1911_mag_15"] = {
    Model = "models/weapons/cod2019/attachs/weapons/m1911/attachment_vm_pi_mike1911_xmags_akimbo.mdl",
	ClipSizeOverride = 22
    },
    ["cod2019_griptape_01"] = {
    Model = "models/weapons/cod2019/attachs/weapons/m1911/attachment_vm_pi_mike1911_pistolgrip_tape_akimbo.mdl",
    },
    ["cod2019_griptape_02"] = {
    Model = "models/weapons/cod2019/attachs/weapons/m1911/attachment_vm_pi_mike1911_pistolgrip_tape_akimbo.mdl",
    },
    ["cod2019_griptape_03"] = {
    Model = "models/weapons/cod2019/attachs/weapons/m1911/attachment_vm_pi_mike1911_pistolgrip_tape_akimbo.mdl",
    },
    ["cod2019_trigger_light"] = {
    Model = "models/weapons/cod2019/attachs/weapons/m1911/attachment_vm_pi_mike1911_trigcust_akimbo.mdl",
    },
    ["cod2019_trigger_heavy"] = {
    Model = "models/weapons/cod2019/attachs/weapons/m1911/attachment_vm_pi_mike1911_trigcust02_akimbo.mdl",
    },
    ["cod2019_trigger_match"] = {
    Model = "models/weapons/cod2019/attachs/weapons/m1911/attachment_vm_pi_mike1911_trigcust03_akimbo.mdl",
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
            {4,1},
            {6,1},
        },
    },
    ["sight_mount"] = {
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
		Pos = Vector(0, 0, 0),
		LaserCorrectionAngle = Angle(-1.9, 0, 0),
        DuplicateModels = {{ Bone = "tag_laser_attach", LaserCorrectionAngle = Angle(0, 0, -1.5),}},
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
    },
    { -- 8
        Bone = "tag_pistolgrip_attach_l",
		DuplicateModels = { { Bone = "tag_pistolgrip_attach" } },
    },
    { -- 9
        Bone = "tag_cosmetic_l",
        Pos = Vector(-2, 0, -2.5),
    },
	
	-- Unofficial
    { -- 10
        Category = "cod2019_m1911_akimbo_receiver",
        Bone = "tag_pistol_offset",
		Icon_Offset = Vector(0, 0, 1),
    },
	
	-- Cosmetics
    { -- 11
        Bone = "tag_cosmetic_l",
        Category = "cod2019_skins_m1911",
    },
    { -- 12
        Bone = "tag_cosmetic_l",
    },
    { -- 13
        StickerModel = "models/weapons/cod2019/stickers/akimbo_m1911_decal_a.mdl",
        Bone = "tag_cosmetic_l",
    },
    { -- 14
        StickerModel = "models/weapons/cod2019/stickers/akimbo_m1911_decal_b.mdl",
        Bone = "tag_cosmetic_l",
    },
    { -- 15
        StickerModel = "models/weapons/cod2019/stickers/akimbo_m1911_decal_c.mdl",
        Bone = "tag_cosmetic_l",
    },
    { -- 16
        StickerModel = "models/weapons/cod2019/stickers/akimbo_m1911_decal_d.mdl",
        Bone = "tag_cosmetic_l",
    },
    { -- 17
        Bone = "tag_cosmetic_l",
		DuplicateModels = { { Bone = "tag_cosmetic" } },
    },
    { -- 18
        Bone = "tag_barrel_attach_l",
		DuplicateModels = { { Bone = "tag_barrel_attach" } },
    },
    { -- 19
        Bone = "tag_cosmetic_l",
        Pos = Vector(-5, 0, 1.5),
		Hidden = true,
    },
}
