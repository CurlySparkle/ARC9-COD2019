AddCSLuaFile()

if CLIENT then
    killicon.Add( "arc9_cod2019_throwndrill", "vgui/killicons/cod2019_nade_he", Color(251, 85, 25, 255))
end

ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "Drill Charge"
ENT.Author = "Ahmad"
ENT.Spawnable = false

if SERVER then
    function ENT:Initialize()
        self:SetNoDraw(false)
        self:DrawShadow(false)
        self:SetModel("models/weapons/cod2019/w_eq_drill_charge.mdl") -- Replace with appropriate model
        self:PhysicsInit(SOLID_VPHYSICS)
        self:SetMoveType(MOVETYPE_VPHYSICS)
        self:SetSolid(SOLID_VPHYSICS)
		self:SetAngles(Angle(90, 0, 0))
		ParticleEffectAttach("grenadetrail", PATTACH_ABSORIGIN_FOLLOW, self, 0)
		sound.EmitHint(SOUND_DANGER, self:GetPos(), 128 * 2, 1, nil)
        local phys = self:GetPhysicsObject()

        if (phys:IsValid()) then
            phys:Wake()
            phys:EnableGravity(true)
            phys:SetBuoyancyRatio(0)
            phys:SetDragCoefficient(0)
            phys:SetMass(1)
        end
    end

    function ENT:Think()
        if self.Stuck then
            if self:GetSolid() == SOLID_VPHYSICS then
                return
            elseif not self.AttachToWorld and (not IsValid(self:GetParent())) or (IsValid(self:GetParent()) and self:GetParent():GetSolid() ~= SOLID_VPHYSICS and (self:GetParent():Health() <= 0)) then
               timer.Simple(0, function()
                self:SetParent()
                self:PhysicsInit(SOLID_VPHYSICS)
                self:SetCollisionGroup(COLLISION_GROUP_PROJECTILE)
                self:PhysWake()
				timer.Simple(5, function()
				if IsValid(self) then
				self:Remove()
				end
				end)
			   end)
            end
        end
    end

    function ENT:PhysicsCollide(data, physobj)
        if self.Stuck then return end
        self.Stuck = true
        local tgt = data.HitEntity
        local dmginfo = DamageInfo()
        dmginfo:SetDamageType(DMG_NEVERGIB)
        dmginfo:SetDamage(15)
        dmginfo:SetAttacker(self:GetOwner())
        dmginfo:SetInflictor(self)
        tgt:TakeDamageInfo(dmginfo)

        if tgt:IsWorld() or (IsValid(tgt) and tgt:GetPhysicsObject():IsValid()) then
            timer.Simple(0, function()
                self:GetPhysicsObject():Sleep()

                if tgt:IsWorld() or IsValid(tgt) then
                    self:SetSolid(SOLID_NONE)
                    self:SetMoveType(MOVETYPE_NONE)
                    self:SetCollisionGroup(COLLISION_GROUP_DEBRIS)

                    local f = {self}
                    table.Add(f, tgt:GetChildren())

                    local tr = util.TraceLine({
                        start = data.HitPos - data.OurOldVelocity * 0.5,
                        endpos = data.HitPos + data.OurOldVelocity,
                        filter = f,
                        mask = MASK_SHOT
                    })

                    local bone = tr.Entity:TranslatePhysBoneToBone(tr.PhysicsBone) or tr.Entity:GetHitBoxBone(tr.HitBox, tr.Entity:GetHitboxSet())
                    local matrix = tgt:GetBoneMatrix(bone or 0)
                    if tr.Entity == tgt and bone and matrix then
                        local pos = matrix:GetTranslation()
                        local ang = matrix:GetAngles()
                        self:FollowBone(tgt, bone)
                        local n_pos, n_ang = WorldToLocal(tr.HitPos, tr.Normal:Angle(), pos, ang)
                        self:SetLocalPos(n_pos)
                        self:SetLocalAngles(n_ang)
                        debugoverlay.Cross(pos, 8, 5, Color(255, 0, 255), true)
                    elseif not tgt:IsWorld() then
                        self:SetParent(tgt)
                        self:GetParent():DontDeleteOnRemove(self)
                    else
                        self.AttachToWorld = true
                    end
                end
            end)
        end
        if self:Impact(data, collider) then
            return
        end
    end

function ENT:Impact(data, collider)
   self.GrenadeDir = data.OurOldVelocity:GetNormalized()
   self.GrenadePos = data.HitPos
   timer.Simple(0, function()
   self:SetAngles(data.OurOldVelocity:Angle() + Angle(-90,0,0))
   self:SetPos(data.HitPos)
       self:EmitSound("^weapons/cod2019/throwables/drill_charge/eqp_bunkerbuster_drill_succeed.ogg")
       self:EmitSound("weapons/cod2019/throwables/drill_charge/eqp_bunkerbuster_thermal_lance_start_01.ogg")
       self:EmitSound("weapons/cod2019/shared/bullet_small_crossbow_bolt_swt_01.ogg", 100, 110)
       ParticleEffect("small_smoke_effect3", self:GetPos(), self:GetAngles(), nil)
   end)
   timer.Simple(1.8, function()
   if IsValid(self) then
      self:EmitSound("^weapons/cod2019/throwables/drill_charge/eqp_bunkerbuster_round_inject.ogg")
   end
   end)
   timer.Simple(2.1, function()
    if IsValid(self) then
       self:Detonate()
       end
   end)
end

function ENT:Detonate()
    local dir = self.GrenadeDir or self:GetVelocity():GetNormalized()
    local attacker = IsValid(self:GetOwner()) and self:GetOwner() or self
    local blastpos = self:GetPos()
    local tr = util.TraceLine({
        start = self:GetPos(),
        endpos = self:GetPos() + dir * 69,
        filter = self
    })
    if IsValid(tr.Entity) then
        -- do impact damage
        local dmg = DamageInfo()
        dmg:SetAttacker(attacker)
        dmg:SetInflictor(self)
        dmg:SetDamage(25)
        dmg:SetDamageForce(dir * 3000)
        dmg:SetDamagePosition(tr.HitPos)
        tr.Entity:TakeDamageInfo(dmg)
    end
    -- attempt to penetrate entity/world and place explosion behind
    local tr2 = util.TraceLine({
        start = tr.HitPos + dir * 75,
        endpos = tr.HitPos,
        filter = self,
    })

    if tr2.Hit and !tr2.StartSolid then
        -- Produce a weaker blast on the pre-penetration side
        util.BlastDamage(self, attacker, blastpos, 64, 64)
        blastpos = tr2.HitPos + dir * 75
        self:EmitSound("physics/concrete/concrete_break2.wav", 100, 110)
        local effectdata = EffectData()
        effectdata:SetOrigin(self:GetPos())
        effectdata:SetMagnitude(2)
        effectdata:SetScale(1)
        effectdata:SetRadius(2)
        effectdata:SetNormal(-dir)
        util.Effect("Sparks", effectdata)
        effectdata:SetOrigin(blastpos)
        effectdata:SetNormal(dir)
        util.Effect("Sparks", effectdata)
		ParticleEffect("Generic_explo_tiny", self:GetPos(), self:GetAngles(), nil)
    end

    local effectdata = EffectData()
    effectdata:SetOrigin(blastpos)

    if self:WaterLevel() >= 1 then
        util.Effect("WaterSurfaceExplosion", effectdata)
        self:EmitSound("weapons/underwater_explode3.wav", 125, 100, 1, CHAN_AUTO)
    else
        if tr2.Hit and !tr2.StartSolid then
            ParticleEffect("Generic_explo_mid", tr2.StartPos, Angle(-90, 0, 0))
        end
    end

    self:EmitSound("^weapons/cod2019/throwables/drill_charge/eqp_bunkerbuster_explo_big_body.ogg", 125, 100, 1, CHAN_AUTO)
    self:EmitSound("^weapons/cod2019/shared/rocket_expl_body_01.ogg", 125, 100, 1, CHAN_AUTO)
    util.ScreenShake(self:GetPos(),25,4,.75,128 * 4)
    util.BlastDamage(self, attacker, blastpos, 200, 128)
	self:Remove()
end
end

function ENT:Draw()
    self:DrawModel()
end