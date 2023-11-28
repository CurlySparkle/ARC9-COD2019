AddCSLuaFile()

ENT.Type = "anim"
ENT.Base = "arc9_cod2019_proj_base"
ENT.PrintName = "PILA Rocket"

ENT.Spawnable = false
ENT.CollisionGroup = COLLISION_GROUP_PROJECTILE


if CLIENT then
    killicon.Add( "arc9_cod2019_proj_pila_default", "hud/killicons/default", Color( 255, 255, 255, 255 ) )
end

ENT.Model = "models/weapons/cod2019/mags/w_eq_pila_rocket.mdl"

ENT.SmokeTrailSize = 28
ENT.SmokeTrailTime = 3
ENT.Flare = false
ENT.Gravity = false

ENT.Damage = 256
ENT.Radius = 200
ENT.ImpactDamage = 1000

ENT.SeekerAngle = math.cos(math.rad(30))
ENT.SteerSpeed = 15000
ENT.FuseTime = 0
ENT.Boost = 0
ENT.BoostTarget = 500
ENT.Lift = 0
ENT.DragCoefficient = 0

ENT.LifeTime = 15
ENT.BoostTime = 15

ENT.FireAndForget = true