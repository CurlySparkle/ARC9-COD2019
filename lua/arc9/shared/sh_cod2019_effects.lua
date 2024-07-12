-- Add and precache particles.
local particlefiles = {
	"mw2019_effects_fp.pcf",
	"mw2019_effects.pcf",
	"mw2019_tracer.pcf",
	"mw2019_rockettrail.pcf",
	"mw2019_explosions_pak.pcf",
}

for k, v in pairs(particlefiles) do
	game.AddParticles("particles/"..v)
end

local particlenames = {
    -- "AC_muzzle_725_smoke_barrel",
    -- "AC_muzzle_smoke_barrel",
    -- "AC_muzzle_smoke_barrel_2",
    "mw2019_tracer",
    "mw2019_tracer_fast",
	"mw2019_tracer_slow",
	"mw2019_tracer_small",
	"mw2019_tracer_inc",
	"weapon_tracers_incendiary",
	-- "AC_muzzle_rifle",
	-- "AC_muzzle_rifle_fp",
	-- "AC_muzzle_sniper",
	-- "AC_muzzle_sniper_fp",
	-- "AC_muzzle_pistol",
	-- "AC_muzzle_pistol_fp",
	-- "AC_muzzle_pistol_suppressed",
	-- "AC_muzzle_pistol_suppressed_fp",
	-- "AC_muzzle_shotgun",
	-- "AC_muzzle_shotgun_suppressed",
	-- "AC_muzzle_shotgun_fp",
	-- "AC_muzzle_shotgun_db",
	-- "AC_muzzle_magnum",
	-- "AC_muzzle_desert",
	-- "AC_muzzle_desert_fp",
	-- "AC_muzzle_357",
	-- "AC_muzzle_357_fp",
	-- "AC_muzzle_sniper_heavy",
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