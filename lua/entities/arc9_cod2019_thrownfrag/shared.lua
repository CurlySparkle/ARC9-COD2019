AddCSLuaFile()

if CLIENT then
    killicon.Add( "arc9_cod2019_thrownfrag", "vgui/killicons/cod2019_frag", Color(251, 85, 25, 255))
end

ENT.Type 				= "anim"
ENT.Base 				= "arc9_nade_base"
ENT.PrintName 			= "Frag"

ENT.Spawnable 			= false
ENT.CollisionGroup = COLLISION_GROUP_PROJECTILE

ENT.Model = "models/weapons/cod2019/w_eq_gas_thrown.mdl"
ENT.SphereSize = 2
ENT.PhysMat = "grenade"

ENT.LifeTime = 1.5
ENT.Radius = 300

ENT.ExplodeOnImpact = false

ENT.SmokeTrail = false

ENT.BounceSound = "Cod2019.Frag.Bounce"

-- function ENT:Initialize()
        -- self:SetModel(self.Model)
        -- if self.PhysBoxSize then
            -- self:PhysicsInitBox(-self.PhysBoxSize, self.PhysBoxSize)
        -- elseif self.SphereSize then
            -- self:PhysicsInitSphere(self.SphereSize, self.PhysMat)
        -- else
            -- self:PhysicsInit(SOLID_VPHYSICS)
            -- self:SetSolid(SOLID_VPHYSICS)
        -- end

        -- local phys = self:GetPhysicsObject()
        -- if phys:IsValid() then
            -- phys:Wake()
            -- phys:EnableDrag(self.Drag)
            -- phys:SetDragCoefficient(self.DragCoefficient)
            -- phys:EnableGravity(self.Gravity)
            -- phys:SetMass(self.Mass)
            -- phys:SetBuoyancyRatio(0.4)
        -- end

        -- if self.SmokeTrail then
            -- util.SpriteTrail(self, 0, Color( 255 , 255 , 255 ), false, self.SmokeTrailSize, 0, self.SmokeTrailTime, 1 / self.SmokeTrailSize * 0.5, self.SmokeTrailMat)
        -- end

        -- self.SpawnTime = CurTime()
-- end

function ENT:Initialize()
	if SERVER then
		self:SetModel(self.Model)
		self:SetMoveType( MOVETYPE_VPHYSICS )
		self:SetSolid( SOLID_VPHYSICS )
		self:PhysicsInit( SOLID_VPHYSICS )
		self:SetCollisionGroup( COLLISION_GROUP_NONE )
		self:DrawShadow( false )
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

        if self.SmokeTrail then
            util.SpriteTrail(self, 0, Color( 255 , 255 , 255 ), false, self.SmokeTrailSize, 0, self.SmokeTrailTime, 1 / self.SmokeTrailSize * 0.5, self.SmokeTrailMat)
        end

	self.SpawnTime = CurTime()
end

function ENT:Detonate()
    if not self:IsValid() then return end
    if self.Defused then return end
    if self:WaterLevel() > 0 then
        local tr = util.TraceLine({
            start = self:GetPos(),
            endpos = self:GetPos() + Vector(0, 0, 1) * 1024,
            filter = self,
        })
        local tr2 = util.TraceLine({
            start = tr.HitPos,
            endpos = self:GetPos(),
            filter = self,
            mask = MASK_WATER
        })
        ParticleEffect("water_explosion", tr2.HitPos + Vector(0, 0, 8), Angle(0, 0, 0), nil)

        // Overpressure radius
        util.BlastDamage(self, IsValid(self:GetOwner()) and self:GetOwner() or self, self:GetPos(), 512, 300)

        self:EmitSound("weapons/underwater_explode3.wav", 100)
    else
        ParticleEffect("explosion_m79", self:GetPos(), Angle(0, 0, 0), nil)
        ParticleEffect("smoke_plume", self:GetPos(), Angle(0, 0, 0), nil)

        util.BlastDamage(self, IsValid(self:GetOwner()) and self:GetOwner() or self, self:GetPos(), 256, 200)
        util.BlastDamage(self, IsValid(self:GetOwner()) and self:GetOwner() or self, self:GetPos(), 328, 100)
		util.ScreenShake(self:GetPos(), 25, 4, 0.75, self.Radius * 4)

        self:EmitSound("Cod2019.Frag.Explode")
    end

    if SERVER then
        local dir = self.HitVelocity or self:GetVelocity()

        if self.Boost <= 0 then
            dir = Vector(0, 0, -1)
        end

        self:FireBullets({
            Attacker = self,
            Damage = 0,
            Tracer = 0,
            Distance = 256,
            Dir = dir,
            Src = self:GetPos(),
            Callback = function(att, tr, dmg)
                if self.Scorch then
                    util.Decal("Scorch", tr.StartPos, tr.HitPos - (tr.HitNormal * 16), self)
                end
            end
        })
    end
    self.Defused = true

    SafeRemoveEntityDelayed(self, self.SmokeTrailTime)
    self:SetRenderMode(RENDERMODE_NONE)
    self:SetMoveType(MOVETYPE_NONE)
    self:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
end