AddCSLuaFile()

ENT.Type = "anim"
ENT.Base = "arc9_nade_base"
ENT.PrintName = "Incendiary Grenade"
ENT.Spawnable = false
ENT.CollisionGroup = COLLISION_GROUP_PROJECTILE
ENT.Model = "models/weapons/cod2019/w_eq_thermite_thrown.mdl"
ENT.SphereSize = 2
ENT.PhysMat = "grenade"
ENT.LifeTime = 2
ENT.Radius = 300
ENT.ExplodeOnImpact = false
ENT.SmokeTrail = false
ENT.BounceSound = ""
ENT.Mass = 5

function ENT:Initialize()
    if SERVER then
        self:SetModel(self.Model)
        self:SetMoveType(MOVETYPE_VPHYSICS)
        self:SetSolid(SOLID_VPHYSICS)
        self:PhysicsInit(SOLID_VPHYSICS)
        self:SetCollisionGroup(COLLISION_GROUP_NONE)
        self:DrawShadow(false)
        self:SetAngles(Angle(0, 0, -75))
        sound.EmitHint(SOUND_DANGER, self:GetPos(), self.Radius, 1, nil)
    end

    local phys = self:GetPhysicsObject()

    if phys:IsValid() then
        phys:Wake()
        phys:EnableDrag(self.Drag)
        phys:SetDragCoefficient(self.DragCoefficient)
        phys:EnableGravity(self.Gravity)
        phys:SetMass(self.Mass)
        phys:SetBuoyancyRatio(0.4)
    end

    timer.Simple(0, function()
        if not IsValid(self) then return end
        self:SetCollisionGroup(COLLISION_GROUP_PROJECTILE)
        ParticleEffectAttach("thermite_thrown_trail", PATTACH_POINT_FOLLOW, self, 1)
    end)
    self.SpawnTime = CurTime()
end

function ENT:PhysicsCollide(data)

    if data.Speed > 75 then
        self:EmitSound(Sound("weapons/cod2019/throwables/frag/phy_frag_bounce_concrete_hard_0" .. math.random(1, 3) .. ".ogg"), 75, 100, 1, CHAN_AUTO)
    elseif data.Speed > 25 then
        self:EmitSound(Sound("weapons/cod2019/throwables/frag/phy_frag_bounce_concrete_hard_0" .. math.random(1, 3) .. ".ogg"), 75, 100, 0.3, CHAN_AUTO)
    end

    self:GetPhysicsObject():SetVelocityInstantaneous(data.OurNewVelocity * 0.9)

    if self.ExplodeOnImpact then
        self.HitPos = data.HitPos
        self.HitVelocity = data.OurOldVelocity
        self:Detonate()
    end
end

function ENT:Detonate()
    if not self:IsValid() then return end
    if self.Defused then return end
    local attacker = self.Attacker or self:GetOwner()
    if self:WaterLevel() > 0 then
        local fx = EffectData()
        fx:SetOrigin(self:GetPos())
        fx:SetStart(self:GetPos())
        fx:SetRadius(512)
        fx:SetEntity(self)
        util.Effect("WaterSurfaceExplosion", fx)
        self:Remove()
    else
        self:EmitSound("weapons/cod2019/shared/weap_thermite_impact_01.ogg", 100)

        local fx = EffectData()
        fx:SetOrigin(self:GetPos())
        fx:SetStart(self:GetPos())
        fx:SetRadius(512)
        fx:SetEntity(self)
        util.Effect("cod2019_grenade_explosion", fx)

        local dmg = DamageInfo()
        dmg:SetAttacker(attacker)
        dmg:SetDamageType(DMG_BURN + DMG_BLAST)
        dmg:SetInflictor(self)
        dmg:SetDamageForce(self:GetVelocity() * 100)
        dmg:SetDamagePosition(self:GetPos())
        dmg:SetDamage(50)
        util.BlastDamageInfo(dmg, self:GetPos(), self.Radius)

        local tr = util.TraceLine({
            start = self:GetPos(),
            endpos = self:GetPos() - Vector(0, 0, 256),
            mask = MASK_SOLID,
            filter = {self, self:GetOwner()}
        })
        if tr.Hit then
            local firepool = ents.Create("arc9_cod2019_fire_pool")
            if not IsValid(firepool) then self:Remove() return end
            firepool:SetPos(tr.HitPos)
            firepool:SetOwner(attacker)
            firepool:Spawn()
        end
        self:Remove()
    end
end

function ENT:OnRemove()
    self:StopParticles()
end