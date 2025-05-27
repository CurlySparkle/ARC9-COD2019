AddCSLuaFile()

if CLIENT then
    killicon.Add( "arc9_cod2019_proj_40mm_flash", "VGUI/killicons/cod2019_nade_he", Color(251, 85, 25, 255))
end

ENT.Base                     = "arc9_cod2019_proj_40mm_hel"
ENT.PrintName                = "40mm Flash"
ENT.Spawnable                = false
ENT.Model                    = "models/weapons/cod2019/m32_nade.mdl"

ENT.SafetyFuse = 0.02
ENT.FlareColor = Color(0, 0, 0)
ENT.Radius = 300

function ENT:EntityFacingFactor(theirent)
    local dir = theirent:EyeAngles():Forward()
    local facingdir = (self:GetPos() - (theirent.GetShootPos and theirent:GetShootPos() or theirent:GetPos())):GetNormalized()

    return (facingdir:Dot(dir) + 1) / 2
end

function ENT:EntityFacingUs(theirent)
    local dir = theirent:EyeAngles():Forward()
    local facingdir = (self:GetPos() - (theirent.GetShootPos and theirent:GetShootPos() or theirent:GetPos())):GetNormalized()
    if facingdir:Dot(dir) > -0.25 then return true end
end

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
        ParticleEffect("Generic_explo_flash", self:GetPos(), Angle(0, 0, 0), nil)
        self:EmitSound("COD2019.Flash.Explode", _, _, _, _, _, _, ARC9.EveryoneRecipientFilter)
    end
	
    util.BlastDamage(self, IsValid(self:GetOwner()) and self:GetOwner() or self, self:GetPos(), 256, 32)
	util.ScreenShake(self:GetPos(), 25, 4, 0.75, self.Radius * 4)

    local radius = 1200
    local owner = self:GetOwner()

    for _, e in pairs(ents.FindInSphere(self:GetPos(), radius)) do
        if ((e:IsPlayer() || e:IsNPC()) && !e:IsLineOfSightClear(self:GetPos())) then
            continue
        end
        
        if (e:IsPlayer()) then
            local dist = e:GetPos():DistToSqr(self:GetPos())
            local distDelta = 1 - math.Clamp(dist / (radius * radius), 0, 1)
            local strength = Lerp(distDelta, 0, 2)

            e:SendLua("LocalPlayer():EmitSound('COD2019.Flash.Explode')")
            local dot = e:EyeAngles():Forward():Dot((e:GetPos() - self:GetPos()):GetNormalized())
            strength = strength * math.max(-dot, 0.1)

            e:ScreenFade(SCREENFADE.IN, color_white, strength, strength * 0.5)
            e:SetDSP(35)

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

    sound.EmitHint(SOUND_DANGER, self:GetPos(), radius, 6, nil) --needed for task (make them blinded for a little longer)
    self:Remove()
end

function ENT:OnRemove()
	if (self:WaterLevel() <= 0) then
     if CLIENT then
		local dlight = DynamicLight(self:EntIndex())
		if (dlight) then
			dlight.pos = self:GetPos()
			dlight.r = 255
			dlight.g = 255
			dlight.b = 255
			dlight.brightness = 5
			dlight.Decay = 2000
			dlight.Size = 1024
			dlight.DieTime = CurTime() + 5
		end
	 end
	end
	self:StopParticles()
end