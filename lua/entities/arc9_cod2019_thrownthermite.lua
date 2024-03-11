if CLIENT then
    killicon.Add( "arc9_cod2019_thrownthermite", "vgui/killicons/cod2019_thermite", Color(251, 85, 25, 255))
end

ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "Thermite Nade"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false

ENT.Model = "models/weapons/cod2019/w_eq_thermite_thrown2.mdl"
ENT.FuseTime = 2
ENT.ArmTime = 0
ENT.Ticks = 0
ENT.ImpactFuse = true
ENT.NextDamageTick = 0

AddCSLuaFile()

function ENT:Initialize()
    if SERVER then
        self:SetModel( self.Model )
        self:SetMoveType( MOVETYPE_VPHYSICS )
        self:SetSolid( SOLID_VPHYSICS )
        self:PhysicsInit( SOLID_VPHYSICS )
        self:DrawShadow( true )
        self:SetAngles(Angle(-190, -190, -190))
        
        --ParticleEffectAttach("smoke_thrown_trail",PATTACH_POINT_FOLLOW,self,1)

        local phys = self:GetPhysicsObject()
        if phys:IsValid() then
            phys:Wake()
            phys:SetBuoyancyRatio(0)
        end

        self.SpawnTime = CurTime()
        self.HasCollided = false

        timer.Simple(0, function()
            if !IsValid(self) then return end
            self:SetCollisionGroup(COLLISION_GROUP_PROJECTILE)
        end)
    end
end

function ENT:PhysicsCollide(data, physobj)
    if SERVER then
        if not self.HasCollided then
            self.HasCollided = true
            local phys = self:GetPhysicsObject()
            if phys:IsValid() then
                phys:SetVelocity(Vector(0, 0, 0))
            end
        end

        if (CurTime() - self.SpawnTime >= self.ArmTime) and self.ImpactFuse then
            self:Detonate()
        end
    end
end

function ENT:Detonate()
   if (self:WaterLevel() >= 1 or self:WaterLevel() >= 2) then
    SafeRemoveEntityDelayed(self, 0)
    self:Remove()
    self:EmitSound("weapons/rpg/shotdown.wav", 80)
    else
    self:DoDetonate()
   end
end

function ENT:Think()
    if SERVER then
        if not self.HasCollided then
            local phys = self:GetPhysicsObject()
            phys:ApplyForceCenter( self:GetAngles():Forward() * 500 )
        end

        if self.SpawnTime + self.FuseTime <= CurTime() then
            self:Detonate()
        end
    else
        if self.Ticks % 5 == 0 then
            local emitter = ParticleEmitter(self:GetPos())

            if !self:IsValid() or self:WaterLevel() > 2 then return end
            if !IsValid(emitter) then return end

            local smoke = emitter:Add("particle/particle_smokegrenade", self:GetPos())
            smoke:SetVelocity( VectorRand() * 25 )
            smoke:SetGravity( Vector(math.Rand(-5, 5), math.Rand(-5, 5), math.Rand(-20, -25)) )
            smoke:SetDieTime( math.Rand(1.5, 2.0) )
            smoke:SetStartAlpha( 25 )
            smoke:SetEndAlpha( 0 )
            smoke:SetStartSize( 0 )
            smoke:SetEndSize( 100 )
            smoke:SetRoll( math.Rand(-180, 180) )
            smoke:SetRollDelta( math.Rand(-0.2,0.2) )
            smoke:SetColor( 55, 55, 55 )
            smoke:SetAirResistance( 5 )
            smoke:SetPos( self:GetPos() )
            smoke:SetLighting( false )
            emitter:Finish()
        end

        self.Ticks = self.Ticks + 1
    end
end

function ENT:DoDetonate()
    if self:WaterLevel() > 0 then self:Remove() return end
    local attacker = self.Attacker or self:GetOwner() or self

    -- local dmg = 50
    -- if self.ImpactFuse then dmg = dmg * 0.5 end
    -- util.BlastDamage(self, attacker, self:GetPos(), 350, dmg)

    local cloud = ents.Create( "arc9_cod2019_thermite" )
    self:EmitSound("weapons/cod2019/shared/weap_thermite_impact_01.ogg", 100)
    util.Decal("Dark", self:GetPos(), self:GetPos() - Vector(0, 0, 50), self)

    if !IsValid(cloud) then return end

    cloud:SetPos(self:GetPos())
    cloud:SetAngles(self:GetAngles())
    cloud:SetOwner(attacker)
    cloud:Spawn()

    self:Remove()
end

function ENT:DrawTranslucent()
    self:Draw()
end

function ENT:Draw()
    self:DrawModel()
end