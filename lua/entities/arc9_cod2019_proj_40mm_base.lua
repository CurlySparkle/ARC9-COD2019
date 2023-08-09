AddCSLuaFile()
ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "Base Grenade"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false

ENT.Ticks = 0
ENT.CollisionGroup = COLLISION_GROUP_PROJECTILE

ENT.GrenadeDamage = true
ENT.GrenadeRadius = 0
ENT.FuseTime = 10
ENT.DragCoefficient = 1
ENT.DetonateOnImpact = true
ENT.Gravity = true
ENT.Damage = 15
ENT.Radius = 300

ENT.Model = "models/weapons/cod2019/m32_nade.mdl"
ENT.ExplosionEffect = true
ENT.Scorch = "Scorch"
ENT.SmokeTrail = true

local path = "weapons/cod2019/m32/"
local path1 = "weapons/"
--ENT.ExplosionSounds = {path .. "explosion-close-01.ogg", path .. "explosion-close-02.ogg"}
ENT.DebrisSounds = {path1 .. "debris1.wav", path1 .. "debris2.wav", path1 .. "debris3.wav"}


if SERVER then
    function ENT:Initialize()
        self:SetModel(self.Model)
        self:PhysicsInit(SOLID_VPHYSICS)
        local phys = self:GetPhysicsObject()

        if phys:IsValid() then
            phys:Wake()
            phys:SetDragCoefficient(self.DragCoefficient)
            phys:SetBuoyancyRatio(0.1)
			phys:EnableGravity(self.Gravity)
        end

        self.SpawnTime = CurTime()
    end

    function ENT:Think()
        if SERVER and CurTime() - self.SpawnTime >= self.FuseTime then
            self:Detonate()
        end
    end
else
    function ENT:Think()
        if self.SmokeTrail then
            if self.Ticks % 5 == 0 then
                local emitter = ParticleEmitter(self:GetPos())
                if not self:IsValid() or self:WaterLevel() > 2 then return end
                if not IsValid(emitter) then return end
                local smoke = emitter:Add("particle/particle_smokegrenade", self:GetPos())
                smoke:SetVelocity(VectorRand() * 25)
                smoke:SetGravity(Vector(math.Rand(-5, 5), math.Rand(-5, 5), math.Rand(-20, -25)))
                smoke:SetDieTime(math.Rand(1.5, 2.0))
                smoke:SetStartAlpha(255)
                smoke:SetEndAlpha(0)
                smoke:SetStartSize(0)
                smoke:SetEndSize(100)
                smoke:SetRoll(math.Rand(-180, 180))
                smoke:SetRollDelta(math.Rand(-0.2, 0.2))
                smoke:SetColor(20, 20, 20)
                smoke:SetAirResistance(5)
                smoke:SetPos(self:GetPos())
                smoke:SetLighting(false)
                emitter:Finish()
            end
            self.Ticks = self.Ticks + 1
        end
    end
end

-- overwrite to do special explosion things
function ENT:DoDetonation()
    local attacker = IsValid(self:GetOwner()) and self:GetOwner() or self
    --util.BlastDamage(self, attacker, self:GetPos(), self.GrenadeRadius, self.GrenadeDamage or self.Damage or 0)
	util.BlastDamage(self, IsValid(self:GetOwner()) and self:GetOwner() or self, self:GetPos(), self.Radius, self.DamageOverride or self.Damage)
end

function ENT:DoImpact(ent)
    local attacker = IsValid(self:GetOwner()) and self:GetOwner() or self
    local dmg = DamageInfo()
    dmg:SetAttacker(attacker)
    dmg:SetInflictor(self)
    dmg:SetDamage(100)
    dmg:SetDamageType(DMG_CRUSH)
    dmg:SetDamageForce(self.GrenadeDir * 5000)
    dmg:SetDamagePosition(self:GetPos())
    ent:TakeDamageInfo(dmg)
end

function ENT:Detonate()
    if not self:IsValid() or self.BOOM then return end
    self.BOOM = true

    if self.ExplosionEffect then
        local effectdata = EffectData()
        effectdata:SetOrigin(self:GetPos())

        if self:WaterLevel() >= 1 then
            util.Effect("WaterSurfaceExplosion", effectdata)
            self:EmitSound("weapons/underwater_explode3.wav", 125, 100, 1, CHAN_AUTO)
        else
            -- util.Effect("Explosion", effectdata)

            -- explosion_HE_m79_fas2
            -- explosion_he_grenade_fas2
            -- explosion_HE_claymore_fas2
            -- explosion_grenade_fas2

            --self:EmitSound(self.ExplosionSounds[math.random(1,#self.ExplosionSounds)], 125, 100, 1, CHAN_AUTO)
			self:EmitSound("Cod2019.Frag.Explode")
			self:EmitSound("cod2019.M32.Explode")
			--ParticleEffect("explosion_hegrenade_brief", self:GetPos(), Angle(-90, 0, 0))
            --ParticleEffect("explosion_hegrenade_interior", self:GetPos(), Angle(-90, 0, 0))
            ParticleEffect("smoke_plume", self:GetPos(), Angle(-90, 0, 0))
            --ParticleEffect("grenade_explosion_01", self:GetPos(), Angle(-90, 0, 0))
            ParticleEffect("explosion_grenade", self:GetPos(), Angle(-90, 0, 0))

            --self:EmitSound("phx/kaboom.wav", 125, 100, 1, CHAN_AUTO)
        end

        util.ScreenShake(self:GetPos(), 25, 4, 0.75, self.Radius * 4)

        if self.GrenadePos == nil then
            self.GrenadePos = self:GetPos()
        end
        if self.GrenadeDir == nil then
            self.GrenadeDir = self:GetVelocity():GetNormalized()
        end

        local trace = util.TraceLine({
            start = self.GrenadePos,
            endpos = self.GrenadePos + self.GrenadeDir * 4,
            mask = MASK_SOLID_BRUSHONLY
        })
        if trace.Hit then
            self:EmitSound(self.DebrisSounds[math.random(1,#self.DebrisSounds)], 85, 100, 1, CHAN_AUTO)
        end
    end

    self:DoDetonation()
	self.Defused = true

    if self.Scorch then
        util.Decal(self.Scorch, self.GrenadePos, self.GrenadePos + self.GrenadeDir * 4, self)
    end

    self:Remove()
end

function ENT:PhysicsCollide(colData, collider)
    self.GrenadeDir = colData.OurOldVelocity:GetNormalized()
    self.GrenadePos = colData.HitPos

    self:DoImpact(colData.HitEntity)

    if self.DetonateOnImpact then
        self:Detonate()
    else
        local effectdata = EffectData()
        effectdata:SetOrigin(self:GetPos())
        effectdata:SetMagnitude(2)
        effectdata:SetScale(1)
        effectdata:SetRadius(2)
        effectdata:SetNormal(self.GrenadeDir)
        util.Effect("Sparks", effectdata)
        self:EmitSound("weapons/rpg/shotdown.wav", 100, 150)
        self:Remove()
    end
   self:Defuse()
   return
end

function ENT:Defuse()
    self.Defused = true
    SafeRemoveEntityDelayed(self, 5)
	
    local phys = self:GetPhysicsObject()
    if phys:IsValid() then
       phys:EnableGravity(true)
    end
end

function ENT:Draw()
    self:DrawModel()
end