AddCSLuaFile()

ENT.Base                     = "arc9_cod2019_proj_base"
ENT.PrintName                = "Pila Rocket"
ENT.Spawnable                = false
ENT.Model                    = "models/weapons/cod2019/mags/w_eq_pila_rocket.mdl"

ENT.IsRocket = true // projectile has a booster and will not drop.
ENT.InstantFuse = false // projectile is armed immediately after firing.
ENT.RemoteFuse = false // allow this projectile to be triggered by remote detonator.
ENT.ImpactFuse = true // projectile explodes on impact.

ENT.ExplodeOnDamage = true
ENT.ExplodeUnderwater = true

ENT.Delay = 0
ENT.SafetyFuse = 0.01

ENT.AudioLoop = "weapons/cod2019/pila/move_gromeo_proj_flame.wav"
ENT.SmokeTrail = false
ENT.RocketTrail = true -- leaves trail of a particle effct

ENT.FlareColor = Color(255, 155, 0)
ENT.Radius = 275

--- Stuff
ENT.SeekerAngle = math.cos(math.rad(55))
ENT.SteerSpeed = 1000
ENT.FuseTime = 0
ENT.Boost = 2000
ENT.Lift = 0
ENT.LifeTime = 20

ENT.FireAndForget = true
ENT.TopAttack = false -- This missile flies up above its target before going down in a top-attack trajectory.
ENT.TopAttackHeight = 5000
ENT.SuperSeeker = false
ENT.SuperSteerBoostTime = 5
ENT.NoReacquire = true

ENT.ShootEntData = {}

ENT.IsProjectile = true

function ENT:OnInitialize()
    self:EmitSound("weapons/cod2019/jokr/weap_juliet_proj_ignite_01.ogg",75, 100, 1, CHAN_AUTO)
end

function ENT:Impact(data, collider)
    if self.SpawnTime + self.SafetyFuse > CurTime() then
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
            dmginfo:SetDamage(250)
            dmginfo:SetDamageForce(data.OurOldVelocity * 25)
            dmginfo:SetDamagePosition(data.HitPos)
            data.HitEntity:TakeDamageInfo(dmginfo)
        end

        self:EmitSound("weapons/rpg/shotdown.wav", 80)

        for i = 1, 1 do
           timer.Simple(0, function()
            local prop = ents.Create("prop_physics")
            prop:SetPos(self:GetPos())
            prop:SetAngles(self:GetAngles())
            prop:SetModel("models/weapons/cod2019/mags/w_eq_pila_rocket.mdl")
            prop:Spawn()
            prop:GetPhysicsObject():SetVelocityInstantaneous(data.OurNewVelocity * 0.5 + VectorRand() * 75)
            prop:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
            SafeRemoveEntityDelayed(prop, 3)
           end)
        end

        self:Remove()
        return true
    end
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

            if self.ShootEntData.Target and IsValid(self.ShootEntData.Target) then
                local target = self.ShootEntData.Target
                if target.UnTrackable then self.ShootEntData.Target = nil end

                local tpos = target:EyePos()
                if self.TopAttack and !self.TopAttackReached then
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

                if self.SuperSeeker or dot >= self.SeekerAngle or !self.TopAttackReached or (self.SuperSteerTime and self.SuperSteerTime >= CurTime()) then
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
            end
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
    local dir = self:GetVelocity():GetNormalized()
    local src = self:GetPos() - dir * 64

    local dmg = DamageInfo()
    dmg:SetAttacker(attacker)
    dmg:SetDamageType(DMG_AIRBOAT + DMG_BLAST)
    dmg:SetInflictor(self)
    dmg:SetDamageForce(self:GetVelocity() * 100)
    dmg:SetDamagePosition(src)
    dmg:SetDamage(300)
    util.BlastDamageInfo(dmg, self:GetPos(), self.Radius)
    util.BlastDamage(self, IsValid(self:GetOwner()) and self:GetOwner() or self, self:GetPos(), 300, 64)

    self:FireBullets({
        Attacker = attacker,
        Damage = 256,
        Tracer = 0,
        Src = src,
        Dir = dir,
        HullSize = 16,
        Distance = 256,
        IgnoreEntity = self,
        Callback = function(atk, btr, dmginfo)
            if IsValid(btr.Entity) and btr.Entity.LVS then
                dmginfo:ScaleDamage(5)
                dmginfo:SetDamageType(DMG_AIRBOAT + DMG_SNIPER + DMG_BLAST)
                dmginfo:SetDamageForce(self:GetForward() * 10000)
            end
        end,
    })

    local fx = EffectData()
	fx:SetOrigin(self:GetPos())
	fx:SetStart(self:GetPos() + self:GetUp())
	fx:SetRadius(275)
    fx:SetEntity(self)
    if self:WaterLevel() > 0 then
        util.Effect("WaterSurfaceExplosion", fx)
    else
        util.Effect("cod2019_grenade_explosion", fx)
		self:EmitSound("Cod2019.Frag.Explode", _, _, _, _, _, _, ARC9.EveryoneRecipientFilter)
    end

	--util.Decal("Scorch", self:GetPos(), self:GetPos() + self:GetUp() * -100, {self})

    for i, e in pairs(ents.FindInSphere(self:GetPos(), 32)) do
        if (e:GetClass() == "npc_strider") then
            e:Fire("Explode")
        end
    end

    timer.Simple(0, function() self:Remove() end)
end