AddCSLuaFile()

if CLIENT then
    killicon.Add( "arc9_cod2019_thrownrock", "VGUI/killicons/cod2019_rock", Color(251, 85, 25, 255))
end

ENT.Type = "anim"
ENT.Base = "base_anim"
ENT.PrintName = "Rock"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false
ENT.CollisionGroup = COLLISION_GROUP_PROJECTILE

ENT.Model = "models/weapons/cod2019/w_eq_rock_thrown.mdl"
ENT.FuseTime = 3.5

ENT.NextHit = 0

function ENT:Initialize()
    if SERVER then
        self:SetModel(self.Model)
        self:SetMoveType(MOVETYPE_VPHYSICS)
        self:SetSolid(SOLID_VPHYSICS)
        -- self:PhysicsInit(SOLID_VPHYSICS)
        self:PhysicsInitBox(Vector(-0.5, -0.5, -0.5), Vector(0.5, 0.5, 0.5), "boulder")

        self:SetAngles(AngleRand())

        local phys = self:GetPhysicsObject()
        if phys:IsValid() then
            phys:SetMass(1)
            phys:SetBuoyancyRatio(1)
            phys:SetDragCoefficient(10)
            phys:Wake()
            phys:ApplyTorqueCenter(VectorRand() * 0.05)
        end

        self.SpawnTime = CurTime()
        -- if IsValid(self.Trail) then
        --     self.Trail:SetRenderMode(RENDERMODE_TRANSADD)
        --     self.Trail:SetRenderFX(kRenderFxNone)
        -- end
        self:SetPhysicsAttacker(self:GetOwner(), 10)

        self:SetCollisionGroup(COLLISION_GROUP_PROJECTILE)
    end
end

function ENT:PhysicsCollide(data, physobj)
    if SERVER then
        local nvel = data.OurOldVelocity:GetNormalized()
        if data.Speed > 75 then
            local tgt = data.HitEntity

            if IsValid(tgt) and tgt:GetClass() == "func_breakable_surf" then
                local pos, ang, vel = self:GetPos(), self:GetAngles(), data.OurOldVelocity
                self:FireBullets({
                    Attacker = self:GetOwner(),
                    Inflictor = self,
                    Damage = 20,
                    Distance = 32,
                    Tracer = 0,
                    Src = self:GetPos(),
                    Dir = nvel,
                })
                self:SetAngles(ang)
                self:SetPos(pos)
                self:GetPhysicsObject():SetVelocityInstantaneous(vel * 0.5)
            else
                if IsValid(tgt) and (self.NextHit or 0) < CurTime() then
                    self.NextHit = CurTime() + 0.15
                    local dmginfo = DamageInfo()
                    dmginfo:SetDamageType(DMG_CLUB)
                    local d = Lerp((data.Speed - 1000) / 3000, 3, 60)
                    dmginfo:SetAttacker(self:GetOwner())
                    dmginfo:SetInflictor(self)
                    dmginfo:SetDamagePosition(data.HitPos)
                    if tgt:IsPlayer() or tgt:IsNPC() or tgt:IsNextBot() then
                        dmginfo:SetDamageForce(data.OurOldVelocity * 5)
                    else
                        dmginfo:SetDamageForce(data.OurOldVelocity)
                        d = d * 2
                    end
                    dmginfo:SetDamage(d)
                    local tr = util.TraceLine({
                        start = self:GetPos(),
                        endpos = data.HitPos,
                        mask = MASK_SHOT
                    })
                    tgt:DispatchTraceAttack(dmginfo, tr, nvel)
                else
                    local eff = EffectData()
                    eff:SetOrigin(data.HitPos - self:GetVelocity():GetNormalized())
                    eff:SetStart(data.HitPos)
                    eff:SetSurfaceProp(data.TheirSurfaceProps)
                    eff:SetDamageType(DMG_GENERIC)
                    eff:SetHitBox(1)
                    eff:SetFlags(1) -- IMPACT_NODECAL
                    util.Effect("Impact_GMOD", eff)
                end
                if data.Speed >= 1000 then
                    self:GetPhysicsObject():SetVelocityInstantaneous(data.OurNewVelocity * math.Rand(0.25, 0.5))
                end
            end
        elseif data.Speed > 25 and self.Hit then
            self:EmitSound("physics/concrete/rock_impact_soft" .. math.random(1, 3) .. ".wav")
        end

        if not self.Hit then
            sound.EmitHint(SOUND_PLAYER, self:GetPos(), 512, 5)
            self.Hit = true
            local d = data.OurOldVelocity:Dot(data.HitNormal)
            if d >= 3000 and self.NextHit < CurTime() then
                self:EmitSound("physics/concrete/concrete_break3.wav", 70, math.Rand(102, 105))
                self:FireBullets({
                    Attacker = self:GetOwner(),
                    Inflictor = self,
                    Damage = 0,
                    Distance = 32,
                    Tracer = 0,
                    Src = data.HitPos,
                    Dir = nvel,
                })
                local eff = EffectData()
                eff:SetOrigin(data.HitPos)
                eff:SetNormal(nvel)
                eff:SetScale(1)
                util.Effect("WheelDust", eff)
                SafeRemoveEntity(self)
            else
                SafeRemoveEntityDelayed(self, 3)
            end
        end
    end
end

function ENT:DrawTranslucent()
    self:Draw()
end

function ENT:Draw()
    self:DrawModel()
end

hook.Add("OnEntityWaterLevelChanged", "arc9_cod2019_rock", function(ent, old, new)
    if ent:GetClass() == "arc9_cod2019_thrownrock" and old == 0 and new > 0 and ent.SpawnTime + 0.01 < CurTime() then
        local delta = Lerp(ent:GetVelocity():GetNormalized():Dot(Vector(0, 0, 1)) ^ 2, 1, 0.35)
        local v = ent:GetVelocity() - 2 * ent:GetVelocity():Dot(Vector(0, 0, 1)) * Vector(0, 0, 1) * math.Rand(0.9, 1.1) * delta
        ent:GetPhysicsObject():SetVelocityInstantaneous(v)
        local effectdata = EffectData()
        effectdata:SetOrigin(ent:GetPos())
        effectdata:SetScale(Lerp(ent:GetVelocity():Length2D() / 1000, 1, 10))
        util.Effect("watersplash", effectdata)
        ent.Hit = true
    end
end)