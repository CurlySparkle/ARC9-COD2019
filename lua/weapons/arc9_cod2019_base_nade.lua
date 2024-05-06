SWEP.Base = "arc9_base_nade"
SWEP.Spawnable = false
SWEP.Category = "ARC9 - MW2019"
SWEP.AdminOnly = false

SWEP.PrintName = "MW2019 Base Nade"

-------------------------- MELEE

SWEP.MeleeHitSound = "COD2019.Melee.HitBody"
SWEP.MeleeHitWallSound = "COD2019.Melee.HitWall"
SWEP.MeleeSwingSound = "COD2019.Melee.Swing"
SWEP.BackstabSound = "COD2019.Melee.HitBody"

function SWEP:DrawWorldModel() -- custom func to never draw custommodel when on ground and use regular wm
    local owner = self:GetOwner()

    if IsValid(owner) and owner:GetActiveWeapon() == self then
        self:DrawCustomModel(true)
        self:DoBodygroups(true)
        self:DrawLasers(true)
        self:DoTPIK()
        self:DrawFlashlightsWM()
    else
        self:DrawModel()
    end
end

SWEP.QuickSwapTo = true
SWEP.NoHolsterOnPrimed = false
SWEP.CanLean = true
SWEP.CantSafety = true 
SWEP.IsQuickGrenade = true

SWEP.BashWhileSprint = true
SWEP.Bash = true
SWEP.PrimaryBash = false
SWEP.DefaultBodygroups = "0000000000"

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
SWEP.SpeedMultSights = 1
SWEP.SpeedMultReload = 1

-- Extras

SWEP.VManipOffsetPos = Vector(1, 1, -0.5)
SWEP.VManipOffsetAng = Angle(-4, -2, 5)

SWEP.BobWalkMult = 0
SWEP.BobSprintMult = 0

SWEP.SprintVerticalOffset = false
SWEP.CanBlindFire = false

SWEP.SwayMultSights = 0

SWEP.HasSights = !SWEP.Akimbo

SWEP.FreeAimRadius = 0 -- In degrees, how much this gun can free aim in hip fire.
SWEP.Sway = 0 -- How much the gun sways.

SWEP.CamQCA_Mult_ADS = 1

SWEP.MovePoseParam = 0
SWEP.WalkPoseParam = 0

local parmbl = {"blend_move", "blend_walk"}

SWEP.Hook_Think	= function(wep)
    if CLIENT then
        local owner = wep:GetOwner()
        if !owner:IsPlayer() then return end
        local vm, wm, clip, delta = IsValid(wep:GetVM()) and wep:GetVM(), IsValid(wep:GetWM()) and wep:GetWM(), wep:Clip1(), wep:GetSightAmount()
        local coolilove = math.cos(delta * (math.pi / 2))
        --local maxspd, wspd, vel = owner:GetWalkSpeed() or 250, owner:GetSlowWalkSpeed() or 100, owner:OnGround() and owner:GetAbsVelocity():Length() * (1-wep.CustomizeDelta) or 0
        local maxspd, wspd, vel = owner:GetWalkSpeed() or 250, owner:GetSlowWalkSpeed() or 100, owner:OnGround() and owner:GetAbsVelocity():Length() * (1.1-self.CustomizeDelta) or 0
        if owner.GetSliding then if owner:GetSliding() then vel = 50 end end
		local spd = math.Clamp(math.Remap(vel, wspd, maxspd, 0, 1), 0, 1)
        local spd2 = math.Clamp(math.Remap(vel, 0, wspd, 0, 1), 0, 1) - spd
        local moveblend = math.Clamp(spd-delta, 0, 1) or 0
        local walkblend = math.Clamp(spd2-delta, 0, 1) or 0
        wep.MovePoseParam = Lerp(10 * math.Clamp(FrameTime(), 0, 0.3), wep.MovePoseParam, moveblend)
        wep.WalkPoseParam = Lerp(10 * math.Clamp(FrameTime(), 0, 0.3), wep.WalkPoseParam, walkblend)
        if vm then
            vm:SetPoseParameter("bullets",wep:GetMaxClip1() - clip)
            vm:SetPoseParameter("blend_move", wep.MovePoseParam)
            vm:SetPoseParameter("blend_walk", wep.WalkPoseParam)
            --vm:SetPoseParameter("empty", !wep:GetReloading() and (wep.Akimbo and clip == 1 and 1 or clip == 0 and (wep.Akimbo and 2 or 1)) or 0)
            vm:SetPoseParameter("aim_blend", Lerp(coolilove, 1, 0))
        end
        if wep:Clip1() == 0 then
            vm:SetPoseParameter("empty", (wep.Akimbo and clip == 1 and 1 or clip == 0 and (wep.Akimbo and 2 or 1)) or 0)
        else
            vm:SetPoseParameter("empty", (wep.Akimbo and clip == 1 and 1 or clip == 0 and (wep.Akimbo and 2 or 1)) or 0)
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
