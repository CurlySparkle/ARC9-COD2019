AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

ENT.smokeSound = nil

function ENT:Initialize()
    self:SetParent(NULL) --detaching from whatever we nailed on

    self:SetModel("models/dav0r/hoverball.mdl")
    self:SetOwner(NULL)
    self:EnableCustomCollisions(true)

    local p = self:GetPos() --+ self:GetAngles():Up() * -self.SmokeRadius
    local b = Vector(0.66, 0.66, 0.66) * self.SmokeRadius
    self:PhysicsInitBox(-b, b)
    self:SetCollisionBoundsWS(p - b, p + b)
    self:GetPhysicsObject():EnableMotion(false)
    self:SetCollisionGroup(self.CollisionGroup)

    local repFil = RecipientFilter()
    repFil:AddAllPlayers()

    self.smokeSound = CreateSound(self, "MW19_Smoke_Nade.SmokeOn", repFil)
    self.smokeSound:Play()
    self.smokeSound:ChangePitch(75)

    self:EmitSound("MW19_Smoke_Nade.SmokeExplode")
    
    ParticleEffectAttach("smoke_sphere", PATTACH_ABSORIGIN_FOLLOW, self, 0)
    ParticleEffect("smoke_sphere_explosion", self:GetPos(), self:GetAngles(), self, 0)
end

function ENT:GetRelationship(e)
    return self:GetOwner()
end

function ENT:Think()
    if (CurTime() > self:GetCreationTime() + (self.LifeTime - 2)) then
        self:StopSmoke()
    end
    
    if (CurTime() - self:GetCreationTime() > self.LifeTime) then
        self:Remove()
        return
    end
end

function ENT:OnRemove()
    self:StopSmoke()
end

ENT.bStoppedSmoke = false

function ENT:StopSmoke()
    if (self.bStoppedSmoke) then
        return
    end

    self.bStoppedSmoke = true

    if (self.smokeSound != nil) then
        self.smokeSound:Stop()
    end

    self:StopParticles()
    sound.Play("MW19_Smoke_Nade.SmokeOff", self:GetPos())
end