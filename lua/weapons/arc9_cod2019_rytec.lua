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
    Assets = "Activision/Infinity Ward"
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
    TPIKPos = Vector(-8, 6, -1),
    TPIKAng = Angle(-10, 0, 175),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 175 -- Damage done at point blank range
SWEP.DamageMin = 80 -- Damage done at maximum range
SWEP.DamageRand = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 1000 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 8000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 25 -- Units of wood that can be penetrated by this gun.

SWEP.ImpactForce = 15

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 2999 * 12
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.5

-------------------------- MAGAZINE

SWEP.Ammo = "sniperPenetratedRound" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 10 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 2 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 150

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

SWEP.RecoilKick = 3
SWEP.RecoilKickSights = 3

SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.6
SWEP.RecoilMultCrouch = 0.7

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilMultSights = 0.5
SWEP.VisualRecoilPunchSights = 25

SWEP.VisualRecoilPunch = 2
SWEP.VisualRecoilSpringMagnitude = 5
SWEP.VisualRecoilUp = 1
SWEP.VisualRecoilRoll = 50

SWEP.VisualRecoilDoingFunc = function(up, side, roll, punch, recamount)
    if recamount > 5 then
        recamount = 1.65 - math.Clamp((recamount - 2) / 3.5, 0, 1)
        
        local fakerandom = 1 + (((69+recamount%5*CurTime()%3)*2420)%4)/10 
        
        return up, side * fakerandom, roll, punch
    end

    return up, side, roll, punch
end

-------------------------- SPREAD

SWEP.Spread = 0.002

SWEP.SpreadAddRecoil = 0.0002 -- Applied per unit of recoil.

SWEP.SpreadMultMove = 4
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
    Pos = Vector(-3.53, 0, 0.8),
    Ang = Angle(0.5, 1.3, -2),
    Magnification = 1.19,
    ViewModelFOV = 56,
	CrosshairInSights = false
}

SWEP.SightMidPoint = { -- Where the gun should be at the middle of it's irons
    Pos = Vector(-3, 15, -5),
    Ang = Angle(0, 0, -45),
}

SWEP.ViewModelFOVBase = 65

SWEP.SprintMidPoint = {
    Pos = Vector(0, 0, 0),
    Ang = Angle(0, 0, 0)
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.MovingMidPoint = {
    Pos = Vector(0, -0.5, -0.5),
    Ang = Angle(0, 0, 0)
}

SWEP.MovingPos = Vector(-1, -0.8, -1)
SWEP.MovingAng = Angle(0, 0, -10)

SWEP.CrouchPos = Vector(-0.5, -0, -1)
SWEP.CrouchAng = Angle(0.5, 0.7, -5)

SWEP.SprintPos = Vector(0, 0, 0)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.CustomizeAng = Angle(90, 0, 1.5)
SWEP.CustomizePos = Vector(22, 35, 2)
SWEP.CustomizeRotateAnchor = Vector(22, -2.25, -4)
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
SWEP.TracerEffect = "cod2019_tracer_slow"
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 4
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_rytec.mdl"
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 1
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_snip_rytec_mag1.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_01.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_02.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_03.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_04.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_05.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_06.ogg",
}
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineTime = 2
SWEP.DropMagazineQCA = 3
SWEP.DropMagazineAng = Angle(0, -90, 0)

-------------------------- SOUNDS

local path = "weapons/cod2019/rytec/"

SWEP.ShootSound = "COD2019.Rytec.Fire"
SWEP.ShootSoundIndoor = "COD2019.Rytec.Fire"

SWEP.ShootSoundSilenced = "COD2019.Rytec.Fire.S"
SWEP.ShootSoundSilencedIndoor = "COD2019.Rytec.Fire.S"

-- Non-Silenced Outside
SWEP.LayerSound = "Layer_Sniper.Outside"
SWEP.DistantShootSound = "Distant_Sniper.Outside"
-- Inside
SWEP.LayerSoundIndoor = "Layer_Shotgun.Inside"
SWEP.DistantShootSoundIndoor = "Distant_Shotgun.Inside"
---------------------------------------------------
-- Silenced Outside
SWEP.LayerSoundSilenced = "Layer_Sniper.Outside"
SWEP.DistantShootSoundSilenced = "Distant_Sniper_Sup.Outside"
-- Inside
SWEP.LayerSoundSilencedIndoor = "Layer_ARSUP.Inside"
SWEP.DistantShootSoundSilencedIndoor = "Distant_DMR_Sup.Inside"
---------------------------------------------------

SWEP.EnterSightsSound = path .. "wfoly_sn_xmike109_ads_up.ogg"
SWEP.ExitSightsSound = path .. "wfoly_sn_xmike109_ads_down.ogg"

SWEP.TriggerDelay = 0.03 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayCancellable = false
SWEP.TriggerDelayTime = 0.03 -- Time until weapon fires.

SWEP.TriggerDownSound = "weapons/cod2019/svd/weap_delta_fire_first_plr_01.ogg"
SWEP.TriggerUpSound = "weapons/cod2019/svd/weap_delta_disconnector_plr_01.ogg"

SWEP.BulletBones = {
    [1] = "j_he_round_01",
    [2] = "j_he_round_02",
    [3] = "j_he_round_03",
}

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
    ["untrigger"] = {
        Source = "shoot1_settle",
    },
    ["reload"] = {
        Source = "reload_short",
		MinProgress = 0.8,
		DropMagAt = 2.2,
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
			{s = path .. "wfoly_sn_xmike109_reload_magin_01.ogg", t = 79/30},
			{s = path .. "wfoly_sn_xmike109_reload_magin_02.ogg", t = 92/30},
			{s = path .. "wfoly_sn_xmike109_reload_end.ogg", t = 104/30},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.8,
		DropMagAt = 1.13,
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
            {s = path .. "wfoly_sn_xmike109_reload_fast_up.ogg", t = 0/30},
			{s = path .. "wfoly_sn_xmike109_reload_fast_magout.ogg", t = 11/30},
			{s = path .. "wfoly_sn_xmike109_reload_fast_arm.ogg", t = 35/30},
			{s = path .. "wfoly_sn_xmike109_reload_fast_magin_01.ogg", t = 45/30},
			{s = path .. "wfoly_sn_xmike109_reload_fast_magin_02.ogg", t = 55/30},
			{s = path .. "wfoly_sn_xmike109_reload_fast_end.ogg", t = 57/30},
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
            {s = path .. "wfoly_sn_xmike109_reload_empty_magrelease.ogg", t = 28/30},
			{s = path .. "wfoly_sn_xmike109_reload_empty_magout.ogg", t = 44/30},
			{s = path .. "wfoly_sn_xmike109_reload_empty_arm.ogg", t = 58/30},
			{s = path .. "wfoly_sn_xmike109_reload_empty_magin_01.ogg", t = 81/30},
			{s = path .. "wfoly_sn_xmike109_reload_empty_magin_02.ogg", t = 94/30},
			{s = path .. "wfoly_sn_xmike109_reload_empty_rotate.ogg", t = 104/30},
			{s = path .. "wfoly_sn_xmike109_reload_empty_boltpull.ogg", t = 128/30},
			{s = path .. "wfoly_sn_xmike109_reload_empty_boltrelease.ogg", t = 142/30},
			{s = path .. "wfoly_sn_xmike109_reload_empty_end.ogg", t = 149/30},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.8,
		DropMagAt = 1.15,
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
            {s = path .. "wfoly_sn_xmike109_reload_empty_fast_up.ogg", t = 0/30},
            {s = path .. "wfoly_sn_xmike109_reload_empty_fast_grab.ogg", t = 10/30},
			{s = path .. "wfoly_sn_xmike109_reload_empty_fast_magout.ogg", t = 15/30},
			{s = path .. "wfoly_sn_xmike109_reload_empty_fast_arm.ogg", t = 35/30},
			{s = path .. "wfoly_sn_xmike109_reload_empty_fast_magin_01.ogg", t = 45/30},
			{s = path .. "wfoly_sn_xmike109_reload_empty_fast_magin_02.ogg", t = 55/30},
			{s = path .. "wfoly_sn_xmike109_reload_empty_fast_pullbolt.ogg", t = 83/30},
			{s = path .. "wfoly_sn_xmike109_reload_empty_fast_magrelease.ogg", t = 95/30},
			{s = path .. "wfoly_sn_xmike109_reload_empty_fast_end.ogg", t = 100/30},
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
            {s = path .. "wfoly_sn_xmike109_first_raise_bolt_pull.ogg", t = 18/30},
            {s = path .. "wfoly_sn_xmike109_first_raise_bolt_release.ogg", t = 28/30},
			{s = path .. "wfoly_sn_xmike109_first_raise_end.ogg", t = 36/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
        IKTimeLine = {
            {
                t = 0,
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
            {s = path .. "wfoly_sn_xmike109_first_raise_up.ogg", t = 0/30},
			{s = path .. "wfoly_sn_xmike109_first_raise_end.ogg", t = 10/30},
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
                t = 0.7,
                lhik = 0,
                rhik = 0
            },
        },
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
        Source = {"melee","melee2","melee3"},
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

-- SWEP.Hook_Think	= ARC9.COD2019.BlendSights2

SWEP.Hook_TranslateAnimation = function (wep, anim)
    --local attached = self:GetElements()

    if anim == "reload" and wep:HasElement("perk_speedreload") then
        return "reload_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") then 
        return "reload_fast_empty"
    end
end

SWEP.DefaultBodygroups = "0000000000000000000000"

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(19, 0, 0),
	ModelAngleOffset = Angle(0, 0, 0),
	Scale = 0.8,
    },
    ["csgo_cod2019_laser_01"] = {
    Sights = {
    {
        Pos = Vector(3, 20, -2),
        Ang = Angle(0.8, 1.3, -45),
        ViewModelFOV = 54,
        Magnification = 1.25,
        IgnoreExtra = false,
		KeepBaseIrons = true,
    },
    },
    },
    ["csgo_cod2019_laser_02"] = {
    Sights = {
    {
        Pos = Vector(3, 20, -2),
        Ang = Angle(0.8, 1.3, -45),
        ViewModelFOV = 54,
        Magnification = 1.25,
        IgnoreExtra = false,
		KeepBaseIrons = true,
    },
    },
    },
    ["csgo_cod2019_laser_03"] = {
    Sights = {
    {
        Pos = Vector(3, 20, -2),
        Ang = Angle(0.8, 1.3, -45),
        ViewModelFOV = 54,
        Magnification = 1.25,
        IgnoreExtra = false,
		KeepBaseIrons = true,
    },
    },
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
            {1,2},
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
    ["stock_none"] = {
        Bodygroups = {
            {4,1},
        },
    },
    ["rail_grip"] = {
        Bodygroups = {
            {6,1},
        },
    },
    ["bipod"] = {
        Bodygroups = {
            {6,2},
        },
    },
    ["rail_laser"] = {
        Bodygroups = {
            {7,1},
        },
    },
    ["sights_none"] = {
        Bodygroups = {
            {8,1},
        },
    },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model
    if wep:HasElement("bipod") then model:SetBodygroup(6,2) end
end

SWEP.Attachments = {
    {
        PrintName = "Barrels",
        DefaultAttName = "Standard Barrel",
        Category = {"cod2019_rytec_barrel"},
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Optics",
        Bone = "tag_scope",
        Pos = Vector(3, 0, -0.1),
        Ang = Angle(0, 0, 0),
        Category = {"cod2019_optic","cod2019_optic_rytec"},
        CorrectiveAng = Angle(1.5, 0.6, 0),
		--Installed = "cod2019_optic_scope_rytec",
        --Integral = "cod2019_optic_scope_rytec",
		InstalledElements = {"sights_none"},
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Category = "cod2019_muzzle",
        Bone = "tag_silencer",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		InstalledElements = {"muzzle_none"},
		Scale = 1.2,
    },
    {
        PrintName = "Tactical",
        DefaultAttName = "Default",
        Category = "cod2019_tac_rail",
        Bone = "tag_laser_attach",
        Pos = Vector(-0.7, -1.5, 0.5),
        Ang = Angle(0, 0, 0),
		--InstalledElements = {"rail_laser",},
		--LaserCorrectionAngle = Angle(0, 10, 0),
    },
    {
        PrintName = "Grips",
        DefaultAttName = "Default",
        Category = {"cod2019_grip"},
        Bone = "tag_attachments",
        Pos = Vector(18.7, 0.11, -1.2),
        Ang = Angle(0, 0, 180),
		Scale = 1,
		InstalledElements = {"rail_grip"},
    },
    {
        PrintName = "Bipod",
        DefaultAttName = "Default",
        Category = {"cod2019_rytec_bipod"},
        Bone = "tag_bipod_attach",
        Pos = Vector(0,0, 0),
        Ang = Angle(0, 0, 0),
		Scale = 1,
		InstalledElements = {"rail_grip"},
		-- ExcludeElements = {"grip_bottom"},
		Hidden = true,
        MergeSlots = {5},
    },
    {
        PrintName = "Stock",
        DefaultAttName = "Standard Stock",
        Category = {"cod2019_rytec_stock"},
        Bone = "tag_stock_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Ammo",
        Bone = "j_mag1",
        Category = {"cod2019_ammo","cod2019_ammo_sniper"},
        Pos = Vector(0, -1.5, -1.5),
        Ang = Angle(0, 0, 0),
		ExcludeElements = {"mag_ftac"},
		RejectAttachments = { 
		["cod2019_ammo_db"] = true,
		["cod2019_ammo_he"] = true 
		}
    },
    {
        PrintName = "Mag",
		Bone = "j_mag1",
        Category = {"cod2019_rytec_mag","cod2019_mag"},
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
SWEP.GripPoseParam2 = 0.1
SWEP.CodStubbyGripPoseParam = 7.9
SWEP.CodAngledGripPoseParam = 32.7
SWEP.CodStubbyTallGripPoseParam = 22