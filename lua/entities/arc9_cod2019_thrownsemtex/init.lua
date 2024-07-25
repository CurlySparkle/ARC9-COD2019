AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

ENT.ExplosionRadius = 256

local function parentEntity(data, ent, boneId)
	local HitAng = data.HitNormal:Angle()
	local HitPos = data.HitPos + HitAng:Forward() * 0 + HitAng:Up() * 0


	if (boneId != nil) then
		if (data.HitEntity:IsRagdoll()) then
			boneId = data.HitEntity:TranslatePhysBoneToBone(data.PhysicsBone)
		end

		ent:FollowBone(data.HitEntity, boneId)
		debugoverlay.Text(data.HitPos, data.HitEntity:GetBoneName(boneId), 1)
	else
		if (!data.HitEntity:IsWorld()) then
			ent:SetParent(data.HitEntity)
		end
	end

	ent:SetAngles(HitAng)
	ent:SetPos(HitPos)
end

function ENT:Initialize()
    self:SetModel("models/weapons/cod2019/w_eq_semtex_thrown.mdl")
    self:SetMoveType(MOVETYPE_VPHYSICS)
    self:SetSolid(SOLID_VPHYSICS)
    self:PhysicsInit(SOLID_VPHYSICS)
    self:GetPhysicsObject():EnableMotion(true)
    self:SetLifeTime(1.5)
    self:AddFlags(FL_GRENADE)
    self:AddFlags(FL_ONFIRE)
    self.nextBeep = self:GetLifeTime()
    self.isPinned = false
	self:SetAngles(Angle(0, 0, -70))
    local phys = self:GetPhysicsObject()
    phys:SetMass(1)
	ParticleEffectAttach("grenadetrail",PATTACH_ABSORIGIN_FOLLOW,self,0)
end 

function ENT:Think()
    if (IsValid(self:GetParent()) && self:GetParent():Health() <= 0 && self:GetParent():GetMaxHealth() > 1) then
        self:Explode()
        return
    end

    if self.isPinned then
        self:SetLifeTime(self:GetLifeTime() - FrameTime()) 
    elseif CurTime() >= self.nextBeep then 
        local effectData = EffectData()
        effectData:SetEntity(self)
        effectData:SetOrigin(self:GetPos())
        util.Effect("cod2019_effect_semtex", effectData)
        self.nextBeep = CurTime() + 0.35
    end
	
	
    if (self:GetLifeTime() > 0.1 && self:GetLifeTime() <= self.nextBeep) then
        sound.EmitHint(SOUND_DANGER, self:GetPos(), self.ExplosionRadius * 2, 1, nil) --make shit run away (nil owner so even rebels run)
		if self.isPinned then
        self.nextBeep = self:GetLifeTime() * 0.75
        
        local effectData = EffectData()
        effectData:SetEntity(self)
        effectData:SetOrigin(self:GetPos())
        util.Effect("cod2019_effect_semtex", effectData)
		end
    end

    if (self:GetLifeTime() <= 0) then
        self:Explode()
    end

    self:NextThink(CurTime())
    return true
end

function ENT:Explode()
    local pos = self:GetPos() + self:GetUp() * 5
    local dmgInfo = DamageInfo()
    dmgInfo:SetAttacker(self:GetOwner())
    dmgInfo:SetDamage(150)
    dmgInfo:SetDamageType(DMG_BLAST + DMG_AIRBOAT)
    dmgInfo:SetInflictor(self)
    util.BlastDamageInfo(dmgInfo, self:GetPos(), self.ExplosionRadius)
	
    local fx = EffectData()
	fx:SetOrigin(self:GetPos())
	fx:SetStart(self:GetPos())
	fx:SetRadius(512)
    fx:SetEntity(self)
    if self:WaterLevel() > 0 then
        util.Effect("WaterSurfaceExplosion", fx)
    else
        util.Effect("cod2019_grenade_explosion", fx)
		self:EmitSound("Cod2019.Frag.Explode")
    end
	
    local spos = pos
    local trs = util.TraceLine({
          start = spos + Vector(0, 0, 64),
          endpos = spos + Vector(0, 0, -32),
          filter = self
          })
    util.Decal("Scorch", trs.HitPos + trs.HitNormal, trs.HitPos - trs.HitNormal)
    self:Remove()
end

function ENT:OnRemove()
    self:StopParticles()
end

function ENT:PhysicsCollide(data, collider) 
    if !self.isPinned then
        local ent = data.HitEntity
        if self:CanStickToEntity(ent) then
		    timer.Simple(0, function()
            self.isPinned = true
            self:SetPos(data.HitPos)
            self:SetSolid(SOLID_NONE)
            self:SetMoveType(MOVETYPE_NONE)
            self:SetParent(ent)
		   	
            local dmginfo = DamageInfo()
            dmginfo:SetDamageType(DMG_GENERIC)
            dmginfo:SetDamage(1)
            dmginfo:SetAttacker(self:GetOwner())
            dmginfo:SetInflictor(self)
            dmginfo:SetDamageForce(data.OurOldVelocity * 0.5)
            ent:TakeDamageInfo(dmginfo)
			sound.Play("weapons/cod2019/throwables/semtex/stick_success.ogg", data.HitPos + data.HitNormal * 5)
			end)
        elseif ent:IsWorld() then
		    timer.Simple(0, function()
            self.isPinned = true
            self:SetPos(data.HitPos)
			self:SetAngles(self:GetAngles())
            self:SetMoveType(MOVETYPE_NONE)
			self:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
			sound.Play("weapons/cod2019/throwables/semtex/stick.ogg", data.HitPos)
			end)
        end
    end
	self:StopParticles()
end

function ENT:CanStickToEntity(ent) 
    return ent != self:GetOwner() && !ent:IsWorld()
end