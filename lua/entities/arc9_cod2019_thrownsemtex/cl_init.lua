include("shared.lua")

local BaseClass = baseclass.Get(ENT.Base)

function ENT:Beep()
    local dlight = DynamicLight(self:EntIndex())
	dlight.pos = self:GetPos()
	dlight.r = 255
	dlight.g = 15
	dlight.b = 15
	dlight.brightness = -1
	dlight.Decay = 1000
	dlight.Size = 256
	dlight.DieTime = CurTime() + 0.1

    sound.Play("Cod2019.Semtex.Beep", self:GetPos())
    ParticleEffectAttach("arrow_beep_flare", PATTACH_ABSORIGIN_FOLLOW, self, 0)
end

function ENT:Draw(flags)
    self:DrawShadow(true)
	self:DrawModel()
end 

function ENT:OnRemove()
    ParticleEffect("explosion_m79", self:GetPos(), Angle(0, 0, 0), nil)
    self:EmitSound("Cod2019.Frag.Explode")

	local dlight = DynamicLight(self:EntIndex())
	if (dlight) then
		dlight.pos = self:GetPos()
		dlight.r = 255
		dlight.g = 75
		dlight.b = 0
		dlight.brightness = 5
		dlight.Decay = 500
		dlight.Size = 512
		dlight.DieTime = CurTime() + 6
	end

    util.Decal("Scorch", self:GetPos(), self:GetPos() + self:GetUp() * -100, {self, self.arrow})

	local ed = EffectData()
	ed:SetScale(5000)
	ed:SetOrigin(self:GetPos())
	ed:SetRadius(512)
	ed:SetMagnitude(1000)
	ed:SetScale(1000)
	ed:SetEntity(self)
	util.Effect("ShakeRopes", ed)
end