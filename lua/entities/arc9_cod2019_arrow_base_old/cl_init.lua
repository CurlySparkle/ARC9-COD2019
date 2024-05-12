include("shared.lua")

killicon.Add("arc9_cod2019_arrow_base", "hud/killicons/default", Color(255, 255, 255, 255))

ENT.RenderGroup = RENDERGROUP_TRANSLUCENT
ENT.bTracerOn = false

function ENT:DrawTranslucent(flags)
	if (self:GetVelocity():LengthSqr() > 0 || self:GetNailed()) then
		self:DrawModel()

		if (!self.bTracerOn) then
			ParticleEffectAttach("mw2019_arrow_trail", PATTACH_ABSORIGIN_FOLLOW, self, 0)
			self.bTracerOn = true
		end
	end
end