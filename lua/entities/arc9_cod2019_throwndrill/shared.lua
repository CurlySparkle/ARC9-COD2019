AddCSLuaFile()

if CLIENT then
    killicon.Add( "arc9_cod2019_throwndrill", "vgui/killicons/cod2019_nade_he", Color(251, 85, 25, 255))
end

ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "Drill Charge"
ENT.Author = "Ahmad"
ENT.Spawnable = false

function ENT:Initialize()
    if SERVER then
        self:SetModel("models/weapons/cod2019/w_eq_drill_charge.mdl") -- Replace with appropriate model
        self:PhysicsInit(SOLID_VPHYSICS)
        self:SetMoveType(MOVETYPE_VPHYSICS)
        self:SetSolid(SOLID_VPHYSICS)
		self:SetAngles(Angle(90, 0, 0))
		ParticleEffectAttach("grenadetrail", PATTACH_ABSORIGIN_FOLLOW, self, 0)
		sound.EmitHint(SOUND_DANGER, self:GetPos(), 128 * 2, 1, nil)
        
        local phys = self:GetPhysicsObject()
        if IsValid(phys) then
            phys:Wake()
        end
        self.Armed = false
    end
end

-- function ENT:Think()
-- if SERVER then
    -- if (IsValid(self:GetParent()) && self:GetParent():Health() <= 0 && self:GetParent():GetMaxHealth() > 1) then
        -- self:MiniDetonate()
        -- return
    -- end
-- end
-- end

function ENT:PhysicsCollide(data, phys)
    self.GrenadeDir = data.OurOldVelocity:GetNormalized()
    self.GrenadePos = data.HitPos
    local hitEntity = data.HitEntity
    local attacker = self.Attacker or self:GetOwner()
    local ang = data.OurOldVelocity:Angle()

    if not self.Armed then
        timer.Simple(0, function()
            self.Armed = true
            self:SetMoveType(MOVETYPE_NONE)
            self:SetPos(data.HitPos)

            -- Check if the hit entity is a player, NPC, or nextbot
            if IsValid(data.HitEntity) then
                self:SetParent(hitEntity)
                local dmginfo = DamageInfo()
                dmginfo:SetAttacker(attacker)
                dmginfo:SetInflictor(self)
                dmginfo:SetDamageType(DMG_CRUSH + DMG_CLUB)
                dmginfo:SetDamage(15)
                dmginfo:SetDamageForce(data.OurOldVelocity * 25)
                dmginfo:SetDamagePosition(data.HitPos)
                data.HitEntity:TakeDamageInfo(dmginfo)
            else
                -- Orient the entity to face into the wall
                local newAngle = data.HitNormal:Angle()
                newAngle:RotateAroundAxis(newAngle:Right(), 90)
                self:SetAngles(newAngle)
            end

            -- Rest of your existing code for sound effects and particle effects
            self:EmitSound("^weapons/cod2019/throwables/drill_charge/eqp_bunkerbuster_drill_succeed.ogg")
            self:EmitSound("weapons/cod2019/throwables/drill_charge/eqp_bunkerbuster_thermal_lance_start_01.ogg")
            self:EmitSound("weapons/cod2019/shared/bullet_small_crossbow_bolt_swt_01.ogg", 100, 110)
            ParticleEffect("small_smoke_effect3", self:GetPos(), self:GetAngles(), nil)
        end)

        -- Rest of your existing timer code
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
end

-- Ty 8z for this :)
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
        start = tr.HitPos + dir * 80,
        endpos = tr.HitPos,
        filter = self,
    })

    if tr2.Hit and !tr2.StartSolid then
        -- Produce a weaker blast on the pre-penetration side
        util.BlastDamage(self, attacker, blastpos, 64, 64)
        blastpos = tr2.HitPos + dir * 80
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

if CLIENT then
    function ENT:Draw()
        self:DrawModel()
    end
end