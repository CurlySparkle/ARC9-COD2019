ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "Smoke Grenade"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false

local smokeimages = {"particle/particle_smokegrenade"}

local function GetSmokeImage()
    return smokeimages[math.random(#smokeimages)]
end

ENT.Model = "models/weapons/cod2019/w_eq_smoke_thrown.mdl"
ENT.FuseTime = 2
ENT.ArmTime = 0
ENT.Ticks = 0
ENT.ImpactFuse = false
ENT.SmokeTrail = true -- leaves trail of smoke
ENT.SmokeColor = Color(255, 255, 255)
AddCSLuaFile()
PrecacheParticleSystem("smoke_sphere_trail")

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
        self:SetAngles(Angle(0, 0, -75))
        --ParticleEffectAttach("smoke_thrown_trail",PATTACH_POINT_FOLLOW,self,1)
        local phys = self:GetPhysicsObject()

        if phys:IsValid() then
            phys:Wake()
            phys:SetBuoyancyRatio(0)
        end

        self.SpawnTime = CurTime()

        timer.Simple(0, function()
            if not IsValid(self) then return end
            self:SetCollisionGroup(COLLISION_GROUP_PROJECTILE)
        end)
    end
end

function ENT:PhysicsCollide(data, physobj)
    if SERVER then
        if data.Speed > 75 then
            --self:EmitSound(Sound("weapons/cod2019/throwables/frag/phy_frag_bounce_concrete_hard_0" .. math.random(1,3) .. ".ogg"))
            self:EmitSound(Sound("weapons/cod2019/throwables/frag/phy_frag_bounce_concrete_hard_0" .. math.random(1, 3) .. ".ogg"), 75, 100, 1, CHAN_AUTO)
        elseif data.Speed > 25 then
            --self:EmitSound(Sound("weapons/cod2019/throwables/frag/phy_frag_bounce_concrete_hard_0" .. math.random(1,3) .. ".ogg"))
            self:EmitSound(Sound("weapons/cod2019/throwables/frag/phy_frag_bounce_concrete_hard_0" .. math.random(1, 3) .. ".ogg"), 75, 100, 0.3, CHAN_AUTO)
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
        phys:ApplyForceCenter(self:GetAngles():Forward() * 500)

        if self.SpawnTime + self.FuseTime <= CurTime() then
            self:Detonate()
        end
    end

    self:DoSmokeTrail()
end

function ENT:DoSmokeTrail()
    if CLIENT and self.SmokeTrail then
        local emitter = ParticleEmitter(self:GetPos())
        local smoke = emitter:Add(GetSmokeImage(), self:GetPos())
        smoke:SetVelocity(VectorRand() * 25)
        smoke:SetGravity(Vector(math.Rand(-5, 5), math.Rand(-5, 5), math.Rand(-20, -25)))
        smoke:SetDieTime(math.Rand(1.5, 2.0))
        smoke:SetStartAlpha(55)
        smoke:SetEndAlpha(0)
        smoke:SetStartSize(0)
        smoke:SetEndSize(40)
        smoke:SetRoll(math.Rand(-180, 180))
        smoke:SetRollDelta(math.Rand(-0.2, 0.2))
        smoke:SetColor(155, 155, 155)
        smoke:SetAirResistance(5)
        smoke:SetPos(self:GetPos())
        smoke:SetLighting(false)
        emitter:Finish()

        if self:GetNWBool("HasDetonated") then
            self.SmokeTrail = false
        end
    end
end

-- function ENT:Detonate()
-- if !self:IsValid() or self:WaterLevel() > 2 then return end
-- --self:EmitSound("COD2019.Smoke.Pop")
-- local cloud = ents.Create( "arc9_cod2019_smoke" )
-- if !IsValid(cloud) then return end
-- cloud:SetPos(self:GetPos())
-- cloud:Spawn()
-- self:Remove()
-- end
function ENT:Detonate()
    if self:WaterLevel() >= 1 or self:WaterLevel() >= 2 then
        SafeRemoveEntityDelayed(self, 0)
        self:Remove()
        self:EmitSound("weapons/rpg/shotdown.wav", 80)
    else
        self:DoDetonate()
        self:SetNWBool("HasDetonated", true)
    end
end

function ENT:DoDetonate()
    if self:WaterLevel() > 0 then
        self:Remove()

        return
    end

    local attacker = self.Attacker or self:GetOwner() or self

    if self:GetNWBool("CreatedNade", false) == false then
        local cloud = ents.Create("arc9_cod2019_smoke")

        if IsValid(cloud) then
            cloud:SetPos(self:GetPos())
            cloud:SetAngles(self:GetAngles())
            cloud:SetOwner(attacker)
            cloud:Spawn()
            cloud:SetParent(self)
            cloud.NoIgnite = self
            cloud:SetNWBool("Children", true)
            cloud:SetNWBool("CreatedNade", true)
            ParticleEffectAttach("smoke_sphere_trail", PATTACH_ABSORIGIN_FOLLOW, self, 0)
            --self:Remove()
        end
    end

    self:SetNWBool("CreatedNade", true)

    timer.Simple(18, function()
        if IsValid(self) then
            self:Remove()
        end
    end)
end

function ENT:DrawTranslucent()
    self:Draw()
end

function ENT:Draw()
    self:DrawModel()
end