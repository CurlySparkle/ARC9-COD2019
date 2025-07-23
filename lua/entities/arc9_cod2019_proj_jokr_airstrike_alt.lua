AddCSLuaFile()

if CLIENT then
    killicon.Add( "arc9_cod2019_proj_jokr_airstrike_alt", "VGUI/killicons/cod2019_la_jokr.png", Color(251, 85, 25, 255))
end

ENT.Base                     = "arc9_cod2019_proj_jokr_default"
ENT.PrintName                = "Jokr Mini-Missiles"
ENT.Spawnable                = false

ENT.Model                    = "models/weapons/cod2019/mags/w_la_jokr_rocket.mdl"

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
ENT.Radius = 200
ENT.AudioLoop = "^weapons/cod2019/jokr/weap_juliet_proj_ignite_01.ogg"

--- Stuff
ENT.SeekerAngle = math.cos(math.rad(75))
ENT.SteerSpeed = 265
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

DEFINE_BASECLASS(ENT.Base)

function ENT:OnInitialize()
    self:SetModelScale(0.8)
    BaseClass.OnInitialize(self)
end

function ENT:Impact(data, collider)
   util.Decal("Scorch", data.HitPos + data.HitNormal, data.HitPos - data.HitNormal)
end

function ENT:Detonate()
    local attacker = self.Attacker or self:GetOwner()
    local dir = self:GetVelocity():GetNormalized()
    local src = self:GetPos() - dir * 64
    local phys = self:GetPhysicsObject()

    if (self:WaterLevel() <= 0) then
        ParticleEffect("Generic_explo_mid", self:GetPos(), Angle(-90, 0, 0))
    else
        local effectdata = EffectData()
        effectdata:SetOrigin(phys:GetPos())
        util.Effect("WaterSurfaceExplosion", effectdata)
    end

    local dmg = DamageInfo()
    dmg:SetAttacker(attacker)
    dmg:SetDamageType(DMG_BLAST)
    dmg:SetInflictor(self)
    dmg:SetDamageForce(self:GetForward() * 1000)
    dmg:SetDamagePosition(src)
    dmg:SetDamage(50)
    util.BlastDamageInfo(dmg, self:GetPos(), self.Radius)

    self:EmitSound("^weapons/cod2019/shared/rocket_expl_body_02.ogg", 100, 100, 1, CHAN_WEAPON)
    util.ScreenShake(phys:GetPos(), 3500, 1111, 1, self.Radius)
    --util.Decal("Scorch", self:GetPos(), self:GetPos() + self:GetUp() * -100, {self})

    self:Remove()
end

function ENT:GetDamageType()
    return DMG_AIRBOAT + DMG_SNIPER + DMG_BLAST
end