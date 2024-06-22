AddCSLuaFile()

ENT.Base                     = "arc9_cod2019_proj_base"
ENT.PrintName                = "Rocket Harpoon"
ENT.Spawnable                = false

ENT.Model                    =  "models/props_junk/harpoon002a.mdl"

ENT.IsRocket = false // projectile has a booster and will not drop.
ENT.InstantFuse = false // projectile is armed immediately after firing.
ENT.RemoteFuse = false // allow this projectile to be triggered by remote detonator.
ENT.ImpactFuse = true // projectile explodes on impact.
ENT.SmokeTrail = false

function ENT:OnInitialize()
    if SERVER then
        self:GetPhysicsObject():SetMass(25)
        self:GetPhysicsObject():SetDragCoefficient(10)
    end
end

function ENT:Impact(data, collider)
    local tgt = data.HitEntity
    local attacker = self.Attacker or self:GetOwner() or self
    local d = data.OurOldVelocity:GetNormalized()
    local forward = data.OurOldVelocity:Dot(self:GetAngles():Forward())
    if forward <= 100 then return true end
    if IsValid(tgt) then
        local ang = data.OurOldVelocity:Angle()
        local fx = EffectData()
        fx:SetOrigin(data.HitPos)
        fx:SetNormal(-ang:Forward())
        fx:SetAngles(-ang)
        util.Effect("ManhackSparks", fx)

        if IsValid(data.HitEntity) then
		    self:EmitSound("weapons/cod2019/shared/blt_imp_flesh_plr_04.ogg",75, 100, 1, CHAN_AUTO)
            local dmginfo = DamageInfo()
            dmginfo:SetAttacker(attacker)
            dmginfo:SetInflictor(self)
            dmginfo:SetDamageType(DMG_CRUSH + DMG_CLUB)
            dmginfo:SetDamage(250)
            dmginfo:SetDamageForce(data.OurOldVelocity * 25)
            dmginfo:SetDamagePosition(data.HitPos)
            data.HitEntity:TakeDamageInfo(dmginfo)
        end
    else
        local ang = data.OurOldVelocity:Angle()
        local fx = EffectData()
        fx:SetOrigin(data.HitPos)
        fx:SetNormal(-ang:Forward())
        fx:SetAngles(-ang)
        util.Effect("ManhackSparks", fx)
        self:EmitSound("weapons/cod2019/shared/bullet_small_crossbow_bolt_swt_01.ogg",75, 100, 1, CHAN_AUTO)

        -- leave a bullet hole. Also may be able to hit things it can't collide with (like stuck C4)
        self:FireBullets({
            Attacker = attacker,
            Damage = self.Damage,
            Force = 1,
            Distance = 4,
            HullSize = 4,
            Tracer = 0,
            Dir = ang:Forward(),
            Src = data.HitPos - ang:Forward(),
            IgnoreEntity = self,
            Callback = function(atk, tr, dmginfo)
                dmginfo:SetDamageType(DMG_SLASH)
                dmginfo:SetInflictor(attacker)
            end
        })
    end

    if tgt:IsWorld() or (IsValid(tgt) and tgt:GetPhysicsObject():IsValid()) then
        local angles = data.OurOldVelocity:Angle()
        self:GetPhysicsObject():Sleep()

        timer.Simple(0, function()
            if tgt:IsWorld() or (IsValid(tgt) and (!(tgt:IsNPC() or tgt:IsPlayer()) or tgt:Health() > 0)) then
                self:SetSolid(SOLID_NONE)
                self:SetMoveType(MOVETYPE_NONE)

                local f = {self, self:GetOwner()}
                table.Add(f, tgt:GetChildren())
                local tr = util.TraceLine({
                    start = data.HitPos - data.OurOldVelocity,
                    endpos = data.HitPos + data.OurOldVelocity,
                    filter = f,
                    mask = MASK_SOLID,
                    ignoreworld = true,
                })

                local bone = (tr.Entity == tgt) and tr.PhysicsBone == 0
                        and tr.Entity:GetHitBoxBone(tr.HitBox, tr.Entity:GetHitboxSet())
                        or tr.PhysicsBone or -1
                local matrix = tgt:GetBoneMatrix(bone)
                if tr.Entity == tgt and matrix then
                    local bpos = matrix:GetTranslation()
                    local bang = matrix:GetAngles()
                    self:SetPos(data.HitPos)
                    self:FollowBone(tgt, bone)
                    local n_pos, n_ang = WorldToLocal(tr.HitPos + tr.HitNormal * self:GetModelRadius() * 0.5, angles, bpos, bang)
                    self:SetLocalPos(n_pos)
                    self:SetLocalAngles(n_ang)
                    debugoverlay.Cross(pos, 8, 5, Color(255, 0, 255), true)
                else
                    self:SetAngles(angles)
                    self:SetPos(data.HitPos - data.OurOldVelocity:GetNormalized() * self:GetModelRadius() * 0.5)
                    if !tgt:IsWorld() then
                        self:SetParent(tgt)
                    end
                end
            else
                self:GetPhysicsObject():SetVelocity(data.OurOldVelocity * 0.75)
                self:GetPhysicsObject():SetAngleVelocity(data.OurOldAngularVelocity)
                self.Armed = false
            end
        end)
    end
    timer.Simple(5, function()
        if IsValid(self) then
            self:SetRenderMode(RENDERMODE_TRANSALPHA)
            self:SetRenderFX(kRenderFxFadeFast)
        end
    end)
    SafeRemoveEntityDelayed(self, 7)

    return true
end

local g = Vector(0, 0, -9.81)
function ENT:PhysicsUpdate(phys)
    if !self.Armed and phys:IsGravityEnabled() and self:WaterLevel() <= 2 then
        local v = phys:GetVelocity()
        self:SetAngles(v:Angle())
        phys:SetVelocityInstantaneous(v * 0.985 + g)
    end
end