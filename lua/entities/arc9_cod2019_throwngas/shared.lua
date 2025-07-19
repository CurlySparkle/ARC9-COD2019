AddCSLuaFile()

if CLIENT then
    killicon.Add( "arc9_cod2019_throwngas", "vgui/killicons/cod2019_gas2.png", Color(251, 85, 25, 255))
end

ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "Gas Grenade"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false

ENT.Model = "models/weapons/cod2019/w_eq_gas_thrown.mdl"
ENT.FuseTime = 2
ENT.Mass = 5

function ENT:Initialize()
    if SERVER then
        self:SetModel( self.Model )
        self:SetMoveType( MOVETYPE_VPHYSICS )
        self:SetSolid( SOLID_VPHYSICS )
        self:PhysicsInit( SOLID_VPHYSICS )
        self:DrawShadow( true )
        self:SetAngles(Angle(0, 0, -70))

        local phys = self:GetPhysicsObject()
        if phys:IsValid() then
            phys:Wake()
            phys:SetBuoyancyRatio(0)
            phys:SetMass(self.Mass)
        end

        timer.Simple(self.FuseTime, function()
           if IsValid(self) then
              self:Detonate()
           end
        end)

        timer.Simple(0.1, function()
            if !IsValid(self) then return end
            self:SetCollisionGroup(COLLISION_GROUP_PROJECTILE)
        end)
    end
    ParticleEffectAttach("grenadetrail", PATTACH_ABSORIGIN_FOLLOW, self, 0)
end

function ENT:PhysicsCollide(data, physobj)
    if SERVER then
        if data.Speed > 75 then
            self:EmitSound(Sound("weapons/cod2019/throwables/frag/phy_frag_bounce_concrete_hard_0" .. math.random(1,3) .. ".ogg"), 75, 100, 1, CHAN_AUTO )
        elseif data.Speed > 45 then
            self:EmitSound(Sound("weapons/cod2019/throwables/frag/phy_frag_bounce_concrete_med_0" .. math.random(1,3) .. ".ogg"), 75, 100, 0.3, CHAN_AUTO )
        end
    end

    self:GetPhysicsObject():SetVelocityInstantaneous(data.OurNewVelocity * 0.9)

    self:StopParticles()
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

function ENT:DoDetonate()
    if self:WaterLevel() > 0 then self:Remove() return end
    local attacker = self.Attacker or self:GetOwner() or self
        local cloud = ents.Create("arc9_cod2019_gas")
        if IsValid(cloud) then
            cloud:SetPos(self:GetPos())
            cloud:SetAngles(self:GetAngles())
            cloud:SetOwner(attacker)
            cloud:Spawn()
            cloud:EmitSound("weapons/cod2019/shared/weap_thermite_impact_01.ogg", 100)
            cloud:SetParent(self)
            cloud.NoIgnite = self
        end
    self:EmitSound("weapons/cod2019/throwables/gas/gas_nade_expl.ogg", 80)
    ParticleEffectAttach("AC_nade_gas_ejection", PATTACH_POINT_FOLLOW, self, 0)

    timer.Simple(18, function()
        if IsValid(self) then
            self:Remove()
        end
    end)
end

function ENT:Draw()
    if CLIENT then
        self:DrawModel()
    end
end