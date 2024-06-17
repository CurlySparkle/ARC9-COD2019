AddCSLuaFile()

if CLIENT then
    killicon.Add( "arc9_cod2019_proj_40mm_hel", "VGUI/killicons/cod2019_nade_he", Color(251, 85, 25, 255))
end

ENT.Base                     = "arc9_cod2019_proj_base"
ENT.PrintName                = "40mm HE"
ENT.Spawnable                = false

ENT.Model                    = "models/weapons/cod2019/m32_nade.mdl"

ENT.IsRocket = false // projectile has a booster and will not drop.

ENT.InstantFuse = false // projectile is armed immediately after firing.
ENT.RemoteFuse = false // allow this projectile to be triggered by remote detonator.
ENT.ImpactFuse = true // projectile explodes on impact.

ENT.ExplodeOnDamage = false // projectile explodes when it takes damage.
ENT.ExplodeUnderwater = true
ENT.SmokeTrail = false
ENT.RocketTrailParticle = "Rocket_Smoke"  -- name of the particle effect
ENT.RocketTrail = true -- leaves trail of a particle effect

ENT.Delay = 0
ENT.FlareColor = Color(235, 188, 37)
ENT.Radius = 128
ENT.AudioLoop = ""

--- Stuff
ENT.SeekerAngle = math.cos(math.rad(55))
ENT.SteerSpeed = 5000
ENT.FuseTime = 0
ENT.Boost = 1500
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

function ENT:Detonate()
    local attacker = self.Attacker or self:GetOwner()
    local dir = self:GetForward()
    local src = self:GetPos() - dir * 64

    local dmg = DamageInfo()
    dmg:SetAttacker(attacker)
    dmg:SetDamageType(DMG_AIRBOAT + DMG_BLAST)
    dmg:SetInflictor(self)
    dmg:SetDamageForce(self:GetVelocity() * 100)
    dmg:SetDamagePosition(src)
    dmg:SetDamage(24)
    util.BlastDamageInfo(dmg, self:GetPos(), self.Radius)

    local fx = EffectData()
    fx:SetOrigin(self:GetPos())

    if self:WaterLevel() > 0 then
        util.Effect("WaterSurfaceExplosion", fx)
    else
        ParticleEffect("Generic_explo_tiny", self:GetPos(), Angle(-90, 0, 0))
    end

    --self:EmitSound("Cod2019.Frag.Explode")
	util.ScreenShake(self:GetPos(), 25, 4, 0.75, self.Radius * 4)
	util.Decal("FadingScorch", self:GetPos(), self:GetPos() + self:GetUp() * -100, {self})
    self:Remove()
end