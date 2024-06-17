AddCSLuaFile()

ENT.Base = "arc9_cod2019_proj_base"
ENT.PrintName = "Jokr Airstrike Rocket"
ENT.Spawnable = false

ENT.Model = "models/weapons/cod2019/mags/w_la_jokr_rocket.mdl"
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
ENT.FlareColor = Color(155, 155, 155)
ENT.FlareSizeMin = 20
ENT.FlareSizeMax = 70
ENT.RocketTrailParticle = "Rocket_Smoke"  -- name of the particle effect
ENT.RocketTrail = true -- leaves trail of a particle effect
ENT.Radius = 300

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
end

function ENT:Impact(data, collider)
    local hitPos = data.HitPos -- Get the position where the grenade hit
    local hitNormal = data.HitNormal -- Get the normal vector of the surface hit

    if self.SpawnTime + self.SafetyFuse > CurTime() and not self.NPCDamage then
        local attacker = self.Attacker or self:GetOwner()
        local ang = data.OurOldVelocity:Angle()
        local fx = EffectData()
        fx:SetOrigin(data.HitPos)
        fx:SetNormal(-ang:Forward())
        fx:SetAngles(-ang)
        util.Effect("ManhackSparks", fx)

        if IsValid(data.HitEntity) then
            local dmginfo = DamageInfo()
            dmginfo:SetAttacker(attacker)
            dmginfo:SetInflictor(self)
            dmginfo:SetDamageType(DMG_CRUSH + DMG_CLUB)
            dmginfo:SetDamage(175)
            dmginfo:SetDamageForce(data.OurOldVelocity * 25)
            dmginfo:SetDamagePosition(data.HitPos)
            data.HitEntity:TakeDamageInfo(dmginfo)
        end
        self:EmitSound("weapons/rpg/shotdown.wav", 80)
        for i = 1, 1 do
            local prop = ents.Create("prop_physics")
            prop:SetPos(self:GetPos())
            prop:SetAngles(self:GetAngles())
            prop:SetModel("models/weapons/cod2019/mags/w_la_jokr_rocket.mdl")
            prop:Spawn()
            prop:GetPhysicsObject():SetVelocityInstantaneous(data.OurNewVelocity * 0.5 + VectorRand() * 75)
            prop:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
            SafeRemoveEntityDelayed(prop, 3)
        end

        self:Remqove()

        return true
    end
    util.Decal("Scorch", hitPos + hitNormal, hitPos - hitNormal)
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
            if dist <= 3000 then
				self:PreDetonate()
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

function ENT:Detonate()
    if self:WaterLevel() > 0 then self:Remove() self:StopParticles() return end
    local attacker = self.Attacker or self:GetOwner() or self
	
    for i = 1, 4 do
        local child = ents.Create("arc9_cod2019_proj_jokr_airstrike_alt")
        if IsValid(child) then
            child:SetPos(self:GetPos() + Vector(math.random(-50, 50), math.random(-50, 50), math.random(50, 100)))
            child:Spawn()
        end
    end

    -- Remove the initial entity
    self:Remove()
end