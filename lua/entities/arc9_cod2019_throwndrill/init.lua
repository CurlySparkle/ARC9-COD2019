AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

function ENT:Initialize()
    if SERVER then
        self:SetModel("models/weapons/cod2019/w_eq_drill_charge.mdl")
        self:SetMoveType(MOVETYPE_VPHYSICS)
        self:SetSolid(SOLID_VPHYSICS)
        self:PhysicsInit(SOLID_VPHYSICS)
		self:SetAngles(self:GetAngles() - Angle(90, 0, 0))
		ParticleEffectAttach("grenadetrail", PATTACH_ABSORIGIN_FOLLOW, self, 0)
		sound.EmitHint(SOUND_DANGER, self:GetPos(), 128 * 2, 1, nil)
        
        local phys = self:GetPhysicsObject()
        if IsValid(phys) then
            phys:Wake()
        end
        self.Armed = false
    end
end

function ENT:PhysicsCollide(colData, phys)
    self.GrenadeDir = colData.OurOldVelocity:GetNormalized()
    self.GrenadePos = colData.HitPos
    local hitEntity = colData.HitEntity
    local attacker = self.Attacker or self:GetOwner()
    local ang = colData.OurOldVelocity:Angle()

    if not self.Armed then
		self.Armed = true
        timer.Simple(0, function()
            self:SetSolid(SOLID_NONE)
            self:SetMoveType(MOVETYPE_NONE)
            self:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
            self:SetPos(colData.HitPos)

            if IsValid(colData.HitEntity) then
                self:SetParent(hitEntity)
                local dmginfo = DamageInfo()
                dmginfo:SetAttacker(attacker)
                dmginfo:SetInflictor(self)
                dmginfo:SetDamageType(DMG_CRUSH + DMG_CLUB)
                dmginfo:SetDamage(15)
                dmginfo:SetDamageForce(colData.OurOldVelocity * 25)
                dmginfo:SetDamagePosition(colData.HitPos)
                colData.HitEntity:TakeDamageInfo(dmginfo)
            else
                local newAngle = colData.HitNormal:Angle()
                newAngle:RotateAroundAxis(newAngle:Right(), 90)
                self:SetAngles(newAngle)
            end

			sound.Play("^weapons/cod2019/throwables/drill_charge/eqp_bunkerbuster_drill_succeed.ogg", self:GetPos())
			sound.Play("weapons/cod2019/throwables/drill_charge/eqp_bunkerbuster_thermal_lance_start_01.ogg", self:GetPos())
			sound.Play("weapons/cod2019/shared/bullet_small_crossbow_bolt_swt_01.ogg", self:GetPos())
        end)
		
        ParticleEffect("small_smoke_effect3", self:GetPos(),Angle(-180, 0, 0))
		ParticleEffectAttach("drillcharge_smoke", PATTACH_ABSORIGIN_FOLLOW, self, 0)

        timer.Simple(1.8, function()
            if IsValid(self) then
                self:EmitSound("^weapons/cod2019/throwables/drill_charge/eqp_bunkerbuster_round_inject.ogg")
				ParticleEffect("muzzleflash_ar", self:GetPos(), Angle(0, 0, 0))
            end
        end)
        
        timer.Simple(1.9, function()
            if IsValid(self) then
                self:Detonate(colData)
            end
        end)
    end
end

-- Ty 8z for this :)
function ENT:Detonate(colData)
    local dir = colData.OurOldVelocity
    local attacker = IsValid(self:GetOwner()) and self:GetOwner() or self
	
    if IsValid(colData.HitEntity) then
        -- do impact damage
        local dmg = DamageInfo()
        dmg:SetAttacker(attacker)
        dmg:SetInflictor(self)
        dmg:SetDamage(25)
        dmg:SetDamageForce(dir * 3000)
        dmg:SetDamagePosition(colData.HitPos)
        colData.HitEntity:TakeDamageInfo(dmg)
    end
	--effects on our side
	util.BlastDamage(self, attacker, colData.HitPos, 64, 64)
	self:EmitSound("physics/concrete/concrete_break2.wav", 100, 110)
	
	local effectdata = EffectData()
    effectdata:SetOrigin(colData.HitPos)
    effectdata:SetMagnitude(2)
    effectdata:SetScale(1)
    effectdata:SetRadius(2)
    effectdata:SetNormal(colData.HitNormal)
    util.Effect("Sparks", effectdata)
	ParticleEffect("Generic_explo_tiny", colData.HitPos, colData.HitNormal:Angle() * -1, nil)

    local effectdata = EffectData()
    effectdata:SetOrigin(colData.HitPos)

    if self:WaterLevel() >= 1 then
        util.Effect("WaterSurfaceExplosion", effectdata)
        self:EmitSound("weapons/underwater_explode3.wav", 125, 100, 1, CHAN_AUTO)
    else
        --ParticleEffect("Generic_explo_mid", colData.HitPos, Angle(-90, 0, 0))
    end
	--effects on their side
	local tr = util.TraceLine({
		start = colData.HitPos + colData.HitNormal * 2, --start inside
		endpos = colData.HitPos + colData.HitNormal * 128, --go forward until we hit something
		filter = {self}
	})
	debugoverlay.Line(colData.HitPos, colData.HitPos + colData.HitNormal * 128, 5, Color(0, 255, 0, 255), true)
	if (tr.Hit) then
		--ok now shoot backwards to find our exit point
		tr = util.TraceLine({
			start = tr.HitPos, --start where we hit
			endpos = tr.StartPos, --go back to start
			filter = {self}
		})
		
		sound.Play("^weapons/cod2019/throwables/drill_charge/eqp_bunkerbuster_explo_big_body.ogg", tr.HitPos + tr.HitNormal * 3)
		sound.Play("^weapons/cod2019/shared/rocket_expl_body_01.ogg", tr.HitPos + tr.HitNormal * 3)
		util.ScreenShake(tr.HitPos + tr.HitNormal * 3,25,4,.75,128 * 4)
		util.BlastDamage(self, attacker, tr.HitPos, 200, 128)
		ParticleEffect("Generic_explo_mid", tr.HitPos + tr.HitNormal * 32, Angle(-90, 0, 0))
		debugoverlay.Line(tr.HitPos, tr.StartPos, 5, Color(255, 0, 0, 255))
	end
	self:Remove()
end