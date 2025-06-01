AddCSLuaFile()

ENT.Base                     = "arc9_cod2019_proj_base"
ENT.PrintName                = "RPG-7 Shovel"
ENT.Spawnable                = false

ENT.Model                    = "models/props_junk/shovel01a.mdl"

ENT.IsRocket = true // projectile has a booster and will not drop.
ENT.InstantFuse = false // projectile is armed immediately after firing.
ENT.RemoteFuse = false // allow this projectile to be triggered by remote detonator.
ENT.ImpactFuse = true // projectile explodes on impact.

ENT.ExplodeOnDamage = false
ENT.ExplodeUnderwater = false

ENT.Delay = 0
ENT.SafetyFuse = 999

ENT.SmokeTrail = false
ENT.FlareColor = Color(155, 155, 155)


function ENT:OnInitialize()
    if SERVER then
        self:GetPhysicsObject():SetMass(20)
        self:GetPhysicsObject():SetDragCoefficient(6)
        self.Armed = false
        util.SpriteTrail(self, 0, Color(15, 15, 15), false, 3, 1, 0.5, 2, "trails/tube.vmt")
    end
end

function ENT:Impact(data, collider)
    if self.SpawnTime + self.SafetyFuse > CurTime() and !self.NPCDamage then
        self.Armed = true
        local attacker = self.Attacker or self:GetOwner()
        local ang = data.OurOldVelocity:Angle()

        if IsValid(data.HitEntity) then
            self:EmitSound("weapons/clang.ogg",75, 100, 1, CHAN_AUTO)
            local dmginfo = DamageInfo()
            dmginfo:SetAttacker(attacker)
            dmginfo:SetInflictor(self)
            dmginfo:SetDamageType(DMG_CRUSH + DMG_CLUB)
            dmginfo:SetDamage(400)
            dmginfo:SetDamageForce(data.OurOldVelocity * 25)
            dmginfo:SetDamagePosition(data.HitPos)
            data.HitEntity:TakeDamageInfo(dmginfo)
        end

        for i = 1, 1 do
            timer.Simple(0, function()
                local prop = ents.Create("prop_physics")
                prop:SetPos(self:GetPos())
                prop:SetAngles(self:GetAngles())
                prop:SetModel("models/props_junk/shovel01a.mdl")
                prop:Spawn()
                prop:GetPhysicsObject():SetVelocityInstantaneous(data.OurNewVelocity * 1 + VectorRand() * 72)
                prop:GetPhysicsObject():SetAngleVelocityInstantaneous(data.OurOldAngularVelocity + VectorRand() * 256)
                prop:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
                SafeRemoveEntityDelayed(prop, 3)
            end)
        end

        self:GetPhysicsObject():EnableMotion(false)
        self:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
        self:SetNoDraw(true)
        SafeRemoveEntityDelayed(self, 1)
        --self:Remove()
        return true
    end
end

local g = Vector(0, 0, -9.81 * 0.75)
function ENT:PhysicsUpdate(phys)
    if !self.Armed and self:WaterLevel() <= 2 then
        local v = phys:GetVelocity()
        local a = v:Angle()
        a:RotateAroundAxis(self:GetRight(), 90)
        self:SetAngles(a)
        phys:SetVelocityInstantaneous(v + g)
    end
end