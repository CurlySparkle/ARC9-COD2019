ENT.Category = "ShadowMoly"
ENT.Type = "anim"
ENT.Base = "base_gmodentity"

ENT.PrintName = "Molotov Cocktail"
ENT.Spawnable = false

game.AddParticles("particles/sdrk_molotov.pcf")
PrecacheParticleSystem( "weapon_molotov_thrown" )

local function TargetIsValid(ent) 
    return !ent:IsWorld()
end

function ENT:Initialize() 
    self:SetModel("models/weapons/cod2019/w_molotov_thrown.mdl") --set this string to the filepath of your molotov model | "models/your/filepath/yourfile.mdl"
    self:PhysicsInit(SOLID_VPHYSICS)
    self:SetMoveType(MOVETYPE_VPHYSICS)
    self:SetSolid(SOLID_VPHYSICS)
	self:SetAngles(Angle(0, 0, -70))

	timer.Simple(0, function()
        if (!IsValid(self)) then return end
        ParticleEffectAttach("weapon_molotov_thrown",PATTACH_POINT_FOLLOW,self,1)
	end)    

    local phys = self:GetPhysicsObject()
    if phys:IsValid() then
        phys:Wake()
    end

    phys:SetMass(10)
    phys:ApplyTorqueCenter( VectorRand(-10,10) )
end

function ENT:Think()
end

function ENT:PhysicsCollide( data,phys )
	local ang = data.HitNormal:Angle()
	ang.p = math.abs( ang.p )
	ang.y = math.abs( ang.y )
	ang.r = math.abs( ang.r )
	
	if ang.p > 90 or ang.p < 60 then
		self:EmitSound(Sound("GlassBottle.ImpactHard"))

		local impulse = (data.OurOldVelocity - 2 * data.OurOldVelocity:Dot(data.HitNormal) * data.HitNormal)*0.25
		phys:ApplyForceCenter(impulse)
	else
       self:Detonate()
	end
end

function ENT:Detonate()
    if self:WaterLevel() > 0 then self:Remove() return end
    local attacker = self.Attacker or self:GetOwner() or self
	
	self:EmitSound("COD2019.Molotov.Explode")

    local firepool = ents.Create( "arc9_cod2019_fire_pool2" )
    if !IsValid(firepool) then return end

    firepool:SetPos(self:GetPos())
    firepool:SetOwner(attacker)
    firepool:Spawn()

    self:Remove()
end

function ENT:DrawTranslucent()
    self:Draw()
end

function ENT:Draw() 
    self:DrawModel()
end