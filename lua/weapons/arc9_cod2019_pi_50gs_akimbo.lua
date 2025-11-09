AddCSLuaFile()
SWEP.Base = "arc9_cod2019_pi_50gs"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"

SWEP.PrintName = string.format( ARC9:GetPhrase("mw19_weapon_akimbo"), ARC9:GetPhrase("mw19_weapon_deagle") )

SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_handgun_akimbo") or "Akimbos"

SWEP.LoadoutImage = "entities/loadout/arc9_cod2019_pi_50gs_akimbo.png"

SWEP.ViewModel = "models/weapons/cod2019/c_akimbo_50gs.mdl"

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.TPIKforcelefthand = true
SWEP.TPIKNoSprintAnim = true 
SWEP.NotForNPCs = true -- Won't be given to NPCs.
SWEP.WorldModelMirror = "models/weapons/cod2019/c_akimbo_50gs.mdl"
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

SWEP.SprintAng = Angle(0, 0, -5)

SWEP.CustomizePos = Vector(19, 35, 4.5)
SWEP.CustomizeRotateAnchor = Vector(19, 0, -5)
SWEP.CustomizeSnapshotPos = Vector(0, 10, 0)

-------------------------- HoldTypes

SWEP.TracerEffect = "cod2019_tracer"
SWEP.HoldType = "duel"
SWEP.HoldTypeSprint = "duel"
SWEP.HoldTypeHolstered = "duel"
SWEP.HoldTypeSights = "duel"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_DUEL
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_DUEL
SWEP.NonTPIKAnimReload = ACT_HL2MP_GESTURE_RELOAD_DUEL
SWEP.AnimDraw = false

SWEP.Akimbo = true

-------------------------- EFFECTS

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

-------------------------- SOUNDS

local path = "weapons/cod2019/50gs/"

SWEP.BulletBones = {
    [1] = "j_bullet",
    [2] = "j_bullet_l",
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
		MinProgress = 0.675,
		FireASAP = false,
		MagSwapTime = 3.5,
		DropMagAt = 0.35,
        EventTable = {
			{s = path .. "wfoly_pi_decho_fast_reload_empty_raise.ogg", t = 0/30},
			{s = path .. "wfoly_pi_decho_reload_empty_mvmnt.ogg", t = 2/30},
			{s = path .. "wfoly_pi_decho_reload_magout_01.ogg", t = 7/30},
			{s = path .. "wfoly_pi_decho_fast_reload_empty_magout_01.ogg", t = 9/30},
			{s = path .. "wfoly_pi_decho_reload_empty_shake.ogg", t = 19/30},
			{s = path .. "wfoly_pi_decho_reload_end.ogg", t = 32/30},
			{s = path .. "wfoly_pi_decho_reload_magin_v2_01.ogg", t = 45/30},
			{s = path .. "wfoly_pi_decho_fast_reload_magin_v2_01.ogg", t = 46/30},
			{s = path .. "wfoly_pi_decho_reload_magin_v2_02.ogg", t = 50/30},
			{s = path .. "wfoly_pi_decho_fast_reload_magin_v2_02.ogg", t = 51/30},
			{s = path .. "wfoly_pi_decho_reload_end.ogg", t = 61/30},
			{s = path .. "wfoly_pi_decho_fast_reload_end.ogg", t = 63/30},
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
		MinProgress = 0.825,
		FireASAP = false,
		DropMagAt = 0.35,
        EventTable = {
			{s = path .. "wfoly_pi_decho_fast_reload_empty_raise.ogg", t = 1/30},
			{s = path .. "wfoly_pi_decho_reload_empty_mvmnt.ogg", t = 1/30},
			{s = path .. "wfoly_pi_decho_fast_reload_empty_magout_01.ogg", t = 7/30},
			{s = path .. "wfoly_pi_decho_reload_magout_01.ogg", t = 7/30},
			{s = path .. "wfoly_pi_decho_reload_empty_shake.ogg", t = 23/30},
			{s = path .. "wfoly_pi_decho_reload_empty_shake.ogg", t = 27/30},
			{s = path .. "wfoly_pi_decho_fast_reload_empty_magin_v2_01.ogg", t = 49/30},
			{s = path .. "wfoly_pi_decho_reload_empty_magin_v2_01.ogg", t = 50/30},
			{s = path .. "wfoly_pi_decho_fast_reload_empty_magin_v2_02.ogg", t = 52/30},
			{s = path .. "wfoly_pi_decho_reload_empty_magin_v2_02.ogg", t = 53/30},
			{s = path .. "wfoly_pi_decho_reload_empty_shake.ogg", t = 64/30},
			{s = path .. "wfoly_pi_decho_fast_reload_empty_end.ogg", t = 72/30},
			{s = path .. "wfoly_pi_decho_fast_reload_empty_slide_01.ogg", t = 76/30},
			{s = path .. "wfoly_pi_decho_reload_empty_charge_01.ogg", t = 76/30},
			{s = path .. "wfoly_pi_decho_reload_empty_end.ogg", t = 76/30},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.75,
		FireASAP = false,
		MagSwapTime = 3.5,
		DropMagAt = 0.35,
        EventTable = {
			{s = path .. "wfoly_pi_decho_fast_reload_empty_raise.ogg", t = 0/30},
			{s = path .. "wfoly_pi_decho_reload_empty_mvmnt.ogg", t = 2/30},
			{s = path .. "wfoly_pi_decho_reload_magout_01.ogg", t = 7/30},
			{s = path .. "wfoly_pi_decho_fast_reload_empty_magout_01.ogg", t = 9/30},
			{s = path .. "wfoly_pi_decho_reload_empty_shake.ogg", t = 19/30},
			{s = path .. "wfoly_pi_decho_reload_end.ogg", t = 32/30},
			{s = path .. "wfoly_pi_decho_reload_magin_v2_01.ogg", t = 47/30},
			{s = path .. "wfoly_pi_decho_fast_reload_magin_v2_01.ogg", t = 48/30},
			{s = path .. "wfoly_pi_decho_reload_magin_v2_02.ogg", t = 52/30},
			{s = path .. "wfoly_pi_decho_fast_reload_magin_v2_02.ogg", t = 53/30},
			{s = path .. "wfoly_pi_decho_reload_end.ogg", t = 59/30},
			{s = path .. "wfoly_pi_decho_fast_reload_end.ogg", t = 61/30},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.75,
		FireASAP = false,
		DropMagAt = 0.35,
        EventTable = {
			{s = path .. "wfoly_pi_decho_fast_reload_empty_raise.ogg", t = 1/30},
			{s = path .. "wfoly_pi_decho_reload_empty_mvmnt.ogg", t = 1/30},
			{s = path .. "wfoly_pi_decho_fast_reload_empty_magout_01.ogg", t = 7/30},
			{s = path .. "wfoly_pi_decho_reload_magout_01.ogg", t = 7/30},
			{s = path .. "wfoly_pi_decho_reload_empty_shake.ogg", t = 21/30},
			{s = path .. "wfoly_pi_decho_reload_empty_shake.ogg", t = 25/30},
			{s = path .. "wfoly_pi_decho_fast_reload_empty_magin_v2_01.ogg", t = 43/30},
			{s = path .. "wfoly_pi_decho_reload_empty_magin_v2_01.ogg", t = 44/30},
			{s = path .. "wfoly_pi_decho_fast_reload_empty_magin_v2_02.ogg", t = 46/30},
			{s = path .. "wfoly_pi_decho_reload_empty_magin_v2_02.ogg", t = 47/30},
			{s = path .. "wfoly_pi_decho_reload_empty_shake.ogg", t = 50/30},
			{s = path .. "wfoly_pi_decho_fast_reload_empty_end.ogg", t = 58/30},
			{s = path .. "wfoly_pi_decho_fast_reload_empty_slide_01.ogg", t = 62/30},
			{s = path .. "wfoly_pi_decho_reload_empty_charge_01.ogg", t = 62/30},
			{s = path .. "wfoly_pi_decho_reload_empty_end.ogg", t = 62/30},
        },
    },
    ["ready"] = {
        Source = "draw_first",
        EventTable = {
            {s = path .. "wfoly_pi_decho_first_raise_mvmnt.ogg", t = 0/30},
            {s = path .. "wfoly_pi_decho_first_raise_safetyoff.ogg", t = 12/30},
            {s = path .. "wfoly_pi_decho_first_raise_safetyoff.ogg", t = 14/30},
			{s = path .. "wfoly_pi_decho_first_raise_end.ogg", t = 21/30},
        },
    },
    ["draw"] = {
        Source = "draw",
		MinProgress = 0.2,
        FireASAP = true,
        EventTable = {
            {s = path .. "wfoly_pi_decho_fast_reload_end.ogg", t = 6/30},
            {s = path .. "wfoly_pi_decho_reload_end.ogg", t = 6/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            {s = path .. "wfoly_pi_decho_reload_end.ogg", t = 0/30},
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
        EventTable = {
            {s = path .. "wfoly_pi_decho_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_pi_decho_inspect_02.ogg", t = 61/30},
			{s = path .. "wfoly_pi_decho_inspect_03.ogg", t = 111/30},
        },
    },
    ["bash"] = {
        Source = {"melee","melee2","melee3"},
    },
}

-------------------------- ATTACHMENTS

-- SWEP.Hook_Think	= ARC9.COD2019.BlendEmpty

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

SWEP.AttachmentTableOverrides = {
    ["cod2019_50gs_slide_ext"] = {
    Model = "models/weapons/cod2019/attachs/weapons/50gs/attachment_vm_pi_decho_slide_ext02_akimbo.mdl"
    },
    ["cod2019_50gs_slide_ext2"] = {
    Model = "models/weapons/cod2019/attachs/weapons/50gs/attachment_vm_pi_decho_slide_ext_akimbo.mdl"
    },
	["cod2019_50gs_mag_10"] = {
    Model = "models/weapons/cod2019/attachs/weapons/50gs/attachment_vm_pi_decho_xmags_akimbo.mdl",
	ClipSizeOverride = 17
    },
    ["cod2019_50gs_mag_13"] = {
    Model = "models/weapons/cod2019/attachs/weapons/50gs/attachment_vm_pi_decho_xmags2_akimbo.mdl",
	ClipSizeOverride = 20
    },
    ["cod2019_50gs_grip_custom"] = {
    Model = "models/weapons/cod2019/attachs/weapons/50gs/attachment_vm_pi_decho_cust_grip_akimbo.mdl"
    },
    ["cod2019_trigger_light"] = {
    Model = "models/weapons/cod2019/attachs/weapons/50gs/attachment_vm_pi_decho_trigcust_akimbo.mdl",
    },
    ["cod2019_trigger_heavy"] = {
    Model = "models/weapons/cod2019/attachs/weapons/50gs/attachment_vm_pi_decho_trigcust02_akimbo.mdl",
    },
    ["cod2019_trigger_match"] = {
    Model = "models/weapons/cod2019/attachs/weapons/50gs/attachment_vm_pi_decho_trigcust03_akimbo.mdl",
    },
    ["cod2019_attach_compensator_pstl01"] = {
    Model = "models/weapons/cod2019/attachs/weapons/50gs/attachment_vm_pi_decho_comp.mdl",
    },
    ["cod2019_attach_muzzlebrake_pstl01"] = {
    Model = "models/weapons/cod2019/attachs/weapons/50gs/attachment_vm_pi_decho_muzzlebrake.mdl",
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
    ["trigger_none"] = {
        Bodygroups = {
            {8,1},
            {9,1},
        },
    },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model
	local attached = data.elements
    local camo = 0
    if attached["universal_camo"] then
        camo = 1
    end
    model:SetSkin(camo)
end

SWEP.Attachments = {
    { -- 1 Muzzle
		Bone = "tag_silencer_l",
        DuplicateModels = { { Bone = "tag_silencer" } },
    },
    { -- 2 Barrel
        Bone = "tag_barrel_attach_l",
        DuplicateModels = { { Bone = "tag_barrel_attach" } },
    },
    { -- 3 Laser
        Category = {"cod2019_tac_pistols"},
        Bone = "tag_laser_attach_l",
        DuplicateModels = { { Bone = "tag_laser_attach" } },
    },
    { -- 4 Optic
        Bone = "tag_reflex_l",
        DuplicateModels = { { Bone = "tag_reflex" } },
    },
    { -- 5 Trigger Action
        Bone = "j_trigger_l",
    },
    { -- 6 Magazine
		Bone = "tag_mag_attach_l",
        DuplicateModels = { { Bone = "tag_mag_attach" } },
    },
    { -- 7 Ammo
        Bone = "tag_mag_attach_l",
        DuplicateModels = { { Bone = "tag_mag_attach" } },
    },
    { -- 8 Rear Grip
        Bone = "tag_stock_attach_l",
        DuplicateModels = { { Bone = "tag_stock_attach" } },
    },
    { -- 9 Perk
        Bone = "tag_cosmetic_l",
    },

	-- Unofficial
    { -- 10 Receiver
        Category = "cod2019_50gs_akimbo_receiver",
        Bone = "tag_pistol_offset_l",
    },
	
	-- Cosmetics
    { -- 11 Skins
        Bone = "tag_cosmetic_l",
    },
    { -- 12 Camo
        Category = {"universal_camo"},
        Bone = "tag_cosmetic_l",
    },
    { -- 13 Sticker
        StickerModel = "models/weapons/cod2019/stickers/akimbo_50gs_decal_a.mdl",
        Bone = "tag_cosmetic_l",
    },
    { -- 14 Sticker
        StickerModel = "models/weapons/cod2019/stickers/akimbo_50gs_decal_b.mdl",
        Bone = "tag_cosmetic_l",
    },
    { -- 15 Sticker
        StickerModel = "models/weapons/cod2019/stickers/akimbo_50gs_decal_c.mdl",
        Bone = "tag_cosmetic_l",
    },
    { -- 16 Sticker
        StickerModel = "models/weapons/cod2019/stickers/akimbo_50gs_decal_d.mdl",
        Bone = "tag_cosmetic_l",
    },
    { -- 17 Charm
        Bone = "tag_cosmetic_l",
        DuplicateModels = { { Bone = "tag_cosmetic" } },
    },
    { -- 18 Stats
        Bone = "tag_cosmetic_l",
        DuplicateModels = { { Bone = "tag_cosmetic" } },
    },
}
