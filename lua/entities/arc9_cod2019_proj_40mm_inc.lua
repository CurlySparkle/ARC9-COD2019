AddCSLuaFile()

ENT.Base = "arc9_cod2019_proj_40mm_base"
ENT.PrintName = "40mm Incendiary"

ENT.GrenadeDamage = 50
ENT.GrenadeRadius = 150
ENT.ExplosionEffect = false
ENT.Scorch = false
ENT.DragCoefficient = 0.75
ENT.DetonateOnImpact = true

ENT.NextTraceTime = 0

if SERVER then
    function ENT:Think()
        if SERVER and CurTime() - self.SpawnTime >= self.FuseTime then
            self:Detonate()
        end

        if self.SpawnTime + 0.2 < CurTime() and self.NextTraceTime < CurTime() then
            self.NextTraceTime = CurTime() + 0.1
            local dir = self:GetVelocity():GetNormalized()
            local tr = util.TraceHull({
                start = self:GetPos(),
                endpos = self:GetPos() + dir * 512,
                filter = self,
                mins = Vector(-16, -16, -8),
                maxs = Vector(16, 16, 8)
            })
            if tr.Hit then
                self:Detonate()
            end
        end

    end
end

function ENT:DoDetonation()
    local effectdata = EffectData()
    effectdata:SetOrigin(self:GetPos())
	
	self:StopParticles()

    if self:WaterLevel() >= 1 then
        util.Effect("WaterSurfaceExplosion", effectdata)
        self:EmitSound("weapons/underwater_explode3.wav", 125, 100, 1, CHAN_AUTO)
    else
        effectdata:SetMagnitude(4)
        effectdata:SetScale(1)
        effectdata:SetRadius(4)
        effectdata:SetNormal(self:GetVelocity():GetNormalized())
        util.Effect("Sparks", effectdata)
        self:EmitSound("physics/metal/metal_box_break1.wav", 100, 200)
        self:EmitSound("^weapons/cod2019/throwables/molotov/inc_grenade_detonate_1.ogg", 100, 100, 0.75)
    end

    for i = 1, 6, 1 do
        local cloud = ents.Create("arc9_cod2019_napalm_cluster")
        cloud.FireTime = math.Rand(20, 40)

        if !IsValid(cloud) then return end

        local vel = VectorRand() * 500

        cloud.Order = i
        cloud:SetPos(self:GetPos() - (self:GetVelocity() * FrameTime()) + VectorRand())
        --cloud:SetAbsVelocity(vel + self:GetVelocity())
        cloud:SetOwner(self:GetOwner())
        cloud:Spawn()
        cloud:GetPhysicsObject():SetVelocityInstantaneous(self:GetVelocity() + vel)

    end
	self:Remove()
end

function ENT:OnRemove()
	if (IsValid(self.constraint)) then
		self.constraint:Remove()
	end
end