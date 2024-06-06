AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

local BURN_DAMAGE = 10 --edit the damage of the fire pool
local IGNITE_LENGTH = 1 -- how long do enemies remain on fire after leaving the fire pool

local function TargetIsValid(ent) 
    return !ent:IsWorld()
end

if CLIENT then
    killicon.Add( "arc9_cod2019_fire_pool2", "vgui/killicons/cod2019_fire.png", Color(251, 85, 25, 255))
end

function ENT:Initialize()
    if not self:GetNWBool("Children",false) then
        self:SetNWBool("Children",true)
    end

    self:AddFlags(FL_GRENADE)
    self:AddFlags(FL_ONFIRE)
    ParticleEffectAttach("incen_fire_pool", PATTACH_ABSORIGIN_FOLLOW, self, 0)
    ParticleEffectAttach("grenade_thick_smoke", PATTACH_ABSORIGIN_FOLLOW, self, 0)
    self:EmitSound("^weapons/cod2019/throwables/molotov/weap_molotov_burn_lp.ogg",75, 100, 1, CHAN_AUTO) --this is the sound of the pool burning "your/filepath/filename.ogg"
    self:EmitSound("^weapons/cod2019/throwables/molotov/fire_loop.ogg",75, 100, 1, CHAN_AUTO) --this is the sound of the pool burning "your/filepath/filename.ogg"
    self.DeathTime = CurTime() + 8
    sound.EmitHint(SOUND_DANGER, self:GetPos(), 200, 8, nil) --make shit run away (nil owner so even rebels run)
end

function ENT:Think() 
        local dmg = DamageInfo()
        dmg:SetDamage(BURN_DAMAGE)
        dmg:SetAttacker(self:GetOwner())
        dmg:SetInflictor(self)
        dmg:SetDamageType(DMG_BURN)
        for k, v in pairs(ents.FindInSphere(self:GetPos(), 200)) do 
            if TargetIsValid(v) && v != self && v != self.NoIgnite then
                v:TakeDamageInfo(dmg)
                v:Ignite(IGNITE_LENGTH,1)
            end
        end

    if CurTime() > self.DeathTime then 
        self:Remove()
    end

    self:NextThink(CurTime() + 1)
    return true
end

function ENT:OnRemove() 
    self:EmitSound("weapons/cod2019/throwables/molotov/weap_molotov_fire_lp_end.ogg",75, 100, 1, CHAN_AUTO)
end