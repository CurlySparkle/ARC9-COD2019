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
        
        local phys = self:GetPhysicsObject()
        if IsValid(phys) then
            phys:Wake()
			phys:SetAngles(Angle(90, 0, 0))
        end
        self.Armed = false
    end
end

-- function ENT:Think()
    -- if self.Armed then
        -- local fx = EffectData()
		-- fx:SetOrigin(self:GetPos())
		-- fx:SetNormal(self:GetUp())
		-- util.Effect("ManhackSparks", fx)
	-- else
	-- return
    -- end
-- end

function ENT:PhysicsCollide(data, phys)
    self.GrenadeDir = data.OurOldVelocity:GetNormalized()
    self.GrenadePos = data.HitPos
	
    local theirProps = util.GetSurfaceData(data.TheirSurfaceProps)
    if (theirProps != nil && theirProps.material == MAT_DEFAULT) then
    timer.Simple(0, function() self:Remove() end)
    return
    end
	
    if not self.Armed then
	timer.Simple(0, function()
        self.Armed = true
        self:SetMoveType(MOVETYPE_NONE)
        self:SetPos(data.HitPos)
        
        -- Orient the entity to face into the wall
        local newAngle = data.HitNormal:Angle()
        newAngle:RotateAroundAxis(newAngle:Right(), 90)
        self:SetAngles(newAngle)
		
		self:EmitSound("^weapons/cod2019/throwables/drill_charge/eqp_bunkerbuster_drill_succeed.ogg")
		self:EmitSound("weapons/cod2019/throwables/drill_charge/eqp_bunkerbuster_thermal_lance_start_01.ogg")
		--self:EmitSound("physics/concrete/concrete_break2.wav", 100, 110)
		self:EmitSound("weapons/cod2019/shared/bullet_small_crossbow_bolt_swt_01.ogg", 100, 110)
        local fx = EffectData()
		fx:SetOrigin(self:GetPos())
		fx:SetNormal(self:GetUp())
		util.Effect("ManhackSparks", fx)
	end)
		
        timer.Simple(2, function()
            if IsValid(self) then
			    self:EmitSound("^weapons/cod2019/throwables/drill_charge/eqp_bunkerbuster_round_inject.ogg")
            end
        end)
        
        timer.Simple(2.3, function()
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
        start = tr.HitPos + dir * 69,
        endpos = tr.HitPos,
        filter = self,
    })

    if tr2.Hit and !tr2.StartSolid then
        -- Produce a weaker blast on the pre-penetration side
        util.BlastDamage(self, attacker, blastpos, 64, 64)

        blastpos = tr2.HitPos + dir * 69
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
    end

    local effectdata = EffectData()
    effectdata:SetOrigin(blastpos)

    if self:WaterLevel() >= 1 then
        util.Effect("WaterSurfaceExplosion", effectdata)
        self:EmitSound("weapons/underwater_explode3.wav", 125, 100, 1, CHAN_AUTO)
    else
        --self:EmitSound("Cod2019.Frag.Explode")
        ParticleEffect("Generic_explo_tiny", self:GetPos(), tr.HitNormal:Angle())
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