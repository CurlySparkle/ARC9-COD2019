function EFFECT:Init(data, weapon, dmgInfo, tr)
    local pos = data:GetOrigin()
    local ang = data:GetAngles()
    ParticleEffect("muzzleflash_slug", pos, ang, nil)
    sound.Play("COD2019.DB_Hit", pos, SNDLVL_75dB, 100, 0.1)
end

function EFFECT:Think()
    return false
end

function EFFECT:Render()
end