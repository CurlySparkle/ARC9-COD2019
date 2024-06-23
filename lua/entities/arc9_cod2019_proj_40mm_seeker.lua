AddCSLuaFile()

if CLIENT then
    killicon.Add( "arc9_cod2019_proj_40mm_hel", "VGUI/killicons/cod2019_nade_he", Color(251, 85, 25, 255))
end

ENT.Base                     = "arc9_cod2019_proj_base"
ENT.PrintName                = "40mm Seeker Six"
ENT.Spawnable                = false

ENT.Model                    = "models/weapons/cod2019/m32_nade.mdl"

ENT.IsRocket = true // projectile has a booster and will not drop.
ENT.InstantFuse = false // projectile is armed immediately after firing.
ENT.RemoteFuse = false // allow this projectile to be triggered by remote detonator.
ENT.ImpactFuse = true // projectile explodes on impact.

ENT.ExplodeOnDamage = false // projectile explodes when it takes damage.
ENT.ExplodeUnderwater = true
ENT.SmokeTrail = false

ENT.Delay = 0
ENT.SafetyFuse = 0.05
ENT.FlareColor = Color(230, 113, 30)
ENT.Radius = 128
ENT.AudioLoop = "weapons/cod2019/pila/move_gromeo_proj_flame.wav"
ENT.FlareSizeMin = 10
ENT.FlareSizeMax = 50

--- Stuff
ENT.SeekerAngle = math.cos(math.rad(55))
ENT.SteerSpeed = 1000
ENT.FuseTime = 0
ENT.Boost = 2000
ENT.Lift = 0
ENT.LifeTime = 20

ENT.FireAndForget = true
ENT.SuperSeeker = false
ENT.SuperSteerBoostTime = 5
ENT.NoReacquire = true
ENT.ShootEntData = {}
ENT.IsProjectile = true

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
	ParticleEffectAttach("grenadetrail",PATTACH_ABSORIGIN_FOLLOW,self,0)
    ParticleEffectAttach("smoketrail",PATTACH_ABSORIGIN_FOLLOW,self,0)
    self:EmitSound("^weapons/cod2019/shared/jokr_split.ogg",75, 100, 1, CHAN_AUTO)
end

function ENT:Impact(data, collider)
    local hitPos = data.HitPos -- Get the position where the grenade hit
    local hitNormal = data.HitNormal -- Get the normal vector of the surface hit
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
            dmginfo:SetDamage(24)
            dmginfo:SetDamageForce(data.OurOldVelocity * 25)
            dmginfo:SetDamagePosition(data.HitPos)
            data.HitEntity:TakeDamageInfo(dmginfo)
        end

        self:EmitSound("weapons/rpg/shotdown.wav", 80)

        for i = 1, 1 do
            local prop = ents.Create("prop_physics")
            prop:SetPos(self:GetPos())
            prop:SetAngles(self:GetAngles())
            prop:SetModel("models/weapons/cod2019/m32_nade.mdl")
            prop:Spawn()
            prop:GetPhysicsObject():SetVelocityInstantaneous(data.OurNewVelocity * 0.5 + VectorRand() * 75)
            prop:SetCollisionGroup(COLLISION_GROUP_DEBRIS)

            SafeRemoveEntityDelayed(prop, 3)
        end

        self:Remove()
        return true
    end
	util.Decal("FadingScorch", hitPos + hitNormal, hitPos - hitNormal)
	util.Decal("Dark", hitPos + hitNormal, hitPos - hitNormal)
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
    local dir = self:GetForward()
    local src = self:GetPos() - dir * 64

    local dmg = DamageInfo()
    dmg:SetAttacker(attacker)
    dmg:SetDamageType(DMG_AIRBOAT + DMG_SNIPER + DMG_BLAST)
    dmg:SetInflictor(self)
    dmg:SetDamageForce(self:GetVelocity() * 100)
    dmg:SetDamagePosition(src)
    dmg:SetDamage(32)
    util.BlastDamageInfo(dmg, self:GetPos(), self.Radius)

    local fx = EffectData()
    fx:SetOrigin(self:GetPos())
    if self:WaterLevel() > 0 then
        util.Effect("WaterSurfaceExplosion", fx)
    else
        ParticleEffect("Generic_explo_tiny", self:GetPos(), self:GetAngles())
    end
	
    for i, e in pairs(ents.FindInSphere(self:GetPos(), 32)) do
        if (e:GetClass() == "npc_strider") then
            e:Fire("Explode")
        end
    end

    self:EmitSound("^weapons/cod2019/shared/rocket_expl_body_02.ogg", 100, 100, 1, CHAN_WEAPON)
	util.ScreenShake(self:GetPos(), 25, 4, 0.75, self.Radius * 4)
    self:Remove()
end

function ENT:OnRemove()
	if (self:WaterLevel() <= 0) then
     if CLIENT then
		local dlight = DynamicLight(self:EntIndex())
		if (dlight) then
			dlight.pos = self:GetPos()
			dlight.r = 255
			dlight.g = 75
			dlight.b = 0
			dlight.brightness = 3
			dlight.Decay = 2000
			dlight.Size = 256
			dlight.DieTime = CurTime() + 5
		end
	 end
	end
	self:StopParticles()
	BaseClass.OnRemove(self)
end