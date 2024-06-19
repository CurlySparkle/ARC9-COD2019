AddCSLuaFile()

ENT.Base = "arc9_cod2019_proj_jokr_default"
ENT.PrintName = "Jokr Airstrike Rocket"
ENT.Spawnable = false

DEFINE_BASECLASS(ENT.Base)

ENT.SafetyFuse = 1
ENT.ClusterDistance = 1000

local offsets = {
    Vector(-16, -16, 0),
    Vector(-16, 16, 0),
    Vector(16, -16, 0),
    Vector(16, 16, 0)
}

function ENT:OnThink()
    BaseClass.OnThink(self)
    if SERVER and CurTime() > self.SpawnTime + self.SafetyFuse then
        if self.ShootEntData and IsValid(self.ShootEntData.Target) and self.ShootEntData.Target:GetPos():DistToSqr(self:GetPos()) <= self.ClusterDistance ^ 2 then
            self:Detonate()
        elseif self.LockOnPoint and self.LockOnPoint:DistToSqr(self:GetPos()) <= self.ClusterDistance ^ 2 then
            self:Detonate()
        end
    end
end

function ENT:Detonate()
    if self:WaterLevel() > 0 then self:Remove() self:StopParticles() return end
    local attacker = self.Attacker or self:GetOwner() or self

    for i = 1, 4 do
        local child = ents.Create("arc9_cod2019_proj_jokr_airstrike_alt")
        if IsValid(child) then
            child:SetPos(self:GetPos() + self:GetRight() * offsets[i].x + self:GetUp() * offsets[i].y)
            local dir = (child:GetPos() - self:GetPos() + self:GetForward() * 128):GetNormalized()
            child:SetAngles(dir:Angle())
            child:SetOwner(self:GetOwner())
            child.ShootEntData = self.ShootEntData
            child.Attacker = attacker
            child:Spawn()
            child:GetPhysicsObject():SetVelocityInstantaneous(self:GetVelocity():Length() * dir)
        end
    end

    -- Remove the initial entity
    self:Remove()
end