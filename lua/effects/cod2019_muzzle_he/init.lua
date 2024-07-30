function EFFECT:Init(data, weapon, dmgInfo, tr)
    local pos = data:GetOrigin()
    local ang = data:GetAngles()
    ParticleEffect("muzzleflash_slug", pos, ang, nil)
    sound.Play("COD2019.HE_ExplosiveHit", pos, SNDLVL_75dB, 100, 1)
    local dynlight = DynamicLight(0)
    dynlight.Pos = pos
    dynlight.Size = 64
    dynlight.Decay = 20
    dynlight.R = 255
    dynlight.G = 150
    dynlight.B = 0
    dynlight.Brightness = 5
    dynlight.DieTime = CurTime() + 0.1
end

function EFFECT:Think()
    return false
end

function EFFECT:Render()
end