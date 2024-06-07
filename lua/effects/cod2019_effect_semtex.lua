AddCSLuaFile()

function EFFECT:Init(data)
	local dlight = DynamicLight(data:GetEntity():EntIndex())
	dlight.pos = data:GetOrigin()
	dlight.r = 255
	dlight.g = 15
	dlight.b = 15
	dlight.brightness = -1
	dlight.Decay = 1000
	dlight.Size = 256
	dlight.DieTime = CurTime() + 0.1

    sound.Play("MW19_Crossbow.ExploBeep", data:GetOrigin())
    ParticleEffectAttach("arrow_beep_flare", PATTACH_ABSORIGIN_FOLLOW, data:GetEntity(), 0)

    self:SetNoDraw(true)
end

function EFFECT:Think()
    return false
end