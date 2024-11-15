local ATT = {}
//////////////////////////////////////////////// -- Ammo Types
/////////////////////////// -- Shared
local warzonestats = GetConVar("arc9_mw19_stats_warzone"):GetBool() -- Warzone Stat Variable

//////////////////////////////////////////////// -- General Ammo Types
/////////////////////////// -- cod2019_ammo_ap
ATT = {}

ATT.PrintName = "Armor Piercing Rounds"
ATT.CompactName = "AP"
ATT.Description = "Ammunition made of hard material designed to pierce armor.\nHigh penetrating capabilities, but wounding potential is reduced."
ATT.SortOrder = 0

ATT.Icon = Material("entities/attachs/cod2019_ammo_tmj.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.AutoStats = true
ATT.Free = true

ATT.Category = "cod2019_ammo"

ATT.PhysBulletMuzzleVelocityMult = 1.1
ATT.DamageMaxMult = 0.9
ATT.DamageMinMult = 0.9
ATT.DamageType = DMG_AIRBOAT

ATT.PenetrationMult = 1.5
ATT.ArmorPiercingAdd = 0.3

ARC9.LoadAttachment(ATT, "cod2019_ammo_ap")

/////////////////////////// -- cod2019_ammo_hr
ATT = {}

ATT.PrintName = "High Ricochet Rounds"
ATT.CompactName = "HR"
ATT.Description = "Ammunition made of soft material designed to ricochet of surfaces.\nHigh ricochet capabilities, but less damage output."
ATT.SortOrder = 0.1

ATT.Icon = Material("entities/attachs/cod2019_ammo_ricochet.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.AutoStats = true
ATT.Free = true
ATT.Category = "cod2019_ammo"

ATT.DamageMaxMult = 0.85
ATT.DamageMinMult = 0.85

ATT.RicochetChance = 0.5

ARC9.LoadAttachment(ATT, "cod2019_ammo_hr")

/////////////////////////// -- cod2019_ammo_fra
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "Hollow Point Rounds"
ATT.CompactName = "HP"
ATT.Icon = Material("entities/attachs/cod2019_ammo_jhp.png", "mips smooth")
ATT.Description = "Ammunition with a hollow tip that expands when hitting its target, incapacitating them more easily.\nWidely used in police and civilian markets due to its inability to penetrate and ricochet."
ATT.SortOrder = 0.2

ATT.Category = "cod2019_ammo"

ATT.SpreadMult = 1.06
ATT.PhysBulletMuzzleVelocityMult = 0.9
ATT.DamageMaxMult = 1.25
ATT.DamageMinMult = 0.85
ATT.PenetrationMult = 0
ATT.ArmorPiercingMult = 0.25
ATT.RicochetChanceMult = 0

ARC9.LoadAttachment(ATT, "cod2019_ammo_fra")

/////////////////////////// -- cod2019_ammo_subsonic
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "Low Profile Rounds"
ATT.CompactName = "LP"
ATT.Icon = Material("entities/attachs/cod2019_ammo_sub.png", "mips smooth")
ATT.Description = "Ammunition that reduced powder load rounds made for easier weapon handling.\nRecoil and firing report is reduced at the cost of ballistics."
ATT.SortOrder = 0.3

ATT.Category = "cod2019_ammo"

ATT.TracerNum = 0
ATT.PhysBulletMuzzleVelocityMult = 0.85
ATT.RangeMaxMult = 0.85
ATT.PenetrationMult = 0.75
ATT.ShootVolumeMult = 0.9
ATT.RecoilMult = 0.9
ATT.VisualRecoilMult = 0.9

ARC9.LoadAttachment(ATT, "cod2019_ammo_subsonic")

/////////////////////////// -- cod2019_ammo_tracer_col
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "Weapon Color Tracer"
ATT.CompactName = "TR-WCLR"
ATT.Icon = Material("entities/attachs/cod2019_ammo_color.png", "mips smooth")
ATT.Description = "Ammunition loaded with colors matching the user's weapon (physgun) color (Pretty cool, right?)."
ATT.SortOrder = 0.4

ATT.Category = "cod2019_ammo"

ATT.TracerNum = 1
ATT.TracerEffect = "cod2019_tracer_custom"
ATT.TracerSize = 7

ATT.TracerColorHook = function(swep, col)
    if IsValid(swep:GetOwner()) and swep:GetOwner():IsPlayer() then
        local c = swep:GetOwner():GetWeaponColor():ToColor()
        local l = math.max(0.001, (0.33 * c.r + 0.5 * c.g * 0.16 * c.b) / 80)
        if l < 1 then
            c.r = (c.r + 1) / l
            c.g = (c.g + 1) / l
            c.b = (c.b + 1) / l
        end
        return c
    end
    return color_white
end

ARC9.LoadAttachment(ATT, "cod2019_ammo_tracer_col")

/////////////////////////// -- cod2019_ammo_tracer_random
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "Rainbow Color Tracer"
ATT.CompactName = "TR-R"
ATT.Icon = Material("entities/attachs/cod2019_ammo_color.png", "mips smooth")
ATT.Description = "Ammunition loaded with colors that will go randomly depending of how much you fire."
ATT.SortOrder = 0.4

ATT.Category = "cod2019_ammo"
ATT.TracerEffect = "cod2019_tracer_rainbow"

ARC9.LoadAttachment(ATT, "cod2019_ammo_tracer_random")

/////////////////////////// -- cod2019_ammo_db
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "Fire Rounds"
ATT.CompactName = "FR"
ATT.Icon = Material("entities/attachs/cod2019_ammo_db.png", "mips smooth")
ATT.Description = "Incendiary ammunition engulfs targets in a wall of fire and sparks. 3000 °F magnesium shards torch enemies, dealing heavy damage over time while ignited."
ATT.SortOrder = 0.5

ATT.Category = {"cod2019_ammo", "cod2019_ammo_special"}

ATT.ExplosionEffect = "cod2019_muzzle_inc"
--ATT.ImpactDecal = "Dark"
ATT.ImpactEffect = "cod2019_muzzle_inc"

ATT.DamageType = DMG_BURN + DMG_SLOWBURN
ATT.DamageTypeOverride = DMG_BURN + DMG_SLOWBURN

ATT.DamageMaxMult = 0.9
ATT.DamageMinMult = 0.9
ATT.RicochetChance = 0
ATT.Penetration = 0

ATT.TracerEffect = "cod2019_tracer_inc"

ATT.CustomPros = {
	[ ARC9:GetPhrase("mw19_ammo_stat_ignite_chance") ] = "25%",
}

local cov = 1 -- ??

local badblood = { -- it's actually the good type
    [-1] = true,
    [3] = true,
}

ATT.Hook_BulletImpact = function(wep,data)
    local ent = data.tr.Entity
    
    local test1 = !(ent:IsNPC() or ent:IsPlayer() or ent:IsNextBot()) and true or false
    local test2 = (!ent:GetBloodColor() or badblood[ent:GetBloodColor()]) and true or false

    if IsValid(ent) and !test1 then
        if math.Rand(0, 1) <= 0.25 then
            if vFireInstalled then
                CreateVFire(ent, data.tr.HitPos, data.tr.HitNormal, data.dmg:GetDamage() * 0.02)
            else
                ent:Ignite(2.5, 0)
            end
        end
    end

    if IsValid(ent) and (test1 or test2) then
        data.dmg:SetDamage(data.dmg:GetDamage() * cov)
        local eff = EffectData()
        eff:SetOrigin(data.tr.HitPos)
        util.Effect("cball_bounce", eff)
    end
end

ARC9.LoadAttachment(ATT, "cod2019_ammo_db")

/////////////////////////// -- cod2019_ammo_he <-- For SNIPERS Only

ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "High Explosive"
ATT.CompactName = "HE"
ATT.Icon = Material("entities/attachs/cod2019_ammo_he.png", "mips smooth")
ATT.Description = "Explosive ammunition that sacrifice direct damage in favor of dealing damage in a radius around the impact point.\nThe effect is spectacular, but little explosive filler can be put inside most bullets."
ATT.SortOrder = 0.6

ATT.Category = {"cod2019_ammo_sniper","cod2019_ammo_special"}

ATT.RicochetChance = 0
ATT.Penetration = 0

ATT.PhysBulletGravityMult = 3
ATT.PhysBulletMuzzleVelocityMult = 0.75
ATT.DamageMaxOverride = 100
ATT.DamageMinOverride = 75
ATT.ExplosionRadiusOverride = 100
ATT.ExplosionDamageOverride = 200
ATT.ExplosionEffect = "cod2019_muzzle_he" -- placeholder

ATT.ImpactDecal = "Dark"

ATT.Override_DamageType = DMG_BLAST + DMG_AIRBOAT
ATT.DamageType = DMG_BLAST + DMG_AIRBOAT

ARC9.LoadAttachment(ATT, "cod2019_ammo_he")

//////////////////////////////////////////////// -- Shotgun Ammo
/////////////////////////// -- cod2019_ammo_sg_magnum
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "8.5mm Magnum Buckshot"
ATT.CompactName = "MAG"
ATT.Icon = Material("entities/attachs/cod2019_ammo_sg_magnum.png", "mips smooth")
ATT.Description = "High-power buckshot load with fewer larger lead pellets.\nProvides better close range power, but range and precision is worse."
ATT.SortOrder = 1

ATT.Category = {"cod2019_ammo_sg"}

ATT.PhysBulletMuzzleVelocityMult = 1.1
ATT.PhysBulletDragMult = 2

ATT.NumMult = 0.75

ATT.RecoilKickMult = 1.25
ATT.RecoilAutoControlMult = 0.75

ATT.SpreadMult = 1.25

ATT.DamageMaxMult = 1 / 0.75 * 1.2
ATT.DamageMinMult = 1 / 0.75

ARC9.LoadAttachment(ATT, "cod2019_ammo_sg_magnum")

/////////////////////////// -- cod2019_ammo_sg_slug

ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "70mm Full-bore Slug"
ATT.CompactName = "SLUG"
ATT.Icon = Material("entities/attachs/cod2019_ammo_sg_slug.png", "mips smooth")
ATT.Description = "Single large projectile loaded in the shotshell.\nThe aerodynamic pellet has much higher effective range."
ATT.SortOrder = 3

ATT.Category = {"cod2019_ammo_sg"}

ATT.SpreadMult = 0.85
ATT.SpreadMultSights = 0.25

ATT.RangeMaxMult = 1.5

ATT.NumOverride = 1
ATT.RicochetChanceAdd = 1
ATT.ImpactForceMult = 5

ATT.DamageMinMult = 2.5
ATT.DamageMaxMult = 2.5

ATT.NoAimAssist = true

if !warzonestats then -- Regular Stats
	ATT.BodyDamageMults = {
		[HITGROUP_HEAD] = 2,
		[HITGROUP_CHEST] = 1.75,
		[HITGROUP_STOMACH] = 1.5,
		[HITGROUP_LEFTARM] = 1,
		[HITGROUP_RIGHTARM] = 1,
		[HITGROUP_LEFTLEG] = 1,
		[HITGROUP_RIGHTLEG] = 1,
	}
else -- Warzone Stats
	ATT.BodyDamageMults = {
		[HITGROUP_HEAD] = 1.2,
		[HITGROUP_CHEST] = 0.9,
		[HITGROUP_STOMACH] = 0.75,
		[HITGROUP_LEFTARM] = 0.5,
		[HITGROUP_RIGHTARM] = 0.5,
		[HITGROUP_LEFTLEG] = 0.5,
		[HITGROUP_RIGHTLEG] = 0.5,
	}
end

ATT.MuzzleParticle = "muzzleflash_slug"
ATT.MuzzleParticleSilenced = "AC_muzzle_shotgun_suppressed"
--ATT.ShootEnt = "arc9_cod2019_proj_slug"
--ATT.ShootEntForce = 3000

ARC9.LoadAttachment(ATT, "cod2019_ammo_sg_slug")

/////////////////////////// -- cod2019_ammo_sg_flechette
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "Flechette"
ATT.CompactName = "FLE"
ATT.Icon = Material("entities/attachs/cod2019_ammo_sg_flechette.png", "mips smooth")
ATT.Description = "Load containing thin, dart-shaped projectiles.\nProvides a tighter spread and better range as well as much higher penetration, but much lower stopping power."
ATT.SortOrder = 5

ATT.Category = {"cod2019_ammo_sg"}

ATT.NumAdd = 8

ATT.DamageMaxMult = 0.85
ATT.DamageMinMult = 0.85

ATT.RangeMinMult = 1.15
ATT.RangeMaxMult = 1.15

ARC9.LoadAttachment(ATT, "cod2019_ammo_sg_flechette")

/////////////////////////// -- cod2019_ammo_sg_col
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "Weapon Color Tracer"
ATT.CompactName = "TR-WCLR"
ATT.Icon = Material("entities/attachs/cod2019_ammo_sg_tracer.png", "mips smooth")
ATT.Description = "Ammunition loaded with colors matching the user's weapon (physgun) color (Pretty cool, right?)."
ATT.SortOrder = 0.4

ATT.Category = "cod2019_ammo_sg"

ATT.TracerEffect = "cod2019_tracer_custom"
ATT.TracerSize = 10
ATT.TracerSpeed = 15000

ATT.TracerColorHook = function(swep, col)
    if IsValid(swep:GetOwner()) and swep:GetOwner():IsPlayer() then
        local c = swep:GetOwner():GetWeaponColor():ToColor()
        local l = math.max(0.001, (0.33 * c.r + 0.5 * c.g * 0.16 * c.b) / 80)
        if l < 1 then
            c.r = (c.r + 1) / l
            c.g = (c.g + 1) / l
            c.b = (c.b + 1) / l
        end
        return c
    end
    return color_white
end

ARC9.LoadAttachment(ATT, "cod2019_ammo_sg_col")

/////////////////////////// -- cod2019_ammo_sg_frag
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "\"FRAG-12\" High Explosive"
ATT.CompactName = "FRAG"
ATT.Icon = Material("entities/attachs/cod2019_ammo_sg_he.png", "mips smooth")
ATT.Description = "Load containing an explosive compound, dealing damage in a small radius.\nEffectiveness is limited by the small caliber size."
ATT.SortOrder = 6

ATT.Category = {"cod2019_ammo_sg"}

ATT.NumOverride = 1

ATT.SpreadMult = 0.3

ATT.PhysBulletGravityMult = 3
ATT.PhysBulletMuzzleVelocityMult = 0.75

ATT.DamageMaxOverride = 35
ATT.DamageMinOverride = 10

ATT.ExplosionRadiusOverride = 75
ATT.ExplosionDamageOverride = 80
ATT.ExplosionEffect = "cod2019_muzzle_he" -- placeholder
ATT.ImpactDecal = "Dark"

ATT.Override_DamageType = DMG_BLAST + DMG_AIRBOAT
ATT.DamageType = DMG_BLAST + DMG_AIRBOAT

ATT.MuzzleParticle = "muzzleflash_M3"
ATT.MuzzleParticleSilenced = "AC_muzzle_shotgun_suppressed"

ATT.NoAimAssist = true

ARC9.LoadAttachment(ATT, "cod2019_ammo_sg_frag")

/////////////////////////// -- cod2019_ammo_sg_rebounder
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "10mm Rebounder Rounds"
ATT.CompactName = "RBD"
ATT.Icon = Material("entities/attachs/cod2019_ammo_sg_magnum.png", "mips smooth")
ATT.Description = "Load containing specialized pellets with a high chance to ricochet.\nThe pellet will bounce at any angle, and increases damage dramatically as it ricochets.\nHowever, it does minimal damage on direct impact."
ATT.SortOrder = 7

ATT.Category = {"cod2019_ammo_sg"}

ATT.DamageMinOverride = 12
ATT.DamageMaxOverride = 12
ATT.NumOverride = 6

ATT.RicochetChanceOverride = 2
ATT.RicochetAngleMaxOverride = 180
ATT.PenetrationDelta = 4
ATT.RicochetSeeking = true
ATT.RicochetSeekingRange = 1024
ATT.RicochetSeekingAngle = 45

ATT.TracerColor = Color(255, 255, 255, 150)
ATT.TracerSizeAdd = -0.5

ARC9.LoadAttachment(ATT, "cod2019_ammo_sg_rebounder")

/////////////////////////// -- cod2019_ammo_sg_frag_x4
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "\"FRAG-12\" High Explosive X4"
ATT.CompactName = "FRAG X4"
ATT.Icon = Material("entities/attachs/cod2019_ammo_sg_he_x4.png", "mips smooth")
ATT.Description = "Load containing 4 explosive rounds, deals an mid amount of damage with small radius blast.\nEffectiveness is limited by the small caliber size."
ATT.SortOrder = 8

ATT.Category = {"cod2019_ammo_sg"}

ATT.NumOverride = 4

ATT.SpreadMult = 1
ATT.SpreadMultCrouch = 0.5

ATT.PhysBulletGravityMult = 3
ATT.PhysBulletMuzzleVelocityMult = 0.75

ATT.DamageMaxOverride = 15
ATT.DamageMinOverride = 10

ATT.ExplosionRadiusOverride = 65
ATT.ExplosionDamageOverride = 25
ATT.ExplosionEffect = "cod2019_muzzle_he" -- placeholder
ATT.ImpactDecal = "FadingScorch"

ATT.MuzzleParticle = "muzzleflash_M3"
ATT.MuzzleParticleSilenced = "AC_muzzle_shotgun_suppressed"

ATT.DamageType = DMG_BLAST + DMG_AIRBOAT
ATT.DamageTypeOverride = DMG_BLAST + DMG_AIRBOAT

ATT.NoAimAssist = true

ARC9.LoadAttachment(ATT, "cod2019_ammo_sg_frag_x4")

/////////////////////////// -- cod2019_ammo_hr
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "Dragon's Breath"
ATT.CompactName = "DB"
ATT.Icon = Material("entities/attachs/cod2019_ammo_sg_db.png", "mips smooth")
ATT.Description = "12 gauge incendiary ammunition engulfs targets in a wall of fire and sparks. 3000 °F magnesium shards torch enemies, dealing heavy damage over time while ignited."
ATT.SortOrder = 9

ATT.Category = {"cod2019_ammo_sg"}

ATT.ExplosionEffect = "cod2019_muzzle_db"
ATT.ImpactDecal = "Dark"
ATT.ImpactEffect = "cod2019_muzzle_he"

ATT.MuzzleParticle = "muzzleflash_shotgun"
ATT.MuzzleParticleSilenced = "AC_muzzle_shotgun_suppressed"
ATT.TracerEffect = "cod2019_tracer_inc"

ATT.DamageType = DMG_BURN + DMG_SLOWBURN
ATT.DamageTypeOverride = DMG_BURN + DMG_SLOWBURN

ATT.DamageMaxMult = 0.9
ATT.DamageMinMult = 0.9

local cov = 1 -- ??

local badblood = { -- it's actually the good type
    [-1] = true,
    [3] = true,
}

ATT.Hook_BulletImpact = function(wep,data)
    local ent = data.tr.Entity
    
    local test1 = !(ent:IsNPC() or ent:IsPlayer() or ent:IsNextBot()) and true or false
    local test2 = (!ent:GetBloodColor() or badblood[ent:GetBloodColor()]) and true or false

    if IsValid(ent) and !test1 then
        if vFireInstalled then
            CreateVFire(ent, data.tr.HitPos, data.tr.HitNormal, data.dmg:GetDamage() * 0.02)
        else
            ent:Ignite(1.5, 0)
        end
    end

    if IsValid(ent) and (test1 or test2) then
        data.dmg:SetDamage(data.dmg:GetDamage() * cov)
        local eff = EffectData()
        eff:SetOrigin(data.tr.HitPos)
        util.Effect("cball_bounce", eff)
    end
end

ARC9.LoadAttachment(ATT, "cod2019_ammo_sg_db")

//////////////////////////////////////////////// -- Crossbow Bolts
/////////////////////////// -- cod2019_ammo_crossbow_rock
ATT = {}

ATT.PrintName = "Rock Bolt"
ATT.CompactName = "RB"
ATT.Description = "Changes the bolt type to fire a singular but yet \"powerful\" rock.\n(Quite a stoner if you ask me...)"
ATT.SortOrder = 0

ATT.Icon = Material("entities/arc9_cod2019_nade_rock.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.AutoStats = true
ATT.Free = true

ATT.ShootEnt = "arc9_cod2019_thrownrock"
ATT.ActivateElements = {"bolt_rock"}
ATT.Category = {"cod2019_ammo_crossbow"}

ARC9.LoadAttachment(ATT, "cod2019_ammo_crossbow_rock")

//////////////////////////////////////////////// -- Launcher Ammo Types
//////////////////////////////////// -- MGL-32
/////////////////////////// -- cod2019_ammo_gl_rock
ATT = {}

ATT.PrintName = "Rock Nade"
ATT.CompactName = "Rock"
ATT.Description = "Changes the nade type to fire a singular but yet \"powerful\" rock\n(Quite a stoner, if you ask me)."
ATT.SortOrder = 0

ATT.Icon = Material("entities/attachs/cod2019_ammo_gl_rock.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.AutoStats = true

ATT.ActivateElements = {"nades_rock"}
ATT.Free = true

ATT.ShootEnt = "arc9_cod2019_thrownrock"
ATT.Category = {"cod2019_ammo_gl"}

ARC9.LoadAttachment(ATT, "cod2019_ammo_gl_rock")

/////////////////////////// -- cod2019_ammo_gl_flash
ATT = {}

ATT.PrintName = "Flash Nade"
ATT.CompactName = "Flash"
ATT.Description = "Changes the nade type to fire a flashing type nade.\n(Better watch your eyes with this one)"
ATT.SortOrder = 0.5

ATT.Icon = Material("entities/attachs/cod2019_ammo_gl_flash.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.AutoStats = true
ATT.Free = true

ATT.ShootEnt = "arc9_cod2019_proj_40mm_flash"
ATT.Category = {"cod2019_ammo_gl"}

ARC9.LoadAttachment(ATT, "cod2019_ammo_gl_flash")

/////////////////////////// -- cod2019_ammo_gl_inc
ATT = {}

ATT.PrintName = "Napalm Nade"
ATT.CompactName = "Napalm"
ATT.Description = "Changes the nade type to a fire type napalm nade that creates an AoE on impact."
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/cod2019_ammo_gl_fire.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.AutoStats = true
ATT.Free = true

ATT.ShootEnt = "arc9_cod2019_proj_40mm_inc"
ATT.Category = {"cod2019_ammo_gl"}

ARC9.LoadAttachment(ATT, "cod2019_ammo_gl_inc")

/////////////////////////// -- cod2019_ammo_gl_smoke
ATT = {}

ATT.PrintName = "Smoke Nade"
ATT.CompactName = "Smoke"
ATT.Description = "Changes the nade type to fire a smoking type nade."
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/cod2019_ammo_gl_smoke.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.AutoStats = true
ATT.Free = true

ATT.ShootEnt = "arc9_cod2019_proj_40mm_smoke"
ATT.Category = {"cod2019_ammo_gl"}

ARC9.LoadAttachment(ATT, "cod2019_ammo_gl_smoke")

/////////////////////////// -- cod2019_ammo_gl_gas
ATT = {}

ATT.PrintName = "Gas Nade"
ATT.CompactName = "Gas"
ATT.Description = "Changes the nade type to fire a gas type nade that can cover a section of an area."
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/cod2019_ammo_gl_gas.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.AutoStats = true
ATT.Free = true

ATT.ShootEnt = "arc9_cod2019_proj_40mm_gas"
ATT.Category = {"cod2019_ammo_gl"}

ARC9.LoadAttachment(ATT, "cod2019_ammo_gl_gas")

/////////////////////////// -- cod2019_ammo_gl_sticky
ATT = {}

ATT.PrintName = "Stick Nade"
ATT.CompactName = "Sticky"
ATT.Description = "Changes the nade type to a stocky type nade that sticks to surfaces before exploding."
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/cod2019_ammo_gl_slug.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.AutoStats = true
ATT.Free = true

ATT.ShootEnt = "arc9_cod2019_proj_40mm_sticky"
ATT.Category = {"cod2019_ammo_gl"}

ARC9.LoadAttachment(ATT, "cod2019_ammo_gl_sticky")

/////////////////////////// -- cod2019_ammo_gl_mine
ATT = {}

ATT.PrintName = "Mine Nade"
ATT.CompactName = "Mine"
ATT.Description = "Changes the nade type to a mine charge type that sticks to surfaces and explode by a proximity."
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/cod2019_ammo_gl_mine.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.AutoStats = true
ATT.Free = true

ATT.ShootEnt = "arc9_cod2019_proj_40mm_mine"
ATT.Category = {"cod2019_ammo_gl"}

ARC9.LoadAttachment(ATT, "cod2019_ammo_gl_mine")

/////////////////////////// -- cod2019_ammo_gl_energy
ATT = {}

ATT.PrintName = "Energy Nade"
ATT.CompactName = "Energy"
ATT.Description = "Changes the nade type to an energy type nade that explodes with disintegration effects."
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/cod2019_ammo_gl_energy.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.AutoStats = true
ATT.Free = true

ATT.ShootEnt = "arc9_cod2019_proj_40mm_energy"
ATT.Category = {"cod2019_ammo_gl"}

ARC9.LoadAttachment(ATT, "cod2019_ammo_gl_energy")

/////////////////////////// -- cod2019_ammo_gl_seeker
ATT = {}

ATT.PrintName = "Seeker Nade"
ATT.CompactName = "Seeker"
ATT.Description = [[Changes the nade type to a Seeker type mini rocket that can lock into enemies while aiming.
The rocket must travel a certain distance to arm itself, or else it won't explode. The unexploded rocket can still deal damage.

(Based and Inspired by the Seeker Six from Killing Floor.)]]
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/cod2019_ammo_gl_seeker.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.AutoStats = true
ATT.Free = true

ATT.ShootEnt = "arc9_cod2019_proj_40mm_seeker"
ATT.Category = {"cod2019_ammo_gl"}

ATT.Firemodes = {
    {
        Mode = 1,
        PrintName = ARC9:GetPhrase("mw19_firemode_lockon") .. " / " .. ARC9:GetPhrase("mw19_firemode_unguided"),
        LockAttack = true
    },
}

ARC9.LoadAttachment(ATT, "cod2019_ammo_gl_seeker")

/////////////////////////// -- cod2019_ammo_gl_slug
ATT = {}

ATT.PrintName = "Slug Nade"
ATT.CompactName = "Slug"
ATT.Description = "Changes the nade type to fire a slug."
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/cod2019_ammo_gl_slug.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.AutoStats = true
ATT.Free = true

ATT.ShootSound = "COD2019.Model680.Fire"
ATT.ShootSoundIndoor = "COD2019.Model680.Fire"

ATT.ShootEnt = false
ATT.Category = {"cod2019_ammo_gl"}

ATT.DamageMax = 47
ATT.DamageMin = 16
ATT.Num = 1
ATT.RangeMin = 15 / ARC9.HUToM
ATT.RangeMax = 20 / ARC9.HUToM
ATT.Penetration = 5 -- Units of wood that can be penetrated by this gun.
ATT.ImpactForce = 8.5
ATT.SpreadMult = 0.85
ATT.SpreadMultSights = 0.25
ATT.NoAimAssist = true

if !warzonestats then -- Regular Stats
	ATT.BodyDamageMults = {
		[HITGROUP_HEAD] = 2,
		[HITGROUP_CHEST] = 1.75,
		[HITGROUP_STOMACH] = 1.5,
		[HITGROUP_LEFTARM] = 1,
		[HITGROUP_RIGHTARM] = 1,
		[HITGROUP_LEFTLEG] = 1,
		[HITGROUP_RIGHTLEG] = 1,
	}
else -- Warzone Stats
	ATT.BodyDamageMults = {
		[HITGROUP_HEAD] = 1.2,
		[HITGROUP_CHEST] = 0.9,
		[HITGROUP_STOMACH] = 0.75,
		[HITGROUP_LEFTARM] = 0.5,
		[HITGROUP_RIGHTARM] = 0.5,
		[HITGROUP_LEFTLEG] = 0.5,
		[HITGROUP_RIGHTLEG] = 0.5,
	}
end

ATT.MuzzleParticle = "muzzleflash_slug"
ATT.TracerEffect = "arc9_tracer"
ATT.TracerSize = 15
ATT.TracerNum = 1
ATT.TracerNumUBGL = 1

ARC9.LoadAttachment(ATT, "cod2019_ammo_gl_slug")

/////////////////////////// -- cod2019_ammo_gl_buck
ATT = {}

ATT.PrintName = "Buck Nade"
ATT.CompactName = "Buck"
ATT.Description = "Changes the nade type to a flat-top grenade firing pellets like shotgun spread."
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/cod2019_ammo_gl_buck.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.AutoStats = true
ATT.Free = true

ATT.ShootSound = "COD2019.Model680.Fire"
ATT.ShootSoundIndoor = "COD2019.Model680.Fire"

ATT.ShootEnt = false
ATT.Category = {"cod2019_ammo_gl"}

ATT.DamageMax = 47
ATT.DamageMin = 16
ATT.Num = 8
ATT.RangeMin = 15 / ARC9.HUToM
ATT.RangeMax = 20 / ARC9.HUToM
ATT.Penetration = 0 -- Units of wood that can be penetrated by this gun.
ATT.ImpactForce = 8.5
ATT.SpreadMult = 2.85
ATT.SpreadAddSights = 0.05
ATT.RecoilMult = 3
ATT.RecoilKickMult = 3
ATT.NoAimAssist = true

if !warzonestats then -- Regular Stats
	ATT.BodyDamageMults = {
		[HITGROUP_HEAD] = 2,
		[HITGROUP_CHEST] = 1.75,
		[HITGROUP_STOMACH] = 1.5,
		[HITGROUP_LEFTARM] = 1,
		[HITGROUP_RIGHTARM] = 1,
		[HITGROUP_LEFTLEG] = 1,
		[HITGROUP_RIGHTLEG] = 1,
	}
else -- Warzone Stats
	ATT.BodyDamageMults = {
		[HITGROUP_HEAD] = 1.2,
		[HITGROUP_CHEST] = 0.9,
		[HITGROUP_STOMACH] = 0.75,
		[HITGROUP_LEFTARM] = 0.5,
		[HITGROUP_RIGHTARM] = 0.5,
		[HITGROUP_LEFTLEG] = 0.5,
		[HITGROUP_RIGHTLEG] = 0.5,
	}
end

ATT.MuzzleParticle  = "muzzleflash_slug"
ATT.TracerEffect = "arc9_tracer"
ATT.TracerSize = 15
ATT.TracerNum = 1

ATT.ShootPosOffset = Vector(0, 0, 0)
ATT.ShootPosOffsetSights = Vector(0, 0, 0)

ARC9.LoadAttachment(ATT, "cod2019_ammo_gl_buck")

//////////////////////////////////// -- RPG-7 Ammo
/////////////////////////// -- cod2019_ammo_rpg_shovel
ATT = {}

ATT.PrintName = "Shovel"
ATT.CompactName = "Shovel"
ATT.Description = "Changes the rocket to a shovel."
ATT.SortOrder = 0

ATT.Icon = Material("entities/attachs/cod2019_ammo_rpg_shovel.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.AutoStats = true

ATT.ActivateElements = {"rocket_shovel"}
ATT.Free = true

ATT.ShootEnt = "arc9_cod2019_proj_rpg_shovel"
ATT.Category = {"cod2019_rpg_ammo"}

ARC9.LoadAttachment(ATT, "cod2019_ammo_rpg_rock")
/////////////////////////// -- cod2019_ammo_rpg_harpoon
ATT = {}

ATT.PrintName = "Harpoon"
ATT.CompactName = "Harpoon"
ATT.Description = "Changes the rocket to a harpoon type."
ATT.SortOrder = 0

ATT.Icon = Material("entities/attachs/cod2019_ammo_rpg_harpoon.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.AutoStats = true

ATT.ActivateElements = {"rocket_harpoon"}
ATT.Free = true

ATT.ShootEnt = "arc9_cod2019_proj_rpg_harpoon"
ATT.Category = {"cod2019_rpg_ammo"}

ARC9.LoadAttachment(ATT, "cod2019_ammo_rpg_harpoon")

//////////////////////////////////// -- PILA Ammo
/////////////////////////// -- cod2019_pila_ammo_guided
ATT = {}

ATT.PrintName = "Guided Rocket"
ATT.CompactName = "Guided"
ATT.Description = "Changes the rocket type with a guiding mechanic."
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/cod2019_ammo_launcher_guide.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.AutoStats = true
ATT.Free = true

ATT.ShootEnt = "arc9_cod2019_proj_jokr_saclos"
ATT.Category = {"cod2019_pila_ammo"}

ATT.Firemodes = {
    {
        Mode = 1,
        PrintName = ARC9:GetPhrase("mw19_firemode_guided"),
        TopAttack = false
    },
}

ARC9.LoadAttachment(ATT, "cod2019_pila_ammo_guided")

//////////////////////////////////// -- JOKR Ammo
/////////////////////////// -- cod2019_jokr_ammo_guided
ATT = {}

ATT.PrintName = "Guided Rocket"
ATT.CompactName = "Guided"
ATT.Description = "Changes the rocket type with a guiding mechanic."
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/cod2019_ammo_launcher_guide.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.AutoStats = true
ATT.Free = true

ATT.ShootEnt = "arc9_cod2019_proj_jokr_saclos"
ATT.Category = {"cod2019_jokr_ammo"}

ATT.Firemodes = {
    {
        Mode = 1,
        PrintName = ARC9:GetPhrase("mw19_firemode_guided"),
        TopAttack = false
    },
}

ARC9.LoadAttachment(ATT, "cod2019_jokr_ammo_guided")

/////////////////////////// -- cod2019_jokr_ammo_airstrike
ATT = {}

ATT.PrintName = "Cluster Rocket"
ATT.CompactName = "Cluster"
ATT.Description = "Rocket splits into 4 seeking mini-rockets when near the target."
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/cod2019_ammo_launcher_cluster.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.AutoStats = true
ATT.Free = true

ATT.ShootEnt = "arc9_cod2019_proj_jokr_airstrike"
ATT.Category = {"cod2019_jokr_ammo"}

ARC9.LoadAttachment(ATT, "cod2019_jokr_ammo_airstrike")

//////////////////////////////////// -- M203 UBGL (Duplicate from MGL-32)
/////////////////////////// -- cod2019_ammo_ubgl_rock
ATT = {}

ATT.PrintName = "Rock Nade"
ATT.CompactName = "Rock"
ATT.Description = "Changes the nade type to fire a singular but yet \"powerful\" rock\n(Quite a stoner, if you ask me)."
ATT.SortOrder = 0

ATT.Icon = Material("entities/attachs/cod2019_ammo_gl_rock.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.AutoStats = true

ATT.ActivateElements = {"nades_rock"}
ATT.Free = true

ATT.ShootEntUBGL = "arc9_cod2019_thrownrock"
ATT.Category = {"cod2019_ammo_ubgl"}

ARC9.LoadAttachment(ATT, "cod2019_ammo_ubgl_rock")

/////////////////////////// -- cod2019_ammo_ubgl_flash
ATT = {}

ATT.PrintName = "Flash Nade"
ATT.CompactName = "Flash"
ATT.Description = "Changes the nade type to fire a flashing type nade.\n(Better watch your eyes with this one)"
ATT.SortOrder = 0.5

ATT.Icon = Material("entities/attachs/cod2019_ammo_gl_flash.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.AutoStats = true
ATT.Free = true

ATT.ShootEntUBGL = "arc9_cod2019_proj_40mm_flash"
ATT.Category = {"cod2019_ammo_ubgl"}

ARC9.LoadAttachment(ATT, "cod2019_ammo_ubgl_flash")

/////////////////////////// -- cod2019_ammo_ubgl_inc
ATT = {}

ATT.PrintName = "Napalm Nade"
ATT.CompactName = "Napalm"
ATT.Description = "Changes the nade type to a fire type napalm nade that creates an AoE on impact."
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/cod2019_ammo_gl_fire.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.AutoStats = true
ATT.Free = true

ATT.ShootEntUBGL = "arc9_cod2019_proj_40mm_inc"
ATT.Category = {"cod2019_ammo_ubgl"}

ARC9.LoadAttachment(ATT, "cod2019_ammo_ubgl_inc")

/////////////////////////// -- cod2019_ammo_ubgl_smoke
ATT = {}

ATT.PrintName = "Smoke Nade"
ATT.CompactName = "Smoke"
ATT.Description = "Changes the nade type to fire a smoking type nade."
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/cod2019_ammo_gl_smoke.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.AutoStats = true
ATT.Free = true

ATT.ShootEntUBGL = "arc9_cod2019_proj_40mm_smoke"
ATT.Category = {"cod2019_ammo_ubgl"}

ARC9.LoadAttachment(ATT, "cod2019_ammo_ubgl_smoke")

/////////////////////////// -- cod2019_ammo_ubgl_gas
ATT = {}

ATT.PrintName = "Gas Nade"
ATT.CompactName = "Gas"
ATT.Description = "Changes the nade type to fire a gas type nade that can cover a section of an area."
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/cod2019_ammo_gl_gas.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.AutoStats = true
ATT.Free = true

ATT.ShootEntUBGL = "arc9_cod2019_proj_40mm_gas"
ATT.Category = {"cod2019_ammo_ubgl"}

ARC9.LoadAttachment(ATT, "cod2019_ammo_ubgl_gas")

/////////////////////////// -- cod2019_ammo_ubgl_sticky
ATT = {}

ATT.PrintName = "Stick Nade"
ATT.CompactName = "Sticky"
ATT.Description = "Changes the nade type to a stocky type nade that sticks to surfaces before exploding."
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/cod2019_ammo_gl_slug.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.AutoStats = true
ATT.Free = true

ATT.ShootEntUBGL = "arc9_cod2019_proj_40mm_sticky"
ATT.Category = {"cod2019_ammo_ubgl"}

ARC9.LoadAttachment(ATT, "cod2019_ammo_ubgl_sticky")

/////////////////////////// -- cod2019_ammo_ubgl_mine
ATT = {}

ATT.PrintName = "Mine Nade"
ATT.CompactName = "Mine"
ATT.Description = "Changes the nade type to a mine charge type that sticks to surfaces and explode by a proximity."
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/cod2019_ammo_gl_mine.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.AutoStats = true
ATT.Free = true

ATT.ShootEntUBGL = "arc9_cod2019_proj_40mm_mine"
ATT.Category = {"cod2019_ammo_ubgl"}

ARC9.LoadAttachment(ATT, "cod2019_ammo_ubgl_mine")

/////////////////////////// -- cod2019_ammo_ubgl_energy
ATT = {}

ATT.PrintName = "Energy Nade"
ATT.CompactName = "Energy"
ATT.Description = "Changes the nade type to an energy type nade that explodes with disintegration effects."
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/cod2019_ammo_gl_energy.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.AutoStats = true
ATT.Free = true

ATT.ShootEntUBGL = "arc9_cod2019_proj_40mm_energy"
ATT.Category = {"cod2019_ammo_ubgl"}

ARC9.LoadAttachment(ATT, "cod2019_ammo_ubgl_energy")

/////////////////////////// -- cod2019_ammo_ubgl_slug
ATT = {}

ATT.PrintName = "Slug Nade"
ATT.CompactName = "Slug"
ATT.Description = "Changes the nade type to fire a slug."
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/cod2019_ammo_gl_slug.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.AutoStats = true
ATT.Free = true

ATT.ShootSoundUBGL = "COD2019.Model680.Fire"
ATT.ShootSoundIndoorUBGL = "COD2019.Model680.Fire"

ATT.ShootEntUBGL = false
ATT.Category = {"cod2019_ammo_ubgl"}

ATT.DamageMaxUBGL = 47
ATT.DamageMinUBGL = 16
ATT.NumUBGL = 1
ATT.RangeMinUBGL = 15 / ARC9.HUToM
ATT.RangeMaxUBGL = 20 / ARC9.HUToM
ATT.PenetrationUBGL = 5 -- Units of wood that can be penetrated by this gun.
ATT.ImpactForceUBGL = 8.5
ATT.SpreadMultUBGL = 0.85
ATT.SpreadMultSightsUBGL = 0.25
ATT.NoAimAssistUBGL = true

ATT.CustomCrosshairUBGL = false
ATT.CrosshairHideDotUBGL = false

if !warzonestats then -- Regular Stats
	ATT.BodyDamageMultsUBGL = {
		[HITGROUP_HEAD] = 2,
		[HITGROUP_CHEST] = 1.75,
		[HITGROUP_STOMACH] = 1.5,
		[HITGROUP_LEFTARM] = 1,
		[HITGROUP_RIGHTARM] = 1,
		[HITGROUP_LEFTLEG] = 1,
		[HITGROUP_RIGHTLEG] = 1,
	}
else -- Warzone Stats
	ATT.BodyDamageMultsUBGL = {
		[HITGROUP_HEAD] = 1.2,
		[HITGROUP_CHEST] = 0.9,
		[HITGROUP_STOMACH] = 0.75,
		[HITGROUP_LEFTARM] = 0.5,
		[HITGROUP_RIGHTARM] = 0.5,
		[HITGROUP_LEFTLEG] = 0.5,
		[HITGROUP_RIGHTLEG] = 0.5,
	}
end

ATT.MuzzleParticleUBGL  = "muzzleflash_slug"
--ATT.TracerEffectUBGL = "cod2019_tracer_slow"
ATT.TracerEffectUBGL = "arc9_tracer"
ATT.TracerSizeUBGL = 15
ATT.TracerNumUBGL = 1

ATT.ShootPosOffsetUBGL = Vector(0, 0, 0)
ATT.ShootPosOffsetSightsUBGL = Vector(0, 0, 0)

ARC9.LoadAttachment(ATT, "cod2019_ammo_ubgl_slug")

/////////////////////////// -- cod2019_ammo_ubgl_buck
ATT = {}

ATT.PrintName = "Buck Nade"
ATT.CompactName = "Buck"
ATT.Description = "Changes the nade type to a flat-top grenade firing pellets like shotgun spread."
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/cod2019_ammo_gl_buck.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.AutoStats = true
ATT.Free = true

ATT.ShootSoundUBGL = "COD2019.Model680.Fire"
ATT.ShootSoundIndoorUBGL = "COD2019.Model680.Fire"

ATT.ShootEntUBGL = false
ATT.Category = {"cod2019_ammo_ubgl"}

ATT.DamageMaxUBGL = 47
ATT.DamageMinUBGL = 16
ATT.NumUBGL = 8
ATT.RangeMinUBGL = 15 / ARC9.HUToM
ATT.RangeMaxUBGL = 20 / ARC9.HUToM
ATT.PenetrationUBGL = 0 -- Units of wood that can be penetrated by this gun.
ATT.ImpactForceUBGL = 8.5
ATT.SpreadMultUBGL = 2.85
ATT.SpreadMultSightsUBGL = 10
ATT.RecoilMultUBGL = 3
ATT.RecoilKickMultUBGL = 3
ATT.NoAimAssistUBGL = true

ATT.CustomCrosshairUBGL = false
ATT.CrosshairHideDotUBGL = false

if !warzonestats then -- Regular Stats
	ATT.BodyDamageMultsUBGL = {
		[HITGROUP_HEAD] = 2,
		[HITGROUP_CHEST] = 1.75,
		[HITGROUP_STOMACH] = 1.5,
		[HITGROUP_LEFTARM] = 1,
		[HITGROUP_RIGHTARM] = 1,
		[HITGROUP_LEFTLEG] = 1,
		[HITGROUP_RIGHTLEG] = 1,
	}
else -- Warzone Stats
	ATT.BodyDamageMultsUBGL = {
		[HITGROUP_HEAD] = 1.2,
		[HITGROUP_CHEST] = 0.9,
		[HITGROUP_STOMACH] = 0.75,
		[HITGROUP_LEFTARM] = 0.5,
		[HITGROUP_RIGHTARM] = 0.5,
		[HITGROUP_LEFTLEG] = 0.5,
		[HITGROUP_RIGHTLEG] = 0.5,
	}
end

ATT.MuzzleParticleUBGL  = "muzzleflash_slug"
ATT.TracerEffectUBGL = "arc9_tracer"
ATT.TracerSizeUBGL = 15
ATT.TracerNumUBGL = 1

ATT.ShootPosOffsetUBGL = Vector(0, 0, 0)
ATT.ShootPosOffsetSightsUBGL = Vector(0, 0, 0)

ATT.HasSightsUBGL = false

ARC9.LoadAttachment(ATT, "cod2019_ammo_ubgl_buck")

//////////////////////////////////////////////// -- 12-Gauge Deputy (UB Shotgun) Ammo
/////////////////////////// -- cod2019_ammo_sg_magnum
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "8.5mm Magnum Buckshot"
ATT.CompactName = "MAG"
ATT.Icon = Material("entities/attachs/cod2019_ammo_sg_magnum.png", "mips smooth")
ATT.Description = "High-power buckshot load with fewer larger lead pellets.\nProvides better close range power, but range and precision is worse."
ATT.SortOrder = 1

ATT.Category = {"cod2019_ammo_ubgl_sg"}

ATT.PhysBulletMuzzleVelocityMultUBGL = 1.1
ATT.PhysBulletDragMultUBGL = 2

ATT.NumMultUBGL = 0.75

ATT.RecoilKickMultUBGL = 1.25
ATT.RecoilAutoControlMultUBGL = 0.75

ATT.SpreadMultUBGL = 1.25

ATT.DamageMaxMultUBGL = 1 / 0.75 * 1.2
ATT.DamageMinMultUBGL = 1 / 0.75

ARC9.LoadAttachment(ATT, "cod2019_ammo_ubgl_sg_magnum")

/////////////////////////// -- cod2019_ammo_sg_slug

ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "70mm Full-bore Slug"
ATT.CompactName = "SLUG"
ATT.Icon = Material("entities/attachs/cod2019_ammo_sg_slug.png", "mips smooth")
ATT.Description = "Single large projectile loaded in the shotshell.\nThe aerodynamic pellet has much higher effective range."
ATT.SortOrder = 3

ATT.Category = {"cod2019_ammo_ubgl_sg"}

ATT.SpreadMultUBGL = 0.66

ATT.RangeMaxMultUBGL = 1.5

ATT.NumOverrideUBGL = 1
ATT.RicochetChanceAddUBGL = 1
ATT.ImpactForceMultUBGL = 5

ATT.DamageMinMultUBGL = 2.5
ATT.DamageMaxMultUBGL = 2.5

ATT.NoAimAssistUBGL = true

ATT.CustomCrosshairUBGL = false

if !warzonestats then -- Regular Stats
	ATT.BodyDamageMultsUBGL = {
		[HITGROUP_HEAD] = 2,
		[HITGROUP_CHEST] = 1.75,
		[HITGROUP_STOMACH] = 1.5,
		[HITGROUP_LEFTARM] = 1,
		[HITGROUP_RIGHTARM] = 1,
		[HITGROUP_LEFTLEG] = 1,
		[HITGROUP_RIGHTLEG] = 1,
	}
else -- Warzone Stats
	ATT.BodyDamageMultsUBGL = {
		[HITGROUP_HEAD] = 1.2,
		[HITGROUP_CHEST] = 0.9,
		[HITGROUP_STOMACH] = 0.75,
		[HITGROUP_LEFTARM] = 0.5,
		[HITGROUP_RIGHTARM] = 0.5,
		[HITGROUP_LEFTLEG] = 0.5,
		[HITGROUP_RIGHTLEG] = 0.5,
	}
end

ATT.MuzzleParticleUBGL = "muzzleflash_slug"

ARC9.LoadAttachment(ATT, "cod2019_ammo_ubgl_sg_slug")

/////////////////////////// -- cod2019_ammo_sg_flechette
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "Flechette"
ATT.CompactName = "FLE"
ATT.Icon = Material("entities/attachs/cod2019_ammo_sg_flechette.png", "mips smooth")
ATT.Description = "Load containing thin, dart-shaped projectiles.\nProvides a tighter spread and better range as well as much higher penetration, but much lower stopping power."
ATT.SortOrder = 5

ATT.Category = {"cod2019_ammo_ubgl_sg"}

ATT.NumAddUBGL = 8

ATT.DamageMaxMultUBGL = 0.85
ATT.DamageMinMultUBGL = 0.85

ATT.RangeMinMultUBGL = 1.15
ATT.RangeMaxMultUBGL = 1.15

ARC9.LoadAttachment(ATT, "cod2019_ammo_ubgl_sg_flechette")

/////////////////////////// -- cod2019_ammo_sg_col
-- ATT = {}

-- ATT.MenuCategory = "ARC9 - MW2019 Attachments"
-- ATT.PrintName = "Weapon Color Tracer"
-- ATT.CompactName = "TR-WCLR"
-- ATT.Icon = Material("entities/attachs/cod2019_ammo_sg_tracer.png", "mips smooth")
-- ATT.Description = "Ammunition loaded with colors matching the user's weapon (physgun) color (Pretty cool, right?)."
-- ATT.SortOrder = 0.4

-- ATT.Category = "cod2019_ammo_ubgl_sg"

-- ATT.TracerEffectUBGL = "cod2019_tracer_custom"
-- ATT.TracerSizeUBGL = 10
-- ATT.TracerSpeedUBGL = 15000

-- ATT.TracerColorHook = function(swep, col)
    -- if IsValid(swep:GetOwner()) and swep:GetOwner():IsPlayer() then
		-- if !self:GetOwner():GetUBGL() then return color_white end
        -- local c = swep:GetOwner():GetWeaponColor():ToColor()
        -- local l = math.max(0.001, (0.33 * c.r + 0.5 * c.g * 0.16 * c.b) / 80)
        -- if l < 1 then
            -- c.r = (c.r + 1) / l
            -- c.g = (c.g + 1) / l
            -- c.b = (c.b + 1) / l
        -- end
        -- return c
    -- end
    -- return color_white
-- end

-- ARC9.LoadAttachment(ATT, "cod2019_ammo_ubgl_sg_col")

/////////////////////////// -- cod2019_ammo_sg_frag
-- ATT = {}

-- ATT.MenuCategory = "ARC9 - MW2019 Attachments"
-- ATT.PrintName = "\"FRAG-12\" High Explosive"
-- ATT.CompactName = "FRAG"
-- ATT.Icon = Material("entities/attachs/cod2019_ammo_sg_he.png", "mips smooth")
-- ATT.Description = "Load containing an explosive compound, dealing damage in a small radius.\nEffectiveness is limited by the small caliber size."
-- ATT.SortOrder = 6

-- ATT.Category = {"cod2019_ammo_ubgl_sg"}

-- ATT.NumOverrideUBGL = 1

-- ATT.SpreadMultUBGL = 0.66

-- ATT.PhysBulletGravityMultUBGL = 3
-- ATT.PhysBulletMuzzleVelocityMultUBGL = 0.75

-- ATT.DamageMaxOverrideUBGL = 35
-- ATT.DamageMinOverrideUBGL = 10

-- ATT.ExplosionRadiusOverrideUBGL = 75
-- ATT.ExplosionDamageOverrideUBGL = 80
-- ATT.ExplosionEffectUBGL = "cod2019_muzzle_he" -- placeholder
-- ATT.ImpactDecalUBGL = "Dark"

-- ATT.Override_DamageTypeUBGL = DMG_BLAST + DMG_AIRBOAT
-- ATT.DamageTypeUBGL = DMG_BLAST + DMG_AIRBOAT

-- ATT.MuzzleParticleUBGL = "muzzleflash_M3"

-- ATT.NoAimAssistUBGL = true

-- ARC9.LoadAttachment(ATT, "cod2019_ammo_ubgl_sg_frag")

/////////////////////////// -- cod2019_ammo_sg_rebounder
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "10mm Rebounder Rounds"
ATT.CompactName = "RBD"
ATT.Icon = Material("entities/attachs/cod2019_ammo_sg_magnum.png", "mips smooth")
ATT.Description = "Load containing specialized pellets with a high chance to ricochet.\nThe pellet will bounce at any angle, and increases damage dramatically as it ricochets.\nHowever, it does minimal damage on direct impact."
ATT.SortOrder = 7

ATT.Category = {"cod2019_ammo_ubgl_sg"}

ATT.DamageMinOverrideUBGL = 12
ATT.DamageMaxOverrideUBGL = 12
ATT.NumOverrideUBGL = 6

ATT.RicochetChanceOverrideUBGL = 2
ATT.RicochetAngleMaxOverrideUBGL = 180
ATT.PenetrationDeltaUBGL = 4
ATT.RicochetSeekingUBGL = true
ATT.RicochetSeekingRangeUBGL = 1024
ATT.RicochetSeekingAngleUBGL = 45

ATT.TracerColorUBGL = Color(255, 255, 255, 150)
ATT.TracerSizeAddUBGL = -0.5

ARC9.LoadAttachment(ATT, "cod2019_ammo_ubgl_sg_rebounder")

/////////////////////////// -- cod2019_ammo_sg_frag_x4
-- ATT = {}

-- ATT.MenuCategory = "ARC9 - MW2019 Attachments"
-- ATT.PrintName = "\"FRAG-12\" High Explosive X4"
-- ATT.CompactName = "FRAG X4"
-- ATT.Icon = Material("entities/attachs/cod2019_ammo_sg_he_x4.png", "mips smooth")
-- ATT.Description = "Load containing 4 explosive rounds, deals an mid amount of damage with small radius blast.\nEffectiveness is limited by the small caliber size."
-- ATT.SortOrder = 8

-- ATT.Category = {"cod2019_ammo_ubgl_sg"}

-- ATT.NumOverrideUBGL = 4

-- ATT.SpreadMultUBGL = 0.8

-- ATT.PhysBulletGravityMultUBGL = 3
-- ATT.PhysBulletMuzzleVelocityMultUBGL = 0.75

-- ATT.DamageMaxOverrideUBGL = 15
-- ATT.DamageMinOverrideUBGL = 10

-- ATT.ExplosionRadiusOverrideUBGL = 65
-- ATT.ExplosionDamageOverrideUBGL = 25
-- ATT.ExplosionEffectUBGL = "cod2019_muzzle_he" -- placeholder
-- ATT.ImpactDecalUBGL = "FadingScorch"

-- ATT.MuzzleParticleUBGL = "muzzleflash_M3"

-- ATT.DamageTypeUBGL = DMG_BLAST + DMG_AIRBOAT
-- ATT.DamageTypeOverrideUBGL = DMG_BLAST + DMG_AIRBOAT

-- ATT.NoAimAssistUBGL = true

-- ARC9.LoadAttachment(ATT, "cod2019_ammo_ubgl_sg_frag_x4")

/////////////////////////// -- cod2019_ammo_hr
-- ATT = {}

-- ATT.MenuCategory = "ARC9 - MW2019 Attachments"
-- ATT.PrintName = "Dragon's Breath"
-- ATT.CompactName = "DB"
-- ATT.Icon = Material("entities/attachs/cod2019_ammo_sg_db.png", "mips smooth")
-- ATT.Description = "12 gauge incendiary ammunition engulfs targets in a wall of fire and sparks. 3000 °F magnesium shards torch enemies, dealing heavy damage over time while ignited."
-- ATT.SortOrder = 9

-- ATT.Category = {"cod2019_ammo_ubgl_sg"}

-- ATT.ExplosionEffectUBGL = "cod2019_muzzle_db"
-- ATT.ImpactDecalUBGL = "Dark"
-- ATT.ImpactEffectUBGL = "cod2019_muzzle_he"

-- ATT.MuzzleParticleUBGL = "muzzleflash_shotgun"
-- ATT.TracerEffectUBGL = "cod2019_tracer_inc"

-- ATT.DamageTypeUBGL = DMG_BURN + DMG_SLOWBURN
-- ATT.DamageTypeOverrideUBGL = DMG_BURN + DMG_SLOWBURN

-- ATT.DamageMaxMultUBGL = 0.9
-- ATT.DamageMinMultUBGL = 0.9

-- local cov = 1 -- ??

-- local badblood = { -- it's actually the good type
    -- [-1] = true,
    -- [3] = true,
-- }

-- ATT.Hook_BulletImpact = function(wep,data)
    -- local ent = data.tr.Entity

    -- local test1 = !(ent:IsNPC() or ent:IsPlayer() or ent:IsNextBot()) and true or false
    -- local test2 = (!ent:GetBloodColor() or badblood[ent:GetBloodColor()]) and true or false

    -- if IsValid(ent) and !test1 then
        -- if vFireInstalled then
            -- CreateVFire(ent, data.tr.HitPos, data.tr.HitNormal, data.dmg:GetDamage() * 0.02)
        -- else
            -- ent:Ignite(1.5, 0)
        -- end
    -- end

    -- if IsValid(ent) and (test1 or test2) then
        -- data.dmg:SetDamage(data.dmg:GetDamage() * cov)
        -- local eff = EffectData()
        -- eff:SetOrigin(data.tr.HitPos)
        -- util.Effect("cball_bounce", eff)
    -- end
-- end

-- ARC9.LoadAttachment(ATT, "cod2019_ammo_ubgl_sg_db")
