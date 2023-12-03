ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "Smoke Grenade"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false

ENT.Model = "models/weapons/cod2019/w_eq_smoke_thrown.mdl"
ENT.FuseTime = 2
ENT.ArmTime = 0
ENT.Ticks = 0
ENT.ImpactFuse = false

AddCSLuaFile()

function ENT:Initialize()
    if SERVER then
        self:SetModel( self.Model )
        self:SetMoveType( MOVETYPE_VPHYSICS )
        self:SetSolid( SOLID_VPHYSICS )
        self:PhysicsInit( SOLID_VPHYSICS )
        self:DrawShadow( true )
		self:SetAngles(Angle(0, 0, -75))
		
		--ParticleEffectAttach("smoke_thrown_trail",PATTACH_POINT_FOLLOW,self,1)

        local phys = self:GetPhysicsObject()
        if phys:IsValid() then
            phys:Wake()
            phys:SetBuoyancyRatio(0)
        end

        self.SpawnTime = CurTime()

        timer.Simple(0, function()
            if !IsValid(self) then return end
            self:SetCollisionGroup(COLLISION_GROUP_PROJECTILE)
        end)
    end
end

function ENT:PhysicsCollide(data, physobj)
    if SERVER then
        if data.Speed > 75 then
            --self:EmitSound(Sound("weapons/cod2019/throwables/frag/phy_frag_bounce_concrete_hard_0" .. math.random(1,3) .. ".ogg"))
			self:EmitSound(Sound("weapons/cod2019/throwables/frag/phy_frag_bounce_concrete_hard_0" .. math.random(1,3) .. ".ogg"), 75, 100, 1, CHAN_AUTO )
        elseif data.Speed > 25 then
            --self:EmitSound(Sound("weapons/cod2019/throwables/frag/phy_frag_bounce_concrete_hard_0" .. math.random(1,3) .. ".ogg"))
			self:EmitSound(Sound("weapons/cod2019/throwables/frag/phy_frag_bounce_concrete_hard_0" .. math.random(1,3) .. ".ogg"), 75, 100, 0.3, CHAN_AUTO )
        end

        if (CurTime() - self.SpawnTime >= self.ArmTime) and self.ImpactFuse then
            self:Detonate()
        end
    end
end

-- function ENT:Think()
    -- if SERVER and CurTime() - self.SpawnTime >= self.FuseTime then
        -- self:Detonate()
    -- end
-- end

function ENT:Think()
    if SERVER then
        local phys = self:GetPhysicsObject()
        phys:ApplyForceCenter( self:GetAngles():Forward() * 500 )

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
            smoke:SetStartAlpha( 255 )
            smoke:SetEndAlpha( 0 )
            smoke:SetStartSize( 0 )
            smoke:SetEndSize( 100 )
            smoke:SetRoll( math.Rand(-180, 180) )
            smoke:SetRollDelta( math.Rand(-0.2,0.2) )
            smoke:SetColor( 20, 20, 20 )
            smoke:SetAirResistance( 5 )
            smoke:SetPos( self:GetPos() )
            smoke:SetLighting( false )
            emitter:Finish()
        end

        self.Ticks = self.Ticks + 1
    end
end

function ENT:Detonate()
    if !self:IsValid() or self:WaterLevel() > 2 then return end
    --self:EmitSound("COD2019.Smoke.Pop")

    local cloud = ents.Create( "arc9_cod2019_smoke" )

    if !IsValid(cloud) then return end

    cloud:SetPos(self:GetPos())
    cloud:Spawn()

    self:Remove()
end



function ENT:DrawTranslucent()
    self:Draw()
end

function ENT:Draw()
    self:DrawModel()
end