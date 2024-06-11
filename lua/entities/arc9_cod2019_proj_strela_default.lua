AddCSLuaFile()

if CLIENT then
    killicon.Add( "arc9_cod2019_proj_strela_default", "vgui/killicons/cod2019_la_strela.png", Color(251, 85, 25, 255))
end

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

ENT.SmokeTrail = true
ENT.Flare = false

ENT.FlareColor = Color(155, 155, 155)
ENT.Radius = 300

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
            dmginfo:SetDamage(250 * (self.NPCDamage and 0.5 or 1))
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
	util.Decal("Scorch", hitPos + hitNormal, hitPos - hitNormal)
end

function ENT:Detonate()
    local attacker = self.Attacker or self:GetOwner()

    if self.NPCDamage then
        util.BlastDamage(self, attacker, self:GetPos(), 350, 125)
    else
        util.BlastDamage(self, attacker, self:GetPos(), 350, 225)
        self:FireBullets({
            Attacker = attacker,
			Damage = 300,
		    Num = 1,
		    Tracer = 0,
            Src = self:GetPos(),
            Dir = self:GetForward(),
            HullSize = bHull && self.Maxs:Length() * 2 || 1,
            IgnoreEntity = self,
            Callback = function(atk, btr, dmginfo)
                dmginfo:SetDamageType(DMG_AIRBOAT + DMG_BLAST) -- airboat damage for helicopters and LVS vehicles
                dmginfo:SetDamageForce(self:GetForward() * 20000) -- LVS uses this to calculate penetration!
            end,
        })
    end

    local fx = EffectData()
    fx:SetOrigin(self:GetPos())
    if self:WaterLevel() > 0 then
        util.Effect("WaterSurfaceExplosion", fx)
    else
        --util.Effect("Explosion", fx)
		ParticleEffect("grenade_final", self:GetPos(), self:GetAngles())
    end
    self:EmitSound("Cod2019.Frag.Explode")
	util.ScreenShake(self:GetPos(), 25, 4, 0.75, self.Radius * 4)
	--util.Decal("Scorch", self:GetPos(), self:GetPos() + self:GetUp() * -100, {self})
    self:Remove()
end

function ENT:GetDamageType()
	return DMG_BLAST + DMG_DIRECT
end