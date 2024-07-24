AddCSLuaFile()

ENT.Base                     = "arc9_cod2019_proj_40mm_hel"
ENT.PrintName                = "40mm Smoke"
ENT.Spawnable                = false
ENT.Model                    = "models/weapons/cod2019/m32_nade.mdl"

ENT.NoBounce = true -- projectile doesn't bounce.
ENT.RocketTrail = false -- leaves trail of a particle effct
ENT.SmokeTrail = true -- leaves trail of smoke
ENT.ImpactScorch = false -- leaves a scorch on hit

ENT.SmokeColor = Color(255, 255, 255)
ENT.FlareColor = Color(55, 55, 55)
ENT.SafetyFuse = 0

local smokeimages = {"particle/particle_smokegrenade"}
local function GetSmokeImage()
    return smokeimages[math.random(#smokeimages)]
end
function ENT:DoSmokeTrail()
    if CLIENT and self.SmokeTrail then
        local emitter = ParticleEmitter(self:GetPos())

        local smoke = emitter:Add(GetSmokeImage(), self:GetPos())
        smoke:SetVelocity( VectorRand() * 25 )
        smoke:SetGravity( Vector(math.Rand(-5, 5), math.Rand(-5, 5), math.Rand(-20, -25)) )
        smoke:SetDieTime( math.Rand(1.5, 2.0) )
        smoke:SetStartAlpha( 55 )
        smoke:SetEndAlpha( 0 )
        smoke:SetStartSize( 0 )
        smoke:SetEndSize( 40 )
        smoke:SetRoll( math.Rand(-180, 180) )
        smoke:SetRollDelta( math.Rand(-0.2,0.2) )
        smoke:SetColor( 155, 155, 155 )
        smoke:SetAirResistance( 5 )
        smoke:SetPos( self:GetPos() )
        smoke:SetLighting( false )
        emitter:Finish()
		
       if self:GetNWBool("HasDetonated") then
          self.SmokeTrail = false
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
	self:SetNWBool("HasDetonated",true)
   end
end
  
function ENT:DoDetonate()
    if self:WaterLevel() > 0 then self:Remove() return end
    local attacker = self.Attacker or self:GetOwner() or self

    if self:GetNWBool("CreatedNade",false) == false then
      local cloud = ents.Create("arc9_cod2019_smoke")
      if IsValid(cloud) then
         cloud:SetPos(self:GetPos())
         cloud:SetAngles(self:GetAngles())
         cloud:SetOwner(attacker)
         cloud:Spawn()
		 cloud:SetParent(self)
		 cloud.NoIgnite = self
		 cloud:SetNWBool("Children",true)
         cloud:SetNWBool("CreatedNade",true)
		 ParticleEffectAttach("smoke_sphere_trail", PATTACH_ABSORIGIN_FOLLOW, self, 0)
		 --self:Remove()
      end
    end
	self:SetNWBool("CreatedNade",true)
    
    timer.Simple(18, function()
        if IsValid(self) then
            self:Remove()
        end
    end)
end