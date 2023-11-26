AddCSLuaFile()

if CLIENT then
    killicon.Add( "arc9_cod2019_thrownfrag", "vgui/killicons/cod2019_frag", Color(251, 85, 25, 255))
end

ENT.Type 				= "anim"
ENT.Base 				= "arc9_nade_base"
ENT.PrintName 			= "Frag"

ENT.Spawnable 			= false
ENT.CollisionGroup = COLLISION_GROUP_PROJECTILE

ENT.Model = "models/weapons/cod2019/w_eq_smoke.mdl"
ENT.SphereSize = 2
ENT.PhysMat = "grenade"

ENT.LifeTime = 1.5
ENT.Radius = 300

ENT.ExplodeOnImpact = true

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
		self:SetAngles(Angle(0, 0, -70))
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
    local effectdata = EffectData()
    effectdata:SetOrigin(self:GetPos())
	
	self:StopParticles()

    if self:WaterLevel() >= 1 then
        util.Effect("WaterSurfaceExplosion", effectdata)
        self:EmitSound("weapons/underwater_explode3.wav", 125, 100, 1, CHAN_AUTO)
    else
        effectdata:SetMagnitude(4)
        effectdata:SetScale(1)
        effectdata:SetRadius(4)
        effectdata:SetNormal(self:GetVelocity():GetNormalized())
        util.Effect("Sparks", effectdata)
        self:EmitSound("physics/metal/metal_box_break1.wav", 100, 200)
        self:EmitSound("weapons/cod2019/throwables/molotov/inc_grenade_detonate_1.wav", 100, 100, 0.75)
    end

    for i = 1, 6, 1 do
        local cloud = ents.Create("arc9_cod2019_napalm_cluster")
        cloud.FireTime = math.Rand(20, 40)

        if !IsValid(cloud) then return end

        local vel = VectorRand() * 500

        cloud.Order = i
        cloud:SetPos(self:GetPos() - (self:GetVelocity() * FrameTime()) + VectorRand())
        --cloud:SetAbsVelocity(vel + self:GetVelocity())
        cloud:SetOwner(self:GetOwner())
        cloud:Spawn()
        cloud:GetPhysicsObject():SetVelocityInstantaneous(self:GetVelocity() + vel)

    end
	self:Remove()
end

function ENT:OnRemove()
	if (IsValid(self.constraint)) then
		self.constraint:Remove()
	end
end