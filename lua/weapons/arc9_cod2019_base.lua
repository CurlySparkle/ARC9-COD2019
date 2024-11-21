SWEP.Base = "arc9_base"
SWEP.Spawnable = false
SWEP.Category = "ARC9 - MW2019"
SWEP.AdminOnly = false

SWEP.PrintName = "MW2019 Base"

SWEP.SecondarySupplyLimit = 6
SWEP.ARC9WeaponCategory = 0
SWEP.NotForNPCs = true

if CLIENT then
    killicon.Add( "arc9_cod2019_proj_40mmgl_hel", "vgui/killicons/cod2019_m203.png", Color(251, 85, 25, 255))
    killicon.Add( "arc9_cod2019_proj_40mmgl_flash", "vgui/killicons/cod2019_m203.png", Color(251, 85, 25, 255))
    killicon.Add( "arc9_cod2019_proj_40mmgl_smoke", "vgui/killicons/cod2019_m203.png", Color(251, 85, 25, 255))
    killicon.Add( "arc9_cod2019_proj_40mmgl_inc", "vgui/killicons/cod2019_m203.png", Color(251, 85, 25, 255))
    killicon.Add( "arc9_cod2019_proj_40mmgl_stun", "vgui/killicons/cod2019_m203.png", Color(251, 85, 25, 255))
    killicon.Add( "arc9_cod2019_proj_40mmgl_snapshot", "vgui/killicons/cod2019_m203.png", Color(251, 85, 25, 255))
end

-------------------------- MELEE

SWEP.MeleeHitSound = "COD2019.Melee.HitBody"
SWEP.MeleeHitWallSound = "COD2019.Melee.HitWall"
SWEP.MeleeSwingSound = "COD2019.Melee.Swing"
SWEP.BackstabSound = "COD2019.Melee.HitBody"

SWEP.BashWhileSprint = true
SWEP.BashCancelsReload = true
SWEP.Bash = true
SWEP.PrimaryBash = false
SWEP.DefaultBodygroups = "0000000000"

SWEP.AlwaysPhysBullet = false
SWEP.NeverPhysBullet = true
SWEP.TracerEffect = "cod2019_tracer"
SWEP.TracerSize = 0
SWEP.TracerNum = 0

SWEP.NoDynamicKillIcon = true

SWEP.DamageRand = 0

SWEP.BashDamage = 55
SWEP.BashLungeRange = 0
SWEP.BashRange = 64
SWEP.PreBashTime = 0.1
SWEP.PostBashTime = 0.65
SWEP.BashDamageType = DMG_CLUB + DMG_SLASH

SWEP.Bash2Damage = 45
SWEP.Bash2LungeRange = 0
SWEP.Bash2Range = 64
SWEP.PreBash2Time = 0.1
SWEP.PostBash2Time = 0.65
SWEP.Bash2DamageType = DMG_CLUB + DMG_SLASH

SWEP.SpeedMultMelee = 1
SWEP.SpeedMultSights = 0.95
SWEP.SpeedMultReload = 0.85

-- This is for recoil that goes directly to camera, makes gun shoot where sights at but center of screen will be in different place. Like escape from shitlord
SWEP.ViewRecoil = false -- true
SWEP.ViewRecoilUpMult = -5 -- 40-100
SWEP.ViewRecoilUpMultSights = 10
SWEP.PhysicalVisualRecoil = true

-- Extras

SWEP.VManipOffsetPos = Vector(1, -2, -0.5)
SWEP.VManipOffsetAng = Angle(-4, -2, 5)

SWEP.BobWalkMult = 0.5
SWEP.BobWalkMultSights = 1
SWEP.BobSprintMult = 0.1

SWEP.SprintVerticalOffset = false
SWEP.CanBlindFire = false
SWEP.LaserAlwaysOnTargetInPeek = true

SWEP.MalfunctionExitSights = true
SWEP.FireInterruptInspect = true
SWEP.SightsInterruptInspect = true

SWEP.EnterBipodSound = "Viewmodel.BipodDeploy"
SWEP.ExitBipodSound = "Viewmodel.BipodExit"

SWEP.RicochetChance = 0.01
SWEP.SwayMultSights = 0
SWEP.FreeAimRadius = 0 -- In degrees, how much this gun can free aim in hip fire.

-------------------------- SWAY
SWEP.Sway = 0
SWEP.SwayMultSights = 1
SWEP.SwayAddSights = 0.25
-------------------------- EXTRAS / ADDED LATER FOR ALL WEAPONS
SWEP.CamQCA_Mult_ADS = 1
SWEP.AimDownSightsTimeMultShooting = 1.5
SWEP.MagnificationZoomSpeed = 2.5

SWEP.ShootVolume = 1000
SWEP.FiremodeSound = ""
SWEP.DryFireSound = ""

SWEP.IndoorSoundHardCutoff = true
--SWEP.IndoorSoundHardCutoffRatio = 0.1

SWEP.MovePoseParam = 0
SWEP.WalkPoseParam = 0
SWEP.HasSights = !SWEP.Akimbo

SWEP.FiremodeAnimLock = false -- Firemode animation cannot be interrupted
SWEP.UBGLCancelAnim = true

SWEP.CamQCA_MultCustomize = 0

SWEP.AimAssistRange = 100 / ARC9.HUToM

local parmbl = {"blend_move","blend_walk"}

SWEP.Hook_Think	= function(self)
    -- all code moved to CustomPoseParamsHandler
    -- I fucking hate this hack
    if CLIENT then
        local ent, wm = IsValid(self:GetVM()) and self:GetVM(), IsValid(self:GetWM()) and self:GetWM()
        local clip, delta = self:Clip1(), self:GetSightAmount()
        local coolilove = math.cos(delta * (math.pi / 2))
        ent:SetPoseParameter("bullets",self:GetMaxClip1() - clip)
        ent:SetPoseParameter("aim_blend", Lerp(coolilove, 1, 0))
        ent:SetPoseParameter("empty", (self.Akimbo and clip == 1 and 1 or clip == 0 and (self.Akimbo and 2 or 1)) or 0)
    end
	self:Hook_Think2()
end

SWEP.CustomPoseParamsHandler = function(self, ent, iswm)
    local owner = self:GetOwner()
    if !owner:IsPlayer() then return end

    local clip, delta = self:Clip1(), self:GetSightAmount()
    local coolilove = math.cos(delta * (math.pi / 2))
    ent:SetPoseParameter("bullets",self:GetMaxClip1() - clip)
    ent:SetPoseParameter("aim_blend", Lerp(coolilove, 1, 0))
    ent:SetPoseParameter("empty", (self.Akimbo and clip == 1 and 1 or clip == 0 and (self.Akimbo and 2 or 1)) or 0)
    if !iswm then
        if self:GetCustomize() or self:GetBipod() then -- When customizing, enable aim blend anyway.
            ent:SetPoseParameter("aim_blend", 1)
            return
        end
        -- local maxspd, wspd, vel = owner:GetWalkSpeed() or 250, owner:GetSlowWalkSpeed() or 100, owner:OnGround() and owner:GetAbsVelocity():Length() * (1-self.CustomizeDelta) or 0
        local maxspd, wspd, vel = owner:GetWalkSpeed() or 250, owner:GetSlowWalkSpeed() or 100 or 50, owner:OnGround() and owner:GetAbsVelocity():Length() * (1.1-self.CustomizeDelta) or 0
        if owner.GetSliding and owner:GetSliding() then vel = 50 end
        local spd = math.Clamp(math.Remap(vel, wspd, maxspd, 0, 1), 0, 1)
        local spd2 = math.Clamp(math.Remap(vel, 0, wspd, 0, 1), 0, 1) - spd
        local moveblend = math.Clamp(spd-delta, 0, 1) or 0
        local walkblend = math.Clamp(spd2-delta, 0, 1) or 0
        local smoothing = 10 * math.Clamp(FrameTime(), 0, 0.3)
        self.MovePoseParam = Lerp(smoothing, self.MovePoseParam, moveblend)
        self.WalkPoseParam = Lerp(smoothing, self.WalkPoseParam, walkblend)

        ent:SetPoseParameter("blend_move", self.MovePoseParam)
        ent:SetPoseParameter("blend_walk", self.WalkPoseParam)
    end
end

-- SWEP.CustomPoseParamsHandler = function(self)

SWEP.Hook_Think2 = function(self)
end

function SWEP:MakeEnvironmentDust(radius)
    --Makes a dust enviroment effect when shooting
    radius = radius || 150
    
    if (!IsValid(self:GetOwner()) || !self:GetOwner():IsOnGround()) then
        return
    end
    
    local bInWater = self:GetOwner():WaterLevel() > 0
    
    if (IsFirstTimePredicted()) then
        local data = EffectData()
        data:SetEntity(self:GetOwner())
        data:SetScale(bInWater && radius * 0.15 || radius)
        data:SetOrigin(bInWater && self:GetOwner():EyePos() || self:GetOwner():GetPos())
        
        util.Effect(bInWater && "waterripple" || "ThumperDust", data)
    end
end

SWEP.HookP_NameChange = function(self, name)
    local att = self:GetElements()
	
	-- Assault Rifle, M$
	if att["cod2019_m4a1_barrel_mid"] and att["m203"] and att["cod2019_m4_stock_m16"] and (att["cod2019_m4_carryhandle"] or  att["cod2019_m4_carryhandle_v2"]) then
		name = ARC9:GetPhrase("mw19_weapon_m4a1_friend") or "Lil' Friend"
	end

	-- Assault Rifle, AK-47
	if att["cod2019_akilo47_mag_smg"] and att["cod2019_akilo47_barrel_smg"] then
		name = string.Replace(name, "-47", "-74U")
	elseif att["cod2019_akilo47_mag_smg"] then
		name = string.Replace(name, "47", "74")
	end
	
	-- Assault Rifle, Grau 5.56
	if att["cod2019_grau556_barrel_long"] then
		name = string.Replace(name, "56", "50")
	end	
	
	if att["cod2019_grau556_barrel_heavy"] then
		name = "IMBEL IA2"
	end
	
	-- Assault Rifle, FN Scar-17
	if att["cod2019_scar_mag_ar"] then
		name = string.Replace(name, "17", "16")
	end	

	-- Assault Rifle, FR 5.56
	if att["cod2019_famas_upper_railcust"] then
		name = ARC9:GetPhrase("mw19_weapon_fr556_avancer") or "FR Avancer"
	end

	-- Light Machine Gun, Holger-26
	if att["cod2019_holger_receiver_v2"] then
		name = string.Replace(name, "26", "556")
	end	

	if att["optic"] and att["optic_small"] then -- Hybrid Sight Name Change
		if att["optic_thermal"] then
			name = string.format( ARC9:GetPhrase("mw19_weapon_att_hybrid_thermal") or "%s Hybrid Thermal", name )
		else
			name = string.format( ARC9:GetPhrase("mw19_weapon_att_hybrid") or "%s Hybrid", name )
		end
	elseif att["hybrid_scope"] or att["hybrid_scope_int"] then
		name = string.format( ARC9:GetPhrase("mw19_weapon_att_hybrid") or "%s Hybrid", name )
	elseif att["optic_thermal"] then
		name = string.format( ARC9:GetPhrase("mw19_weapon_att_thermal") or "%s Thermal", name )
	end

	if att["m203"] then
		name = string.format( ARC9:GetPhrase("mw19_weapon_att_m203") or "%s M203", name )
	elseif att["gp25"] then
		name = string.format( ARC9:GetPhrase("mw19_weapon_att_gp25") or "%s GP-25", name )
	end

	if att["arc9_stat_stattrak"] then
		name = "StatTrak™ " .. name
	end

    return name
end
