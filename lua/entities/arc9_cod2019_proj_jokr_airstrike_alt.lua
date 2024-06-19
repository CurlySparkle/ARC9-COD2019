AddCSLuaFile()

if CLIENT then
    killicon.Add( "arc9_cod2019_proj_40mm_hel", "VGUI/killicons/cod2019_nade_he", Color(251, 85, 25, 255))
end

ENT.Base                     = "arc9_cod2019_proj_jokr_default"
ENT.PrintName                = "40mm HE"
ENT.Spawnable                = false

ENT.Model                    = "models/weapons/cod2019/m32_nade.mdl"

ENT.IsRocket = false // projectile has a booster and will not drop.

ENT.InstantFuse = false // projectile is armed immediately after firing.
ENT.RemoteFuse = false // allow this projectile to be triggered by remote detonator.
ENT.ImpactFuse = true // projectile explodes on impact.

ENT.ExplodeOnDamage = false // projectile explodes when it takes damage.
ENT.ExplodeUnderwater = true
ENT.SmokeTrail = false
ENT.RocketTrailParticle = "Rocket_Smoke"  -- name of the particle effect
ENT.RocketTrail = true -- leaves trail of a particle effect

ENT.Delay = 0
ENT.FlareColor = Color(235, 188, 37)
ENT.Radius = 128
ENT.AudioLoop = ""

--- Stuff
ENT.SeekerAngle = math.cos(math.rad(75))
ENT.SteerSpeed = 6000
ENT.FuseTime = 0
ENT.Boost = 2000
ENT.Lift = 0
ENT.DragCoefficient = 0.1
ENT.LifeTime = 20
ENT.FireAndForget = true
ENT.TopAttack = false -- This missile flies up above its target before going down in a top-attack trajectory.
ENT.TopAttackHeight = 5000
ENT.SuperSeeker = false
ENT.SuperSteerTime = 0
ENT.SuperSteerBoostTime = 100
ENT.NoReacquire = true
ENT.ShootEntData = {}
ENT.IsProjectile = true
ENT.LockOnPoint = nil

function ENT:Detonate()
    local attacker = self.Attacker or self:GetOwner()
    local dir = self:GetForward()
    local src = self:GetPos() - dir * 64

    local dmg = DamageInfo()
    dmg:SetAttacker(attacker)
    dmg:SetDamageType(DMG_AIRBOAT + DMG_BLAST)
    dmg:SetInflictor(self)
    dmg:SetDamageForce(self:GetVelocity() * 100)
    dmg:SetDamagePosition(src)
    dmg:SetDamage(24)
    util.BlastDamageInfo(dmg, self:GetPos(), self.Radius)

    local fx = EffectData()
    fx:SetOrigin(self:GetPos())

    if self:WaterLevel() > 0 then
        util.Effect("WaterSurfaceExplosion", fx)
    else
        ParticleEffect("Generic_explo_tiny", self:GetPos(), Angle(-90, 0, 0))
    end

    self:EmitSound("Cod2019.Frag.Explode")
    util.ScreenShake(self:GetPos(), 25, 4, 0.75, self.Radius * 4)
    util.Decal("FadingScorch", self:GetPos(), self:GetPos() + self:GetUp() * -100, {self})
    self:Remove()
end