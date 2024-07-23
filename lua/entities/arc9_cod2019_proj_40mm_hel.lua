AddCSLuaFile()

if CLIENT then
    killicon.Add( "arc9_cod2019_proj_40mm_hel", "VGUI/killicons/cod2019_nade_he", Color(251, 85, 25, 255))
end

ENT.Base                     = "arc9_cod2019_proj_base"
ENT.PrintName                = "40mm HE"
ENT.Spawnable                = false
ENT.Model                    = "models/weapons/cod2019/m32_nade.mdl"

ENT.IsRocket = false // projectile has a booster and will not drop.
ENT.InstantFuse = false // projectile is armed immediately after firing.
ENT.RemoteFuse = false // allow this projectile to be triggered by remote detonator.
ENT.ImpactFuse = true // projectile explodes on impact.

ENT.ExplodeOnDamage = false // projectile explodes when it takes damage.
ENT.ExplodeUnderwater = true
ENT.SmokeTrail = false
ENT.RocketTrailParticle = "40mm_trail"  -- name of the particle effect
ENT.RocketTrail = true -- leaves trail of a particle effct

ENT.Delay = 0
ENT.SafetyFuse = 0.05
ENT.FlareColor = Color(255, 200, 55)
ENT.FlareSizeMin = 5
ENT.FlareSizeMax = 10
ENT.Radius = 256

DEFINE_BASECLASS(ENT.Base)

PrecacheParticleSystem("40mm_trail")

function ENT:Initialize()
	self:SetModel(self.Model)
	self:PhysicsInit(SOLID_VPHYSICS)
	self:GetPhysicsObject():Wake()
	self:GetPhysicsObject():AddGameFlag(FVPHYSICS_NO_PLAYER_PICKUP)
	self:GetPhysicsObject():AddGameFlag(FVPHYSICS_NO_IMPACT_DMG)
	self:GetPhysicsObject():AddGameFlag(FVPHYSICS_HEAVY_OBJECT)
	self:GetPhysicsObject():EnableMotion(true)
	self:GetPhysicsObject():EnableDrag(false)
	self:GetPhysicsObject():SetMass(1000)
	self:SetSolid(SOLID_VPHYSICS)
	self:AddEFlags(EFL_NO_DAMAGE_FORCES)
	self:AddEFlags(EFL_DONTWALKON)
	self:AddEFlags(EFL_DONTBLOCKLOS)
	self:AddEFlags(EFL_NO_PHYSCANNON_INTERACTION)
	self:GetPhysicsObject():SetVelocityInstantaneous(self:GetAngles():Forward() + Vector(0, 0, 0.1))
	self:GetPhysicsObject():SetBuoyancyRatio(0)

	BaseClass.Initialize(self)
end

function ENT:Impact(data, collider)
    if self.SpawnTime + self.SafetyFuse > CurTime() then
        local attacker = self.Attacker or self:GetOwner()
        local ang = data.OurOldVelocity:Angle()
        local fx = EffectData()
        fx:SetOrigin(data.HitPos)
        fx:SetNormal(-ang:Forward())
        fx:SetAngles(-ang)
        util.Effect("ManhackSparks", fx)

        if IsValid(data.HitEntity) then
            local dmginfo = DamageInfo()
            dmginfo:SetAttacker(attacker)
            dmginfo:SetInflictor(self)
            dmginfo:SetDamageType(DMG_CLUB + DMG_DIRECT)
            dmginfo:SetDamage(100)
			dmginfo:SetDamageForce(data.OurOldVelocity * 25)
            dmginfo:SetDamagePosition(data.HitPos)
            data.HitEntity:TakeDamageInfo(dmginfo)
        end

        self:EmitSound("weapons/rpg/shotdown.wav", 80)

        for i = 1, 1 do
            local prop = ents.Create("prop_physics")
            prop:SetPos(self:GetPos())
            prop:SetAngles(self:GetAngles())
            prop:SetModel("models/weapons/cod2019/m32_nade.mdl")
            prop:Spawn()
            prop:GetPhysicsObject():SetVelocityInstantaneous(data.OurNewVelocity * 0.5 + VectorRand() * 75)
            prop:SetCollisionGroup(COLLISION_GROUP_DEBRIS)

            SafeRemoveEntityDelayed(prop, 3)
        end

        self:Remove()
        return true
    end
	--util.Decal("Scorch", data.HitPos + data.HitNormal, data.HitPos - data.HitNormal)
end

function ENT:Detonate(data)
    local attacker = self.Attacker or self:GetOwner()
    local dir = self:GetForward()
    local src = self:GetPos() - dir * 64

    local dmg = DamageInfo()
    dmg:SetAttacker(attacker)
    dmg:SetDamageType(DMG_AIRBOAT + DMG_SNIPER + DMG_BLAST)
    dmg:SetInflictor(self)
    dmg:SetDamageForce(self:GetVelocity() * 100)
    dmg:SetDamagePosition(src)
    dmg:SetDamage(150)
    util.BlastDamageInfo(dmg, self:GetPos(), self.Radius)
	util.BlastDamage(self, IsValid(self:GetOwner()) and self:GetOwner() or self, self:GetPos(), 300, 32)
	
    local fx = EffectData()
	fx:SetOrigin(self:GetPos())
	fx:SetStart(self:GetPos())
	fx:SetRadius(256)
    fx:SetEntity(self)
    if self:WaterLevel() > 0 then
        util.Effect("WaterSurfaceExplosion", fx)
    else
        util.Effect("cod2019_grenade_explosion", fx)
		self:EmitSound("Cod2019.Frag.Explode")
    end
	
    timer.Simple(0, function() self:Remove() end)
end

function ENT:OnRemove()
    if self.LoopSound then
        self.LoopSound:Stop()
    end
	self:StopParticles()
end