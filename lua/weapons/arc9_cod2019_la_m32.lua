AddCSLuaFile()
if CLIENT then
    killicon.Add( "arc9_cod2019_proj_40mm_flash", "vgui/killicons/cod2019_la_m32.png", Color(251, 85, 25, 255))
    killicon.Add( "arc9_cod2019_proj_40mm_gas", "vgui/killicons/cod2019_la_m32.png", Color(251, 85, 25, 255))
    killicon.Add( "arc9_cod2019_proj_40mm_hel", "vgui/killicons/cod2019_la_m32.png", Color(251, 85, 25, 255))
    killicon.Add( "arc9_cod2019_proj_40mm_inc", "vgui/killicons/cod2019_la_m32.png", Color(251, 85, 25, 255))
    killicon.Add( "arc9_cod2019_proj_40mm_smoke", "vgui/killicons/cod2019_la_m32.png", Color(251, 85, 25, 255))
end

SWEP.LoadoutImage = "entities/loadout/arc9_cod2019_la_m32.png"

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.NotForNPCs = false
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_launcher") or "Launchers"
SWEP.ARC9WeaponCategory = 6

SWEP.PrintName = ARC9:GetPhrase("mw19_weapon_mgl") or "MGL-32"

SWEP.Class = ARC9:GetPhrase("mw19_class_weapon_launcher") or "Grenade Launcher"

SWEP.Credits = {
    [ ARC9:GetPhrase("mw19_author") ] = "Twilight Sparkle/Firmeteran",
    [ ARC9:GetPhrase("mw19_assets") ] = "Activision/Infinity Ward"
}

SWEP.Description = ARC9:GetPhrase("mw19_weapon_mgl_desc") or [[6 round semi-automatic high-explosive grenade launcher.]]

SWEP.ViewModel = "models/weapons/cod2019/c_eq_m32.mdl"
SWEP.WorldModel = "models/weapons/cod2019/w_eq_m32.mdl"
SWEP.DefaultBodygroups = "00000000000"

SWEP.Slot = 3

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_eq_m32.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-3.5, 4.5, -8),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-6, 4.5, -2.5),
    TPIKAng = Angle(-12.5, -1, 165),
    Scale = 1,

    TPIKPosSightOffset = Vector(0, 2, -4.25),
}

SWEP.CantPeek = true
SWEP.NoAimAssist = true

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 36 -- Damage done at point blank range
SWEP.DamageMin = 6 -- Damage done at maximum range

SWEP.Num = 1

SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 1700 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 4200 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 10 -- Units of wood that can be penetrated by this gun.

SWEP.ImpactForce = 15

SWEP.ShootEnt = "arc9_cod2019_proj_40mm_hel" -- Set to an entity to launch it out of this weapon.
SWEP.ShootEntForce = 2500
SWEP.ShootEntityData = {} -- Extra data that can be given to a projectile. Sets SENT.WeaponDataLink with this table.

SWEP.PhysBulletMuzzleVelocity = 960 * 39.37

SWEP.ShootPosOffset = Vector(7, 0, -5)
SWEP.ShootPosOffsetSights = Vector(0, 0, -5)

-------------------------- MAGAZINE

SWEP.Ammo = "SMG1_Grenade" -- what ammo type the gun uses

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 6 -- Self-explanatory.
SWEP.SupplyLimit = 10 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 10 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

SWEP.CustomCrosshair = false
SWEP.CustomCrosshairMaterial = Material("hud/arc9_cod2019/shotguncrosshair")
SWEP.CustomCrosshairSize = 22

-------------------------- FIREMODES

SWEP.RPM = 125

SWEP.Firemodes = {
    {
        Mode = 1,
        LockAttack = false
    },
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

SWEP.RecoilDissipationRate = 5 -- How much recoil dissipates per second.
SWEP.RecoilDissipationRateSights = 50
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 10 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 1.5

SWEP.RecoilMultCrouch = 0.8
SWEP.RecoilMultMove = 1.25

SWEP.RecoilPerShot = 0.5
SWEP.RecoilMax = 1

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilMultSights = 0.4
SWEP.VisualRecoilPunchSights = 15
SWEP.VisualRecoilRollSights = 5
SWEP.VisualRecoilSideSights = 0
SWEP.VisualRecoilUpSights = 0

SWEP.VisualRecoilPunch = 3
SWEP.VisualRecoilUp = 0.5
SWEP.VisualRecoilRoll = 5
SWEP.VisualRecoilSide = 0.3

-------------------------- SPREAD

SWEP.Spread = 0.0325

SWEP.SpreadAddRecoil = 0.04

SWEP.SpreadAddHipFire = 0
SWEP.SpreadAddMove = 0.02
SWEP.SpreadAddMidAir = 0.045
SWEP.SpreadAddCrouch = -0.03
SWEP.SpreadAddSights = -(SWEP.Spread * 2.75)
-- SWEP.SpreadAddSights = -(SWEP.Spread + (SWEP.SpreadAddMove / 2))

SWEP.SpreadMultRecoil = 1
SWEP.RecoilModifierCap = 3
SWEP.RecoilModifierCapMove = 0
SWEP.RecoilModifierCapSights = 0

-------------------------- HANDLING

SWEP.FreeAimRadius = 0 -- In degrees, how much this gun can free aim in hip fire.
SWEP.Sway = 0 -- How much the gun sways.

SWEP.SpeedMult = 0.9 -- Walk speed multiplier
SWEP.SpeedMultSights = 0.8 -- When aiming
SWEP.SpeedMultShooting = 0.8

SWEP.AimDownSightsTime = 0.5 -- How long it takes to go from hip fire to aiming down sights.
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
    Pos = Vector(-3.55, -5, 1.8),
    Ang = Angle(0, -1.5, 0),
    Magnification = 1.1,
    ViewModelFOV = 56,
    CrosshairInSights = true,
}

SWEP.ViewModelFOVBase = 64

SWEP.SprintMidPoint = {
    Pos = Vector(0, -1, 0),
    Ang = Angle(-2.5, 0, 2.5)
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
SWEP.CustomizePos = Vector(11, 40, 5)
SWEP.CustomizeRotateAnchor = Vector(11, -3.5, -5)
SWEP.CustomizeSnapshotFOV = 65
SWEP.CustomizeNoRotate = false
SWEP.CustomizeSnapshotPos = Vector(0, 20, 1)

SWEP.PeekPos = Vector(-1.5, 3, -4.5)
SWEP.PeekAng = Angle(2, 2, -45)

-------------------------- HoldTypes

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeHolstered = "passive"
SWEP.HoldTypeSights = "ar2"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"
SWEP.HoldTypeNPC = "ar2"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "muzzleflash_m79"
SWEP.AfterShotParticle = "barrel_smoke_plume"
SWEP.TracerEffect = "cod2019_tracer_slow"
SWEP.AfterShotParticleDelay = -1
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 3
SWEP.CamQCA_Mult = 1

SWEP.NoShellEject = true

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false

SWEP.DropMagazineModel = "models/weapons/cod2019/shared/shell_m32.mdl"
SWEP.DropMagazineSounds = {"weapons/cod2019/m32/40mm_shell_02.ogg"}
SWEP.DropMagazineAmount = 6
SWEP.DropMagazineTime = 1
SWEP.DropMagazineQCA = 4

-------------------------- SOUNDS

local path = "weapons/cod2019/m32/"

SWEP.ShootSound = "COD2019.M32.Fire"
SWEP.ShootSoundIndoor = "COD2019.M32.Fire"

-- Non-Silenced
SWEP.LayerSound = ""
SWEP.DistantShootSound = "Distant_Launcher.Outside"
-- Inside
SWEP.LayerSoundIndoor = ""
SWEP.DistantShootSoundIndoor = "Distant_Launcher.Inside"

SWEP.EnterSightsSound = path .. "wfoly_la_mike32_ads_up.ogg"
SWEP.ExitSightsSound = path .. "wfoly_la_mike32_ads_down.ogg"

SWEP.HideBones  = {
    [1] = "j_speed_loader",
    [2] = "j_speed_loader_cylinder",
    [3] = "j_speed_loader_nade00",
    [4] = "j_speed_loader_nade01",
    [5] = "j_speed_loader_nade02",
    [6] = "j_speed_loader_nade03",
    [7] = "j_speed_loader_nade04",
    [8] = "j_speed_loader_nade05"
}

SWEP.ReloadHideBoneTables = {
    [1] = {
        "j_speed_loader",
        "j_speed_loader_cylinder",
        "j_speed_loader_nade00",
        "j_speed_loader_nade01",
        "j_speed_loader_nade02",
        "j_speed_loader_nade03",
        "j_speed_loader_nade04",
        "j_speed_loader_nade05"
    },
    [2] = {
        "j_speed_loader",
        "j_speed_loader_cylinder",
        "j_speed_loader_nade00",
        "j_speed_loader_nade01",
        "j_speed_loader_nade02",
        "j_speed_loader_nade03",
        "j_speed_loader_nade04",
        "j_speed_loader_nade05",
        "j_grenade_01",
        "j_grenade_02",
        "j_grenade_03",
        "j_grenade_04",
        "j_grenade_05",
        "j_grenade_06"
    },
    [3] = {
        "j_grenade_01",
        "j_grenade_02",
        "j_grenade_03",
        "j_grenade_04",
        "j_grenade_05",
        "j_grenade_06"
    },
    [4] = {
        "j_speed_loader_nade00",
        "j_speed_loader_nade01",
        "j_speed_loader_nade02",
        "j_speed_loader_nade03",
        "j_speed_loader_nade04",
        "j_speed_loader_nade05"
    }
}

SWEP.TriggerDelay = 0.02 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayCancellable = false
SWEP.TriggerDelayTime = 0.02 -- Time until weapon fires.

SWEP.TriggerDownSound = "COD2019.M32.Trigger"
SWEP.TriggerUpSound = "COD2019.M32.UnTrigger"

-------------------------- EXTRA
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
    if self:GetSightAmount() >= 0.75 and self:Clip1() > 0 and self:GetCurrentFiremodeTable().LockAttack then

        if self.NextBeepTime > CurTime() then return end

        local tracktime = math.Clamp((CurTime() - self.StartTrackTime) / self.LockTime, 0, 2)

        -- if CLIENT then
        if tracktime >= 1 and self.TargetEntity then
            if CLIENT then
                self:EmitSound("weapons/cod2019/shared/Seeker_LockOn.ogg", 75, 100)
            end
            self.NextBeepTime = CurTime() + 0.3
        elseif tracktime >= 0 and self.TargetEntity then
            if CLIENT then
                self:EmitSound("", 75, 100)
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

SWEP.Animations = {
    ["fire"] = {
        Source = "shoot1",
    },
    ["reload"] = {
        Source = "reload",
        MinProgress = 0.95,
        FireASAP = true,
        RefillProgress = 0.85,
        DropMagAt = 1,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 1, rhik = 0 },
            { t = 0.15, lhik = 0, rhik = 0 },
            { t = 0.175, lhik = 0, rhik = 0 },
            { t = 0.275, lhik = 1, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.75, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_plr_la_mike32_reload_start.ogg", t = 0/30},
            {s = path .. "wfoly_plr_la_mike32_reload_open_01.ogg", t = 0/30},
            {s = path .. "wfoly_plr_la_mike32_reload_smack.ogg", t = 26/30},
            {s = path .. "wfoly_plr_la_mike32_reload_shellsout_01.ogg", t = 27/30},
            {s = path .. "wfoly_plr_la_mike32_reload_grab.ogg", t = 34/30},
            {s = path .. "wfoly_plr_la_mike32_reload_rattle.ogg", t = 48/30},
            {s = path .. "wfoly_plr_la_mike32_reload_armup.ogg", t = 75/30},
            {s = path .. "wfoly_plr_la_mike32_reload_shellsin_01.ogg", t = 76/30},
            {s = path .. "wfoly_plr_la_mike32_reload_cylinder_01.ogg", t = 93/30},
            {s = path .. "wfoly_plr_la_mike32_reload_armdown.ogg", t = 121/30},
            {s = path .. "wfoly_plr_la_mike32_reload_grab2.ogg", t = 134/30},
            {s = path .. "wfoly_plr_la_mike32_reload_close_01.ogg", t = 146/30},
            {s = path .. "wfoly_plr_la_mike32_reload_end.ogg", t = 149/30},
            {hide = 1, t = 0},
            {hide = 2, t = 1},
            {hide = 3, t = 2.4},
            {hide = 0, t = 3.05},
            {hide = 4, t = 3.75},
            {hide = 1, t = 4.3},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
        MinProgress = 0.95,
        FireASAP = true,
        RefillProgress = 0.85,
        DropMagAt = 0.7,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 1, rhik = 0 },
            { t = 0.15, lhik = 0, rhik = 0 },
            { t = 0.175, lhik = 0, rhik = 0 },
            { t = 0.275, lhik = 1, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.75, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_plr_la_mike32_reload_start.ogg", t = 0/30},
            {s = path .. "wfoly_plr_la_mike32_reload_open_01.ogg", t = 0/30},
            {s = path .. "wfoly_plr_la_mike32_reload_smack.ogg", t = 20/30},
            {s = path .. "wfoly_plr_la_mike32_reload_shellsout_01.ogg", t = 21/30},
            {s = path .. "wfoly_plr_la_mike32_reload_grab.ogg", t = 30/30},
            {s = path .. "wfoly_plr_la_mike32_reload_rattle.ogg", t = 45/30},
            {s = path .. "wfoly_plr_la_mike32_reload_armup.ogg", t = 52/30},
            {s = path .. "wfoly_plr_la_mike32_reload_shellsin_01.ogg", t = 66/30},
            {s = path .. "wfoly_plr_la_mike32_reload_cylinder_01.ogg", t = 72/30},
            {s = path .. "wfoly_plr_la_mike32_reload_armdown.ogg", t = 95/30},
            {s = path .. "wfoly_plr_la_mike32_reload_grab2.ogg", t = 103/30},
            {s = path .. "wfoly_plr_la_mike32_reload_close_01.ogg", t = 117/30},
            {s = path .. "wfoly_plr_la_mike32_reload_end.ogg", t = 119/30},
            {hide = 1, t = 0},
            {hide = 2, t = 0.7},
            {hide = 3, t = 2},
            {hide = 0, t = 2.33},
            {hide = 4, t = 2.9},
            {hide = 1, t = 3.45},
        },
    },
    ["ready"] = {
        Source = "draw",
        MinProgress = 0.85,
        FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_plr_la_mike32_raise_first_up.ogg", t = 0/30},
            {s = path .. "wfoly_plr_la_mike32_raise_first_close_01.ogg", t = 11/30},
            {s = path .. "wfoly_plr_la_mike32_raise_first_settle.ogg", t = 26/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
        MinProgress = 0.4,
        FireASAP = true,
        EventTable = {
            {s = path .. "wfoly_plr_la_mike32_raise_up.ogg", t = 0/30},
            {s = path .. "wfoly_plr_la_mike32_raise_settle.ogg", t = 15/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            {s = path .. "wfoly_plr_la_mike32_raise_up.ogg", t = 0/30},
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
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 1 },
        },
    },
    ["super_sprint_in"] = {
        Source = "super_sprint_in",
        Mult = 2,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.35, lhik = 1, rhik = 1 },
            { t = 1, lhik = 0, rhik = 1 },
        },
    },
    ["super_sprint_out"] = {
        Source = "super_sprint_out",
        Mult = 2.5,
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 1 },
            { t = 0.1, lhik = 0, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        },
    },
    ["inspect"] = {
        Source = "lookat01",
        MinProgress = 0.9,
        FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.05, lhik = 1, rhik = 0 },
            { t = 0.125, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_la_mike32_inspect_01.ogg", t = 5/30},
            {s = path .. "wfoly_la_mike32_inspect_02.ogg", t = 62/30},
            {s = path .. "wfoly_la_mike32_inspect_03.ogg", t = 142/30},
        },
    },
    ["bash"] = {
        Source = {"melee","melee2","melee3"},
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.6, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 1, rhik = 1 },
        },
    },
}

--SWEP.Hook_Think	= ARC9.CSGO.BlendCyl

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
    ModelOffset = Vector(5.5, -0.05, -1.65),
    ModelAngleOffset = Angle(0, 0, -50),
    Scale = 0.8,
    },
    ["csgo_p90_hold"] = {
    ModelOffset = Vector(-5, -2.5, 0.2),
    ModelAngleOffset = Angle(5, -0, 170),
    },
}

SWEP.AttachmentElements = {
    ["body_none"] = {
        Bodygroups = {
            {0,1},
        },
    },
    ["stock_none"] = {
        Bodygroups = {
            {2,1},
        },
    },
    ["stock_retracted"] = {
    AttPosMods = { [5] = { Pos = Vector(-6, 0, 1.82), } }
    },
    ["grip_none"] = {
        Bodygroups = {
            {1,1},
        },
    },
    ["nades_rock"] = {
        Bodygroups = {
            {3,1},
        },
    },
    ["nades_none"] = {
        Bodygroups = {
            {3,2},
        },
    },
    ["grip_angled"] = {
    AttPosMods = { [3] = { Pos = Vector(9, 3.9, 0), } }
    }
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model
    local attached = data.elements
    if wep:HasElement("stock_retract") then
    model:SetBodygroup(3,1)
    end

    local camo = 0
    if attached["universal_camo"] then
        camo = 1
    end
    model:SetSkin(camo)
end

SWEP.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_optic"),
        DefaultIcon = Material("arc9/def_att_icons/optic.png", "mips smooth"),
        Bone = "tag_scope",
        Pos = Vector(1.3, 0, -0.1),
        Ang = Angle(0, 0, 0),
        Category = {"cod2019_optic","cod2019_optic_m32"},
        CorrectiveAng = Angle(0, 0, 0),
        Installed = "cod2019_optic_default_m32",
        -- Integral = "cod2019_optic_default_m32",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_laser"),
        DefaultAttName = "Default",
        Category = "cod2019_tac",
        Bone = "j_forend",
        Pos = Vector(8.5, 2.1, 1.65),
        Ang = Angle(0, 0, 180),
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_underbarrel"),
        DefaultAttName = "Default",
        Category = "cod2019_grip",
        Bone = "j_forend",
        Pos = Vector(9.55, 3.85, 0),
        Ang = Angle(0, 0, 90),
        Scale = 1,
        InstalledElements = {"grip_none"},
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_stock"),
        DefaultIcon = Material("arc9/def_att_icons/stock_ak.png", "mips smooth"),
        DefaultAttName = "Standard Stock",
        Category = "cod2019_stocks",
        Bone = "tag_launcher_offset",
        Pos = Vector(-8, 0, 1.83),
        Ang = Angle(0, 0, 0),
        InstalledElements = {"stock_none"},
        Scale = 1.05,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_ammo"),
        DefaultIcon = Material("arc9/def_att_icons/ammotype.png", "mips smooth"),
        Bone = "tag_mag_attach",
        Category = {"cod2019_ammo_gl"},
        Pos = Vector(-4.5, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_perk"),
        Category = {"cod2019_perks","cod2019_perks_soh","cod2019_perks_ss"},
        Bone = "tag_mag_attach",
        Pos = Vector(-8, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_skins"),
        --Bone = "v_weapon.Clip",
        Category = "cod2019_m32_skins",
        Bone = "tag_cosmetic",
        Pos = Vector(5, 0, 3),
        CosmeticOnly = true,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_camouflage"),
        Category = {"universal_camo"},
        Bone = "tag_cosmetic",
        Pos = Vector(3, 0, 3),
        CosmeticOnly = true,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/eq_m32_decal_a.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(1, 0, 3),
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/eq_m32_decal_b.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(1, 0, 3),
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/eq_m32_decal_c.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-1, 0, 3),
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/eq_m32_decal_d.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-3, 0, 3),
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_charm"),
        Category = {"killcounter"},
        CosmeticOnly = true,
        Bone = "j_forend",
        Pos = Vector(8.35, 2.04, -2.7),
        Ang = Angle(0, 0, -90),
        Scale = 1,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_charm"),
        Category = {"charm"},
        CosmeticOnly = true,
        Bone = "tag_cosmetic",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Scale = 1.2,
    },
}

SWEP.GripPoseParam = 3
SWEP.GripPoseParam2 = 0.5
SWEP.CodStubbyGripPoseParam = 6
SWEP.CodStubbyTallGripPoseParam = 22
SWEP.CodAngledGripPoseParam = 21