AddCSLuaFile()
if CLIENT then
    killicon.Add( "arc9_cod2019_ar_oden", "vgui/killicons/cod2019_ar_oden.png", Color(251, 85, 25, 255))
end

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_ar") or "Assault Rifles"

SWEP.PrintName = ARC9:GetPhrase("mw19_weapon_oden") or "Oden"

SWEP.Class = ARC9:GetPhrase("mw19_class_weapon_ar") or "Assault Rifle"
SWEP.Trivia = {
    [ ARC9:GetPhrase("mw19_country") ] = ARC9:GetPhrase("mw19_country_russia"),
    [ ARC9:GetPhrase("mw19_manufacturer") ] = ARC9:GetPhrase("mw19_manufacturer_vlk"),
    [ ARC9:GetPhrase("mw19_caliber") ] = "12.7×55mm STs-130",
    [ ARC9:GetPhrase("mw19_weight") ] = "6 kg",
    [ ARC9:GetPhrase("mw19_weight_projectile") ] = "509 gr",
    [ ARC9:GetPhrase("mw19_muzzle_energy") ] = "1,033 ft/s",
    [ ARC9:GetPhrase("mw19_muzzle_velocity") ] = "1,635 joules"
}

SWEP.Credits = {
    [ ARC9:GetPhrase("mw19_author") ] = "Twilight Sparkle/Firmeteran",
    [ ARC9:GetPhrase("mw19_assets") ] = "Activision/Infinity Ward"
}

SWEP.Description = ARC9:GetPhrase("mw19_weapon_oden_desc") or [[Fully automatic bullpup battle rifle maintains a slow cycle rate to help control hard hitting 12.7x55mm ammunition.]]

SWEP.ViewModel = "models/weapons/cod2019/c_rif_oden.mdl"
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_rif_oden.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-4.5, 3, -6.5),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-6, 4.5, -6),
    TPIKAng = Angle(-12.5, -1, 165),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 40 -- Damage done at point blank range
SWEP.DamageMin = 20 -- Damage done at maximum range

SWEP.DamageRand = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 2000 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 8000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 11 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.15

SWEP.ImpactForce = 11

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 2512 * 12
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.15

-------------------------- MAGAZINE

SWEP.Ammo = "ar2" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 20 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 10 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 410

SWEP.Firemodes = {
    {
        Mode = -1,
    },
    {
        Mode = 1,
		RPM = 500,
    },
    -- {
        -- Mode = 2,
		-- RunawayBurst = true,
		-- PostBurstDelay = 0.25
    -- },
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1.5

SWEP.RecoilSeed = 346598

SWEP.RecoilPatternDrift = 5

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1.5 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.1
SWEP.RecoilRandomSide = 0.1

SWEP.RecoilDissipationRate = 10 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 0.5 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 2
SWEP.RecoilKickDamping = 90

SWEP.RecoilMultCrouch = 0.8

SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.7

SWEP.RecoilPerShot = 1
SWEP.RecoilMax = 2

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilPunch = 3
SWEP.VisualRecoilUp = 0.1

SWEP.VisualRecoilMultSights = 0.5
SWEP.VisualRecoilPunchSights = 15
SWEP.VisualRecoilRollSights = 5
SWEP.VisualRecoilSideSights = 0
SWEP.VisualRecoilUpSights = 0

SWEP.VisualRecoilRoll = 5
SWEP.VisualRecoilSide = 0.3

SWEP.VisualRecoilDoingFunc = function(up, side, roll, punch, recamount)
    if recamount > 5 then
        recamount = 1.65 - math.Clamp((recamount - 2) / 3.5, 0, 1)
        
        local fakerandom = 1 + (((69+recamount%5*CurTime()%3)*2420)%4)/10 
        
        return up, side * fakerandom, roll, punch
    end

    return up, side, roll, punch
end

-------------------------- SPREAD

SWEP.Spread = 0.03

SWEP.SpreadAddRecoil = 0.04

SWEP.SpreadAddHipFire = 0
SWEP.SpreadAddMove = 0.03
SWEP.SpreadAddMidAir = 0.045
SWEP.SpreadAddCrouch = -0.03
SWEP.SpreadAddSights = -0.5
-- SWEP.SpreadAddSights = -(SWEP.Spread + (SWEP.SpreadAddMove / 2))

SWEP.SpreadMultRecoil = 1
SWEP.RecoilModifierCap = 3
SWEP.RecoilModifierCapMove = 0
SWEP.RecoilModifierCapSights = 0.05

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
SWEP.TracerColor = Color(255, 255, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-3, -3, -0.25),
    Ang = Angle(0.1, 0, -2),
    Magnification = 1.15,
    ViewModelFOV = 56,
	CrosshairInSights = false
}

SWEP.ViewModelFOVBase = 65

SWEP.SprintMidPoint = {
    Pos = Vector(0, -1, -0.15),
    Ang = Angle(0, 0, 0)
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.MovingMidPoint = {
    Pos = Vector(-0.5, -0.5, -0.5),
    Ang = Angle(0, 0, -5)
}

SWEP.MovingPos = Vector(-1, -0.8, -1)
SWEP.MovingAng = Angle(0, 0, -10)

SWEP.CrouchPos = Vector(-1, -0.5, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.SprintPos = Vector(1, 0, -1)
SWEP.SprintAng = Angle(0, 0, 25)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(15, 30, 3)
SWEP.CustomizeRotateAnchor = Vector(15, -2.25, -4)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeSnapshotPos = Vector(-1, 20, 5)
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeNoRotate = false

SWEP.PeekPos = Vector(-1.2, 4, -3)
SWEP.PeekAng = Angle(-0.3, 0.3, -45)

-------------------------- HoldTypes

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeHolstered = "passive"
SWEP.HoldTypeSights = "ar2"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "AC_muzzle_rifle_fp"
SWEP.AfterShotParticle = "AC_muzzle_smoke_barrel"
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 4
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_762_hr.mdl"
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 0.085
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_rif_oden_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_metal_concrete_01.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_metal_concrete_02.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_metal_concrete_03.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_metal_concrete_04.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_metal_concrete_05.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_metal_concrete_06.ogg",
}
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineTime = 0.4
SWEP.DropMagazineQCA = 3
SWEP.DropMagazineAng = Angle(0, -90, 0)

-------------------------- SOUNDS

local path = "weapons/cod2019/oden/"

SWEP.ShootSound = "COD2019.ASh12.Fire"
SWEP.ShootSoundIndoor = "COD2019.ASh12.Fire"

SWEP.ShootSoundSilenced = "COD2019.ASh12.Fire.S"
SWEP.ShootSoundSilencedIndoor = "COD2019.ASh12.Fire.S"

-- Non-Silenced
SWEP.LayerSound = "Layer_AR.Outside"
SWEP.DistantShootSound = "Distant_AR2.Outside"
-- Inside
SWEP.LayerSoundIndoor = "Layer_AR.Inside"
SWEP.DistantShootSoundIndoor = "Distant_AR.Inside"
---------------------------------------------------
-- Silenced
SWEP.LayerSoundSilenced = "Layer_ARSUP.Outside"
SWEP.DistantShootSoundSilenced = "Distant_AR_Sup.Outside"
-- Inside
SWEP.LayerSoundSilencedIndoor = "Layer_ARSUP.Inside"
SWEP.DistantShootSoundSilencedIndoor = "Distant_AR_Sup.Inside"
---------------------------------------------------

SWEP.EnterSightsSound = "weapons/cod2019/cr56amax/wfoly_ar_galima_ads_up.ogg"
SWEP.ExitSightsSound = "weapons/cod2019/cr56amax/wfoly_ar_galima_ads_down.ogg"

SWEP.BulletBones = {
    [1] = "j_bullet01",
    [2] = "j_bullet02",
	[3] = "j_bullet03",
	[4] = "j_bullet04",
}

SWEP.HideBones  = {
    [1] = "j_mag2",
}

SWEP.TriggerDelay = 0.025 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayCancellable = false
SWEP.TriggerDelayTime = 0.025 -- Time until weapon fires.

SWEP.TriggerDownSound = "weapons/cod2019/ak47/weap_akilo47_fire_first_plr_01.ogg"
SWEP.TriggerUpSound = "weapons/cod2019/ak47/weap_akilo47_disconnector_plr_01.ogg"

SWEP.Animations = {
	["enter_sights"] = {
		Source = "idle",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
	},
    ["fire"] = {
        Source = "shoot1",
    },
    ["reload"] = {
        Source = "reload_short",
		MinProgress = 0.9,
		RefillProgress = 0.725,
		FireASAP = true,
		MagSwapTime = 3.5,
        IKTimeLine = {
            { t = 0, lhik = 1,  rhik = 0 },
		},
        EventTable = {
			{s = path .. "wfoly_ar_asierra12_reload_rotate.ogg", t = 0/30},
			{s = path .. "wfoly_ar_asierra12_reload_magout_01.ogg", t = 10/30},
			{s = path .. "wfoly_ar_asierra12_reload_mvmnt.ogg", t = 39/30},
			{s = path .. "wfoly_ar_asierra12_reload_magin_01.ogg", t = 41/30},
			{s = path .. "wfoly_ar_asierra12_reload_end.ogg", t = 64/30},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.925,
		RefillProgress = 0.8,
		FireASAP = true,
		DropMagAt = 0.9,
        IKTimeLine = {
            { t = 0, lhik = 1,  rhik = 0 },
		},
        EventTable = {
			{s = path .. "wfoly_ar_asierra12_reload_empty_rotate.ogg", t = 0/30},
			{s = path .. "wfoly_ar_asierra12_reload_empty_magout_01.ogg", t = 11/30},
			{s = path .. "wfoly_ar_asierra12_reload_empty_magfly_01.ogg", t = 16/30},
			{s = path .. "wfoly_ar_asierra12_reload_empty_armmag.ogg", t = 25/30},
			{s = path .. "wfoly_ar_asierra12_reload_empty_magin_01.ogg", t = 47/30},
			{s = path .. "wfoly_ar_asierra12_reload_empty_armup.ogg", t = 62/30},
			{s = path .. "wfoly_ar_asierra12_reload_empty_charge_01.ogg", t = 73/30},
			{s = path .. "wfoly_ar_asierra12_reload_empty_end.ogg", t = 93/30},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.65,
		RefillProgress = 0.5,
		FireASAP = true,
		MagSwapTime = 1.5,
		DropMagAt = 0.45,
        IKTimeLine = {
            { t = 0, lhik = 1,  rhik = 0 },
		},
        EventTable = {
			{s = path .. "wfoly_ar_asierra12_reload_rotate.ogg", t = 0/30},
			{s = path .. "wfoly_ar_asierra12_reload_magout_01.ogg", t = 4/30},
			{s = path .. "wfoly_ar_asierra12_reload_mvmnt.ogg", t = 17/30},
			{s = path .. "wfoly_ar_asierra12_reload_magin_01.ogg", t = 20/30},
			{s = path .. "wfoly_ar_asierra12_reload_end.ogg", t = 37/30},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.9,
		RefillProgress = 0.725,
		FireASAP = true,
		MagSwapTime = 1.5,
		DropMagAt = 0.65,
        IKTimeLine = {
            { t = 0, lhik = 1,  rhik = 0 },
		},
        EventTable = {
			{s = path .. "wfoly_ar_asierra12_reload_rotate.ogg", t = 0/30},
			{s = path .. "wfoly_ar_asierra12_reload_magout_01.ogg", t = 4/30},
			{s = path .. "wfoly_ar_asierra12_reload_mvmnt.ogg", t = 17/30},
			{s = path .. "wfoly_ar_asierra12_reload_magin_01.ogg", t = 20/30},
			{s = path .. "wfoly_ar_asierra12_reload_empty_charge_01.ogg", t = 47/30},
			{s = path .. "wfoly_ar_asierra12_reload_end.ogg", t = 62/30},
        },
    },
    ["ready"] = {
        Source = "draw",
        IKTimeLine = {
            { t = 0, lhik = 1,  rhik = 0 },
        },
        EventTable = {
            {s = path .. "wfoly_ar_asierra12_raise_first_up.ogg", t = 0/30},
            {s = path .. "wfoly_ar_asierra12_raise_first_charge_01.ogg", t = 21/30},
			{s = path .. "wfoly_ar_asierra12_raise_first_end.ogg", t = 30/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
        IKTimeLine = {
            { t = 0, lhik = 1,  rhik = 0 },
        },
        EventTable = {
            {s = path .. "wfoly_ar_asierra12_raise.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.15,
                lhik = 0,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_ar_asierra12_drop.ogg", t = 0/30},
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
		Mult = 2.7,
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
		Mult = 2.7,
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
                t = 0.4,
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
            {s = path .. "wfoly_ar_asierra12_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_ar_asierra12_inspect_02.ogg", t = 38/30},
			{s = path .. "wfoly_ar_asierra12_inspect_03.ogg", t = 69/30},
			{s = path .. "wfoly_ar_asierra12_inspect_04.ogg", t = 95/30},
			{s = path .. "wfoly_ar_asierra12_inspect_05.ogg", t = 120/30},
        },
    },
    ["bash"] = {
        Source = {"melee","melee2","melee3"},
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
                t = 0.6,
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
    ["firemode_1"] = {
        Source = "semi_off",
        EventTable = {
            {s = path .. "weap_ar_asierra12_selector_off.ogg", t = 0/30},
        },
    },
    ["firemode_2"] = {
        Source = "semi_on",
        EventTable = {
            {s = path .. "weap_ar_asierra12_selector_on.ogg", t = 0/30},
        },
    },
    ["firemode_3"] = {
        Source = "semi_on",
        EventTable = {
            {s = path .. "weap_ar_asierra12_selector_on.ogg", t = 0/30},
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
                t = 0.85,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = "Viewmodel.SwitchSight", t = 0/30},
			{s = "switchsights/wpfoly_hybrid_toggle_on.ogg", t = 5/30},
        },
    },
    ["hybrid_off"] = {
        Source = "hybrid_off",
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
                t = 0.85,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = "Viewmodel.SwitchSight", t = 0/30},
			{s = "switchsights/wpfoly_hybrid_toggle_off.ogg", t = 5/30},
        },
    },
}

-------------------------- ATTACHMENTS

SWEP.Hook_TranslateAnimation = function (wep, anim)
    --local attached = self:GetElements()

    if anim == "reload" and wep:HasElement("perk_speedreload") then
        return "reload_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") then 
        return "reload_fast_empty"
    end
	
    wep.MWHybridSwitching = nil
    if anim == "switchsights" then
        if wep:HasElement("hybrid_scope") then
            wep.MWHybridSwitching = true
            return wep:GetMultiSight() == 1 and "hybrid_on" or "hybrid_off"
        else
            return false
        end
    end
end

-- SWEP.Hook_Think	= ARC9.COD2019.BlendSights2

SWEP.DefaultBodygroups = "00000000000000"

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(6, -0.65, 0.2),
	ModelAngleOffset = Angle(0, 0, 0),
	Scale = 0.9,
    },
    ["go_grip_angled"] = {
    ModelOffset = Vector(0, 0, 0),
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
            {4,0},
        },
    },
    ["scope_sniper"] = {
        Bodygroups = {
            {4,1},
        },
		AttPosMods = { [3] = { Pos = Vector(1.5, 0, -2), } }
    },
}

-- SWEP.Hook_ModifyBodygroups = function(wep, data)
    -- local model = data.model
    -- if wep:HasElement("stock_retract") then model:SetBodygroup(4,1) end
-- end

SWEP.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_barrel"),
        DefaultAttName = "Standard Barrel",
        Category = "cod2019_oden_barrel",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_muzzle"),
        DefaultAttName = "Standard Muzzle",
        Category = "cod2019_muzzle",
        Bone = "tag_silencer",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		InstalledElements = {"muzzle_none"},
		Scale = 1,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_optic"),
        Bone = "tag_holo",
        Pos = Vector(1.5, 0, -0.1),
        Ang = Angle(0, 0, 0),
        Category = {"cod2019_optic",},
        CorrectiveAng = Angle(0, 0, 0),
		--InstalledElements = {"sights"},
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_laser"),
        DefaultAttName = "Default",
        Category = "cod2019_tac",
        Bone = "tag_laser_attach",
        Pos = Vector(3.5, 1.2, -1.4),
        Ang = Angle(0, 0, -90),
		InstalledElements = {"rail_laser"},
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_underbarrel"),
        DefaultAttName = "Default",
        Category = "cod2019_grip",
        Bone = "tag_grip_attach",
        Pos = Vector(-2.5, 0, 0),
        Ang = Angle(0, 0, 180),
		Scale = 1,
		InstalledElements = {"rail_grip"},
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_ammo"),
        Bone = "j_mag1",
        Category = {"cod2019_ammo"},
        Pos = Vector(0, 0, -1.5),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_magazine"),
		Bone = "j_mag1",
        Category = {"cod2019_mag"},
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_stock"),
        DefaultAttName = "Standard Stock",
        Category = "cod2019_oden_stocks",
        Bone = "tag_stock_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		--InstalledElements = {"stock_none"},
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_perk"),
        Category = {"cod2019_perks","cod2019_perks_soh","cod2019_perks_burst_2"}
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_skins"),
        --Bone = "v_weapon.Clip",
        Category = "cod2019_skins_oden",
		CosmeticOnly = true,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_camouflage"),
        Category = {"universal_camo"},
        CosmeticOnly = true,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/rif_oden_decal_a.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/rif_oden_decal_b.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/rif_oden_decal_c.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/rif_oden_decal_d.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_charm"),
        Category = "charm",
        Bone = "tag_cosmetic",
        Pos = Vector(0.5, 0, 0),
        Ang = Angle(0, 0, 0),
		Scale = 1.5,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_stats"),
        Category = {"killcounter","killcounter2"},
        Bone = "tag_cosmetic",
        Pos = Vector(0, 0, -1),
        Ang = Angle(0, 0, 0),
		CosmeticOnly = true,
    },
}

SWEP.GripPoseParam = 4
SWEP.GripPoseParam2 = 0.5
SWEP.CodAngledGripPoseParam = 25
SWEP.CodStubbyTallGripPoseParam = 22
SWEP.CodStubbyGripPoseParam = 6