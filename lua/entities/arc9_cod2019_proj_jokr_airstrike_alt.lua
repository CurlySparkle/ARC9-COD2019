AddCSLuaFile()

if CLIENT then
    killicon.Add( "arc9_cod2019_proj_40mm_hel", "VGUI/killicons/cod2019_nade_he", Color(251, 85, 25, 255))
end

ENT.Base                     = "arc9_cod2019_proj_jokr_default"
ENT.PrintName                = "40mm HE"
ENT.Spawnable                = false

ENT.Model                    = "models/weapons/cod2019/mags/w_la_jokr_rocket.mdl"

ENT.IsRocket = false // projectile has a booster and will not drop.

ENT.InstantFuse = false // projectile is armed immediately after firing.
ENT.RemoteFuse = false // allow this projectile to be triggered by remote detonator.
ENT.ImpactFuse = true // projectile explodes on impact.

ENT.ExplodeOnDamage = false // projectile explodes when it takes damage.
ENT.ExplodeUnderwater = true
ENT.SmokeTrail = false
ENT.RocketTrailParticle = "Rocket_Smoke"  -- name of the particle effect
ENT.RocketTrail = true -- leaves trail of a particle effect

ENT.Delay = 0
ENT.FlareColor = Color(235, 188, 37)
ENT.Radius = 128
ENT.AudioLoop = ""

--- Stuff
ENT.SeekerAngle = math.cos(math.rad(75))
ENT.SteerSpeed = 6000
ENT.FuseTime = 0
ENT.Boost = 2000
ENT.Lift = 0
ENT.DragCoefficient = 0.1
ENT.LifeTime = 20
ENT.FireAndForget = true
ENT.TopAttack = false -- This missile flies up above its target before going down in a top-attack trajectory.
ENT.TopAttackHeight = 5000
ENT.SuperSeeker = false
ENT.SuperSteerTime = 0
ENT.SuperSteerBoostTime = 100
ENT.NoReacquire = true
ENT.ShootEntData = {}
ENT.IsProjectile = true
ENT.LockOnPoint = nil

-- function ENT:Detonate()
    -- local attacker = self.Attacker or self:GetOwner()
    -- local dir = self:GetForward()
    -- local src = self:GetPos() - dir * 64

    -- local dmg = DamageInfo()
    -- dmg:SetAttacker(attacker)
    -- dmg:SetDamageType(DMG_AIRBOAT + DMG_BLAST)
    -- dmg:SetInflictor(self)
    -- dmg:SetDamageForce(self:GetVelocity() * 100)
    -- dmg:SetDamagePosition(src)
    -- dmg:SetDamage(32)
    -- util.BlastDamageInfo(dmg, self:GetPos(), self.Radius)
	-- util.BlastDamage(self, IsValid(self:GetOwner()) and self:GetOwner() or self, self:GetPos(), 128, 24)

    -- local fx = EffectData()
    -- fx:SetOrigin(self:GetPos())

    -- if self:WaterLevel() > 0 then
        -- util.Effect("WaterSurfaceExplosion", fx)
    -- else
        -- ParticleEffect("Generic_explo_high", self:GetPos(), Angle(-90, 0, 0))
    -- end

    -- self:EmitSound("COD2019.HE_ExplosiveHit")
    -- util.ScreenShake(self:GetPos(), 25, 4, 0.75, self.Radius * 4)
    -- util.Decal("Scorch", self:WorldSpaceCenter(), self:WorldSpaceCenter() + self:GetUp() * -100, {self})
    -- self:Remove()
-- end

function ENT:Detonate()

	local phys = self:GetPhysicsObject()
	if (self:WaterLevel() <= 0) then
		ParticleEffect("Generic_explo_mid", self:GetPos(), Angle(-90, 0, 0))
	else
		local effectdata = EffectData()
		effectdata:SetOrigin(phys:GetPos())
		util.Effect("WaterSurfaceExplosion", effectdata)
	end

	local dmgInfo = DamageInfo()
	dmgInfo:SetDamage(128)
	dmgInfo:SetAttacker(IsValid(self:GetOwner()) && self:GetOwner() || self)
	dmgInfo:SetInflictor(self)
	dmgInfo:SetDamageType(self:GetDamageType())
	util.BlastDamageInfo(dmgInfo, phys:GetPos(), 190)

	util.ScreenShake(phys:GetPos(), 3500, 1111, 1, 300)
	util.Decal("Scorch", self:WorldSpaceCenter(), self:WorldSpaceCenter() + self:GetUp() * -100, {self})

	for i, e in pairs(ents.FindInSphere(self:GetPos(), 32)) do
		if (e:GetClass() == "npc_strider") then
			e:Fire("Explode")
		end 
	end

	self:Remove()
end

function ENT:GetDamageType() 
	return DMG_BLAST + DMG_AIRBOAT
end

function ENT:OnRemove()
	if (self:WaterLevel() <= 0) then
		self:EmitSound("^weapons/cod2019/shared/rocket_expl_body_02.ogg", 100, 100, 1, CHAN_WEAPON) --snd scripts dont work lol!
     if CLIENT then
		local dlight = DynamicLight(self:EntIndex())
		if (dlight) then
			dlight.pos = self:GetPos()
			dlight.r = 255
			dlight.g = 75
			dlight.b = 0
			dlight.brightness = 5
			dlight.Decay = 2000
			dlight.Size = 1024
			dlight.DieTime = CurTime() + 5
		end
	 end
	end
	self:StopParticles()
end