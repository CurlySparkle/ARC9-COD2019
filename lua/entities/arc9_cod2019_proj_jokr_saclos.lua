AddCSLuaFile()

if CLIENT then
    killicon.Add( "arc9_cod2019_proj_jokr_saclos", "VGUI/killicons/cod2019_la_jokr.png", Color(251, 85, 25, 255))
end

ENT.Base                     = "arc9_cod2019_proj_base"
ENT.PrintName                = "Jokr Guided Rocket"
ENT.Spawnable                = false
ENT.Model                    = "models/weapons/cod2019/mags/w_la_jokr_rocket.mdl"

ENT.IsRocket = true // projectile has a booster and will not drop.
ENT.InstantFuse = false // projectile is armed immediately after firing.
ENT.RemoteFuse = false // allow this projectile to be triggered by remote detonator.
ENT.ImpactFuse = true // projectile explodes on impact.

ENT.ExplodeOnDamage = true
ENT.ExplodeUnderwater = true
ENT.SmokeTrail = false
ENT.RocketTrail = true -- leaves trail of a particle effect

ENT.Delay = 0
ENT.SafetyFuse = 0.01
ENT.AudioLoop = "weapons/cod2019/jokr/weap_juliet_proj_lp_01.wav"

ENT.FlareColor = Color(200, 255, 255)
ENT.FlareSizeMin = 20
ENT.FlareSizeMax = 50
ENT.Radius = 300

--- Stuff
ENT.SeekerAngle = math.cos(math.rad(100))
ENT.SteerSpeed = 50000
ENT.FuseTime = 0
ENT.Boost = 1700
ENT.Lift = 80

ENT.FireAndForget = false 
ENT.TopAttack = false  -- This missile flies up above its target before going down in a top-attack trajectory.
ENT.TopAttackHeight = 5000
ENT.SuperSeeker = false 
ENT.SuperSteerBoostTime = 5
ENT.NoReacquire = false 

ENT.ShootEntData = {}
ENT.IsProjectile = true
ENT.SACLOS = true

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

function ENT:OnThink()
        local drunk = false

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
                    drunk = false
                end
                -- end
            else
                drunk = false
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
                else
                    drunk = false
                end
            else
                drunk = false
            end
        end

        if drunk then
            self:SetAngles(self:GetAngles() + (AngleRand() * FrameTime() * 1000 / 360))
        end

        if SERVER then
        self:GetPhysicsObject():AddVelocity(Vector(0, 0, self.Lift) + self:GetForward() * self.Boost)
		end
end

function ENT:Detonate()
    local attacker = self.Attacker or self:GetOwner()

    if self.NPCDamage then
        util.BlastDamage(self, attacker, self:GetPos(), 350, 145)
    else
        util.BlastDamage(self, attacker, self:GetPos(), 350, 185)
        local dir = self:GetVelocity():GetNormalized()
        local src = self:GetPos() - dir * 64
        self:FireBullets({
            Attacker = attacker,
            Damage = 600,
            Tracer = 0,
            Src = src,
            Dir = dir,
            HullSize = 0,
            Distance = 256,
            IgnoreEntity = self,
            Callback = function(atk, btr, dmginfo)
                if IsValid(btr.Entity) and btr.Entity.LVS then
                    dmginfo:ScaleDamage(5)
                    dmginfo:SetDamageType(DMG_AIRBOAT + DMG_SNIPER + DMG_BLAST)
                    dmginfo:SetDamageForce(self:GetForward() * 100000)
                end
            end,
        })
    end

    local fx = EffectData()
	fx:SetOrigin(self:GetPos())
	fx:SetStart(self:GetPos() + self:GetUp())
	fx:SetRadius(350)
    fx:SetEntity(self)
    if self:WaterLevel() > 0 then
        util.Effect("WaterSurfaceExplosion", fx)
    else
        util.Effect("cod2019_grenade_explosion", fx)
		self:EmitSound("Cod2019.Frag.Explode")
    end

    for i, e in pairs(ents.FindInSphere(self:GetPos(), 32)) do
        if (e:GetClass() == "npc_strider") then
            e:Fire("Explode")
        end
    end

    self:Remove()
end