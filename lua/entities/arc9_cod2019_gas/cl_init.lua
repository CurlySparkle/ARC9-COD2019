include("shared.lua")

local gasEntities = {}

function ENT:Initialize()
    table.insert(gasEntities, self)
end

function ENT:OnRemove()
    table.RemoveByValue(gasEntities, self)
end

function ENT:Draw(flags)
    self:DrawShadow(false)
end 

function ENT:DrawPukeVision()
    if (!IsValid(GetViewEntity())) then
        return
    end

    local dist = GetViewEntity():NearestPoint(self:GetPos()):DistToSqr(self:GetPos()) - (64 * 64)
    
    if (dist > self.GasRadius * self.GasRadius) then
        return
    end
        
    local delta = 1 - (dist / (self.GasRadius * self.GasRadius))
    local time = self:GetCreationTime() + self.LifeTime
    local fadeout = math.Clamp(time - CurTime(), 0, 0.5) * 2
    local fadein = math.Clamp(math.abs(CurTime() - self:GetCreationTime()), 0, 1)
        
    delta = delta * fadein
    delta = delta * fadeout

    surface.SetDrawColor(117, 143, 53, 200 * delta)
    surface.DrawRect(0, 0, ScrW(), ScrH())
end
hook.Add("HUDPaintBackground", "COD2019_GasVision", function()
    for _, e in pairs(gasEntities) do
        e:DrawPukeVision()
    end
end)