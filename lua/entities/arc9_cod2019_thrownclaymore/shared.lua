AddCSLuaFile()

ENT.Base = "arc9_cod2019_plantable"
ENT.PrintName = "Claymore"

ENT.Model = "models/weapons/w_eq_claymore_dropped.mdl"
ENT.WeaponClass = "arc9_cod2019_nade_claymores"
ENT.LockYaw = true
ENT.AdjustPitch = true
ENT.AdjustOffset = true
ENT.MinS = Vector(-2, -5, 0)
ENT.MaxS = Vector(2, 5, 8)

ENT.ArmDelay = 3
ENT.DetectionRange = 400
ENT.DetectionAngle = 45
ENT.LaserOffset = Vector(1, 0, 8)

ENT.Radius = 300

ENT.NextBeepTime = 0
ENT.DetectionRangeSqr = ENT.DetectionRange * ENT.DetectionRange

function ENT:GetLaserPos()
    return self:GetPos() + self:GetForward() * self.LaserOffset.x + self:GetRight() * self.LaserOffset.y + self:GetUp() * self.LaserOffset.z
end

function ENT:OnInitialize()
    if SERVER then
        local tr = util.TraceLine({
            start = self:GetPos(),
            endpos = self:GetPos() - Vector(0, 0, 4),
            filter = self,
            mask = MASK_SOLID
        })
        if tr.Hit then
            self:Plant(tr.Entity, tr.HitPos, tr.HitNormal)
        end
    end
end

function ENT:OnPlant()
    self:EmitSound("weapons/cod2019/throwables/claymore/wpfoly_claymore_plant_0" .. math.random(1, 3) .. ".ogg", 80, 100)
    timer.Simple(math.max(0, self.ArmDelay - 1.2), function()
        if IsValid(self) then
            self:EmitSound( "weapons/csgo/breachcharges/breach_warning_beep_01.wav", 75, 100, 1, CHAN_AUTO )
        end
    end)
end

-- basically checking if AABB intersects the plane represented by the entity's position and normal
function ENT:CheckLaserIntersect(i)
    local p = self:GetLaserPos()
    local n = (self:GetAngles() + self:GetAdjustment()):Up()

    local mins, maxs = i:WorldSpaceAABB()
    local c = (mins + maxs) / 2 - p
    local e = (maxs - p) - c -- positive extents

    -- projection interval radius of box onto c + t * n
    local r = math.abs(e.x * n.x) + math.abs(e.y * n.y) + math.abs(e.z * n.z)

    -- distance of box center from plane
    local s = n:Dot(c)

    return s <= r
end

function ENT:Think()
    if self:GetArmed() then
        if CLIENT then
            if self.NextBeepTime == 0 then
                self.NextBeepTime = CurTime() + 5
                local d = math.tan(math.rad(self.DetectionAngle)) * self.DetectionRange
                self:SetRenderBounds(Vector(-8, -d * 0.5, -4), Vector(self.DetectionRange, d * 0.5, 32))
            elseif self.NextBeepTime <= CurTime() then
                self:EmitSound( "weapons/cod2019/throwables/claymore/claymore_sensors_on.ogg", 75, 100, 1, CHAN_AUTO )
                self.NextBeepTime = CurTime() + 3
            end
        elseif SERVER then
            local p = self:GetLaserPos()
            for _, i in ipairs(ents.FindInCone(p, (self:GetAngles() + self:GetAdjustment()):Forward(), self.DetectionRange, math.cos(math.rad(self.DetectionAngle / 2)))) do
                if IsValid(i) and (i:IsPlayer() or i:IsNPC() or i:IsNextBot()) and i:GetPos():DistToSqr(p) <= self.DetectionRangeSqr and self:CheckLaserIntersect(i) then
                    local mins, maxs = i:WorldSpaceAABB()
                    local c = i:WorldSpaceCenter()
                    local tr = util.TraceLine({
                        start = p,
                        endpos = Vector(c.x, c.y, mins.z),
                        mask = MASK_SHOT,
                        filter = {self, i},
                    })
                    if tr.Fraction < 1 then
                        tr = util.TraceLine({
                            start = p,
                            endpos = Vector(c.x, c.y, maxs.z),
                            mask = MASK_SHOT,
                            filter = {self, i},
                        })
                    end
                    if tr.Fraction == 1 then
                        self:Detonate()
                        break
                    end
                end
            end
            -- Fix deadzone right in front of the mine
            for _, i in ipairs(ents.FindInSphere(p + (self:GetAngles() + self:GetAdjustment()):Forward() * 12, 24)) do
                if IsValid(i) and (i:IsPlayer() or i:IsNPC() or i:IsNextBot()) then
                    self:Detonate()
                end
            end

            self:NextThink(CurTime() + 0.15)
            return true
        end
    end
end

function ENT:Detonate()
    if SERVER then
        if not self:IsValid() then return end
        local pos = self:GetPos()
        local effectdata = EffectData()
        effectdata:SetOrigin(pos)

        if self:WaterLevel() >= 1 then
            util.Effect("WaterSurfaceExplosion", effectdata)
            self:EmitSound("weapons/underwater_explode3.wav", 120, 100, 1, CHAN_AUTO)
        else
            ParticleEffect("explosion_grenade", self:GetPos(), Angle(0, 0, 0), nil)
            local spos = pos

            local trs = util.TraceLine({
                start = spos + Vector(0, 0, 64),
                endpos = spos + Vector(0, 0, -32),
                filter = self
            })

            util.Decal("Scorch", trs.HitPos + trs.HitNormal, trs.HitPos - trs.HitNormal)
            self:EmitSound("COD2019.Claymore.Explode")
        end

        local oldowner = self.Attacker or self:GetOwner()
        if not IsValid(oldowner) then
            oldowner = self
        end

        self:SetOwner(NULL)

        local dir = Angle(self:GetAngles())
        dir:RotateAroundAxis(self:GetAngles():Forward(), -5 + self:GetAdjustment().p)

        util.BlastDamage(oldowner, oldowner, pos, 200, 150)
		util.ScreenShake(self:GetPos(), 25, 4, 0.75, self.Radius * 4)
        local btabl = {
            Attacker = oldowner,
            Damage = 30,
            Distance = self.DetectionRange * 1.5,
            Num = 50,
            HullSize = 4,
            Tracer = 1,
            Force = 0,
            Dir = dir:Forward(),
            Src = self:WorldSpaceCenter() + Vector(0, 0, 4),
            Spread = Vector(math.rad(180), math.rad(30), 0),
            Callback = function(att, tr, dmg)
                if IsValid(tr.Entity) then
                    if not tr.Entity.GSR_ClaymoreLastHit or tr.Entity.GSR_ClaymoreLastHit[1] ~= CurTime() then
                        tr.Entity.GSR_ClaymoreLastHit = {CurTime(), 0}
                    end

                    if IsValid(oldowner) then
                        dmg:SetAttacker(oldowner)
                    end

                    dmg:SetDamageType(DMG_BLAST)
                    dmg:ScaleDamage(Lerp(tr.Fraction ^ 2, 1, 0.5))
                    dmg:ScaleDamage(Lerp(math.max(0, (tr.Entity.GSR_ClaymoreLastHit[2] - 100) / 400), 1, 0.25))
                    tr.Entity.GSR_ClaymoreLastHit[2] = tr.Entity.GSR_ClaymoreLastHit[2] + dmg:GetDamage()
                end
            end
        }
        self:FireBullets(btabl)

        btabl.Distance = self.DetectionRange * 2
        btabl.Num = 50
        btabl.Spread = Vector(math.rad(60), math.rad(15), 0)
        self:FireBullets(btabl)

        self:Remove()
    end
end

if CLIENT then
    local beam = Material("effects/laser1")
    local beam_clr = Color(150, 0, 0)
    local beam_clr2 = Color(100, 100, 100)
    local dot = Material("arc9/laser_glow", "mips smooth")

    local function laser(self, pos, ang)

        local tr = util.TraceLine({
            start = pos,
            endpos = pos + ang:Forward() * self.DetectionRange,
            mask = MASK_SHOT,
            filter = self
        })
        render.SetMaterial(beam)
        render.DrawBeam(tr.StartPos, tr.HitPos, 3, 0, tr.Fraction - 0.01, beam_clr2)
        render.DrawBeam(tr.StartPos, tr.HitPos, 8, 0, tr.Fraction - 0.01, beam_clr)

        if tr.Hit then
            local rad = math.Rand(16, 24)
            render.SetMaterial(dot)
            render.DrawSprite(tr.HitPos, rad * 0.3, rad * 0.3, beam_clr2)
            render.DrawSprite(tr.HitPos, rad, rad, beam_clr)
        end
    end

    function ENT:Draw()
        self:DrawModel()
    end

    function ENT:DrawTranslucent()
        local pos = self:GetLaserPos()

        if self:GetArmed() then
            local d = self.DetectionAngle - 5 -- make it so it's less likely you stand in the laser but isn't triggering it
            local ang = self:GetAngles() + self:GetAdjustment()
            ang:RotateAroundAxis(self:GetUp(), d * 0.5)
            laser(self, pos, ang)

            for i = 1, 4 do
                ang:RotateAroundAxis(self:GetUp(), -d * 0.25)
                laser(self, pos, ang)
            end
        end
    end
end