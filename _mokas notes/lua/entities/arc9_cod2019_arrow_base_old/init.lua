AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

ENT.bCollided = false
ENT.Projectile = {
	Speed = 4000,
	Gravity = 1,
	PickUp = true
}
ENT.Maxs = Vector(1, 1, 1)
ENT.Model = Model("models/weapons/cod2019/mags/w_eq_crossbow_bolt.mdl")
ENT.AoeEntity = nil

ENT.Damage = 125
ENT.Force = 25

function ENT:Initialize()
	self:SetModel(self.Model)
	self:PhysicsInitBox(Vector(-10, -1, -1), Vector(10, 1, 1))
	self:GetPhysicsObject():Wake()
	self:GetPhysicsObject():SetMaterial("default_silent")
	self:GetPhysicsObject():AddGameFlag(FVPHYSICS_NO_PLAYER_PICKUP)
	self:GetPhysicsObject():AddGameFlag(FVPHYSICS_NO_IMPACT_DMG)
	self:GetPhysicsObject():AddGameFlag(FVPHYSICS_HEAVY_OBJECT)
	self:GetPhysicsObject():EnableMotion(true)
	self:GetPhysicsObject():EnableDrag(false)
	self:GetPhysicsObject():SetMass(1000)
	self:SetSolid(SOLID_VPHYSICS)
	self:SetCollisionGroup(COLLISION_GROUP_IN_VEHICLE) --doesn't collide with anything, no traces
	self:AddEFlags(EFL_NO_DAMAGE_FORCES)
	self:AddEFlags(EFL_DONTWALKON)
	self:AddEFlags(EFL_DONTBLOCKLOS)
	self:AddEFlags(EFL_NO_PHYSCANNON_INTERACTION)

	self.Projectile = table.Copy(self.Projectile)
	self:GetPhysicsObject():SetVelocityInstantaneous(self:GetAngles():Forward() * self.Projectile.Speed)
	self.LastPos = self:GetOwner():EyePos()
end

function ENT:Think()
	--[[if (IsValid(self:GetParent()) && self:GetParent():Health() <= 0 && self:GetParent():GetMaxHealth() > 1) then
		self:SetMoveType(MOVETYPE_VPHYSICS)
		self:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
		self:GetPhysicsObject():EnableMotion(true)
		self:GetPhysicsObject():Wake()
		self:SetParent(NULL)
	end]]
end

ENT.m_gravity = 0

function ENT:PhysicsUpdate(phys)
	if (!phys:IsMotionEnabled()) then
		return
	end

	self.m_gravity = math.Clamp(self.m_gravity + (self.Projectile.Gravity), -90, 90)

	phys:SetAngles(phys:GetAngles() + Angle(self.m_gravity, 0, 0) * FrameTime())
	phys:SetPos(self.LastPos + phys:GetAngles():Forward() * (self.Projectile.Speed * FrameTime()))

	local trData = {
		start = self.LastPos,
		endpos = phys:GetPos(),
		filter = {self:GetOwner(), self},
		mask = MASK_SHOT_PORTAL,
		collisiongroup = COLLISION_GROUP_PROJECTILE,
		mins = -self.Maxs,
		maxs = self.Maxs
	}

	local tr = util.TraceHull(trData)

	if (tr.Hit && (tr.Entity:IsPlayer() || tr.Entity:IsNPC())) then
		self:Impact(tr, phys, true)
		return
	end

	tr = util.TraceLine(trData)

	if (tr.Hit) then
		self:Impact(tr, phys, false)
		return
	end

	self.LastPos = phys:GetPos()
end

local function parentEntity(tr, ent)
	local arrowHitAng = tr.Normal:Angle()
	local arrowHitPos = tr.HitPos + arrowHitAng:Forward() * -3 + arrowHitAng:Up() * -1.5
	local boneId = tr.Entity:GetHitboxBone(tr.HitBox, 0)

	if (boneId != nil) then
		if (tr.Entity:IsRagdoll()) then
			boneId = tr.Entity:TranslatePhysBoneToBone(tr.PhysicsBone)
		end

		ent:FollowBone(tr.Entity, boneId)
		debugoverlay.Text(tr.HitPos, tr.Entity:GetBoneName(boneId), 1)
	else
		if (!tr.Entity:IsWorld()) then
			ent:SetParent(tr.Entity)
		end
	end

	ent:SetAngles(arrowHitAng)
	ent:SetPos(arrowHitPos)
end

function ENT:Think()
	if (!self:GetNailed()) then
		return
	end

	if (self.Projectile.PickUp) then
		local dist = self:GetOwner():NearestPoint(self:GetPos()):DistToSqr(self:GetPos())

		if (dist < 32 * 32) then
			self:GetOwner():EmitSound("shared/iw8_mp_scavenger_pack_pickup.wav")
			self:GetOwner():SetAmmo(self:GetOwner():GetAmmoCount("XBowBolt") + 1, "XBowBolt")
			self:Remove()
		end
	end
end
 
function ENT:Impact(tr1, phys, bHull)
	SafeRemoveEntityDelayed(self, 20)

	phys:EnableMotion(false)

	if (self.Projectile.PickUp) then
		self:AddEffects(EF_ITEM_BLINK)
	end

	self:SetMoveType(MOVETYPE_NONE)
	self:SetNailed(true)

	self:StopParticles()
	
	self:FireBullets({
		Attacker = self:GetOwner(),
		Num = 1,
		Tracer = 0,
		Damage = (self.Damage),
		Force = (self.Force),
		Src = self.LastPos,
		Dir = (phys:GetPos() - self.LastPos):GetNormalized(),
		HullSize = bHull && self.Maxs:Length() * 2 || 1,
		IgnoreEntity = self,
		Callback = function(attacker, tr, dmgInfo)
			dmgInfo:SetInflictor(self)
			dmgInfo:SetDamageType(dmgInfo:GetDamageType() + DMG_DIRECT + self:GetDamageType())

			if (tr.HitSky) then
				self:Remove()
				return
			end

			if (self.AoeEntity != nil) then
				local aoe = ents.Create(self.AoeEntity)
				aoe:SetOwner(self:GetOwner())
				parentEntity(tr, aoe)
				aoe:SetPos(tr.HitPos + tr.HitNormal * 3)

				local angle = tr.HitNormal:Angle()
				angle:RotateAroundAxis(angle:Right(), 270)

				aoe:SetAngles(angle)
				aoe:Spawn()
				aoe.arrow = self
				self.aoe = aoe
				self:Remove()
			end

			if (tr.Entity:IsPlayer() || tr.Entity:IsNPC() || tr.Entity:IsNextBot() || tr.Entity:IsRagdoll()) then
				sound.Play("MW19_Crossbow.HitBody", tr.HitPos + tr.HitNormal * 5)
				--self:Remove()
				self:SetVelocity(Vector(0,0,0))
				phys:EnableMotion(true)
				return
			end

			sound.Play("MW19_Crossbow.Hit", tr.HitPos)

			parentEntity(tr, self)

			self:FireBullets({
				Attacker = self:GetOwner(),
				Num = 1,
				Tracer = 0,
				Src = tr.HitPos + self:GetAngles():Forward() * 11,
				Dir = tr.Normal * -1,
				IgnoreEntity = self.aoe,
				Damage = (self.Damage),
				Force = (self.Force),
				Callback = function(attacker, trBack, dmgInfo)
					if (trBack.Entity != tr.Entity) then
						local lPos1 = LocalToWorld(tr.HitPos, tr.HitNormal:Angle(), tr.Entity:GetPos(), tr.Entity:GetAngles())
						lPos1 = tr.Entity:GetPhysicsObject():WorldToLocal(tr.HitPos + tr.HitNormal)

						local lPos2 = LocalToWorld(tr.HitPos, tr.HitNormal:Angle(), trBack.Entity:GetPos(), trBack.Entity:GetAngles())

						self.constraint = constraint.Axis(tr.Entity, trBack.Entity, tr.PhysicsBone, trBack.PhysicsBone, lPos1, lPos2, 0, 0, 0, false)
						self:EmitSound("MW19_Crossbow.Skewer")
					end
				end
			})
		end
	})
end

function ENT:GetDamageType()
	return DMG_SNIPER + DMG_SLASH
end

function ENT:OnRemove()
	if (IsValid(self.constraint)) then
		self.constraint:Remove()
	end
end