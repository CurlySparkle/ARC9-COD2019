local ATT = {}
-------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "8.5mm Magnum Buckshot"
ATT.CompactName = "MAG"
ATT.Icon = Material("entities/attachs/go_ammo_sg_magnum.png", "mips smooth")
ATT.Description = [[High-power buckshot load with fewer larger lead pellets.
Provides better close range power, but range and precision is worse.]]
ATT.SortOrder = 1

ATT.Category = {"cod2019_ammo_sg"}

ATT.PhysBulletMuzzleVelocityMult = 1.1
ATT.PhysBulletDragMult = 2

ATT.NumMult = 0.75
ATT.RecoilKickMult = 1.25
ATT.RecoilAutoControlMult = 0.75

ATT.DamageMaxMult = 1 / 0.75 * 1.2
ATT.DamageMinMult = 1 / 0.75

ATT.SpreadMult = 1.25

ARC9.LoadAttachment(ATT, "cod2019_ammo_sg_magnum")

-------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "3.5mm Birdshot"
ATT.CompactName = "BIRD"
ATT.Icon = Material("entities/attachs/go_ammo_sg_scatter.png", "mips smooth")
ATT.Description = [[Reduced diameter load containing more pellets.
Spread is increased, making hitting targets more likely.]]
ATT.SortOrder = 2

ATT.Category = {"cod2019_ammo_sg"}

ATT.NumMult = 2.5
ATT.SpreadMult = 1.5
ATT.NormalizeNumDamage = true

ARC9.LoadAttachment(ATT, "cod2019_ammo_sg_bird")

-------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "70mm Full-bore Slug"
ATT.CompactName = "SLUG"
ATT.Icon = Material("entities/attachs/go_ammo_sg_slug.png", "mips smooth")
ATT.Description = [[Single large projectile loaded in the shotshell.
The aerodynamic pellet has much higher effective range.]]
ATT.SortOrder = 3

ATT.Category = {"cod2019_ammo_sg"}

ATT.SpreadMult = 0.15
ATT.SpreadMultHipFire = 0.75
ATT.RangeMaxMult = 1.5

ATT.RicochetChanceOverride = 1

ATT.NumOverride = 1
ATT.NormalizeNumDamage = true


ARC9.LoadAttachment(ATT, "cod2019_ammo_sg_slug")

-------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "70mm Triple Hit Slugs"
ATT.CompactName = "TRI"
ATT.Icon = Material("entities/attachs/go_ammo_sg_triple.png", "mips smooth")
ATT.Description = [[Load containing 3 short, slug-sized pellets.
The slugs provide increased range and precision, but not as much as a full slug.]]
ATT.SortOrder = 4

ATT.Category = {"cod2019_ammo_sg"}

ATT.RangeMaxMult = 1.5
ATT.SpreadMult = 0.35

ATT.RicochetChanceOverride = 2

ATT.DamageMaxMult = 0.85
ATT.DamageMinMult = 1.25

ATT.NumOverride = 3
ATT.NormalizeNumDamage = true

ARC9.LoadAttachment(ATT, "cod2019_ammo_sg_triple")

-------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "Flechette"
ATT.CompactName = "FLE"
ATT.Icon = Material("entities/attachs/go_ammo_sg_flechette.png", "mips smooth")
ATT.Description = [[Load containing thin, dart-shaped projectiles.
Provides a tighter spread and better range as well as much higher penetration, but much lower stopping power.]]
ATT.SortOrder = 5

ATT.Category = {"cod2019_ammo_sg"}

ATT.NumOverride = 20
ATT.DamageMaxMult = 0.8
ATT.DamageMinMult = 0.8

ARC9.LoadAttachment(ATT, "cod2019_ammo_sg_flechette")

-------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "70mm \"FRAG-12\" High Explosive"
ATT.CompactName = "FRAG"
ATT.Icon = Material("entities/attachs/go_ammo_sg_he.png", "mips smooth")
ATT.Description = [[Load containing an explosive compound, dealing damage in a small radius.
Effectiveness is limited by the small caliber size.]]
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
ATT.ExplosionEffect = "csgo_muzzle_he" -- placeholder
ATT.ImpactDecal = "FadingScorch"

ATT.Override_DamageType = DMG_BLAST + DMG_AIRBOAT
ATT.DamageType = DMG_BLAST + DMG_AIRBOAT

ARC9.LoadAttachment(ATT, "cod2019_ammo_sg_frag")

-------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "10mm Rebounder Rounds"
ATT.CompactName = "RBD"
ATT.Icon = Material("entities/attachs/go_ammo_sg_magnum.png", "mips smooth")
ATT.Description = [[Load containing specialized pellets with a high chance to ricochet.
The pellet will bounce at any angle, and increases damage dramatically as it ricochets.
However, it does minimal damage on direct impact.]]
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

-------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "70mm \"FRAG-12\" High Explosive X4"
ATT.CompactName = "FRAG X4"
ATT.Icon = Material("entities/attachs/go_ammo_sg_he_x4.png", "mips smooth")
ATT.Description = [[Load containing 4 explosive rounds, deals an mid amount of damage with small radius blast.
Effectiveness is limited by the small caliber size.]]
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
ATT.ExplosionEffect = "cod2019_muzzle_he"
ATT.ImpactDecal = "FadingScorch"

ATT.DamageType = DMG_BLAST + DMG_AIRBOAT
ATT.DamageTypeOverride = DMG_BLAST + DMG_AIRBOAT

ARC9.LoadAttachment(ATT, "cod2019_ammo_sg_frag_x4")
-------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "Dragon's Breath"
ATT.CompactName = "DB"
ATT.Icon = Material("entities/attachs/cod2019_ammo_sg_db.png", "mips smooth")
ATT.Description = [[12 gauge incendiary ammunition engulfs targets in a wall of fire and sparks. 3000 °F magnesium shards torch enemies, dealing heavy damage over time while ignited.]]
ATT.SortOrder = 9

ATT.Category = {"cod2019_ammo_sg"}

ATT.ExplosionEffect = "AC_muzzle_shotgun_db"
ATT.ImpactDecal = "Dark"
ATT.ImpactEffect = "cod2019_muzzle_he"

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
            ent:Ignite(1, 0)
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