AddCSLuaFile()

ENT.Base = "arc9_cod2019_proj_40mm_base"
ENT.PrintName = "Flash Grenade"

ENT.ExplosionEffect = false
ENT.Scorch = false

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

function ENT:DoDetonation()
    local tr = {}
    tr.start = self:GetPos()
    tr.mask = MASK_SOLID

    for _, v in ipairs(player.GetAll()) do
        tr.endpos = v:GetShootPos()

        tr.filter = {self, v, v:GetActiveWeapon()}

        local traceres = util.TraceLine(tr)

        if not traceres.Hit or traceres.Fraction >= 1 or traceres.Fraction <= 0 then
            v:SetNWFloat("ARC9_GSR_LastFlash", CurTime())
            v:SetNWEntity("ARC9_GSR_LastFlashBy", self:GetOwner())
            v:SetNWFloat("ARC9_GSR_FlashDistance", v:GetShootPos():Distance(self:GetPos()))
            v:SetNWFloat("ARC9_GSR_FlashFactor", self:EntityFacingFactor(v))

            if v:GetNWFloat("ARC9_GSR_FlashDistance", v:GetShootPos():Distance(self:GetPos())) < 1500 and v:GetNWFloat("FlashFactor", self:EntityFacingFactor(v)) < tr.endpos:Distance(self:GetPos(v)) then
                if v:GetNWFloat("ARC9_GSR_FlashDistance", v:GetShootPos():Distance(self:GetPos())) < 1000 then
                    v:SetDSP(37, false)
                elseif v:GetNWFloat("ARC9_GSR_FlashDistance", v:GetShootPos():Distance(self:GetPos())) < 800 then
                    v:SetDSP(36, false)
                elseif v:GetNWFloat("ARC9_GSR_FlashDistance", v:GetShootPos():Distance(self:GetPos())) < 600 then
                    v:SetDSP(35, false)
                end
            end
        end
    end

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
        --ParticleEffect("bumpmine_detonate", self:GetPos(), Angle(0, 0, 0), nil)
		ParticleEffect("smoke_plume", self:GetPos(), Angle(-90, 0, 0))
        ParticleEffect("weapon_decoy_ground_effect_shot", self:GetPos(), Angle(0, 0, 0), nil)
        ParticleEffect("explosion_hegrenade_brief", self:GetPos(), Angle(0, 0, 0), nil)
        self:EmitSound("CSGO.Flashbang.Explode")
    end

    for _, v in ipairs(ents.GetAll()) do
        if v:IsNPC() and self:EntityFacingUs(v) then
            tr.endpos = v.GetShootPos and v:GetShootPos() or v:GetPos()

            tr.filter = {self, v, v.GetActiveWeapon and v:GetActiveWeapon() or v}

            local traceres = util.TraceLine(tr)

            if not traceres.Hit or traceres.Fraction >= 1 or traceres.Fraction <= 0 then
                local flashdistance = tr.endpos:Distance(self:GetPos())
                local flashtime = CurTime()
                local distancefac = 1 - math.Clamp((flashdistance - gsr_flashdistance + gsr_flashdistancefade) / gsr_flashdistancefade, 0, 1)
                local intensity = 1 - math.Clamp(((CurTime() - flashtime) / distancefac - gsr_flashtime + gsr_flashfade) / gsr_flashfade, 0, 1)

                if intensity > 0.2 then
                    v:SetEnemy(nil)
                    v:SetNPCState(NPC_STATE_PLAYDEAD)

                    timer.Simple(intensity * gsr_flashtime * 2, function()
                        if not IsValid(v) then return end
                        v:SetNPCState(NPC_STATE_IDLE)
                    end)

                    if v.ClearEnemyMemory then
                        v:ClearEnemyMemory()
                    end
                end
            end
        end
    end

    if SERVER then
        local dir = self.HitVelocity or self:GetVelocity()

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

    local dlight = EffectData()
    dlight:SetOrigin(self:GetPos())
    dlight:SetEntity(self.Owner) --i dunno, just use it!
    util.Effect("arc9_flashbang_light", dlight)
    self.deactivated = true
    self:Remove()
end