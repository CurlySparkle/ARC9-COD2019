AddCSLuaFile()

if CLIENT then
    killicon.Add( "arc9_cod2019_proj_40mm_sticky", "VGUI/killicons/cod2019_nade_he", Color(251, 85, 25, 255))
end

function ENT:SetupDataTables()
    self:NetworkVar("Float", 0, "LifeTime")
end

ENT.Base                     = "arc9_cod2019_proj_base"
ENT.PrintName                = "40mm HE"
ENT.Spawnable                = false
ENT.Model                    = "models/weapons/cod2019/m32_nade.mdl"

ENT.ExplosionRadius = 256

ENT.IsRocket = false // projectile has a booster and will not drop.
ENT.InstantFuse = false // projectile is armed immediately after firing.
ENT.RemoteFuse = false // allow this projectile to be triggered by remote detonator.
ENT.ImpactFuse = false // projectile explodes on impact.
ENT.Sticky = true -- projectile sticks on impact
ENT.StickyFuse = false -- projectile becomes timed after sticking.

ENT.ExplodeOnDamage = false // projectile explodes when it takes damage.
ENT.ExplodeUnderwater = true
ENT.SmokeTrail = true
ENT.RocketTrailParticle = "Rocket_Smoke"  -- name of the particle effect
ENT.RocketTrail = false -- leaves trail of a particle effct

ENT.Delay = 0
ENT.FlareColor = Color(0, 0, 0)

DEFINE_BASECLASS(ENT.Base)

function ENT:OnInitialize()
    self:SetLifeTime(2)
    self:AddFlags(FL_GRENADE)
    self:AddFlags(FL_ONFIRE)
    self.nextBeep = self:GetLifeTime()
    self.isPinned = false
end 

function ENT:Impact(data, collider)
    local attacker = self.Attacker or self:GetOwner() or self
	local ang = data.OurOldVelocity:Angle()
	self.isPinned = true
	ParticleEffectAttach("grenadetrail",PATTACH_ABSORIGIN_FOLLOW,self,0)
	--self:StopParticles()
    self:EmitSound("weapons/cod2019/shared/bullet_small_crossbow_bolt_swt_01.ogg",75, 100, 1, CHAN_AUTO)
	self:FireBullets({ -- leave a bullet hole. Also may be able to hit things it can't collide with (like stuck C4)
      Attacker = attacker,
      Damage = self.Damage,
      Force = 1,
      Distance = 4,
      HullSize = 4,
      Tracer = 0,
      Dir = ang:Forward(),
      Src = data.HitPos - ang:Forward(),
      IgnoreEntity = self,
      Callback = function(atk, tr, dmginfo)
         dmginfo:SetDamageType(DMG_SLASH)
         dmginfo:SetInflictor(attacker)
		 
         if (tr.HitSky) then
			self:Remove()
			return
         end
      end
	})
end

function ENT:Think()
    if (IsValid(self:GetParent()) && self:GetParent():Health() <= 0 && self:GetParent():GetMaxHealth() > 1) then
        self:PreDetonate()
        return
    end

    self:SetLifeTime(self:GetLifeTime() - FrameTime())

    if (self:GetLifeTime() > 0.1 && self:GetLifeTime() <= self.nextBeep) then
        if SERVER then sound.EmitHint(SOUND_DANGER, self:GetPos(), self.ExplosionRadius * 2, 1, nil) end --make shit run away (nil owner so even rebels run)
        self.nextBeep = self:GetLifeTime() * 0.75
        
        local effectData = EffectData()
        effectData:SetEntity(self)
        effectData:SetOrigin(self:GetPos())

        util.Effect("cod2019_effect_semtex", effectData)
    end

    if (self:GetLifeTime() <= 0) then
        self:PreDetonate()
    end
	
    self:NextThink(CurTime())
	BaseClass.Think(self)
    return true
end

function ENT:Detonate()
    local attacker = self.Attacker or self:GetOwner()
    local dir = self:GetForward()
    local src = self:GetPos() - dir * 64

    local dmg = DamageInfo()
    dmg:SetAttacker(attacker)
    dmg:SetDamageType(DMG_AIRBOAT + DMG_SNIPER + DMG_BLAST)
    dmg:SetInflictor(self)
    dmg:SetDamageForce(self:GetVelocity() * 100)
    dmg:SetDamagePosition(src)
    dmg:SetDamage(175)
    util.BlastDamageInfo(dmg, self:GetPos(), self.ExplosionRadius)
	util.BlastDamage(self, IsValid(self:GetOwner()) and self:GetOwner() or self, self:GetPos(), 300, 32)

    local fx = EffectData()
    fx:SetOrigin(self:GetPos())

    if self:WaterLevel() > 0 then
        util.Effect("WaterSurfaceExplosion", fx)
    else
        ParticleEffect("grenade_final", self:GetPos(), Angle(-90, 0, 0))
    end

    self:EmitSound("Cod2019.Frag.Explode")
	util.ScreenShake(self:GetPos(), 25, 4, 0.75, self.ExplosionRadius * 4)
	util.Decal("Scorch", self:GetPos(), self:GetPos() + self:GetUp() * -100, {self})
    self:Remove()
end

function ENT:OnRemove()
	if (self:WaterLevel() <= 0) then
     if CLIENT then
		local dlight = DynamicLight(self:EntIndex())
		if (dlight) then
			dlight.pos = self:GetPos()
			dlight.r = 255
			dlight.g = 75
			dlight.b = 0
			dlight.brightness = 5
			dlight.Decay = 2000
			dlight.Size = 512
			dlight.DieTime = CurTime() + 5
		end
	 end
	end
	self:StopParticles()
end