AddCSLuaFile()

game.AddParticles("particles/fas_explosions.pcf")
PrecacheParticleSystem("grenade_final")

function EFFECT:GetImpactPoint(data)
    return data:GetOrigin()
end

function EFFECT:GetImpactStart(data)
    return data:GetStart()
end

function EFFECT:GetImpactNormal(data)
    return (self:GetImpactPoint(data) - self:GetImpactStart(data)):GetNormalized()
end

function EFFECT:Init(data)
    local tr = util.TraceLine({
		start = self:GetImpactStart(data),
		endpos = self:GetImpactStart(data) + self:GetImpactNormal(data) * 10,
        filter = {data:GetEntity()}
	})

    local dlight = DynamicLight(data:GetEntity():EntIndex())
    
    if (dlight) then
        dlight.pos = tr.HitPos
        dlight.r = 255
        dlight.g = 75
        dlight.b = 0
        dlight.brightness = 5
        dlight.Decay = 500
        dlight.Size = 512
        dlight.DieTime = CurTime() + 6
    end

    if (bit.band(util.PointContents(tr.HitPos), CONTENTS_WATER) == CONTENTS_WATER) then
        ed = EffectData()
        ed:SetOrigin(self:GetPos())
        util.Effect("WaterSurfaceExplosion", ed)
    else
        ParticleEffect("grenade_final", tr.HitPos, (tr.HitNormal * -1):Angle() + Angle(270, 0, 0))
    end

    util.Decal("Scorch", tr.HitPos + tr.HitNormal, tr.HitPos - tr.HitNormal, data:GetEntity())
    
    local shakeRadius = data:GetRadius() * data:GetRadius()
    local startDist = EyePos():DistToSqr(tr.HitPos)
    startDist = startDist - shakeRadius
    local shakeDelta = 1 - math.min(startDist / shakeRadius, 1)

    util.ScreenShake(tr.HitPos, 10 * shakeDelta, 40, 1, data:GetRadius())

	local ed = EffectData()
	ed:SetScale(5000)
	ed:SetOrigin(tr.HitPos)
	ed:SetRadius(data:GetRadius())
	ed:SetMagnitude(1000)
	ed:SetEntity(data:GetEntity())
	util.Effect("ShakeRopes", ed)

    self:SetNoDraw(true)
end

function EFFECT:Think()
    return false
end