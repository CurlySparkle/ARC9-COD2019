include("shared.lua")

function ENT:Draw()
   self:DrawModel()
   self:DrawShadow(false)
end