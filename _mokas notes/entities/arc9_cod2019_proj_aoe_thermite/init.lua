AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

ENT.smokeSound = nil

function ENT:Initialize()
    self:SetModel("models/dav0r/hoverball.mdl")
    --[[self:PhysicsInit(SOLID_VPHYSICS)
    self:GetPhysicsObject():EnableMotion(false)
    self:SetCollisionGroup(COLLISION_GROUP_DEBRIS)]]
    self:AddFlags(FL_GRENADE)
    self:AddFlags(FL_ONFIRE)

    self:EmitSound("MW19_Crossbow.FireExplode")
    
    ParticleEffectAttach("arrow_thermite", PATTACH_ABSORIGIN_FOLLOW, self, 0)
    util.Decal("Dark", self:GetPos(), self:GetPos() + self:GetUp() * -100, {self, self.arrow})
    sound.EmitHint(SOUND_DANGER, self:GetPos(), self.FireRadius * 2, self.LifeTime, nil) --make shit run away (nil owner so even rebels run)

    if (IsValid(self:GetParent())) then
        self:GetParent():CallOnRemove("mw19_dontremovemyarrowffs", function(ent)
            if (!IsValid(ent)) then
                return
            end
            
            for _, c in pairs(ent:GetChildren()) do
                if (IsValid(c) && c:GetClass() == self:GetClass()) then
                    c:SetParent(NULL)
                    c:TeleportOnGround()
                end
            end
        end)
    end
end 

function ENT:TeleportOnGround()
    local tr = util.TraceLine({
        start = self:GetPos(),
        endpos = self:GetPos() - Vector(0, 0, 32000),
        filter = {self, self.arrow}
    })

    self:SetPos(tr.HitPos)

    local angle = tr.HitNormal:Angle()
	angle:RotateAroundAxis(angle:Right(), 270)
	self:SetAngles(angle)

    if (!tr.Entity:IsWorld()) then
        self:SetParent(tr.Entity)
    end 
end

function ENT:Think()
    if (IsValid(self:GetParent()) && self:GetParent():Health() <= 0 && self:GetParent():GetMaxHealth() > 1) then
        self:SetParent(NULL)
        self:TeleportOnGround()
    end

    if (CurTime() - self:GetCreationTime() > self.LifeTime) then
        self:Remove()
        return
    end

    for _, e in pairs(ents.FindInSphere(self:GetPos(), self.FireRadius)) do
        if (e == self.arrow || e == self) then
            continue
        end

        if ((e:IsPlayer() || e:IsNPC() || e:IsNextBot()) && !e:IsLineOfSightClear(self:GetPos())) then
            continue
        end

        if (e:Health() <= 0 && e:GetMaxHealth() > 1) then
            continue
        end
        
        e:Ignite(0.25)

        local dmgInfo = DamageInfo()
        dmgInfo:SetAttacker(self:GetOwner())
        dmgInfo:SetDamage(10)
        dmgInfo:SetDamageType(DMG_BURN)
        dmgInfo:SetInflictor(self)
        e:TakeDamageInfo(dmgInfo)
    end

    self:NextThink(CurTime() + 0.25)
    return true
end

function ENT:OnRemove()
    self:StopFire()
end

function ENT:StopFire()
    self:StopParticles()
    sound.Play("MW19_Crossbow.FireOff", self:GetPos())

    if (IsValid(self.arrow)) then
        ParticleEffectAttach("arrow_thermite_smokeleft", PATTACH_ABSORIGIN_FOLLOW, self.arrow, 0)
    end
end