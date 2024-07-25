include("shared.lua")

local BaseClass = baseclass.Get(ENT.Base)

function ENT:Draw(flags)
    self:DrawShadow(true)
	self:DrawModel()
end 

-- function ENT:OnRemove()
    -- ParticleEffect("grenade_final", self:GetPos(), Angle(0, 0, 0), nil)
    -- self:EmitSound("Cod2019.Frag.Explode")

	-- local dlight = DynamicLight(self:EntIndex())
	-- if (dlight) then
		-- dlight.pos = self:GetPos()
		-- dlight.r = 255
		-- dlight.g = 75
		-- dlight.b = 0
		-- dlight.brightness = 5
		-- dlight.Decay = 500
		-- dlight.Size = 256
		-- dlight.DieTime = CurTime() + 6
	-- end

    -- util.Decal("Scorch", self:GetPos(), self:GetPos() + self:GetUp() * -100, {self, self.arrow})
-- end