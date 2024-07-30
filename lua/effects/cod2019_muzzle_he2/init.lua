function EFFECT:Init(data, weapon, dmgInfo, tr)
    local pos = data:GetOrigin()
    local ang = data:GetAngles()
	ParticleEffect("muzzleflash_ar", pos, ang, nil)
    --sound.Play("COD2019.HE_ExplosiveHit", data:GetOrigin(), SNDLVL_75dB, 100, 1)
    local dynlight = DynamicLight(0)
    dynlight.Pos = pos
    dynlight.Size = 32
    dynlight.Decay = 20
    dynlight.R = 255
    dynlight.G = 150
    dynlight.B = 0
    dynlight.Brightness = 3
    dynlight.DieTime = CurTime() + 0.05
end

function EFFECT:Think()
    return false
end

function EFFECT:Render()
end