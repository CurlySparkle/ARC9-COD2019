SWEP.Base = "arc9_base_nade"
SWEP.Spawnable = false
SWEP.Category = "ARC9 - MW2019"
SWEP.AdminOnly = false

SWEP.PrintName = "MW2019 Base Nade"
SWEP.ARC9WeaponCategory = 0
SWEP.NotForNPCs = true

-------------------------- MELEE

SWEP.MeleeHitSound = "COD2019.Melee.HitBody"
SWEP.MeleeHitWallSound = "COD2019.Melee.HitWall"
SWEP.MeleeSwingSound = "COD2019.Melee.Swing"
SWEP.BackstabSound = "COD2019.Melee.HitBody"

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
SWEP.BashDamageType = DMG_CLUB + DMG_SLASH

SWEP.Bash2Damage = 45
SWEP.Bash2LungeRange = 0
SWEP.Bash2Range = 64
SWEP.PreBash2Time = 0.1
SWEP.PostBash2Time = 0.65
SWEP.Bash2DamageType = DMG_CLUB + DMG_SLASH

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

SWEP.MovePoseParam = 0
SWEP.WalkPoseParam = 0
SWEP.HasSights = !SWEP.Akimbo

SWEP.FreeAimRadius = 0 -- In degrees, how much this gun can free aim in hip fire.
SWEP.Sway = 0 -- How much the gun sways.

SWEP.CamQCA_Mult_ADS = 1

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
	-- self:Hook_Think2()
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
        if self:GetCustomize() then -- When customizing, enable aim blend anyway.
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