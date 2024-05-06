SWEP.Base = "arc9_base"
SWEP.Spawnable = false
SWEP.Category = "ARC9 - MW2019"
SWEP.AdminOnly = false

SWEP.PrintName = "MW2019 Base"

SWEP.SecondarySupplyLimit = 6

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

SWEP.Bash2Damage = 45
SWEP.Bash2LungeRange = 0
SWEP.Bash2Range = 64
SWEP.PreBash2Time = 0.1
SWEP.PostBash2Time = 0.65

SWEP.SpeedMultMelee = 1
SWEP.SpeedMultSights = 0.95
SWEP.SpeedMultReload = 0.85

-- This is for recoil that goes directly to camera, makes gun shoot where sights at but center of screen will be in different place. Like escape from shitlord
SWEP.ViewRecoil = false -- true
SWEP.ViewRecoilUpMult = -5 -- 40-100
SWEP.ViewRecoilUpMultSights = 10

SWEP.PhysicalVisualRecoil = true

-- Extras

SWEP.VManipOffsetPos = Vector(1, 1, -0.5)
SWEP.VManipOffsetAng = Angle(-4, -2, 5)

SWEP.BobWalkMult = 0.5
SWEP.BobSprintMult = 0.1

SWEP.SprintVerticalOffset = false
SWEP.CanBlindFire = false
SWEP.LaserAlwaysOnTargetInPeek = true

SWEP.MalfunctionExitSights = true

SWEP.EnterBipodSound = "Viewmodel.BipodDeploy"
SWEP.ExitBipodSound = "Viewmodel.BipodExit"

SWEP.RicochetChance = 0.01
SWEP.SwayMultSights = 0
SWEP.FreeAimRadius = 0 -- In degrees, how much this gun can free aim in hip fire.
SWEP.Sway = 0 -- How much the gun sways.

SWEP.CamQCA_Mult_ADS = 1

SWEP.ShootVolume = 1000
SWEP.FiremodeSound = ""
SWEP.DryFireSound = ""

SWEP.IndoorSoundHardCutoff = true
--SWEP.IndoorSoundHardCutoffRatio = 0.1

SWEP.MovePoseParam = 0
SWEP.WalkPoseParam = 0
SWEP.IdlePoseParam = 0
SWEP.HasSights = !SWEP.Akimbo

SWEP.FiremodeAnimLock = false -- Firemode animation cannot be interrupted

SWEP.UBGLCancelAnim = true

local parmbl = {"blend_move","blend_walk","blend_idle"}

SWEP.Hook_Think	= function(self)
    if CLIENT then
        local owner = self:GetOwner()
        if !owner:IsPlayer() then return end
        local vm, wm, clip, delta = IsValid(self:GetVM()) and self:GetVM(), IsValid(self:GetWM()) and self:GetWM(), self:Clip1(), self:GetSightAmount()
        local coolilove = math.cos(delta * (math.pi / 2))
        -- local maxspd, wspd, vel = owner:GetWalkSpeed() or 250, owner:GetSlowWalkSpeed() or 100, owner:OnGround() and owner:GetAbsVelocity():Length() * (1-self.CustomizeDelta) or 0
        local maxspd, wspd, vel = owner:GetWalkSpeed() or 250, owner:GetSlowWalkSpeed() or 100, owner:OnGround() and owner:GetAbsVelocity():Length() * (1.1-self.CustomizeDelta) or 0
        if owner.GetSliding then if owner:GetSliding() then vel = 50 end end
        local spd = math.Clamp(math.Remap(vel, wspd, maxspd, 0, 1), 0, 1)
        local spd2 = math.Clamp(math.Remap(vel, 0, wspd, 0, 1), 0, 1) - spd
        local moveblend = math.Clamp(spd-delta, 0, 1) or 0
        local walkblend = math.Clamp(spd2-delta, 0, 1) or 0
        self.MovePoseParam = Lerp(10 * math.Clamp(FrameTime(), 0, 0.3), self.MovePoseParam, moveblend)
        self.WalkPoseParam = Lerp(10 * math.Clamp(FrameTime(), 0, 0.3), self.WalkPoseParam, walkblend)
        self.IdlePoseParam = Lerp(10 * math.Clamp(FrameTime(), 0, 0.3), self.IdlePoseParam, walkblend)
		--self:GetOwner():GetViewModel():SetPoseParameter("blend_idle", self:GetSightAmount()) -- broken ass shit
        if vm then
            vm:SetPoseParameter("bullets",self:GetMaxClip1() - clip)
            vm:SetPoseParameter("blend_move", self.MovePoseParam)
            vm:SetPoseParameter("blend_walk", self.WalkPoseParam)
            --vm:SetPoseParameter("empty", !self:GetReloading() and (self.Akimbo and clip == 1 and 1 or clip == 0 and (self.Akimbo and 2 or 1)) or 0)
            vm:SetPoseParameter("aim_blend", Lerp(coolilove, 1, 0))
            --vm:SetPoseParameter("blend_idle", self:GetSightAmount()) -- broken ass shit
        end
        if self:Clip1() == 0 then
            vm:SetPoseParameter("empty", (self.Akimbo and clip == 1 and 1 or clip == 0 and (self.Akimbo and 2 or 1)) or 0)
        else
            vm:SetPoseParameter("empty", (self.Akimbo and clip == 1 and 1 or clip == 0 and (self.Akimbo and 2 or 1)) or 0)
        end
        if wm and vm and wm:GetModel() == vm:GetModel() then
            for i = 0, wm:GetNumPoseParameters() -1 do
                local parm = vm:GetPoseParameterName(i)
                if table.HasValue(parmbl, parm) then continue end
                local pmin, pmax = vm:GetPoseParameterRange(i)
                local pval = math.Remap(vm:GetPoseParameter(parm), 0, 1, pmin, pmax)
                wm:SetPoseParameter(parm, pval)
            end
        end
    end
	self:Hook_Think2()
end

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
