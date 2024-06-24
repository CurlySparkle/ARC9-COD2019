AddCSLuaFile()

if CLIENT then
    killicon.Add("arc9_cod2019_thrownflash", "vgui/killicons/cod2019_flash", Color(251, 85, 25, 255))
end

ENT.Type = "anim"
ENT.Base = "arc9_nade_base"
ENT.PrintName = "Flash Bang"
ENT.Spawnable = false
ENT.CollisionGroup = COLLISION_GROUP_PROJECTILE
ENT.Model = "models/weapons/cod2019/w_eq_stun_thrown.mdl"
ENT.PhysBoxSize = false
ENT.SphereSize = false
ENT.PhysMat = "grenade"
ENT.LifeTime = 1.5
ENT.Radius = 200
ENT.ExplodeOnImpact = false
ENT.SmokeTrail = false
ENT.BounceSound = "COD2019.Flash.Bounce"

local BLUR_DURATION = 5
local BaseClass = baseclass.Get(ENT.Base)

local function isCowerSupportedForNPC(npc)
    for _, a in pairs(npc:GetSequenceList()) do
        if (npc:GetSequenceActivity(npc:LookupSequence(a)) == ACT_COWER) then
            return true
        end
    end

    return false
end

local lethalToNpcs = {
"npc_barnacle",
"npc_crow",
"npc_pigeon",
"npc_seagull",
"npc_zombie",
"npc_fastzombie",
"npc_zombie_torso",
"npc_zombine",
"npc_headcrab",
"npc_headcrab_black",
"npc_headcrab_fast",
"npc_headcrab_fast",
"npc_lambdaplayer",
}

function ENT:Initialize()
    if SERVER then
        self:SetModel( self.Model )
        self:SetMoveType( MOVETYPE_VPHYSICS )
        self:SetSolid( SOLID_VPHYSICS )
        self:PhysicsInit( SOLID_VPHYSICS )
        self:DrawShadow( true )
		self:SetAngles(Angle(0, 0, -75))
		
        local phys = self:GetPhysicsObject()
        if phys:IsValid() then
            phys:Wake()
            phys:SetBuoyancyRatio(0)
        end

        self.SpawnTime = CurTime()

        timer.Simple(0, function()
            if !IsValid(self) then return end
            self:SetCollisionGroup(COLLISION_GROUP_PROJECTILE)
        end)
		sound.EmitHint(SOUND_DANGER, self:GetPos(), 200, 8, nil) --make shit run away (nil owner so even rebels run)
    end
	ParticleEffectAttach("grenadetrail", PATTACH_ABSORIGIN_FOLLOW, self, 0)
end

function ENT:Detonate()
    if not self:IsValid() then return end
    if self.Defused then return end
    if self:WaterLevel() > 0 then
        local tr = util.TraceLine({
            start = self:GetPos(),
            endpos = self:GetPos() + Vector(0, 0, 1) * 1024,
            filter = self,
        })
        local tr2 = util.TraceLine({
            start = tr.HitPos,
            endpos = self:GetPos(),
            filter = self,
            mask = MASK_WATER
        })
        ParticleEffect("explosion_water", tr2.HitPos + Vector(0, 0, 8), Angle(0, 0, 0), nil)

        self:EmitSound("weapons/underwater_explode3.wav", 100)
    else
        ParticleEffect("grenade_final", self:GetPos(), Angle(0, 0, 0), nil)
        self:EmitSound("^weapons/cod2019/shared/concussion_expl_body_01.ogg", 120, 100, 1, CHAN_AUTO)
    end
	
    util.BlastDamage(self, IsValid(self:GetOwner()) and self:GetOwner() or self, self:GetPos(), self.Radius, 32)
    util.ScreenShake(self:GetPos(), 25, 4, 0.75, self.Radius * 4)
    local owner = self:GetOwner()

    for _, e in pairs(ents.FindInSphere(self:GetPos(), self.Radius)) do
        if ((e:IsPlayer() || e:IsNPC()) && !e:IsLineOfSightClear(self:GetPos())) then
            continue
        end
        if (e:IsNPC()) then
            e:StartEngineTask(89, 0) --task_sound_pain

            if (isCowerSupportedForNPC(e)) then
                e:SetSchedule(SCHED_COWER)
            else
                if (table.HasValue(lethalToNpcs, e:GetClass())) then
                    e:TakeDamage(e:Health(), self:GetOwner(), self || nil)
                end
            end
            continue
        end
    end
	
    for _, ply in pairs(ents.FindInSphere(self:GetPos(), self.Radius)) do
        if (ply:IsPlayer()) then
            self:ApplyBlurEffect(ply)
        end
    end
	
    if SERVER then
        local dir = self.HitVelocity or self:GetVelocity()

        if self.Boost <= 0 then
            dir = Vector(0, 0, -1)
        end

        self:FireBullets({
            Attacker = self,
            Damage = 0,
            Tracer = 0,
            Distance = 256,
            Dir = dir,
            Src = self:GetPos(),
            Callback = function(att, tr, dmg)
                if self.Scorch then
                    util.Decal("Scorch", tr.StartPos, tr.HitPos - (tr.HitNormal * 16), self)
                end
            end
        })
    end

    sound.EmitHint(SOUND_DANGER, self:GetPos(), self.Radius, 6, nil) --needed for task (make them blinded for a little longer)
    self:Remove()
end

function ENT:ApplyBlurEffect(ply)
    if SERVER then
        net.Start("BlurEffect")
        net.WriteFloat(BLUR_DURATION)
        net.Send(ply)
    end
end

if CLIENT then

    local colorModify = {
        ["$pp_colour_addr"] = 0,
        ["$pp_colour_addg"] = 0,
        ["$pp_colour_addb"] = 0,
        ["$pp_colour_brightness"] = 0,
        ["$pp_colour_contrast"] = 1,
        ["$pp_colour_colour"] = 1,
        ["$pp_colour_mulr"] = 0,
        ["$pp_colour_mulg"] = 0,
        ["$pp_colour_mulb"] = 0
    }

    net.Receive("BlurEffect", function()
        local duration = net.ReadFloat()
        local endTime = CurTime() + duration
        
        hook.Add("RenderScreenspaceEffects", "BlurEffect", function()
            local timeLeft = endTime - CurTime()
            if timeLeft <= 0 then
                hook.Remove("RenderScreenspaceEffects", "BlurEffect")
                return
            end
            
            local fraction = timeLeft / duration
            DrawMotionBlur(0.4, fraction, 0.05)
            -- Apply color modify
            local colorFraction = fraction * 1 -- Adjust this multiplier to control color intensity
            colorModify["$pp_colour_brightness"] = -colorFraction * 0.5 -- Darken the screen
            colorModify["$pp_colour_colour"] = 1 - colorFraction * 0.1 -- Reduce color saturation
            DrawColorModify(colorModify)
        end)
    end)
end

if SERVER then
    util.AddNetworkString("BlurEffect")
end