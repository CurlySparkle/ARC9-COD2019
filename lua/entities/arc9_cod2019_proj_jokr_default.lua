AddCSLuaFile()

if CLIENT then
    killicon.Add( "arc9_cod2019_proj_jokr_default", "VGUI/killicons/cod2019_la_jokr.png", Color(251, 85, 25, 255))
end

ENT.Base                     = "arc9_cod2019_proj_base"
ENT.PrintName                = "Jokr Guided Rocket"
ENT.Spawnable                = false
ENT.Model                    = "models/weapons/cod2019/mags/w_la_jokr_rocket.mdl"

ENT.IsRocket = true -- projectile has a booster and will not drop.
ENT.InstantFuse = false -- projectile is armed immediately after firing.
ENT.RemoteFuse = false -- allow this projectile to be triggered by remote detonator.
ENT.ImpactFuse = true -- projectile explodes on impact.
ENT.ExplodeOnDamage = true
ENT.ExplodeUnderwater = true

ENT.Delay = 0
ENT.SafetyFuse = 0.02
ENT.AudioLoop = "^weapons/cod2019/jokr/weap_juliet_proj_lp_01.wav"
ENT.SmokeTrail = false
ENT.RocketTrail = true -- leaves trail of a particle effect
ENT.FlareColor = Color(255, 155, 0)
ENT.FlareSizeMin = 50
ENT.FlareSizeMax = 100
ENT.Radius = 470

--- Stuff
ENT.SeekerAngle = math.cos(math.rad(55))
ENT.SteerSpeed = 5000
ENT.FuseTime = 0
ENT.Boost = 1700
ENT.Lift = 80
ENT.DragCoefficient = 0.1
ENT.LifeTime = 20
ENT.FireAndForget = true
ENT.TopAttack = true -- This missile flies up above its target before going down in a top-attack trajectory.
ENT.TopAttackHeight = 5000
ENT.SuperSeeker = false
ENT.SuperSteerTime = 0
ENT.SuperSteerBoostTime = 100
ENT.NoReacquire = true
ENT.ShootEntData = {}
ENT.IsProjectile = true
ENT.LockOnPoint = nil

DEFINE_BASECLASS(ENT.Base)

function ENT:OnInitialize()
    if not IsValid(self.ShootEntData.Target) then
        local tr = util.TraceLine({
            start = self:GetPos(),
            endpos = self:GetPos() + self:GetForward() * 100000,
            filter = {self, self:GetOwner()},
            mask = MASK_SHOT
        })

        self.LockOnPoint = tr.HitPos
    end
    self:EmitSound("weapons/cod2019/jokr/weap_juliet_proj_ignite_01.ogg",75, 100, 1, CHAN_AUTO)
    self.LastAimPos = self:GetOwner():GetEyeTrace().HitPos
end

function ENT:Impact(data, collider)
   util.Decal("Scorch", data.HitPos + data.HitNormal, data.HitPos - data.HitNormal)
end

function ENT:OnThink()
if SERVER then
    if self.FireAndForget or self.SemiActive then
        if self.SemiActive then
            if IsValid(self.Weapon) then
                self.ShootEntData = self.Weapon:RunHook("Hook_GetShootEntData", {})
            end
        end

        local tpos = self.LockOnPoint

        if self.ShootEntData.Target and IsValid(self.ShootEntData.Target) then
            local target = self.ShootEntData.Target

            if target.UnTrackable then
                self.ShootEntData.Target = nil
            end

            tpos = target:EyePos()
        end

        if self.TopAttack and not self.TopAttackReached then
            tpos = tpos + Vector(0, 0, self.TopAttackHeight)
            local dist = (tpos - self:GetPos()):Length()

            if dist <= 3000 then
                self.TopAttackReached = true
                self.SuperSteerTime = CurTime() + self.SuperSteerBoostTime
            end
        end

        local dir = (tpos - self:GetPos()):GetNormalized()
        local dot = dir:Dot(self:GetAngles():Forward())
        local ang = dir:Angle()

        if self.SuperSeeker or dot >= self.SeekerAngle or not self.TopAttackReached or (self.SuperSteerTime and self.SuperSteerTime >= CurTime()) then
            local p = self:GetAngles().p
            local y = self:GetAngles().y
            p = math.ApproachAngle(p, ang.p, FrameTime() * self.SteerSpeed)
            y = math.ApproachAngle(y, ang.y, FrameTime() * self.SteerSpeed)
            self:SetAngles(Angle(p, y, 0))
            -- self:SetVelocity(dir * 15000)
        elseif self.NoReacquire then
            self.ShootEntData.Target = nil
        end
        -- end
    elseif self.SACLOS then
        if self:GetOwner():IsValid() then
            local tpos = self:GetOwner():GetEyeTrace().HitPos
            local dir = (tpos - self:GetPos()):GetNormalized()
            local dot = dir:Dot(self:GetAngles():Forward())
            local ang = dir:Angle()

            if dot >= self.SeekerAngle then
                local p = self:GetAngles().p
                local y = self:GetAngles().y
                p = math.ApproachAngle(p, ang.p, FrameTime() * self.SteerSpeed)
                y = math.ApproachAngle(y, ang.y, FrameTime() * self.SteerSpeed)
                self:SetAngles(Angle(p, y, 0))
            end
        end
    end
    self:GetPhysicsObject():AddVelocity(Vector(0, 0, self.Lift) + self:GetForward() * self.Boost)
end
end

function ENT:Detonate(data)
    local attacker = self.Attacker or self:GetOwner()
    local dir = self:GetVelocity():GetNormalized()
    local src = self:GetPos() - dir * 64


    local dmg = DamageInfo()
    dmg:SetAttacker(attacker)
    dmg:SetDamageType(DMG_AIRBOAT + DMG_SNIPER + DMG_BLAST)
    dmg:SetInflictor(self)
    dmg:SetDamageForce(self:GetForward() * 5000)
    dmg:SetDamagePosition(src)
    dmg:SetDamage(200)
    util.BlastDamageInfo(dmg, self:GetPos(), self.Radius)
    self:ImpactTraceAttack(data.HitEntity, 800, 30000)

    local fx = EffectData()
    fx:SetOrigin(self:GetPos())
    fx:SetStart(self:GetPos() + self:GetUp())
    fx:SetRadius(512)
    fx:SetEntity(self)
    if self:WaterLevel() > 0 then
        util.Effect("WaterSurfaceExplosion", fx)
    else
        util.Effect("cod2019_grenade_explosion", fx)
        self:EmitSound("Cod2019.Frag.Explode", _, _, _, _, _, _, ARC9.EveryoneRecipientFilter)
    end

    for i, e in pairs(ents.FindInSphere(self:GetPos(), 32)) do
        if (e:GetClass() == "npc_strider") then
            e:Fire("Explode")
        end
    end

    timer.Simple(0, function() self:Remove() end)
end