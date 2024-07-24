AddCSLuaFile()

if CLIENT then
    killicon.Add( "arc9_cod2019_proj_40mm_gas", "VGUI/killicons/cod2019_nade_he", Color(251, 85, 25, 255))
end

ENT.Base                     = "arc9_cod2019_proj_40mm_hel"
ENT.PrintName                = "40mm Gas"
ENT.Spawnable                = false
ENT.Model                    = "models/weapons/cod2019/m32_nade.mdl"

ENT.NoBounce = true -- projectile doesn't bounce.
ENT.RocketTrail = true -- leaves trail of a particle effct
ENT.SmokeTrail = false -- leaves trail of smoke

ENT.SafetyFuse = 0.01
ENT.FlareColor = Color(0, 155, 0)

DEFINE_BASECLASS(ENT.Base)

function ENT:Impact(data, collider)
   local attacker = self.Attacker or self:GetOwner()
   local ang = data.OurOldVelocity:Angle()

    if IsValid(data.HitEntity) then
      local dmginfo = DamageInfo()
      dmginfo:SetAttacker(attacker)
      dmginfo:SetInflictor(self)
      dmginfo:SetDamageType(DMG_CLUB + DMG_DIRECT)
      dmginfo:SetDamage(100)
      dmginfo:SetDamageForce(data.OurOldVelocity * 55)
      dmginfo:SetDamagePosition(data.HitPos)
      data.HitEntity:TakeDamageInfo(dmginfo)
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

function ENT:DoDetonate()
    if self:WaterLevel() > 0 then self:Remove() return end
    local attacker = self.Attacker or self:GetOwner() or self

      local cloud = ents.Create("arc9_cod2019_gas")
      if IsValid(cloud) then
	     cloud:SetModel("models/weapons/cod2019/m32_nade.mdl")
         cloud:SetPos(self:GetPos())
         cloud:SetAngles(self:GetAngles())
         cloud:SetOwner(attacker)
         cloud:Spawn()
		 cloud:EmitSound("weapons/cod2019/shared/weap_thermite_impact_01.ogg", 100)
		 cloud:SetParent(self)
		 cloud.NoIgnite = self
		 --self:Remove()
      end
	self:StopParticles()
	timer.Simple(0.1, function()
	ParticleEffectAttach("AC_nade_gas_ejection", PATTACH_ABSORIGIN_FOLLOW, self, 0)
	end)
	self:SetVelocity(Vector(0,0,0))
    SafeRemoveEntityDelayed(self, 18)
end

function ENT:OnRemove()
	self:StopParticles()
end