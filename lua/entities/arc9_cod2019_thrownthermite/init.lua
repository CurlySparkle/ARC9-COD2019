AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

if CLIENT then
    killicon.Add("arc9_cod2019_thrownthermite", "vgui/killicons/cod2019_thermite", Color(251, 85, 25, 255))
end

ENT.PrintName = "Thermite"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false
ENT.DrawModelExt = true
ENT.Model = "models/weapons/cod2019/w_eq_thermite_thrown2.mdl"
ENT.ModelEnt = "models/weapons/cod2019/w_eq_thermite_thrown2.mdl"
ENT.FuseTime = 2
ENT.ArmTime = 0
ENT.Ticks = 0
ENT.ImpactFuse = true
ENT.NextDamageTick = 0

function ENT:Initialize()
    if SERVER then
        if not self:GetNWBool("Children", false) then
            self:SetNWBool("Children", false)
        end

        if not self:GetNWBool("CreatedNade", false) then
            self:SetNWBool("CreatedNade", false)
        end

        self:SetModel(self.Model)
        self:SetMoveType(MOVETYPE_VPHYSICS)
        self:SetSolid(SOLID_VPHYSICS)
        self:PhysicsInit(SOLID_VPHYSICS)
        self:DrawShadow(true)
        self:SetAngles(self:GetAngles())
        --ParticleEffectAttach("smoke_thrown_trail",PATTACH_POINT_FOLLOW,self,1)
        local phys = self:GetPhysicsObject()

        if phys:IsValid() then
            phys:Wake()
            phys:SetBuoyancyRatio(0)
            phys:EnableMotion(true)
            phys:AddAngleVelocity(Vector(300, 900, 0))
        end

        self.SpawnTime = CurTime()
        self.HasCollided = false

        timer.Simple(0, function()
            if not IsValid(self) then return end
            self:SetCollisionGroup(COLLISION_GROUP_PROJECTILE)
        end)
    end

    ParticleEffectAttach("grenadetrail", PATTACH_ABSORIGIN_FOLLOW, self, 0)
end

function ENT:PhysicsCollide(data, physobj)
    local hitPos = data.HitPos -- Get the position where the grenade hit
    local hitNormal = data.HitNormal -- Get the normal vector of the surface hit
    local hitEntity = data.HitEntity -- Get the entity that was hit (can be nil if it hit the world)

    if SERVER then
        if not self.HasCollided then
            self.HasCollided = true
            local phys = self:GetPhysicsObject()

            if phys:IsValid() then
                phys:SetVelocity(Vector(0, 0, 0))
                phys:EnableMotion(true)
            end
        end

        util.Decal("Dark", hitPos + hitNormal, hitPos - hitNormal)

        if data.HitEntity:GetClass() == "worldspawn" then
            timer.Simple(0, function()
                self:SetMoveType(MOVETYPE_NONE)
                self:SetAngles(data.OurOldVelocity:Angle() + Angle(-55, 0, 0))
                self:SetPos(data.HitPos - (data.HitNormal * 2))
            end)
        end

        if (CurTime() - self.SpawnTime >= self.ArmTime) and self.ImpactFuse then
            self:Detonate()
        end
    end

    self:StopParticles()
end

function ENT:Detonate()
    if self:WaterLevel() >= 1 or self:WaterLevel() >= 2 then
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
            phys:ApplyForceCenter(self:GetAngles():Forward() * 500)
        end

        if self.SpawnTime + self.FuseTime <= CurTime() then
            self:Detonate()
        end
    else
        if self.Ticks % 5 == 0 then
            local emitter = ParticleEmitter(self:GetPos())
            if not self:IsValid() or self:WaterLevel() > 2 then return end
            if not IsValid(emitter) then return end
            local smoke = emitter:Add("particle/particle_smokegrenade", self:GetPos())
            smoke:SetVelocity(VectorRand() * 25)
            smoke:SetGravity(Vector(math.Rand(-5, 5), math.Rand(-5, 5), math.Rand(-20, -25)))
            smoke:SetDieTime(math.Rand(1.5, 2.0))
            smoke:SetStartAlpha(25)
            smoke:SetEndAlpha(0)
            smoke:SetStartSize(0)
            smoke:SetEndSize(100)
            smoke:SetRoll(math.Rand(-180, 180))
            smoke:SetRollDelta(math.Rand(-0.2, 0.2))
            smoke:SetColor(55, 55, 55)
            smoke:SetAirResistance(5)
            smoke:SetPos(self:GetPos())
            smoke:SetLighting(false)
            emitter:Finish()
        end

        self.Ticks = self.Ticks + 1
    end
end

function ENT:DoDetonate()
    if self:WaterLevel() > 0 then
        self:Remove()

        return
    end

    local attacker = self.Attacker or self:GetOwner() or self

    if self:GetNWBool("CreatedNade", false) == false then
        local cloud = ents.Create("arc9_cod2019_thermite")

        if IsValid(cloud) then
            cloud:SetModel("models/weapons/cod2019/w_eq_thermite_thrown2.mdl")
            cloud:SetPos(self:GetPos())
            cloud:SetAngles(self:GetAngles())
            cloud:SetOwner(attacker)
            cloud:SetNWBool("Children", true)
            cloud:SetNWBool("CreatedNade", true)
            cloud:Spawn()
            cloud:EmitSound("weapons/cod2019/shared/weap_thermite_impact_01.ogg", 100)
            cloud:SetParent(self)
            cloud.NoIgnite = self
            --self:Remove()
        end
    end

    --util.Decal("Scorch", self:GetPos(), self:GetPos() - Vector(0, 0, 50), self)
    self:SetNWBool("CreatedNade", true)

    timer.Simple(7, function()
        if IsValid(self) then
            self:Remove()
        end
    end)
end