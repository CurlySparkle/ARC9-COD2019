AddCSLuaFile()

if CLIENT then
    killicon.Add( "arc9_cod2019_proj_40mm_hel", "VGUI/killicons/cod2019_nade_he", Color(251, 85, 25, 255))
end

ENT.Base                     = "arc9_cod2019_proj_base"
ENT.PrintName                = "40mm HE"
ENT.Spawnable                = false
ENT.Model                    = "models/weapons/cod2019/m32_nade.mdl"

ENT.IsRocket = false -- projectile has a booster and will not drop.
ENT.InstantFuse = false -- projectile is armed immediately after firing.
ENT.RemoteFuse = false -- allow this projectile to be triggered by remote detonator.
ENT.ImpactFuse = true -- projectile explodes on impact.

ENT.ExplodeOnDamage = false -- projectile explodes when it takes damage.
ENT.ExplodeUnderwater = false
ENT.RocketTrailParticle = "40mm_trail"  -- name of the particle effect
ENT.RocketTrail = true -- leaves trail of a particle effct
ENT.SmokeTrail = false
ENT.ImpactScorch = true -- leaves a scorch on hit

ENT.Delay = 0
ENT.SafetyFuse = 0.08
ENT.FlareColor = nil
ENT.FlareSizeMin = 20
ENT.FlareSizeMax = 50
ENT.Radius = 256

ENT.OuterFlairColor = Color(236,153,17,255)
ENT.InnerFlairColor = Color(255,255,255,255)
ENT.OuterFlairScale = 0.3
ENT.InnerFlairScale = 0.1

DEFINE_BASECLASS(ENT.Base)
PrecacheParticleSystem("40mm_trail")

local flair = Material("mw19/flair_sprite_01")

function ENT:OnInitialize()
	local phys = self:GetPhysicsObject()
	if phys:IsValid() then
		phys:AddGameFlag(FVPHYSICS_NO_PLAYER_PICKUP)
		phys:AddGameFlag(FVPHYSICS_NO_IMPACT_DMG)
		phys:AddGameFlag(FVPHYSICS_HEAVY_OBJECT)
		phys:EnableMotion(true)
		phys:EnableDrag(false)
		phys:SetMass(1000)
		phys:SetVelocityInstantaneous(self:GetAngles():Forward() + Vector(0, 0, 0.1))
	end
	
	self:AddEFlags(EFL_NO_DAMAGE_FORCES)
	self:AddEFlags(EFL_DONTWALKON)
	self:AddEFlags(EFL_DONTBLOCKLOS)
	self:AddEFlags(EFL_NO_PHYSCANNON_INTERACTION)
end

function ENT:Impact(data, collider)
    if self.SpawnTime + self.SafetyFuse > CurTime() then
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
            dmginfo:SetDamageType(DMG_CLUB + DMG_DIRECT)
            dmginfo:SetDamage(100)
			dmginfo:SetDamageForce(data.OurOldVelocity * 25)
            dmginfo:SetDamagePosition(data.HitPos)
            data.HitEntity:TakeDamageInfo(dmginfo)
        end

        self:EmitSound("weapons/rpg/shotdown.wav", 80)

		timer.Simple(0, function()
            local prop = ents.Create("prop_physics")
            prop:SetPos(self:GetPos())
            prop:SetAngles(self:GetAngles())
            prop:SetModel("models/weapons/cod2019/m32_nade.mdl")
            prop:Spawn()
            prop:GetPhysicsObject():SetVelocityInstantaneous(data.OurNewVelocity * 0.5 + VectorRand() * 75)
            prop:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
            SafeRemoveEntityDelayed(prop, 3)
        end)
        self:Remove()
        return true
    end
	if self.ImpactScorch then
	util.Decal("Scorch", data.HitPos + data.HitNormal, data.HitPos - data.HitNormal)
	end
end

function ENT:Detonate(data)
    local attacker = self.Attacker or self:GetOwner()
    local dir = self:GetForward()
    local src = self:GetPos() - dir * 64

    local dmg = DamageInfo()
    dmg:SetAttacker(attacker)
    dmg:SetDamageType(DMG_AIRBOAT + DMG_SNIPER + DMG_BLAST)
    dmg:SetInflictor(self)
    dmg:SetDamageForce(self:GetVelocity() * 100)
    dmg:SetDamagePosition(src)
    dmg:SetDamage(150)
    util.BlastDamageInfo(dmg, self:GetPos(), self.Radius)
	util.BlastDamage(self, IsValid(self:GetOwner()) and self:GetOwner() or self, self:GetPos(), 300, 32)
	
    local fx = EffectData()
	fx:SetOrigin(self:GetPos())
	fx:SetStart(self:GetPos())
	fx:SetRadius(self.Radius)
    fx:SetEntity(self)
    if self:WaterLevel() > 0 then
        util.Effect("WaterSurfaceExplosion", fx)
    else
        util.Effect("cod2019_grenade_explosion", fx)
		self:EmitSound("Cod2019.Frag.Explode")
    end
	
    timer.Simple(0, function() self:Remove() end)
end

function ENT:DrawTranslucent(flags)
    self:DrawModel()
    -- Check if the entity has hit a surface
    if not self:GetNWBool("HasDetonated", false) then
        local ang = LocalPlayer():EyeAngles()
        local angle = Angle(0, LocalPlayer():EyeAngles()[2], 0)

        angle = Angle(LocalPlayer():EyeAngles()[1], angle.y, 0)
       
        angle:RotateAroundAxis(angle:Up(), -90)
        angle:RotateAroundAxis(angle:Forward(), 90)
        
        cam.Start3D2D(self:GetPos() - self:GetForward() * 2, angle, 0.2)

            local OuterScale = 512 * self.OuterFlairScale
            local InnerScale = 512 * self.InnerFlairScale

            surface.SetMaterial(flair)
            surface.SetDrawColor(self.OuterFlairColor)
            surface.DrawTexturedRect(-OuterScale/2, -OuterScale/2, OuterScale, OuterScale)

            surface.SetDrawColor(self.InnerFlairColor)
            surface.DrawTexturedRect(-InnerScale/2, -InnerScale/2, InnerScale, InnerScale)

        cam.End3D2D()
    end
end