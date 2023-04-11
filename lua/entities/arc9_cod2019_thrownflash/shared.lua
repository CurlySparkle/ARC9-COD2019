AddCSLuaFile()

if CLIENT then
    killicon.Add("arc9_cod2019_thrownflash", "vgui/killicons/cod2019_flash", Color(251, 85, 25, 255))
end

ENT.Type = "anim"
ENT.Base = "arc9_nade_base"
ENT.PrintName = "Flash Bang"
ENT.Spawnable = false
ENT.CollisionGroup = COLLISION_GROUP_PROJECTILE
ENT.Model = "models/weapons/w_eq_flashbang.mdl"
ENT.PhysBoxSize = false
ENT.SphereSize = false
ENT.PhysMat = "grenade"
ENT.LifeTime = 1.5
ENT.ExplodeOnImpact = false
ENT.SmokeTrail = false
ENT.BounceSound = "COD2019.Flash.Bounce"

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

function ENT:Detonate()
    local tr = {}
    tr.start = self:GetPos()
    tr.mask = MASK_SOLID

    for _, v in ipairs(player.GetAll()) do
        tr.endpos = v:GetShootPos()

        tr.filter = {self, v, v:GetActiveWeapon()}

        local traceres = util.TraceLine(tr)

        if not traceres.Hit or traceres.Fraction >= 1 or traceres.Fraction <= 0 then
            v:SetNWFloat("ARC9_Cod2019_LastFlash", CurTime())
            v:SetNWEntity("ARC9_Cod2019_LastFlashBy", self:GetOwner())
            v:SetNWFloat("ARC9_Cod2019_FlashDistance", v:GetShootPos():Distance(self:GetPos()))
            v:SetNWFloat("ARC9_Cod2019_FlashFactor", self:EntityFacingFactor(v))

            if v:GetNWFloat("ARC9_Cod2019_FlashDistance", v:GetShootPos():Distance(self:GetPos())) < 1500 and v:GetNWFloat("FlashFactor", self:EntityFacingFactor(v)) < tr.endpos:Distance(self:GetPos(v)) then
                if v:GetNWFloat("ARC9_Cod2019_FlashDistance", v:GetShootPos():Distance(self:GetPos())) < 1000 then
                    v:SetDSP(37, false)
                elseif v:GetNWFloat("ARC9_Cod2019_FlashDistance", v:GetShootPos():Distance(self:GetPos())) < 800 then
                    v:SetDSP(36, false)
                elseif v:GetNWFloat("ARC9_Cod2019_FlashDistance", v:GetShootPos():Distance(self:GetPos())) < 600 then
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
        ParticleEffect("weapon_decoy_ground_effect_shot", self:GetPos(), Angle(0, 0, 0), nil)
        ParticleEffect("explosion_hegrenade_brief", self:GetPos(), Angle(0, 0, 0), nil)
        self:EmitSound("COD2019.Flash.Explode")
    end
	
    util.BlastDamage(self, IsValid(self:GetOwner()) and self:GetOwner() or self, self:GetPos(), 128, 1)

    for _, v in ipairs(ents.GetAll()) do
        if v:IsNPC() and self:EntityFacingUs(v) then
            tr.endpos = v.GetShootPos and v:GetShootPos() or v:GetPos()

            tr.filter = {self, v, v.GetActiveWeapon and v:GetActiveWeapon() or v}

            local traceres = util.TraceLine(tr)

            if not traceres.Hit or traceres.Fraction >= 1 or traceres.Fraction <= 0 then
                local flashdistance = tr.endpos:Distance(self:GetPos())
                local flashtime = CurTime()
                local distancefac = 1 - math.Clamp((flashdistance - cod2019_flashdistance + cod2019_flashdistancefade) / cod2019_flashdistancefade, 0, 1)
                local intensity = 1 - math.Clamp(((CurTime() - flashtime) / distancefac - cod2019_flashtime + cod2019_flashfade) / cod2019_flashfade, 0, 1)

                if intensity > 0.2 then
                    v:SetEnemy(nil)
                    v:SetNPCState(NPC_STATE_PLAYDEAD)

                    timer.Simple(intensity * cod2019_flashtime * 2, function()
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
    util.Effect("cod2019_nade_flash_light", dlight)
    self.deactivated = true
    self:Remove()
end