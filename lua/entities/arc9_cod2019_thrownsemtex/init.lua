AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

ENT.ExplosionRadius = 256

function ENT:Initialize()
    self:SetModel("models/weapons/cod2019/w_eq_semtex_thrown.mdl")
    -- self:PhysicsInit(SOLID_VPHYSICS)
    -- self:GetPhysicsObject():EnableMotion(true)
    -- self:SetCollisionGroup(COLLISION_GROUP_DEBRIS)]]
    self:SetLifeTime(1.5)
    self:AddFlags(FL_GRENADE)
    self:AddFlags(FL_ONFIRE)
    self.nextBeep = self:GetLifeTime()
end 

function ENT:Think()
    if (IsValid(self:GetParent()) && self:GetParent():Health() <= 0 && self:GetParent():GetMaxHealth() > 1) then
        self:Explode()
        self:Remove()
        return
    end

    self:SetLifeTime(self:GetLifeTime() - FrameTime())

    if (self:GetLifeTime() > 0.1 && self:GetLifeTime() <= self.nextBeep) then
        sound.EmitHint(SOUND_DANGER, self:GetPos(), self.ExplosionRadius * 2, 1, nil) --make shit run away (nil owner so even rebels run)
        self.nextBeep = self:GetLifeTime() * 0.75
        BroadcastLua("Entity("..self:EntIndex().."):Beep()")
    end

    if (self:GetLifeTime() <= 0) then
        self:Explode()
        self:Remove()
    end

    self:NextThink(CurTime())
    return true
end

function ENT:Explode()
    local dmgInfo = DamageInfo()
    dmgInfo:SetAttacker(self:GetOwner())
    dmgInfo:SetDamage(150)
    dmgInfo:SetDamageType(DMG_BLAST + DMG_AIRBOAT)
    dmgInfo:SetInflictor(self)
    util.BlastDamageInfo(dmgInfo, self:GetPos(), self.ExplosionRadius)
    util.ScreenShake(self:GetPos(), 3500, 1111, 1, self.ExplosionRadius * 4)

    self:Remove()
    -- if (IsValid(self.arrow)) then
        -- self.arrow:Remove()
    -- end
end

function ENT:OnRemove()
    self:Explode()
end