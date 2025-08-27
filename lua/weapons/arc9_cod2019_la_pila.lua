AddCSLuaFile()
if CLIENT then
    killicon.Add( "arc9_cod2019_proj_pila_default", "vgui/killicons/cod2019_la_pila.png", Color(251, 85, 25, 255))
end

SWEP.LoadoutImage = "entities/loadout/arc9_cod2019_la_pila.png"

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.NotForNPCs = false
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_launcher") or "Launchers"

SWEP.PrintName = ARC9:GetPhrase("mw19_weapon_pila") or "PILA"

SWEP.Class = ARC9:GetPhrase("mw19_class_weapon_launcher") or "Rocket Launcher"
SWEP.ARC9WeaponCategory = 6

SWEP.Trivia = {
    [ ARC9:GetPhrase("mw19_manufacturer") ] = ARC9:GetPhrase("mw19_manufacturer_fss"),
}

SWEP.Credits = {
    [ ARC9:GetPhrase("mw19_author") ] = "Twilight Sparkle/Palindrone/Firmeteran",
    [ ARC9:GetPhrase("mw19_assets") ] = "Activision/Infinity Ward"
}

SWEP.Description = ARC9:GetPhrase("mw19_weapon_pila_desc") or [[Portable infrared surface-to-air missile with a free-fire option. Self propelled missiles have a higher speed, and moderate explosive yield.]]

SWEP.ViewModel = "models/weapons/cod2019/c_eq_pila.mdl"
SWEP.WorldModel = "models/weapons/cod2019/w_eq_pila.mdl"
SWEP.DefaultBodygroups = "00000000"

SWEP.Slot = 3

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_eq_pila.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-13, 7, -7.5),
    Ang = Angle(-17, 1, 190),
    TPIKPos = Vector(-11, 6, -4),
    TPIKAng = Angle(-11, 0, 180),
    Scale = 1
}

SWEP.CantPeek = true
SWEP.NoAimAssist = true

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 100 -- Damage done at point blank range
SWEP.DamageMin = 100 -- Damage done at maximum range

SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 1000 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 10000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 0 -- Units of wood that can be penetrated by this gun.

SWEP.ImpactForce = 15

SWEP.ShootEnt = "arc9_cod2019_proj_pila_default" -- Set to an entity to launch it out of this weapon.
SWEP.ShootEntForce = 2700
SWEP.ShootEntityData = {} -- Extra data that can be given to a projectile. Sets SENT.WeaponDataLink with this table.

--SWEP.PhysBulletMuzzleVelocity = 960 * 39.37

SWEP.ShootPosOffset = Vector(7, -5, 0)
SWEP.ShootPosOffsetSights = Vector(7, -5, 0)

SWEP.PushBackForce = 5

-------------------------- MAGAZINE

SWEP.Ammo = "RPG_Round" -- what ammo type the gun uses

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 1 -- Self-explanatory.
SWEP.SupplyLimit = 12 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 12 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true
SWEP.MissileCrosshair = false

SWEP.CustomCrosshair = true
SWEP.CustomCrosshairMaterial = Material("hud/arc9_cod2019/shotguncrosshair")
SWEP.CustomCrosshairSize = 22

-------------------------- FIREMODES

SWEP.RPM = 300

SWEP.Firemodes = {
    {
        Mode = 1,
        PrintName = ARC9:GetPhrase("mw19_firemode_lockon") .. " / " .. ARC9:GetPhrase("mw19_firemode_unguided"),
        TopAttack = true
    },
    -- {
        -- Mode = 1,
        -- PrintName = "Dumb-fire",
        -- TopAttack = false,
    -- },
}

-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 3

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 3 -- Multiplier for vertical recoil

SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.3

SWEP.RecoilDissipationRate = 1 -- How much recoil dissipates per second.
SWEP.RecoilDissipationRateSights = 1
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 10 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 3
SWEP.RecoilKickSights = 3

SWEP.RecoilMultCrouch = 0.9

SWEP.RecoilPerShot = 1
SWEP.RecoilMax = 1

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilPunch = 5
SWEP.VisualRecoilUp = 5

SWEP.VisualRecoilMultSights = 0.5
SWEP.VisualRecoilPunchSights = 15
SWEP.VisualRecoilRollSights = 10
SWEP.VisualRecoilSideSights = 0
SWEP.VisualRecoilUpSights = 0.1

-------------------------- SPREAD

SWEP.Spread = 0

SWEP.SpreadAddRecoil = 0.01

SWEP.SpreadAddHipFire = 0
SWEP.SpreadAddMove = 0.005
SWEP.SpreadAddMidAir = 0.01
SWEP.SpreadAddCrouch = -0.03
SWEP.SpreadAddSights = -(SWEP.Spread)
-- SWEP.SpreadAddSights = -(SWEP.Spread + (SWEP.SpreadAddMove / 2))

SWEP.SpreadMultRecoil = 1
SWEP.RecoilModifierCap = 3
SWEP.RecoilModifierCapMove = 0
SWEP.RecoilModifierCapSights = 0

-------------------------- HANDLING

SWEP.FreeAimRadius = 0 -- In degrees, how much this gun can free aim in hip fire.
SWEP.Sway = 0 -- How much the gun sways.

SWEP.SpeedMult = 0.9 -- Walk speed multiplier
SWEP.SpeedMultSights = 0.75 -- When aiming
SWEP.SpeedMultShooting = 0.5

SWEP.AimDownSightsTime = 1.1 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.5 -- How long it takes to go from sprinting to being able to fire.

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.7

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 255, 155) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-0.425, -4.85, 2.365),
    Ang = Angle(0, 5, 20),
    Magnification = 1.25,
    ViewModelFOV = 56,
    CrosshairInSights = true
}

SWEP.SightMidPoint = { -- Where the gun should be at the middle of it's irons
    Pos = Vector(1.4, 9, 0),
    Ang = Angle(0.45, 0, 0.23),
}

--- RT Reticle ---
-- SWEP.RTScope = true
-- SWEP.RTScopeSubmatIndex = 1
-- SWEP.RTScopeFOV = 44 / 1.25 -- FOV multiplied by zoom level
-- SWEP.RTScopeReticle = Material("hud/arc9_cod2019/overlays/mk4_crosshair.png")
-- SWEP.RTScopeColorable = false
-- SWEP.RTScopeShadowIntensity = 7.5
-- SWEP.RTScopeNoShadow = false
-- SWEP.RTScopeBlackBox = false
-- SWEP.RTScopeBlackBoxShadow = false
-- SWEP.ScopeScreenRatio = 1
-- SWEP.RTScopeReticleScale = 1.1
----------------------------------------------------

SWEP.ViewModelFOVBase = 64

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

SWEP.MovingPos = Vector(-1.2, -0.8, -0.8)
SWEP.MovingAng = Angle(0, 0, -8)

SWEP.CrouchPos = Vector(-1, -0.5, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.SprintPos = Vector(1, 0, -0)
SWEP.SprintAng = Angle(-6, -6, 0)

SWEP.CustomizeAng = Angle(90, -25, 6)
SWEP.CustomizePos = Vector(3, 55, 6)
SWEP.CustomizeRotateAnchor = Vector(1, -4, -4)
SWEP.CustomizeSnapshotFOV = 65
SWEP.CustomizeNoRotate = false
SWEP.CustomizeSnapshotPos = Vector(0, 55, 6)

-------------------------- HoldTypes

SWEP.HoldType = "rpg"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeHolstered = "rpg"
SWEP.HoldTypeSights = "rpg"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"
SWEP.HoldTypeNPC = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "muzzleflash_m79"
SWEP.AfterShotParticle = "barrel_smoke_plume"
SWEP.AfterShotParticleDelay = -1
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 3
SWEP.CamQCA_Mult = 1

SWEP.NoShellEject = true

-------------------------- SOUNDS
SWEP.ShootVolume = 180

local path = "weapons/cod2019/pila/"

SWEP.ShootSound = "COD2019.Pila.Fire"
SWEP.ShootSoundIndoor = "COD2019.Pila.Fire"

-- Outside
SWEP.LayerSound = ""
SWEP.DistantShootSound = "Distant_PILA.Outside"
-- Inside
SWEP.LayerSoundIndoor = ""
SWEP.DistantShootSoundIndoor = "Distant_JOKR.Inside"
---------------------------------------------------

SWEP.DryFireSound = "weapons/cod2019/strela/weap_kgolf_fire_plr_fcg_01.ogg"
SWEP.FiremodeSound = "weapons/cod2019/strela/weap_kgolf_fire_plr_fcg_01.ogg"

SWEP.EnterSightsSound = path .. "weap_la_gromeo_ads_up.ogg"
SWEP.ExitSightsSound = path .. "weap_la_gromeo_ads_down.ogg"

SWEP.TriggerDelay = 0.02 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayTime = 0.02 -- Time until weapon fires.

SWEP.TriggerDownSound = ""
SWEP.TriggerUpSound = ""

SWEP.FiremodeSound = "weapons/cod2019/strela/weap_kgolf_fire_plr_fcg_01.ogg"

SWEP.BulletBones = {
    [1] = {"j_rocket","j_frontfin_1","j_frontfin_2","j_rearfin_1","j_rearfin_2","j_rearfin_3","j_rearfin_4"},
}

SWEP.HookP_BlockFire = function(self)
    return self:GetSightAmount() < 1
end

SWEP.Hook_GetShootEntData = function(self, data)
    local tracktime = math.Clamp((CurTime() - self.StartTrackTime) / self.LockTime, 0, 1)

    if tracktime >= 1 and self.TargetEntity and IsValid(self.TargetEntity) then
        data.Target = self.TargetEntity
    end
end

SWEP.Hook_HUDPaintBackground = function(self)
local TrackingIndicator = Material("VGUI/lockon.png")
    if self:GetSightAmount() >= 0.75 then
        if self.TargetEntity and IsValid(self.TargetEntity) and self:Clip1() > 0 then
             local toscreen = self.TargetEntity:WorldSpaceCenter():ToScreen()
             local tracktime = math.Clamp((CurTime() - self.StartTrackTime) / self.LockTime, 0, 2)
             
             if tracktime >= 1 then
                surface.SetDrawColor(255,0,0,200)
                surface.DrawLine(0, toscreen.y, ScrW(), toscreen.y)
                surface.DrawLine(toscreen.x, 0, toscreen.x, ScrH()) 
             else
                surface.SetMaterial(TrackingIndicator)
                surface.SetDrawColor(255,0,0,200)
                surface.DrawTexturedRect(toscreen.x - 30, toscreen.y - 30, 60, 60) 
             end
        end
    end
end

---- LOCK-IN FUNCTIONS

SWEP.NextBeepTime = 0
SWEP.TargetEntity = nil
SWEP.StartTrackTime = 0
SWEP.LockTime = 1.1

SWEP.Hook_Think2 = function(self)
    if self:GetSightAmount() >= 0.75 and self:Clip1() > 0 and self:GetCurrentFiremodeTable().TopAttack then

        if self.NextBeepTime > CurTime() then return end

        local tracktime = math.Clamp((CurTime() - self.StartTrackTime) / self.LockTime, 0, 2)

        -- if CLIENT then
        if tracktime >= 1 and self.TargetEntity then
            if CLIENT then
                self:EmitSound("weapons/cod2019/jokr/JOKR_ui_reticle_locked.ogg", 75, 100)
            end
            self.NextBeepTime = CurTime() + 0.15
        elseif tracktime >= 0 and self.TargetEntity then
            if CLIENT then
                self:EmitSound("weapons/cod2019/jokr/JOKR_ui_reticle_tracking.ogg", 75, 90)
            end
            self.NextBeepTime = CurTime() + 0.3
        else
            if CLIENT then
                self:EmitSound("", 75, 100)
            end
            self.NextBeepTime = CurTime() + 0.4
        end
        -- end

        local targets = ents.FindInCone(self:GetShootPos() + (self:GetShootDir():Forward() * 32), self:GetShootDir():Forward(), 30000, math.cos(math.rad(5)))

        local best = nil
        local targetscore = 0

        for _, ent in ipairs(targets) do
            if ent:IsWorld() then continue end
            if ent == self:GetOwner() then continue end
            if ent.IsProjectile then continue end
            if ent.UnTrackable then continue end
            if ent:GetClass():find("prop_") then continue end

            local aa, bb = ent:GetRotatedAABB(ent:OBBMins(), ent:OBBMaxs())
            local vol = math.abs(bb.x - aa.x) * math.abs(bb.y - aa.y) * math.abs(bb.z - aa.z)
			if vol <= 20000 then continue end

            local dot = (ent:GetPos() - self:GetShootPos()):GetNormalized():Dot(self:GetShootDir():Forward())
            local entscore = 1
            if ent:IsPlayer() then entscore = entscore + 5 end
            if ent:IsNPC() or ent:IsNextBot() then entscore = entscore + 2 end
            if ent:IsVehicle() or ent.LVS then entscore = entscore + 10 end
            if ent:Health() > 0 then entscore = entscore + 5 end

            entscore = entscore + dot * 5

            entscore = entscore + (ent.ARC9TrackingScore or 0)

            if entscore > targetscore then
                local tr = util.TraceLine({
                    start = self:GetShootPos(),
                    endpos = ent:WorldSpaceCenter(),
                    filter = self:GetOwner(),
                    mask = MASK_SHOT
                })
                if tr.Entity == ent then
                best = ent
                bestang = dot
                targetscore = entscore
                end
            end
        end

        if !best then self.TargetEntity = nil return end

        if !self.TargetEntity then
            self.StartTrackTime = CurTime()
        end

        self.TargetEntity = best
    else
        self.TargetEntity = nil
    end
end

function SWEP:PrimaryAttack()
    local clip = self:Clip1()
    weapons.Get(self.Base).PrimaryAttack(self)
    if (clip != self:Clip1()) then
        self:MakeEnvironmentDust(200)
    end
end

SWEP.Animations = {
    ["fire"] = {
        Source = "shoot1",
    },
    ["dryfire"] = {
        Source = "firemode",
		MinProgress = 0.01,
		FireASAP = true,
    },
    ["reload"] = {
        Source = "reload",
		MinProgress = 0.95,
		FireASAP = true,
		RefillProgress = 0.7,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 1, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_la_gromeo_reload_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_la_gromeo_reload_rotate.ogg", t = 22/30},
			{s = path .. "wfoly_plr_la_gromeo_reload_rockettip_01.ogg", t = 38/30},
			{s = path .. "wfoly_plr_la_gromeo_reload_grabrocket.ogg", t = 78/30},
			{s = path .. "wfoly_plr_la_gromeo_reload_load_01.ogg", t = 82/30},
			{s = path .. "wfoly_plr_la_gromeo_reload_flipup.ogg", t = 102/30},
			{s = path .. "wfoly_plr_la_gromeo_reload_arm.ogg", t = 128/30},
			{s = path .. "wfoly_plr_la_gromeo_reload_end.ogg", t = 152/30},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.95,
		FireASAP = true,
		RefillProgress = 0.65,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 1, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_la_gromeo_reload_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_la_gromeo_reload_rotate.ogg", t = 14/30},
			{s = path .. "wfoly_plr_la_gromeo_reload_rockettip_01.ogg", t = 30/30},
			{s = path .. "wfoly_plr_la_gromeo_reload_grabrocket.ogg", t = 36/30},
			{s = path .. "wfoly_plr_la_gromeo_reload_load_01.ogg", t = 40/30},
			{s = path .. "wfoly_plr_la_gromeo_reload_flipup.ogg", t = 60/30},
			{s = path .. "wfoly_plr_la_gromeo_reload_arm.ogg", t = 86/30},
			{s = path .. "wfoly_plr_la_gromeo_reload_end.ogg", t = 102/30},
        },
    },
    ["ready"] = {
        Source = "draw",
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_plr_la_gromeo_raise_first_up.ogg", t = 3/30},
			{s = path .. "wfoly_plr_la_gromeo_raise_first_settle.ogg", t = 18/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
		MinProgress = 0.4,
        FireASAP = true,
        EventTable = {
            {s = path .. "wfoly_plr_la_gromeo_raise_up.ogg", t = 7/30},
			{s = path .. "wfoly_plr_la_gromeo_raise_settle.ogg", t = 22/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            {s = path .. "wfoly_plr_la_gromeo_drop.ogg", t = 0/30},
            {s = path .. "wfoly_plr_la_gromeo_drop_mech.ogg", t = 5/30},
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
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
		Mult = 2,
    },
    ["super_sprint_idle"] = {
        Source = "super_sprint",
    },
    ["super_sprint_in"] = {
        Source = "super_sprint_in",
		Mult = 2,
    },
    ["super_sprint_out"] = {
        Source = "super_sprint_out",
		Mult = 2,
    },
    ["inspect"] = {
        Source = "lookat01",
		MinProgress = 0.9,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 1.1, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_la_gromeo_inspect_01.ogg", t = 1/30},
			{s = path .. "wfoly_la_gromeo_inspect_02.ogg", t = 36/30},
			{s = path .. "wfoly_la_gromeo_inspect_03.ogg", t = 87/30},
			{s = path .. "wfoly_la_gromeo_inspect_04.ogg", t = 140/30},
        },
    },
    ["bash"] = {
        Source = "melee_miss",
    },
    ["firemode_1"] = {
        Source = "firemode",
    },
    ["firemode_2"] = {
        Source = "firemode",
	},
}

-- SWEP.Hook_Think	= ARC9.COD2019.BlendEmpty

-------------------------- ATTACHMENTS

--- Fast & Tac. Sprint ---
local Translate_Fast = {
    ["reload"] = "reload_fast",
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
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(0, 0, 0),
	ModelAngleOffset = Angle(0, 0, 0),
	Scale = 0.8,
    },
    ["cod2019_perks_super_sprint"] = {
    SprintPos = Vector(0, 0, -0),
    SprintAng = Angle(-15, -6, 0)
    },
}

SWEP.AttachmentElements = {
    ["sights_scope"] = {
        Bodygroups = {
            {2,0},
        },
    },
    ["sights"] = {
        Bodygroups = {
            {2,1},
        },
    },
    ["grip_rail"] = {
        Bodygroups = {
            {1,1},
        },
    },
    ["laser_rail"] = {
        Bodygroups = {
            {3,1},
        },
    },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model
    if wep:HasElement("sights_scope") then model:SetBodygroup(2,0) end
end

SWEP.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_optic"),
		DefaultIcon = Material("arc9/def_att_icons/optic.png", "mips smooth"),
        Bone = "tag_scope",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Category = {"cod2019_pila_optic"},
        InstalledElements = {"sights"},
		Installed = "cod2019_optic_default_pila",
		Integral = "cod2019_optic_default_pila",
        CorrectiveAng = Angle(0, 0, 0),
		Hidden = true,
    },
    -- {
        -- PrintName = ARC9:GetPhrase("mw19_category_laser"),
        -- DefaultAttName = "Default",
        -- Category = "cod2019_tac",
        -- Bone = "tag_launcher_offset",
        -- Pos = Vector(13.5, -0.03, 3.1),
        -- Ang = Angle(0, 0, 180),
		-- InstalledElements = {"laser_rail"},
    -- },
    {
        PrintName = ARC9:GetPhrase("mw19_category_ammo"),
		DefaultIcon = Material("arc9/def_att_icons/ammotype.png", "mips smooth"),
        Bone = "j_rocket",
        Category = {"cod2019_pila_ammo"},
        Pos = Vector(5, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
		PrintName = ARC9:GetPhrase("mw19_category_perk"),
        Category = {"cod2019_perks","cod2019_perks_soh"},
        Bone = "tag_cosmetic",
        Pos = Vector(5, 5, -2),
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_skins"),
        --Bone = "v_weapon.Clip",
        Category = "cod2019_pila_skins",
        Bone = "tag_cosmetic",
        Pos = Vector(5, 5, 2),
		CosmeticOnly = true,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_camouflage"),
        Category = {"universal_camo"},
        Bone = "tag_cosmetic",
        Pos = Vector(3, 5, 2),
        CosmeticOnly = true,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/eq_pila_decal_a.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(1, 5, 2),
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/eq_pila_decal_b.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-1, 5, 2),
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/eq_pila_decal_c.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-3, 5, 2),
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/eq_pila_decal_d.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-5, 5, 2),
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/eq_pila_decal_e.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-7, 5, 2),
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_charm"),
        Category = {"charm", "killcounter"},
		RejectAttachments = { ["arc9_stat_proscreen"] = true },
		CosmeticOnly = true,
        Bone = "tag_launcher_offset",
        Pos = Vector(15.7, -2.2, -0.1),
        Ang = Angle(0, 0, 0),
		Scale = 2,
		Icon_Offset = Vector(-24.25, 2., 3.7),
    },
}

SWEP.GripPoseParam = 3
SWEP.GripPoseParam2 = 0.5