AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

local BURN_DAMAGE = 17 --edit the damage of the fire pool
local IGNITE_LENGTH = 3 -- how long do enemies remain on fire after leaving the fire pool

local function TargetIsValid(ent) 
    return !ent:IsWorld()
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
    for _, e in pairs(ents.FindInSphere(self:GetPos(), 210)) do
        if (e:IsPlayer() || e:IsNPC() || e:IsNextBot() || (e:GetClass():find("prop_") && IsValid(e))) then
            local dmgInfo = DamageInfo()
            dmgInfo:SetAttacker(self:GetOwner())
            dmgInfo:SetDamage(BURN_DAMAGE)
            dmgInfo:SetDamageType(DMG_BURN)
            dmgInfo:SetInflictor(self)
            e:TakeDamageInfo(dmgInfo)
			e:Ignite(IGNITE_LENGTH,14)
        end
    end

    if CurTime() > self.DeathTime then 
        self:Remove()
    end

    self:NextThink(CurTime() + 0.5)
    return true
end

function ENT:OnRemove() 
    self:EmitSound("weapons/cod2019/throwables/molotov/weap_molotov_fire_lp_end.ogg",75, 100, 1, CHAN_AUTO)
end

local directfiredamage = {
    ["npc_zombie"] = true,
    ["npc_zombie_torso"] = true,
    ["npc_fastzombie"] = true,
    ["npc_fastzombie_torso"] = true,
    ["npc_poisonzombie"] = true,
    ["npc_zombine"] = true,
    ["npc_headcrab"] = true,
    ["npc_headcrab_fast"] = true,
    ["npc_headcrab_black"] = true,
    ["npc_headcrab_poison"] = true,
}

hook.Add("EntityTakeDamage", "mw19_firepool", function(ent, dmginfo)
    if IsValid(dmginfo:GetInflictor()) and dmginfo:GetInflictor():GetClass() == "arc9_cod2019_fire_pool" and dmginfo:GetDamageType() == DMG_BURN then
        if ent:IsNPC() then
            if directfiredamage[ent:GetClass()] then
                dmginfo:SetDamageType(DMG_SLOWBURN) -- DMG_BURN does not hurt HL2 zombies and instead turns them black.
            end
        elseif !ent:IsNextBot() and !ent:IsPlayer() then
            if ent:GetClass() == "prop_physics" then
                dmginfo:SetDamageType(DMG_DIRECT) -- some props like to burn slowly against DMG_BURN or DMG_SLOWBURN. don't.
            end
            dmginfo:ScaleDamage(1.5) -- tremendous damage to props
        end
        dmginfo:SetDamageForce(Vector()) -- fire does not push things around. still applies to players, but that can't be helped.
    end
end)

hook.Add("PostEntityTakeDamage", "mw19_firepool2", function(ent, dmginfo, took)
    if took and IsValid(dmginfo:GetInflictor()) and dmginfo:GetInflictor():GetClass() == "arc9_cod2019_fire_pool" and !ent:IsPlayer() then
        ent:Ignite(math.Rand(3, 5))
    end
end)