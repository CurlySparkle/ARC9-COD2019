AddCSLuaFile()

ENT.Base = "arc9_cod2019_proj_jokr_default"
ENT.PrintName = "Jokr Airstrike Rocket"
ENT.Spawnable = false

DEFINE_BASECLASS(ENT.Base)

ENT.SafetyFuse = 2
ENT.ClusterDistance = 2000
ENT.LastAimPos = nil

local offsets = {
    Vector(-65, -65, -80),
    Vector(-65, 65, -35),
    Vector(65, -65, 55),
    Vector(65, 65, 90),
    Vector(0, -100, 0),
    Vector(0, 100, 0),
    Vector(-100, 0, -50),
    Vector(100, 0, 50),
    Vector(-50, -50, 100),
    Vector(50, 50, -100),
    Vector(-80, 80, 25),
    Vector(80, -80, -25)
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
        ParticleEffect("Generic_explo_high", self:GetPos(), Angle(0,0,0))
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
	
	for i = 1,12,1 do
		local child = ents.Create("arc9_cod2019_proj_jokr_airstrike_alt")
		child:SetPos(self:GetPos() + self:GetRight() * offsets[i].x + self:GetUp() * offsets[i].y + self:GetForward() * offsets[i].z)
		child:SetAngles(self:GetAngles())
		child.LastPos = self:GetPos()
		local dir = (child:GetPos() - self:GetPos() + self:GetForward() * 128):GetNormalized()
		child:SetOwner(self:GetOwner())
		child.Attacker = attacker

		if self.ShootEntData then 
			child.ShootEntData = self.ShootEntData
		else 
			local ents = ents.FindInSphere(self:GetPos(), 5000)
			local targets = {}
			for k,v in pairs(ents) do 
				if v:IsNPC() || v:IsNextBot() || v:IsPlayer() || v:IsVehicle() then 
					table.insert(targets, v)
				end
			end
			if targets[1] then
				child.ShootEntData = targets[math.random(1, #targets)] 
			end
		end
		child:Spawn()
		child:EmitSound("^weapons/cod2019/shared/jokr_split.ogg",75, 100, 1, CHAN_AUTO)
		child:GetPhysicsObject():SetVelocityInstantaneous(self:GetVelocity():Length() * dir)
	end
    self:Remove()
end

function ENT:GetDamageType() 
	return DMG_BLAST + DMG_AIRBOAT + DMG_SNIPER
end