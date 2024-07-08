EFFECT.StartPos = Vector(0, 0, 0)
EFFECT.EndPos = Vector(0, 0, 0)
EFFECT.StartTime = 0
EFFECT.LifeTime = 0.2
EFFECT.LifeTime2 = 0.2
EFFECT.DieTime = 0
EFFECT.Color = Color(255, 255, 255)
EFFECT.Speed = 22000

EFFECT.Size = 1

--local head = Material("effects/ar2_altfire1b")
local head = Material("effects/whiteflare")
local tracer = Material("effects/spark")
local smoke = Material("trails/smoke")

function EFFECT:Init(data)

    local hit = data:GetOrigin()
    local wep = data:GetEntity()

    if !IsValid(wep) then return end
    if !wep.ARC9 then return end

    local speed = data:GetScale()
    local start = (wep.GetTracerOrigin and wep:GetTracerOrigin()) or data:GetStart()

    if speed > 0 then
        self.Speed = speed
    end

    self.LifeTime = (hit - start):Length() / self.Speed

    self.StartTime = UnPredictedCurTime()
    self.DieTime = UnPredictedCurTime() + math.max(self.LifeTime, self.LifeTime2)

    self.StartPos = start
    self.EndPos = hit

    -- Sometimes it freaks out and, I dunno, gets invalid
    if wep.GetProcessedValue then
        self.Color = wep:GetProcessedValue("TracerColor")
        self.Size = wep:GetProcessedValue("TracerSize")
        self.Speed = wep:GetProcessedValue("TracerSpeed")
    end
end

function EFFECT:Think()
    return self.DieTime > UnPredictedCurTime()
end

local function LerpColor(d, col1, col2)
    local r = Lerp(d, col1.r, col2.r)
    local g = Lerp(d, col1.g, col2.g)
    local b = Lerp(d, col1.b, col2.b)
    local a = Lerp(d, col1.a, col2.a)
    return Color(r, g, b, a)
end

function EFFECT:Render()
    local d = (UnPredictedCurTime() - self.StartTime) / self.LifeTime
    local d2 = (UnPredictedCurTime() - self.StartTime) / self.LifeTime2
    local startpos = self.StartPos + (d * 0.1 * (self.EndPos - self.StartPos))
    local endpos = self.StartPos + (d * (self.EndPos - self.StartPos))
    local size = self.Size

    local col = LerpColor(d, self.Color, Color(0, 0, 0, 0))
    local col2 = LerpColor(d2, self.Color, Color(0, 0, 0, 0))
	local col3 = LerpColor(d2, Color(255, 255, 255, 255), Color(0, 0, 0, 0))

    render.SetMaterial(head)
    render.DrawSprite(endpos, size * 3, size * 3, col)

    render.SetMaterial(tracer)
    render.DrawBeam(endpos, startpos, size, 1, 0, col)

    render.SetMaterial(smoke)
    render.DrawBeam(self.EndPos, endpos, size * d2, 1, 0, col)
end
