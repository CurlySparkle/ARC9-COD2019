AddCSLuaFile()

if CLIENT then
    killicon.Add( "arc9_cod2019_proj_40mm_hel", "VGUI/killicons/cod2019_nade_he", Color(251, 85, 25, 255))
end

ENT.Base                     = "arc9_cod2019_proj_base"
ENT.PrintName                = "40mm HE"
ENT.Spawnable                = false

ENT.Model                    = "models/weapons/cod2019/m32_nade.mdl"

ENT.IsRocket = false // projectile has a booster and will not drop.

ENT.InstantFuse = false // projectile is armed immediately after firing.
ENT.RemoteFuse = false // allow this projectile to be triggered by remote detonator.
ENT.ImpactFuse = true // projectile explodes on impact.

ENT.ExplodeOnDamage = false // projectile explodes when it takes damage.
ENT.ExplodeUnderwater = true
ENT.SmokeTrail = true

ENT.Delay = 0
ENT.SafetyFuse = 0.05
ENT.FlareColor = Color(0, 0, 0)
ENT.Radius = 200

ENT.AudioLoop = ""

function ENT:Impact(data, collider)
    local hitPos = data.HitPos -- Get the position where the grenade hit
    local hitNormal = data.HitNormal -- Get the normal vector of the surface hit
    if self.SpawnTime + self.SafetyFuse > CurTime() and !self.NPCDamage then
        local attacker = self.Attacker or self:GetOwner()
        local ang = data.OurOldVelocity:Angle()
        local fx = EffectData()
        fx:SetOrigin(data.HitPos)
        fx:SetNormal(-ang:Forward())
        fx:SetAngles(-ang)
        util.Effect("ManhackSparks", fx)

        if IsValid(data.HitEntity) then
            local dmginfo = DamageInfo()
            dmginfo:SetAttacker(attacker)
            dmginfo:SetInflictor(self)
            dmginfo:SetDamageType(DMG_CRUSH + DMG_CLUB)
            dmginfo:SetDamage(50 * (self.NPCDamage and 0.5 or 1))
            dmginfo:SetDamageForce(data.OurOldVelocity * 25)
            dmginfo:SetDamagePosition(data.HitPos)
            data.HitEntity:TakeDamageInfo(dmginfo)
        end

        self:EmitSound("weapons/rpg/shotdown.wav", 80)

        for i = 1, 1 do
            local prop = ents.Create("prop_physics")
            prop:SetPos(self:GetPos())
            prop:SetAngles(self:GetAngles())
            prop:SetModel("models/weapons/cod2019/m32_nade.mdl")
            prop:Spawn()
            prop:GetPhysicsObject():SetVelocityInstantaneous(data.OurNewVelocity * 0.5 + VectorRand() * 75)
            prop:SetCollisionGroup(COLLISION_GROUP_DEBRIS)

            SafeRemoveEntityDelayed(prop, 3)
        end

        self:Remove()
        return true
    end
	util.Decal("Scorch", hitPos + hitNormal, hitPos - hitNormal)
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
    dmg:SetDamage(200)
    util.BlastDamageInfo(dmg, self:GetPos(), self.Radius)
	util.BlastDamage(self, IsValid(self:GetOwner()) and self:GetOwner() or self, self:GetPos(), 300, 32)

    local fx = EffectData()
    fx:SetOrigin(self:GetPos())

    if self:WaterLevel() > 0 then
        util.Effect("WaterSurfaceExplosion", fx)
    else
        ParticleEffect("grenade_final", self:GetPos(), Angle(-90, 0, 0))
    end

    self:EmitSound("Cod2019.Frag.Explode")
	util.ScreenShake(self:GetPos(), 3500, 1111, 1, self.Radius * 4)
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
			dlight.Size = 1024
			dlight.DieTime = CurTime() + 5
		end
	 end
	end
	self:StopParticles()
end