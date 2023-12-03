include("shared.lua")
killicon.Add("arc9_cod2019_gas", "VGUI/killicons/cod2019_gas", Color(255, 0, 0, 255))

local smokeEntities = {}

function ENT:Initialize()
    table.insert(smokeEntities, self)
    self:SetCollisionGroup(self.CollisionGroup)
end

function ENT:OnRemove()
    table.RemoveByValue(smokeEntities, self)
end

function ENT:Draw(flags)
    self:DrawShadow(false)
end 

function ENT:DrawSmokeVision()
    if (!IsValid(GetViewEntity())) then
        return
    end

    local dist = GetViewEntity():NearestPoint(self:GetPos()):DistToSqr(self:GetPos()) - (64 * 64)
    
    if (dist > self.SmokeRadius * self.SmokeRadius) then
        return
    end
        
    local delta = 1 - (dist / (self.SmokeRadius * self.SmokeRadius))
    local time = self:GetCreationTime() + self.LifeTime
    local fadeout = math.Clamp(time - CurTime(), 0, 0.5) * 2
    local fadein = math.Clamp(math.abs(CurTime() - self:GetCreationTime()), 0, 1)
        
    delta = delta * fadein
    delta = delta * fadeout

    surface.SetDrawColor(150, 150, 150, 255 * delta)
    surface.DrawRect(0, 0, ScrW(), ScrH())
end
hook.Add("HUDPaintBackground", "HUDPaint_MW19_SmokeVision", function()
    for _, e in pairs(smokeEntities) do
        e:DrawSmokeVision()
    end
end)