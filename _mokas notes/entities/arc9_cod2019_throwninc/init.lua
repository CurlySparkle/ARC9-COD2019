AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

local BURN_DAMAGE = 5 --edit the damage of the fire pool
local BURN_TICK = 0.1 -- how frequently the fire deals damage
local BURN_LENGTH = 8 -- how long does the fire pool remain on the ground
local IGNITE_LENGTH = 2 -- how long do enemies remain on fire after leaving the fire pool

local function TargetIsValid(ent) 
    return !ent:IsWorld()
end

function ENT:Initialize() 
    self:SetModel("models/weapons/cod2019/w_eq_thermite_thrown.mdl") --set this string to the filepath of your molotov model | "models/your/filepath/yourfile.mdl"
    self:PhysicsInit(SOLID_VPHYSICS)
    self:SetMoveType(MOVETYPE_VPHYSICS)
    self:SetSolid(SOLID_VPHYSICS)
    self:SetColor(Color(0,0,0))
	self:SetAngles(Angle(0, 0, -70))
    self.IsIgnited = false
	
	ParticleEffectAttach("thermite_thrown_trail",PATTACH_POINT_FOLLOW,self,1)

    local phys = self:GetPhysicsObject()

    if phys:IsValid() then

        phys:Wake()

    end
    phys:SetMass(10)
    phys:ApplyTorqueCenter( VectorRand(-10,10) )
end

function ENT:Think() 
    if self.HitPos then
        self:SetPos(self.HitPos)
    end

    if self.IsIgnited then
        local dmg = DamageInfo()
        dmg:SetDamage(BURN_DAMAGE)
        dmg:SetAttacker(self:GetOwner())
        dmg:SetInflictor(self)
        dmg:SetDamageType(DMG_BURN)
        for k, v in pairs(ents.FindInSphere(self.HitPos, 240)) do 
            if TargetIsValid(v) && v != self then
                v:TakeDamageInfo(dmg)
                v:Ignite(IGNITE_LENGTH,1)
            end
        end
    end

    self:NextThink(CurTime() + BURN_TICK)

    if CurTime() > self:GetCreationTime() + BURN_LENGTH then
	    self:StopParticles()
        self:Remove()
		self:EmitSound("weapons/cod2019/throwables/molotov/weap_molotov_fire_lp_end.ogg",75, 100, 1, CHAN_AUTO)
    end
    return true

end

function ENT:PhysicsCollide( data, phys )

    if self.IsIgnited == false then
        self:EmitSound("weapons/cod2019/throwables/frag/phy_frag_bounce_concrete_hard_0"..math.random(1,3)..".ogg",75, 100, 0.6, CHAN_AUTO)

        local angle = data.HitNormal
        if angle.z <= -0.6 then
            self.HitPos = self:GetPos()
            self:EmitSound("^weapons/cod2019/throwables/molotov/inc_grenade_detonate_1.ogg", 100, 100, 1, CHAN_AUTO) --if you have a sound that should play on impact, put it here, otherwise you can delete this line
            self:EmitSound("^weapons/cod2019/throwables/molotov/weap_molotov_burn_lp.ogg",75, 100, 1, CHAN_AUTO) --this is the sound of the pool burning "your/filepath/filename.ogg"
            self:EmitSound("^weapons/cod2019/throwables/molotov/fire_loop.ogg",75, 100, 1, CHAN_AUTO) --this is the sound of the pool burning "your/filepath/filename.ogg"
            ParticleEffect( "incen_fire_pool", self.HitPos - Vector(0,0,3), Angle(0,0,0),self)
            ParticleEffect( "grenade_thick_smoke", self.HitPos - Vector(0,0,3), Angle(0,0,0),self)
			sound.EmitHint(SOUND_DANGER, self:GetPos(), 2, 1, nil) --make shit run away (nil owner so even rebels run)
            self.IsIgnited = true
            self:SetNoDraw(true)
        end
    end
end