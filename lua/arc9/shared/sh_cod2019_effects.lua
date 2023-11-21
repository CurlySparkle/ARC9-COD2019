-- Add and precache particles.
local particlefiles = {
	"mw2019_effects_fp.pcf",
	"mw2019_effects.pcf",
	"mw2019_tracer.pcf",
}

for k, v in pairs(particlefiles) do
	game.AddParticles("particles/"..v)
end

local particlenames = {
    "AC_muzzle_725_smoke_barrel",
    "AC_muzzle_smoke_barrel",
    "AC_muzzle_smoke_barrel_2",
    "mw2019_tracer",
    "mw2019_tracer_fast",
	"mw2019_tracer_slow",
	"AC_muzzle_rifle",
	"AC_muzzle_rifle_fp",
	"AC_muzzle_sniper",
	"AC_muzzle_sniper_fp",
	"AC_muzzle_pistol",
	"AC_muzzle_pistol_fp",
	"AC_muzzle_pistol_suppressed",
	"AC_muzzle_pistol_suppressed_fp",
	"AC_muzzle_shotgun",
	"AC_muzzle_shotgun_fp",
	"AC_muzzle_shotgun_db",
	"AC_muzzle_magnum",
	"AC_muzzle_desert",
	"AC_muzzle_desert_fp",
	"AC_muzzle_357",
	"AC_muzzle_357_fp",
	"AC_muzzle_sniper_heavy",
}

for k, v in pairs(particlenames) do
	PrecacheParticleSystem(v)
end