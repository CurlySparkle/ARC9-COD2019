include("shared.lua")
killicon.Add("mg_aoe_arrow_thermite", "VGUI/entities/mg_crossbow", Color(255, 0, 0, 255))

function ENT:Initialize()
    self:EmitSound("MW19_Crossbow.FireOn")
end

function ENT:OnRemove()
    self:StopSound("MW19_Crossbow.FireOn")
    sound.Play("MW19_Crossbow.FireOff", self:GetPos())
end

function ENT:Draw(flags)
    self:DrawShadow(false)

    local dlight = DynamicLight(self:EntIndex())
	if (dlight) then
		dlight.pos = self:GetPos()
		dlight.r = 255
		dlight.g = 75
		dlight.b = 0
		dlight.brightness = 5
		dlight.Decay = 500
		dlight.Size = math.random(50, 64)
		dlight.DieTime = CurTime() + 0.25
	end
end 