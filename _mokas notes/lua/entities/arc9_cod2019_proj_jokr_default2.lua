AddCSLuaFile()

ENT.Base                     = "arc9_cod2019_proj_base"
ENT.PrintName                = "Jokr Rocket"
ENT.Spawnable                = false

ENT.Model                    = "models/weapons/cod2019/mags/w_la_jokr_rocket.mdl"

ENT.IsRocket = true // projectile has a booster and will not drop.

ENT.InstantFuse = false // projectile is armed immediately after firing.
ENT.RemoteFuse = false // allow this projectile to be triggered by remote detonator.
ENT.ImpactFuse = true // projectile explodes on impact.

ENT.ExplodeOnDamage = true
ENT.ExplodeUnderwater = true

ENT.Delay = 0
ENT.SafetyFuse = 0.01

ENT.AudioLoop = "weapons/cod2019/jokr/weap_juliet_proj_lp_01.wav"
ENT.SmokeTrail = true

ENT.FlareColor = Color(155, 155, 155)
ENT.Radius = 300

DEFINE_BASECLASS(ENT.Base)

function ENT:Initialize()
    self:SetModel(self.Model) -- Change this to your rocket model
    self:PhysicsInit(SOLID_VPHYSICS)
    self:SetMoveType(MOVETYPE_VPHYSICS)
    self:SetSolid(SOLID_VPHYSICS)
    self:SetCollisionGroup(COLLISION_GROUP_PROJECTILE)
    
    local phys = self:GetPhysicsObject()
    if phys:IsValid() then
        phys:Wake()
    end
    
    self.InitialVelocity = 2000 -- Adjust this value to change the initial upward speed
    self.TargetVelocity = 6000 -- Adjust this value to change the downward speed
    self.UpwardTime = 2 -- Time in seconds the rocket goes up
    self.LaunchTime = CurTime()
    BaseClass.Initialize(self)
end

function ENT:Impact(data, collider)
    local hitPos = data.HitPos -- Get the position where the grenade hit
    local hitNormal = data.HitNormal -- Get the normal vector of the surface hit
    if self.SpawnTime + self.SafetyFuse > CurTime() and !self.NPCDamage then
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
            dmginfo:SetDamageType(DMG_CRUSH + DMG_CLUB)
            dmginfo:SetDamage(250 * (self.NPCDamage and 0.5 or 1))
            dmginfo:SetDamageForce(data.OurOldVelocity * 25)
            dmginfo:SetDamagePosition(data.HitPos)
            data.HitEntity:TakeDamageInfo(dmginfo)
        end

        self:EmitSound("weapons/rpg/shotdown.wav", 80)

        for i = 1, 1 do
            local prop = ents.Create("prop_physics")
            prop:SetPos(self:GetPos())
            prop:SetAngles(self:GetAngles())
            prop:SetModel("models/weapons/cod2019/mags/w_la_jokr_rocket.mdl")
            prop:Spawn()
            prop:GetPhysicsObject():SetVelocityInstantaneous(data.OurNewVelocity * 0.5 + VectorRand() * 75)
            prop:SetCollisionGroup(COLLISION_GROUP_DEBRIS)

            SafeRemoveEntityDelayed(prop, 3)
        end

        self:Remove()
        return true
    end
	util.Decal("Scorch", hitPos + hitNormal, hitPos - hitNormal)
end

function ENT:OnThink()
    local phys = self:GetPhysicsObject()
    if phys:IsValid() then
        local timeSinceLaunch = CurTime() - self.LaunchTime
        
        if timeSinceLaunch < self.UpwardTime then
            -- Go up
            phys:SetVelocity(Vector(0, 15, self.InitialVelocity))
			phys:SetAngles(Angle(0, 0, 90)) -- Point straight up
        else
            -- Go down towards the target
            local targetPos = self:GetPos() + Vector(-500, 0, -1000) -- Change this to your target position
            local dirToTarget = (targetPos - self:GetPos()):GetNormalized()
            phys:SetVelocity(dirToTarget * self.TargetVelocity)
			phys:SetAngles(Angle(0, 0, -180)) -- Point straight up
        end
    end
    
    self:NextThink(CurTime())
    return true
end

function ENT:Detonate()
    local attacker = self.Attacker or self:GetOwner()

    if self.NPCDamage then
        util.BlastDamage(self, attacker, self:GetPos(), 350, 100)
    else
        util.BlastDamage(self, attacker, self:GetPos(), 350, 175)
        self:FireBullets({
            Attacker = attacker,
            Damage = 1000,
            Tracer = 0,
            Src = self:GetPos(),
            Dir = self:GetForward(),
            HullSize = 0,
            Distance = 32,
            IgnoreEntity = self,
            Callback = function(atk, btr, dmginfo)
                dmginfo:SetDamageType(DMG_AIRBOAT + DMG_BLAST) // airboat damage for helicopters and LVS vehicles
                dmginfo:SetDamageForce(self:GetForward() * 20000) // LVS uses this to calculate penetration!
            end,
        })
    end

    local fx = EffectData()
    fx:SetOrigin(self:GetPos())
    if self:WaterLevel() > 0 then
        util.Effect("WaterSurfaceExplosion", fx)
    else
        --util.Effect("Explosion", fx)
		ParticleEffect("grenade_final", self:GetPos(), Angle(-90, 0, 0))
    end
    self:EmitSound("Cod2019.Frag.Explode")
	util.ScreenShake(self:GetPos(), 25, 4, 0.75, self.Radius * 4)
	util.Decal("Scorch", self:GetPos(), self:GetPos() + self:GetUp() * -100, {self})
    self:Remove()
end