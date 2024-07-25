AddCSLuaFile()

if CLIENT then
    killicon.Add( "arc9_cod2019_thrownfrag", "vgui/killicons/cod2019_frag", Color(251, 85, 25, 255))
end

ENT.Type 				= "anim"
ENT.Base 				= "arc9_nade_base"
ENT.PrintName 			= "Frag"

ENT.Spawnable 			= false
ENT.CollisionGroup = COLLISION_GROUP_PROJECTILE

ENT.Model = "models/weapons/cod2019/w_eq_frag_thrown.mdl"
ENT.SphereSize = 2
ENT.PhysMat = "grenade"

ENT.LifeTime = 1.5
ENT.Radius = 300

ENT.ExplodeOnImpact = false
ENT.SmokeTrail = false

ENT.BounceSound = ""

function ENT:Initialize()
	if SERVER then
		self:SetModel(self.Model)
		self:SetMoveType( MOVETYPE_VPHYSICS )
		self:SetSolid( SOLID_VPHYSICS )
		self:PhysicsInit( SOLID_VPHYSICS )
		self:SetCollisionGroup( COLLISION_GROUP_NONE )
		self:DrawShadow( false )
		self:SetAngles(Angle(0, 0, -75))
		sound.EmitHint(SOUND_DANGER, self:GetPos(), self.Radius * 2, 1, nil)
	end

	local phys = self:GetPhysicsObject()
	if phys:IsValid() then
		phys:Wake()
		phys:EnableDrag(self.Drag)
		phys:SetDragCoefficient(self.DragCoefficient)
		phys:EnableGravity(self.Gravity)
		phys:SetMass(self.Mass)
		phys:SetBuoyancyRatio(0.4)
	end

	ParticleEffectAttach("grenadetrail",PATTACH_ABSORIGIN_FOLLOW,self,0)
	self.SpawnTime = CurTime()
end


function ENT:PhysicsCollide(data)
   if data.Speed > 100 then
      local tgt = data.HitEntity

      if IsValid(tgt) and (self.NextHit or 0) < CurTime() then
         self.NextHit = CurTime() + 0.1
         local dmginfo = DamageInfo()
         dmginfo:SetDamageType(DMG_GENERIC)
         dmginfo:SetDamage(15)
         dmginfo:SetAttacker(self:GetOwner())
         dmginfo:SetInflictor(self)
         dmginfo:SetDamageForce(data.OurOldVelocity * 0.5)
         tgt:TakeDamageInfo(dmginfo)

         if (IsValid(tgt) and (tgt:IsNPC() or tgt:IsPlayer() or tgt:IsNextBot()) and tgt:Health() <= 0) or (not tgt:IsWorld() and not IsValid(tgt)) or string.find(tgt:GetClass(), "breakable") then
           local pos, ang, vel = self:GetPos(), self:GetAngles(), data.OurOldVelocity

         timer.Simple(0, function()
           if IsValid(self) then
              self:SetAngles(ang)
              self:SetPos(pos)
              self:GetPhysicsObject():SetVelocityInstantaneous(vel)
           end
         end)
      end
   end
end
		
if data.Speed > 100 then
   self:EmitSound(Sound("weapons/cod2019/throwables/frag/phy_frag_bounce_concrete_hard_0" .. math.random(1,3) .. ".ogg"), 75, 100, 0.6, CHAN_AUTO)
    elseif data.Speed > 75 then
   self:EmitSound(Sound("weapons/cod2019/throwables/frag/phy_frag_bounce_concrete_med_0" .. math.random(1,3) .. ".ogg"), 75, 100, 0.5, CHAN_AUTO)
    elseif data.Speed > 50 then
   self:StopParticles()
   self:EmitSound(Sound("weapons/cod2019/throwables/frag/phy_frag_bounce_concrete_soft_0" .. math.random(1,3) .. ".ogg"), 75, 100, 0.4, CHAN_AUTO)
end

if self.ExplodeOnImpact then
   self.HitPos = data.HitPos
   self.HitVelocity = data.OurOldVelocity
   self:Detonate()
   end
end

function ENT:Detonate()
    if not self:IsValid() then return end
    if self.Defused then return end
    local attacker = self.Attacker or self:GetOwner()
    local dir = self:GetForward()
    local src = self:GetPos() - dir * 64

    local dmg = DamageInfo()
    dmg:SetAttacker(attacker)
    dmg:SetDamageType(DMG_AIRBOAT + DMG_BLAST)
    dmg:SetInflictor(self)
    dmg:SetDamageForce(self:GetVelocity() * 100)
    dmg:SetDamagePosition(src)
    dmg:SetDamage(self.Radius)
    util.BlastDamageInfo(dmg, self:GetPos(), self.Radius)
    util.BlastDamage(self, IsValid(self:GetOwner()) and self:GetOwner() or self, self:GetPos(), 300, 128)

    local fx = EffectData()
	fx:SetOrigin(self:GetPos())
	fx:SetStart(self:GetPos())
	fx:SetRadius(512)
    fx:SetEntity(self)
    if self:WaterLevel() > 0 then
        util.Effect("WaterSurfaceExplosion", fx)
    else
        util.Effect("cod2019_grenade_explosion", fx)
		self:EmitSound("Cod2019.Frag.Explode")
    end
	
	util.Decal("Scorch", self:GetPos(), self:GetPos() - Vector(0, 0, 50), self)
    self:Remove()
end

function ENT:OnRemove()
	self:StopParticles()
end