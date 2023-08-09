AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

function ENT:Initialize() 
    self:SetModel("models/Items/AR2_Grenade.mdl")
    self:PhysicsInit(SOLID_VPHYSICS)
    self:SetMoveType(MOVETYPE_VPHYSICS)
    self:SetSolid(SOLID_VPHYSICS)
    self:SetColor(Color(0,0,0))
    ParticleEffectAttach("AC_fire_bomb_trail", PATTACH_ABSORIGIN_FOLLOW, self, 0)

    local phys = self:GetPhysicsObject()

    if phys:IsValid() then

        phys:Wake()

    end

    self:SetAngles(AngleRand())
    phys:SetVelocity(self:GetForward() * 350 + Vector(0,0,math.random(100, 200)))
end

function ENT:Think() 

    if self:WaterLevel() != 0 then 
        self:Remove()
    end

    self:NextThink(CurTime() + 0.1)
    return true
end

function ENT:CanDetonate(ent) 
    
    if ent:IsWorld() then 
        return true
    end

    if ent:IsPlayer() || ent:IsNPC() || ent:IsNextBot() || ent.Base == self.Base then 
        return false
    end

    return true
end

function ENT:PhysicsCollide( data, phys )
    if data.HitNormal.z <= -0.6 && self:CanDetonate(data.HitEntity) then
        local flame = ents.Create("arc9_cod2019_napalm_pool")
        flame:SetPos(self:GetPos())
        flame:Spawn()
        flame.Owner = self.Owner
        self:Remove() 
    end
end