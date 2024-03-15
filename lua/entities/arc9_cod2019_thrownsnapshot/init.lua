AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

if CLIENT then
    killicon.Add( "arc9_cod2019_thrownthermite", "vgui/killicons/cod2019_thermite", Color(251, 85, 25, 255))
end

ENT.PrintName = "Snapshot"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false
ENT.DrawModelExt = true

ENT.Model = "models/weapons/cod2019/w_eq_snapshot_thrown.mdl"
ENT.FuseTime = 2
ENT.ArmTime = 0
ENT.ImpactFuse = false
ENT.NextDamageTick = 0

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
			phys:EnableMotion(true)
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
        if data.Speed > 85 then
			self:EmitSound(Sound("weapons/cod2019/throwables/frag/phy_frag_bounce_concrete_hard_0" .. math.random(1,3) .. ".ogg"), 75, 100, 0.6, CHAN_AUTO)
        elseif data.Speed > 55 then
			self:EmitSound(Sound("weapons/cod2019/throwables/frag/phy_frag_bounce_concrete_med_0" .. math.random(1,3) .. ".ogg"), 75, 100, 0.4, CHAN_AUTO)
        elseif data.Speed > 35 then
			self:EmitSound(Sound("weapons/cod2019/throwables/frag/phy_frag_bounce_concrete_soft_0" .. math.random(1,3) .. ".ogg"), 75, 100, 0.2, CHAN_AUTO)
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
    end
end

function ENT:DoDetonate()
   if self:WaterLevel() > 0 then self:Remove() return end
   local attacker = self.Attacker or self:GetOwner() or self

   local cloud = ents.Create("arc9_cod2019_snapshot")
   if IsValid(cloud) then
      cloud:SetPos(self:GetPos())
      cloud:SetAngles(self:GetAngles())
      cloud:SetOwner(attacker)
      cloud:Spawn()
      self:Remove()
   end
end