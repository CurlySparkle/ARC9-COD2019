ENT.Category = "ShadowMoly"
ENT.Type = "anim"
ENT.Base = "base_gmodentity"

ENT.PrintName = "Molotov Cocktail"
ENT.Spawnable = false

game.AddParticles("particles/sdrk_molotov.pcf")
PrecacheParticleSystem( "weapon_molotov_thrown" )
PrecacheParticleSystem( "incen_fire_pool" )