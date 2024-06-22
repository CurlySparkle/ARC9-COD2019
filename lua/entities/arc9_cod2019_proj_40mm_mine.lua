AddCSLuaFile()

if CLIENT then
    killicon.Add( "arc9_cod2019_proj_40mm_mine", "VGUI/killicons/cod2019_nade_he", Color(251, 85, 25, 255))
end

ENT.Base = "arc9_cod2019_plantable"
ENT.PrintName = "40mm Mine Charge"

ENT.Model = "models/weapons/cod2019/m32_40mm_bunker_buster.mdl"
ENT.WeaponClass = "arc9_cod2019_la_m32"
ENT.Bury = 0
ENT.ArmDelay = 3
ENT.Radius = 64
ENT.SpinAngles = Vector(9000, 0, 0)
ENT.GroundDecal = false
ENT.IsPickable = false
ENT.MinS = Vector(0, 0, 0)
ENT.MaxS = Vector(0, 0, 0)
ENT.NextBeepTime = 0

function ENT:OnInitialize()
   self:SetAngles(Angle(0, 0, -90))
   ParticleEffectAttach("grenadetrail",PATTACH_ABSORIGIN_FOLLOW,self,0)
   ParticleEffectAttach("smoketrail",PATTACH_ABSORIGIN_FOLLOW,self,0)
   
    if SERVER then
        self:GetPhysicsObject():SetMass(50)
        self:GetPhysicsObject():SetDragCoefficient(5)
    end
end

function ENT:Impact(tr1, data, bHull)
    local ang = data.OurOldVelocity:Angle()
	local dmginfo = DamageInfo()
	self:FireBullets({
		Attacker = self:GetOwner(),
		Num = 1,
		Tracer = 0,
        Dir = ang:Forward(),
        Src = data.HitPos - ang:Forward(),
		HullSize = bHull && self.Maxs:Length() * 2 || 1,
		IgnoreEntity = self,
		Callback = function(attacker, tr, dmgInfo)
			dmgInfo:SetInflictor(IsValid(self.Weapon) && self.Weapon || self)
			dmginfo:SetDamageType(DMG_SLASH)

			if (tr.HitSky) then
				self:Remove()
			return
			end
			
			if (tr.Entity:IsPlayer() || tr.Entity:IsNPC() || tr.Entity:IsNextBot() || tr.Entity:IsRagdoll()) then
				sound.Play("weapons/cod2019/shared/blt_imp_flesh_plr_04.ogg", tr.HitPos + tr.HitNormal * 5)
				return
			end

			sound.Play("weapons/cod2019/shared/bullet_small_crossbow_bolt_swt_01.ogg", tr.HitPos)
			
		end
	})
end

function ENT:OnPlant()
    self:EmitSound("weapons/cod2019/shared/grenade_pin_trip_mine_short.ogg", 75, 100, 1, CHAN_AUTO)
	self:StopParticles()
	self:SetModel("models/weapons/cod2019/m32_40mm_bunker_buster_planted2.mdl")
end

function ENT:Think()
   if self:GetArmed() then
        if CLIENT then
            if self.NextBeepTime == 0 then
                self.NextBeepTime = CurTime() + 10
            elseif self.NextBeepTime <= CurTime() then
                self:EmitSound( "weapons/cod2019/throwables/claymore/wpfoly_claymore_sensors_on.ogg", 55, 100, 0.7, CHAN_AUTO )
                self.NextBeepTime = CurTime() + 10
            end
    elseif SERVER then
        for _, i in ipairs(ents.FindInSphere(self:GetPos(), self.Radius)) do
            if IsValid(i) and ((i:IsPlayer() and i:GetVelocity():Length2DSqr() >= 22500) or i:IsNPC() or i:IsNextBot()) then
                self:Detonate()
                break
            end
        end

        self:NextThink(CurTime() + 0.15)
        return true
    end
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
    dmg:SetDamage(100)
    util.BlastDamageInfo(dmg, self:GetPos(), 100)

    local fx = EffectData()
    fx:SetOrigin(self:GetPos())

    if self:WaterLevel() > 0 then
        util.Effect("WaterSurfaceExplosion", fx)
    else
        ParticleEffect("Generic_explo_high", self:GetPos(), Angle(-90, 0, 0))
    end

    self:EmitSound("^weapons/cod2019/shared/rocket_expl_body_02.ogg", 100, 100, 1, CHAN_WEAPON)
	util.ScreenShake(self:GetPos(), 25, 4, 0.75, 100 * 4)
	util.Decal("Scorch", self:GetPos(), self:GetPos() + self:GetUp() * -100, {self})
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
			dlight.brightness = 2
			dlight.Decay = 2000
			dlight.Size = 512
			dlight.DieTime = CurTime() + 5
		end
	 end
	end
	self:StopParticles()
end

function ENT:Draw()
    if CLIENT then
        self:DrawModel()
        local pos = self:GetPos() + self:GetUp() * 2
		
		--self:EmitSound("weapons/cod2019/throwables/semtex/weap_semtex_beep.ogg", 75, 100, 1, CHAN_AUTO)

        if self:GetArmed() and math.sin(CurTime() * 1) >= 0.75 then
            cam.Start3D() -- Start the 3D function so we can draw onto the screen.
            render.SetMaterial(Material("effects/blueflare1")) -- Tell render what material we want, in this case the flash from the gravgun
            render.DrawSprite(pos, 3, 3, Color(255, 0, 0)) -- Draw the sprite in the middle of the map, at 16x16 in it's original colour with full alpha.
            cam.End3D()
        end
    end
end