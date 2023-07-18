function EFFECT:Init(data, weapon, dmgInfo, tr)
    local pos = data:GetOrigin()
    local norm = data:GetNormal()
    ParticleEffect("AC_muzzle_shotgun_db", pos, norm:Angle())
    --sound.Play("HE.ExplosiveHit", data:GetOrigin(), SNDLVL_100dB, 100, 1)
end

function EFFECT:Think()
    return false
end

function EFFECT:Render()
end