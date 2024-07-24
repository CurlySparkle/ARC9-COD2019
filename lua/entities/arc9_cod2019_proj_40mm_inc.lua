AddCSLuaFile()

if CLIENT then
    killicon.Add( "arc9_cod2019_proj_40mm_inc", "VGUI/killicons/cod2019_nade_he", Color(251, 85, 25, 255))
end

ENT.Base                     = "arc9_cod2019_proj_40mm_hel"
ENT.PrintName                = "40mm Fire"
ENT.Spawnable                = false
ENT.Model                    = "models/weapons/cod2019/m32_nade.mdl"

ENT.InstantFuse = false -- projectile is armed immediately after firing.
ENT.RemoteFuse = false -- allow this projectile to be triggered by remote detonator.
ENT.ImpactFuse = false -- projectile explodes on impact.
ENT.BounceWall = true -- projectile doesn't detonate until it hits the ground
ENT.NoBounce = true -- projectile doesn't bounce.

ENT.ExplodeOnDamage = false -- projectile explodes when it takes damage.
ENT.ExplodeUnderwater = false
ENT.ImpactScorch = false -- leaves a scorch on hit

ENT.SafetyFuse = 0.01
ENT.FuseTime = 10

function ENT:Detonate()
    if self:WaterLevel() > 0 then self:Remove() return end
    local attacker = self.Attacker or self:GetOwner() or self
	
	self:EmitSound("^weapons/cod2019/throwables/molotov/inc_grenade_detonate_1.ogg", 100, 100, 0.75)

    local firepool = ents.Create( "arc9_cod2019_fire_pool" )
    if !IsValid(firepool) then return end

    firepool:SetPos(self:GetPos())
    firepool:SetOwner(attacker)
    firepool:Spawn()
	firepool.NoIgnite = self

    self:SetNWBool("CreatedNade",true)
    self:SetNWBool("Children",true)
    self:Remove()
end