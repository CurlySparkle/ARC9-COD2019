-- Add and precache particles.
local particlefiles = {
	"mw2019_effects.pcf",
	"mw2019_tracer.pcf",
	"mw2019_rockettrail.pcf",
	"mw2019_explosions_pak.pcf",
}

for k, v in pairs(particlefiles) do
	game.AddParticles("particles/"..v)
end

local particlenames = {
    "mw2019_tracer",
    "mw2019_tracer_3",
    "mw2019_tracer_fast",
	"mw2019_tracer_slow",
	"mw2019_tracer_slow_new",
	"mw2019_tracer_small",
	"mw2019_tracer_small_new",
	"mw2019_tracer_inc",
	"weapon_tracers_incendiary",
	"thermite_thrown_trail",
	"smoke_thrown_trail",
	"grenadetrail",
	"rockettrail",
	"smoketrail",
	"Generic_explo_emp",
	"Generic_explo_flash",
	"Generic_explo_vhigh",
	"Generic_explo_high",
	"Generic_explo_mid",
	"Generic_explo_tiny"
}

for k, v in pairs(particlenames) do
	PrecacheParticleSystem(v)
end