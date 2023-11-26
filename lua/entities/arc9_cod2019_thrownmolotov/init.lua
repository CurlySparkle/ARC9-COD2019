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
    self:SetModel("models/weapons/cod2019/w_molotov_thrown.mdl") --set this string to the filepath of your molotov model | "models/your/filepath/yourfile.mdl"
    self:PhysicsInit(SOLID_VPHYSICS)
    self:SetMoveType(MOVETYPE_VPHYSICS)
    self:SetSolid(SOLID_VPHYSICS)
    self:SetColor(Color(0,0,0))
	self:SetAngles(Angle(0, 0, -70))
    self.IsIgnited = false
	
	--ParticleEffectAttach("weapon_molotov_thrown",PATTACH_POINT_FOLLOW,self,1)

	timer.Simple(0, function()
        if (!IsValid(self)) then return end
        ParticleEffectAttach("weapon_molotov_thrown",PATTACH_POINT_FOLLOW,self,1)
	end)    

    local phys = self:GetPhysicsObject()

    if phys:IsValid() then

        phys:Wake()

    end
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
        self:EmitSound("physics/metal/metal_grenade_impact_hard"..math.random(1,3)..".wav",75, 100, 0.6, CHAN_AUTO)

        local angle = data.HitNormal
        if angle.z <= -0.6 then
            self.HitPos = self:GetPos()
            self:EmitSound("COD2019.Molotov.Explode") --if you have a sound that should play on impact, put it here, otherwise you can delete this line
            self:EmitSound("^weapons/cod2019/throwables/molotov/weap_molotov_burn_lp.ogg",75, 100, 1, CHAN_AUTO) --this is the sound of the pool burning "your/filepath/filename.ogg"
            self:EmitSound("weapons/cod2019/throwables/molotov/fire_loop.ogg",75, 100, 1, CHAN_AUTO) --this is the sound of the pool burning "your/filepath/filename.ogg"
            ParticleEffect( "incen_fire_pool", self.HitPos - Vector(0,0,3), Angle(0,0,0),self)
            self.IsIgnited = true
            self:SetNoDraw(true)
        end
    end
end