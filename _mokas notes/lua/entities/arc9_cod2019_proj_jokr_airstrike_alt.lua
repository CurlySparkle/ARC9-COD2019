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
ENT.Radius = 128
ENT.AudioLoop = "^weapons/cod2019/jokr/weap_juliet_proj_ignite_01.ogg"

--- Stuff
ENT.SeekerAngle = math.cos(math.rad(75))
ENT.SteerSpeed = 250
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

function ENT:Detonate()
    local phys = self:GetPhysicsObject()
    if (self:WaterLevel() <= 0) then
        ParticleEffect("Generic_explo_mid", self:GetPos(), Angle(-90, 0, 0))
    else
        local effectdata = EffectData()
        effectdata:SetOrigin(phys:GetPos())
        util.Effect("WaterSurfaceExplosion", effectdata)
    end

    local dmgInfo = DamageInfo()
    dmgInfo:SetDamage(64)
    dmgInfo:SetAttacker(IsValid(self:GetOwner()) && self:GetOwner() || self)
    dmgInfo:SetInflictor(self)
    dmgInfo:SetDamageType(self:GetDamageType())
    util.BlastDamageInfo(dmgInfo, phys:GetPos(), 190)

    local dir = self:GetVelocity():GetNormalized()
    local src = self:GetPos() - dir * 64
    self:FireBullets({
        Attacker = attacker,
        Damage = 100,
        Tracer = 0,
        Src = src,
        Dir = dir,
        HullSize = 0,
        Distance = 256,
        IgnoreEntity = self,
        Callback = function(atk, btr, dmginfo)
            if IsValid(btr.Entity) and btr.Entity.LVS then
                dmginfo:ScaleDamage(5)
                dmginfo:SetDamageType(DMG_AIRBOAT + DMG_SNIPER + DMG_BLAST)
                dmginfo:SetDamageForce(self:GetForward() * 8000)
            end
        end,
    })

    self:EmitSound("^weapons/cod2019/shared/rocket_expl_body_02.ogg", 100, 100, 1, CHAN_WEAPON)
    util.ScreenShake(phys:GetPos(), 3500, 1111, 1, 300)
    util.Decal("Scorch", self:GetPos(), self:GetPos() + self:GetUp() * -100, {self})

    for i, e in pairs(ents.FindInSphere(self:GetPos(), 32)) do
        if (e:GetClass() == "npc_strider") then
            e:Fire("Explode")
        end
    end

    self:Remove()
end

function ENT:GetDamageType() 
	return DMG_AIRBOAT + DMG_SNIPER + DMG_BLAST
end