AddCSLuaFile()

if CLIENT then
    killicon.Add( "arc9_cod2019_proj_40mm_gas", "VGUI/killicons/cod2019_nade_he", Color(251, 85, 25, 255))
end

ENT.Base                     = "arc9_cod2019_proj_40mm_hel"
ENT.PrintName                = "40mm Gas"
ENT.Spawnable                = false
ENT.Model                    = "models/weapons/cod2019/m32_nade.mdl"

ENT.NoBounce = true -- projectile doesn't bounce.
ENT.RocketTrail = false -- leaves trail of a particle effct
ENT.SmokeTrail = true -- leaves trail of smoke

ENT.SafetyFuse = 0.01
ENT.FlareColor = Color(0, 155, 0)
ENT.SmokeColor = Color(255, 255, 255)

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
	ParticleEffectAttach("AC_nade_gas_ejection", PATTACH_ABSORIGIN_FOLLOW, self, 0)
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
	self:SetVelocity(Vector(0,0,0))
    timer.Simple(18, function() self:Remove() end)
end

function ENT:OnRemove()
	self:StopParticles()
end

local smokeimages = {"particle/particle_smokegrenade"}
local function GetSmokeImage()
    return smokeimages[math.random(#smokeimages)]
end

function ENT:DoSmokeTrail()
    if CLIENT and self.SmokeTrail then
        local emitter = ParticleEmitter(self:GetPos())

        local smoke = emitter:Add(GetSmokeImage(), self:GetPos())

        smoke:SetStartAlpha(50)
        smoke:SetEndAlpha(0)

        smoke:SetStartSize(5)
        smoke:SetEndSize(math.Rand(25, 50))

        smoke:SetRoll(math.Rand(-180, 180))
        smoke:SetRollDelta(math.Rand(-1, 1))

        smoke:SetPos(self:GetPos())
        smoke:SetVelocity(-self:GetAngles():Forward() * 400 + (VectorRand() * 10))

        smoke:SetColor(self.SmokeColor)
        smoke:SetLighting(true)

        smoke:SetDieTime(math.Rand(0.75, 1.25))

        smoke:SetGravity(Vector(0, 0, 0))

        emitter:Finish()
		
       if self:GetNWBool("HasDetonated") then
          self.SmokeTrail = false
       end
    end
end