ENT.Base = "base_entity"
ENT.Type = "anim"

if CLIENT then
    killicon.Add( "arc9_cod2019_thrownsemtex", "vgui/killicons/cod2019_semtex", Color(251, 85, 25, 255))
end

game.AddParticles("particles/mw2019_effects.pcf")
PrecacheParticleSystem("semtex_beep_flare")

function ENT:SetupDataTables()
    self:NetworkVar("Float", 0, "LifeTime")
end

sound.Add({
    name = "Cod2019.Semtex.Beep",
    channel = CHAN_ITEM,
    volume = 1,
    level = 85,
    pitch = 100,
    sound = "weapons/cod2019/throwables/semtex/weap_semtex_beep.ogg"
}) 