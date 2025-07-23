AddCSLuaFile()

ENT.Base = "arc9_cod2019_proj_jokr_default"
ENT.PrintName = "Jokr Airstrike Rocket"
ENT.Spawnable = false

DEFINE_BASECLASS(ENT.Base)

ENT.SafetyFuse = 2
ENT.ClusterDistance = 2000
ENT.LastAimPos = nil

local offsets = {
    Vector(-65, -65, -80),
    Vector(-65, 65, -35),
    Vector(65, -65, 55),
    Vector(65, 65, 90),
    Vector(0, -100, 0),
    Vector(0, 100, 0),
    Vector(-100, 0, -50),
    Vector(100, 0, 50),
    Vector(-50, -50, 100),
    Vector(50, 50, -100),
    Vector(-80, 80, 25),
    Vector(80, -80, -25)
}

function ENT:OnThink()
    BaseClass.OnThink(self)
    if SERVER and CurTime() > self.SpawnTime + self.SafetyFuse then
        if self.ShootEntData and IsValid(self.ShootEntData.Target) and self.ShootEntData.Target:GetPos():DistToSqr(self:GetPos()) <= self.ClusterDistance ^ 2 then
            self:PreDetonate()
        elseif self.LockOnPoint and self.LockOnPoint:DistToSqr(self:GetPos()) <= self.ClusterDistance ^ 2 then
            self:PreDetonate()
        end
    end
end

function ENT:Detonate(data)
    if self:WaterLevel() > 0 then self:Remove() self:StopParticles() return end
    local attacker = self.Attacker or self:GetOwner()
    local dir = self:GetVelocity():GetNormalized()
    local src = self:GetPos() - dir * 64


    if (self:WaterLevel() <= 0) then
        ParticleEffect("Generic_explo_high", self:GetPos(), Angle(0,0,0))
    else
        local effectdata = EffectData()
        effectdata:SetOrigin(self:GetPos())
        util.Effect("WaterSurfaceExplosion", effectdata)
    end

    local dmg = DamageInfo()
    dmg:SetAttacker(attacker)
    dmg:SetDamageType(DMG_BLAST)
    dmg:SetInflictor(self)
    dmg:SetDamageForce(self:GetForward() * 1000)
    dmg:SetDamagePosition(src)
    dmg:SetDamage(50)
    util.BlastDamageInfo(dmg, self:GetPos(), self.Radius)

    util.ScreenShake(self:GetPos(), 3500, 1111, 1, self.Radius * 4)

    -- Sphere check for potential targets
    local sphereRadius = 2200 -- Adjust this value as needed
    local potentialTargets = ents.FindInSphere(self:GetPos(), sphereRadius)
    local validTargets = {}

    for _, ent in ipairs(potentialTargets) do
        if (ent:IsPlayer() or ent:IsNPC() or ent:IsNextBot() or ent:IsVehicle()) and ent ~= self:GetOwner() then
            table.insert(validTargets, ent)
        end
    end

    local numMissiles = 12
    for i = 1, numMissiles do
        local child = ents.Create("arc9_cod2019_proj_jokr_airstrike_alt")
        if IsValid(child) then
            child:SetPos(self:GetPos() + self:GetRight() * offsets[i].x + self:GetUp() * offsets[i].y + self:GetForward() * offsets[i].z)
            child.LastPos = self:GetPos()

            local dir
            if #validTargets > 0 then
                -- Select a random target from the valid targets
                local target = validTargets[math.random(#validTargets)]
                dir = (target:GetPos() - child:GetPos()):GetNormalized()
            elseif self.LastAimPos then
                -- If no valid targets, use the last aim position with spread
                local spreadRadius = 200 -- Adjust this value to change the spread size
                local angle = math.rad((i - 1) * (360 / numMissiles))
                local spreadOffset = Vector(math.cos(angle) * spreadRadius + math.Rand(-50, 50), math.sin(angle) * spreadRadius + math.Rand(-50, 50), 0)
                local spreadPos = self.LastAimPos + spreadOffset
                dir = (spreadPos - child:GetPos()):GetNormalized()
            else
                -- If no LastAimPos, use the original direction
                dir = (child:GetPos() - self:GetPos() + self:GetForward() * 128):GetNormalized()
            end

            child:SetAngles(dir:Angle())
            child:SetOwner(self:GetOwner())
            child.ShootEntData = self.ShootEntData
            child.Attacker = attacker
            child:Spawn()
            child:EmitSound("^weapons/cod2019/shared/jokr_split.ogg", 75, 100, 1, CHAN_AUTO)
            child:GetPhysicsObject():SetVelocityInstantaneous(self:GetVelocity():Length() * dir)
        end
    end
    -- Remove the initial entity
    self:Remove()
end

function ENT:GetDamageType()
    return DMG_BLAST + DMG_AIRBOAT + DMG_SNIPER
end