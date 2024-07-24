AddCSLuaFile()

ENT.Base                     = "arc9_cod2019_proj_40mm_hel"
ENT.PrintName                = "40mm Smoke"
ENT.Spawnable                = false
ENT.Model                    = "models/weapons/cod2019/m32_nade.mdl"

ENT.NoBounce = true -- projectile doesn't bounce.
ENT.RocketTrail = true -- leaves trail of a particle effct
ENT.SmokeTrail = false -- leaves trail of smoke
ENT.ImpactScorch = false -- leaves a scorch on hit

ENT.SmokeColor = Color(255, 255, 255)
ENT.FlareColor = Color(55, 55, 55)
ENT.SafetyFuse = 0

function ENT:Detonate()
   if (self:WaterLevel() >= 1 or self:WaterLevel() >= 2) then
    SafeRemoveEntityDelayed(self, 0)
    self:Remove()
    self:EmitSound("weapons/rpg/shotdown.wav", 80)
    else
    self:DoDetonate()
	self:SetNWBool("HasDetonated",true)
   end
end
  
function ENT:DoDetonate()
    if self:WaterLevel() > 0 then self:Remove() return end
    local attacker = self.Attacker or self:GetOwner() or self

    local cloud = ents.Create("arc9_cod2019_smoke")
    if IsValid(cloud) then
       cloud:SetPos(self:GetPos())
       cloud:SetAngles(self:GetAngles())
       cloud:SetOwner(attacker)
       cloud:Spawn()
	   cloud:SetParent(self)
	   cloud.NoIgnite = self
    end
	  
    self:StopParticles()
    timer.Simple(0.1, function() ParticleEffectAttach("smoke_sphere_trail", PATTACH_ABSORIGIN_FOLLOW, self, 0) end)
    SafeRemoveEntityDelayed(self, 18)
end