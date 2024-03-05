local ATT = {}

-------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Armor Piercing Rounds"
ATT.CompactName = "AP"
ATT.Description = [[Ammunition made of hard material designed to pierce armor.
High penetrating capabilities, but wounding potential is reduced.]]
ATT.SortOrder = 0

ATT.Icon = Material("entities/attachs/cod2019_ammo_tmj.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.AutoStats = true

ATT.Free = true

ATT.Category = {"cod2019_ammo"}

ATT.PhysBulletMuzzleVelocityMult = 1.1

ATT.DamageMaxMult = 0.9
ATT.DamageMinMult = 0.9

ATT.PenetrationMult = 1.5
ATT.ArmorPiercingAdd = 0.3

ATT.DamageType = DMG_AIRBOAT

ARC9.LoadAttachment(ATT, "cod2019_ammo_ap")

-------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "High Ricochet Rounds"
ATT.CompactName = "HR"
ATT.Description = [[Ammunition made of soft material designed to ricochet of surfaces.
High ricochet capabilities, but less damage output.]]
ATT.SortOrder = 0.1

ATT.Icon = Material("entities/attachs/cod2019_ammo_ricochet.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.AutoStats = true

ATT.Free = true

ATT.Category = {"cod2019_ammo"}

ATT.DamageMaxMult = 0.85
ATT.DamageMinMult = 0.85

ATT.RicochetChance = 0.5

ARC9.LoadAttachment(ATT, "cod2019_ammo_hr")

-------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "Hollow Point Rounds"
ATT.CompactName = "HP"
ATT.Icon = Material("entities/attachs/cod2019_ammo_jhp.png", "mips smooth")
ATT.Description = [[Ammunition with a hollow tip that expands when hitting its target, incapacitating them more easily.
Widely used in police and civilian markets due to its inability to penetrate and ricochet.]]
ATT.SortOrder = 0.2

ATT.Category = {"cod2019_ammo"}

ATT.SpreadMult = 1.06
ATT.PhysBulletMuzzleVelocityMult = 0.9

ATT.DamageMaxMult = 1.25
ATT.DamageMinMult = 0.85

ATT.PenetrationMult = 0
ATT.RicochetChanceMult = 0
ATT.ArmorPiercingMult = 0.25

ARC9.LoadAttachment(ATT, "cod2019_ammo_fra")

-------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "Low Profile Rounds"
ATT.CompactName = "LP"
ATT.Icon = Material("entities/attachs/cod2019_ammo_sub.png", "mips smooth")
ATT.Description = [[Ammunition that reduced powder load rounds made for easier weapon handling.
Recoil and firing report is reduced at the cost of ballistics.]]
ATT.SortOrder = 0.3

ATT.Category = {"cod2019_ammo"}

ATT.PhysBulletMuzzleVelocityMult = 0.85

ATT.RangeMaxMult = 0.85

ATT.PenetrationMult = 0.75

ATT.ShootVolumeMult = 0.9

ATT.TracerNum = 0

ATT.RecoilMult = 0.9
ATT.VisualRecoilMult = 0.9

ARC9.LoadAttachment(ATT, "cod2019_ammo_subsonic")

-------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "Weapon Color Tracer"
ATT.CompactName = "TR-WCLR"
ATT.Icon = Material("entities/attachs/cod2019_ammo_color.png", "mips smooth")
ATT.Description = [[Ammunition loaded with colors matching the user's weapon (physgun) color (Pretty cool, right?).]]
ATT.SortOrder = 0.4

ATT.Category = {"cod2019_ammo"}

ATT.TracerNum = 1
ATT.TracerSizeAdd = 1
ATT.AlwaysPhysBullet = true
ATT.NeverPhysBullet = false

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

-------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "Fire Rounds"
ATT.CompactName = "FR"
ATT.Icon = Material("entities/attachs/cod2019_ammo_db.png", "mips smooth")
ATT.Description = [[Incendiary ammunition engulfs targets in a wall of fire and sparks. 3000 °F magnesium shards torch enemies, dealing heavy damage over time while ignited.]]
ATT.SortOrder = 0.5

ATT.Category = {"cod2019_ammo","cod2019_ammo_special"}
--ATT.RequireElements = {"cod2019_sniper_mag"}

ATT.ExplosionEffect = "cod2019_muzzle_db"
ATT.ImpactDecal = "Dark"
ATT.ImpactEffect = "cod2019_muzzle_db"

ATT.DamageType = DMG_BURN + DMG_SLOWBURN
ATT.DamageTypeOverride = DMG_BURN + DMG_SLOWBURN

ATT.DamageMaxMult = 0.9
ATT.DamageMinMult = 0.9

ATT.RicochetChance = 0

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

ARC9.LoadAttachment(ATT, "cod2019_ammo_db")

------------------------------------------------------------------------------- SNIPER

ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "High Explosive"
ATT.CompactName = "HE"
ATT.Icon = Material("entities/attachs/cod2019_ammo_he.png", "mips smooth")
ATT.Description = [[Explosive ammunition that sacrifice direct damage in favor of dealing damage in a radius around the impact point.
The effect is spectacular, but little explosive filler can be put inside most bullets.]]
ATT.SortOrder = 0.6

ATT.Category = {"cod2019_ammo_sniper","cod2019_ammo_special"}
--ATT.RequireElements = {"cod2019_sniper_mag"}

--ATT.SpreadMult = 0.3
ATT.RicochetChance = 0

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

-------------------------------------------------------------------------------