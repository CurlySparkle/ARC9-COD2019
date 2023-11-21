AddCSLuaFile()

ENT.Base = "arc9_cod2019_proj_40mm_base"
ENT.PrintName = "Strela Rocket"
ENT.Type = "anim"
ENT.DragCoefficient = 0.25


if CLIENT then
    killicon.Add( "arc9_cod2019_proj_strela_default2", "hud/killicons/default", Color( 255, 255, 255, 255 ) )
end

ENT.Model = "models/weapons/cod2019/mags/w_eq_strela_rocket.mdl"
ENT.Damage = 150
ENT.Radius = 300
ENT.Gravity = false

function ENT:Detonate()
    if not self:IsValid() or self.BOOM then return end
    self.BOOM = true

    if self.ExplosionEffect then
        local effectdata = EffectData()
        effectdata:SetOrigin(self:GetPos())

        if self:WaterLevel() >= 1 then
            util.Effect("WaterSurfaceExplosion", effectdata)
            self:EmitSound("weapons/underwater_explode3.wav", 125, 100, 1, CHAN_AUTO)
        else
		self:EmitSound("Cod2019.Frag.Explode")
        ParticleEffect("explosion_m79", self:GetPos(), Angle(0, 0, 0), nil)
        ParticleEffect("smoke_plume", self:GetPos(), Angle(0, 0, 0), nil)
	
        end

        util.ScreenShake(self:GetPos(), 25, 4, 0.75, self.Radius * 4)

        if self.GrenadePos == nil then
            self.GrenadePos = self:GetPos()
        end
        if self.GrenadeDir == nil then
            self.GrenadeDir = self:GetVelocity():GetNormalized()
        end

        local trace = util.TraceLine({
            start = self.GrenadePos,
            endpos = self.GrenadePos + self.GrenadeDir * 4,
            mask = MASK_SOLID_BRUSHONLY
        })
        if trace.Hit then
            self:EmitSound(self.DebrisSounds[math.random(1,#self.DebrisSounds)], 85, 100, 1, CHAN_AUTO)
        end
    end

    self:DoDetonation()
	self.Defused = true

    if self.Scorch then
        util.Decal(self.Scorch, self.GrenadePos, self.GrenadePos + self.GrenadeDir * 4, self)
    end

    self:Remove()
end
