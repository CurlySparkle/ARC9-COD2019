AddCSLuaFile()

if CLIENT then
    killicon.Add( "arc9_cod2019_proj_strela_default", "vgui/killicons/cod2019_la_strela.png", Color(251, 85, 25, 255))
end

game.AddParticles("particles/mw2019_rockettrail.pcf")
PrecacheParticleSystem("rockettrail2")

ENT.Base                     = "arc9_cod2019_proj_base"
ENT.PrintName                = "Strela Rocket"
ENT.Spawnable                = false
ENT.Model                    = "models/weapons/cod2019/mags/w_eq_strela_rocket.mdl"

ENT.IsRocket = false // projectile has a booster and will not drop.
ENT.InstantFuse = false // projectile is armed immediately after firing.
ENT.RemoteFuse = false // allow this projectile to be triggered by remote detonator.
ENT.ImpactFuse = true // projectile explodes on impact.

ENT.ExplodeOnDamage = true
ENT.ExplodeUnderwater = true

ENT.Delay = 0
ENT.SafetyFuse = 0.05

ENT.AudioLoop = "models/weapons/cod2019/mags/w_eq_strela_rocket.mdl"
ENT.SmokeTrail = false
ENT.RocketTrail = true -- leaves trail of a particle effct
ENT.RocketTrailParticle = "rockettrail2"  -- name of the particle effect
ENT.Flare = false

ENT.FlareColor = Color(255, 155, 0)
ENT.Radius = 200

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
            dmginfo:SetDamageType(DMG_CRUSH + DMG_CLUB)
            dmginfo:SetDamage(250)
            dmginfo:SetDamageForce(data.OurOldVelocity * 25)
            dmginfo:SetDamagePosition(data.HitPos)
            data.HitEntity:TakeDamageInfo(dmginfo)
        end

        self:EmitSound("weapons/rpg/shotdown.wav", 80)

        for i = 1, 1 do
		  timer.Simple(0, function()
            local prop = ents.Create("prop_physics")
            prop:SetPos(self:GetPos())
            prop:SetAngles(self:GetAngles())
            prop:SetModel("models/weapons/cod2019/mags/w_eq_strela_rocket.mdl")
            prop:Spawn()
            prop:GetPhysicsObject():SetVelocityInstantaneous(data.OurNewVelocity * 0.5 + VectorRand() * 75)
            prop:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
            SafeRemoveEntityDelayed(prop, 3)
		   end)
        end

        self:Remove()
        return true
    end
	util.Decal("Scorch", data.HitPos + data.HitNormal, data.HitPos - data.HitNormal)
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
    dmg:SetDamage(275)
    util.BlastDamageInfo(dmg, self:GetPos(), self.Radius)
	util.BlastDamage(self, IsValid(self:GetOwner()) and self:GetOwner() or self, self:GetPos(), 300, 64)
	
    self:FireBullets({
        Attacker = attacker,
        Damage = 200,
        Tracer = 0,
        Src = src,
        Dir = dir,
        HullSize = 16,
        Distance = 128,
        IgnoreEntity = self,
        Callback = function(atk, btr, dmginfo)
            if IsValid(btr.Entity) and btr.Entity.LVS then
                dmginfo:ScaleDamage(5)
                dmginfo:SetDamageType(DMG_AIRBOAT + DMG_SNIPER + DMG_BLAST)
                dmginfo:SetDamageForce(self:GetForward() * 20000)
            end
        end,
    })

    local fx = EffectData()
	fx:SetOrigin(self:GetPos())
	fx:SetStart(self:GetPos() + self:GetUp())
	fx:SetRadius(200)
    fx:SetEntity(self)
    if self:WaterLevel() > 0 then
        util.Effect("WaterSurfaceExplosion", fx)
    else
        util.Effect("cod2019_grenade_explosion", fx)
		self:EmitSound("Cod2019.Frag.Explode", _, _, _, _, _, _, ARC9.EveryoneRecipientFilter)
    end

	--util.Decal("Scorch", self:GetPos(), self:GetPos() + self:GetUp() * -100, {self})
    timer.Simple(0, function() self:Remove() end)
end