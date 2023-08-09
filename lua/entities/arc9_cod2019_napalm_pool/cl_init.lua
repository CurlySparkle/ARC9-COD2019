include("shared.lua")

function ENT:Draw() 
    local dlight = DynamicLight( self:EntIndex() )
	if ( dlight ) then
		dlight.pos = self:GetPos() + Vector(0,0,10)
		dlight.r = 235
		dlight.g = 144
		dlight.b = 21
		dlight.brightness = 2
		dlight.Decay = 1000
		dlight.Size = 128
		dlight.DieTime = CurTime() + 1
	end
end