function EFFECT:Init(data, weapon, dmgInfo, tr)
    local pos = data:GetOrigin()
    local ang = data:GetAngles()
    ParticleEffect("muzzleflash_pistol", pos, ang, nil)
    --sound.Play("COD2019.DB_Hit", data:GetOrigin(), SNDLVL_75dB, 100, 0.1)
end

function EFFECT:Think()
    return false
end

function EFFECT:Render()
end