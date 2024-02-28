AddCSLuaFile()

ENT.Base                     = "arc9_cod2019_proj_base"
ENT.PrintName                = "Jokr Rocket"
ENT.Spawnable                = false

ENT.Model                    = "models/weapons/cod2019/mags/w_la_jokr_rocket.mdl"

ENT.IsRocket = true // projectile has a booster and will not drop.

ENT.InstantFuse = false // projectile is armed immediately after firing.
ENT.RemoteFuse = false // allow this projectile to be triggered by remote detonator.
ENT.ImpactFuse = true // projectile explodes on impact.

ENT.ExplodeOnDamage = true
ENT.ExplodeUnderwater = true

ENT.Delay = 0
ENT.SafetyFuse = 0.01

ENT.AudioLoop = "weapons/cod2019/jokr/weap_juliet_proj_lp_01.ogg"

ENT.SmokeTrail = true

ENT.FlareColor = Color(200, 255, 255)
ENT.Radius = 300

--- Stuff
ENT.SteerSpeed = 50
ENT.SteerDelay = 0

ENT.MaxSpeed = 4000
ENT.Acceleration = 1500
ENT.SteerBrake = 2000
ENT.MinSpeed = 1500
ENT.AlwaysSteer = false

function ENT:OnThink()
    if CLIENT or (self.SteerDelay + self.SpawnTime) > CurTime() then return end
    local wep = self.Inflictor
    if IsValid(wep) and wep:GetTactical() and !wep:GetIsSprinting() and !wep:GetReloading() and IsValid(wep:GetOwner()) and wep:GetOwner():IsPlayer() and wep:GetOwner():Alive() then
        local pos_tr = wep:GetMuzzleOrigin()
        local ang = wep:GetShootDir()

        local tr = util.TraceLine({
            start = pos_tr,
            endpos = pos_tr + (ang:Forward() * 30000),
            mask = MASK_VISIBLE,
            filter = self:GetOwner()
        })
        if tr.Hit then
            self.TargetPos = tr.HitPos
        end
    elseif !self.AlwaysSteer then
        self.TargetPos = nil
    end
end

function ENT:PhysicsUpdate(phys)
    local v = phys:GetVelocity()
    if self.TargetPos and (self.SteerDelay + self.SpawnTime) <= CurTime() then
        local tgtang = (self.TargetPos - self:GetPos()):Angle()
        local p = self:GetAngles().p
        local y = self:GetAngles().y

        local diff = self.SteerBrake * math.min((math.abs(math.AngleDifference(p, tgtang.p)) + math.abs(math.AngleDifference(y, tgtang.y))) / (self.SteerSpeed * 2), 1)
        p = math.ApproachAngle(p, tgtang.p, FrameTime() * self.SteerSpeed)
        y = math.ApproachAngle(y, tgtang.y, FrameTime() * self.SteerSpeed)

        self:SetAngles(Angle(p, y, 0))
        phys:SetVelocityInstantaneous(self:GetForward() * math.Clamp(v:Length() + (self.Acceleration - diff) * FrameTime(), self.MinSpeed, self.MaxSpeed))
    else
        phys:SetVelocityInstantaneous(self:GetForward() * math.Clamp(v:Length() + self.Acceleration * FrameTime(), self.MinSpeed, self.MaxSpeed))
    end
end

function ENT:Impact(data, collider)
    if self.SpawnTime + self.SafetyFuse > CurTime() and !self.NPCDamage then
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
            dmginfo:SetDamage(250 * (self.NPCDamage and 0.5 or 1))
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

        self:Remove()
        return true
    end
end

function ENT:Detonate()
    local attacker = self.Attacker or self:GetOwner()

    if self.NPCDamage then
        util.BlastDamage(self, attacker, self:GetPos(), 328, 120)
    else
        util.BlastDamage(self, attacker, self:GetPos(), 328, 250)
        self:FireBullets({
            Attacker = attacker,
            Damage = 600,
            Tracer = 0,
            Src = self:GetPos(),
            Dir = self:GetForward(),
            HullSize = 0,
            Distance = 32,
            IgnoreEntity = self,
            Callback = function(atk, btr, dmginfo)
                dmginfo:SetDamageType(DMG_AIRBOAT + DMG_BLAST) // airboat damage for helicopters and LVS vehicles
                dmginfo:SetDamageForce(self:GetForward() * 22000) // LVS uses this to calculate penetration!
            end,
        })
    end

    local fx = EffectData()
    fx:SetOrigin(self:GetPos())

    if self:WaterLevel() > 0 then
        util.Effect("WaterSurfaceExplosion", fx)
    else
        ParticleEffect("explosion_m79", self:GetPos(), Angle(-90, 0, 0))
    end

    self:EmitSound("Cod2019.Frag.Explode")
	util.ScreenShake(self:GetPos(), 25, 4, 0.75, self.Radius * 4)

    self:Remove()
end