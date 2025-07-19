ENT.Type = "anim"
ENT.PrintName			= "Decoy Grenade"
ENT.DoNotDuplicate = true
ENT.DisableDuplicator = true
ENT.Zombies = {}
ENT.VJExists = false
ENT.HasShot = false
ENT.Radius = 300

PrecacheParticleSystem("weapon_decoy_ground_effect")
PrecacheParticleSystem("weapon_decoy_ground_effect_shot")

function ENT:OnRemove()
end

function ENT:PhysicsUpdate()
end

function ENT:PhysicsCollide(data,phys)
    if data.Speed > 60 then
        self:EmitSound("COD2019.Frag.Bounce")
        local impulse = (data.OurOldVelocity - 2 * data.OurOldVelocity:Dot(data.HitNormal) * data.HitNormal) * 0.25
        phys:ApplyForceCenter(impulse)
        self:StopParticles()
    end
end