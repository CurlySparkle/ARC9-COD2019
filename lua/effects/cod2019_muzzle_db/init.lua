function EFFECT:Init(data, weapon, dmgInfo, tr)
    local pos = data:GetOrigin()
    local norm = data:GetNormal()
    ParticleEffect("AC_muzzle_shotgun_db", pos, norm:Angle())
    sound.Play("COD2019.DB_Hit", data:GetOrigin(), SNDLVL_75dB, 100, 1)
end

function EFFECT:Think()
    return false
end

function EFFECT:Render()
end