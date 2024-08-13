if CLIENT then
    killicon.Add( "arc9_cod2019_throwndrill", "vgui/killicons/cod2019_nade_he", Color(251, 85, 25, 255))
end

ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "Drill Charge"
ENT.Author = "Ahmad"
ENT.Spawnable = false

PrecacheParticleSystem("drillcharge_smoke")
