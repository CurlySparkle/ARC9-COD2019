if CLIENT then
    killicon.Add( "arc9_cod2019_proj_rpg_default", "hud/killicons/default", Color( 255, 255, 255, 255 ) )
end

ENT.Type 				= "anim"
ENT.Base 				= "base_entity"
ENT.PrintName 			= "RPG-7 Round"
ENT.Author 				= ""
ENT.Information 		= ""

ENT.Spawnable 			= false


AddCSLuaFile()

ENT.Model = "models/weapons/cod2019/mags/w_eq_rpg_rocket.mdl"
ENT.Ticks = 0
ENT.FuseTime = 10
ENT.Radius = 300

if SERVER then

function ENT:Initialize()
    self:SetModel(self.Model)
    self:PhysicsInit(SOLID_VPHYSICS)

    local phys = self:GetPhysicsObject()
    if phys:IsValid() then
        phys:Wake()
        phys:EnableGravity(false)
    end

    self.SpawnTime = CurTime()
    self.motorsound = CreateSound( self, "weapons/rpg/rocket1.wav")
    self.motorsound:Play()

    timer.Simple(0.1, function()
        if !IsValid(self) then return end
        self:SetCollisionGroup(COLLISION_GROUP_PROJECTILE)
    end)
end

function ENT:Think()
    if SERVER and CurTime() - self.SpawnTime >= self.FuseTime then
        self:Detonate()
    end
end

function ENT:OnRemove()
    self.motorsound:Stop()
end

end

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
    if !self:IsValid() then return end
    local effectdata = EffectData()
        effectdata:SetOrigin( self:GetPos() )

    if self:WaterLevel() >= 1 then
        util.Effect( "WaterSurfaceExplosion", effectdata )
        self:EmitSound("weapons/underwater_explode3.wav", 125, 100, 1, CHAN_AUTO)
    else
        	self:EmitSound("CSGO.Frag.Explode")
			ParticleEffect("explosion_hegrenade_brief", self:GetPos(), Angle(-90, 0, 0))
            ParticleEffect("explosion_hegrenade_interior", self:GetPos(), Angle(-90, 0, 0))
            ParticleEffect("smoke_plume", self:GetPos(), Angle(-90, 0, 0))
            ParticleEffect("grenade_explosion_01", self:GetPos(), Angle(-90, 0, 0))
        --self:EmitSound("phx/kaboom.wav", 125, 100, 1, CHAN_AUTO)
    end

    local attacker = self

    if self.Owner:IsValid() then
        attacker = self.Owner
    end

    util.BlastDamage(self, attacker, self:GetPos(), 300, 110)
	util.ScreenShake(self:GetPos(), 25, 4, 0.75, self.Radius * 4)

    self:FireBullets({
        Attacker = attacker,
        Damage = 0,
        Tracer = 0,
        Distance = 20000,
        Dir = self:GetVelocity(),
        Src = self:GetPos(),
        Callback = function(att, tr, dmg)
            util.Decal("Scorch", tr.StartPos, tr.HitPos - (tr.HitNormal * 16), self)
        end
    })

    self:Remove()
end

function ENT:PhysicsCollide(colData, collider)
    self:Detonate()
end

function ENT:Draw()
    cam.Start3D() -- Start the 3D function so we can draw onto the screen.
        render.SetMaterial( Material("effects/blueflare1") ) -- Tell render what material we want, in this case the flash from the gravgun
        render.DrawSprite( self:GetPos(), math.random(100, 200), math.random(100, 200), Color(255, 225, 175) ) -- Draw the sprite in the middle of the map, at 16x16 in it's original colour with full alpha.
    cam.End3D()
end