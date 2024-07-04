AddCSLuaFile()

ENT.Base = "arc9_cod2019_proj_jokr_default"
ENT.PrintName = "Jokr Airstrike Rocket"
ENT.Spawnable = false

DEFINE_BASECLASS(ENT.Base)

ENT.SafetyFuse = 2
ENT.ClusterDistance = 2000

local offsets = {
    Vector(-65, -65, -80),
    Vector(-65, 65, -35),
    Vector(65, -65, 55),
    Vector(65, 65, 90),
	Vector(0, -100, 0),
	Vector(0, 100, 0)
}

function ENT:OnThink()
    BaseClass.OnThink(self)
    if SERVER and CurTime() > self.SpawnTime + self.SafetyFuse then
        if self.ShootEntData and IsValid(self.ShootEntData.Target) and self.ShootEntData.Target:GetPos():DistToSqr(self:GetPos()) <= self.ClusterDistance ^ 2 then
            self:PreDetonate()
        elseif self.LockOnPoint and self.LockOnPoint:DistToSqr(self:GetPos()) <= self.ClusterDistance ^ 2 then
            self:PreDetonate()
        end
    end
end

function ENT:Detonate()
    if self:WaterLevel() > 0 then self:Remove() self:StopParticles() return end
    local attacker = self.Attacker or self:GetOwner() or self
	
	if (self:WaterLevel() <= 0) then
		ParticleEffect("Generic_explo_high", self:GetPos(),Angle(0,0,0))
	else
		local effectdata = EffectData()
		effectdata:SetOrigin(self:GetPos())
		util.Effect("WaterSurfaceExplosion", effectdata)
	end

	local dmgInfo = DamageInfo()
	dmgInfo:SetDamage(50)
	dmgInfo:SetAttacker(IsValid(self:GetOwner()) && self:GetOwner() || self)
	dmgInfo:SetInflictor(self)
	dmgInfo:SetDamageType(self:GetDamageType())
	util.BlastDamageInfo(dmgInfo, self:GetPos(), self.Radius)

	util.ScreenShake(self:GetPos(), 3500, 1111, 1, self.Radius * 4)

    for i = 1, 6 do
        local child = ents.Create("arc9_cod2019_proj_jokr_airstrike_alt")
        if IsValid(child) then
            child:SetPos(self:GetPos() + self:GetRight() * offsets[i].x + self:GetUp() * offsets[i].y + self:GetForward() * offsets[i].z)
			child.LastPos = self:GetPos()
            local dir = (child:GetPos() - self:GetPos() + self:GetForward() * 128):GetNormalized()
            child:SetAngles(self:GetAngles())
            child:SetOwner(self:GetOwner())
            child.ShootEntData = self.ShootEntData
            child.Attacker = attacker
            child:Spawn()
			child:EmitSound("^weapons/cod2019/shared/jokr_split.ogg",75, 100, 1, CHAN_AUTO)
            child:GetPhysicsObject():SetVelocityInstantaneous(self:GetVelocity():Length() * dir)
        end
    end
    -- Remove the initial entity
    self:Remove()
end

function ENT:GetDamageType() 
	return DMG_BLAST + DMG_AIRBOAT + DMG_SNIPER
end