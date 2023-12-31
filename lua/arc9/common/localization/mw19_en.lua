L = {}

local lineb = "\n"

local changeammo = {
pistol = lineb .. "Changes ammo type to <color=255,255,100>Pistol Ammo</color>.",
["357"] = lineb .. "Changes ammo type to <color=255,255,100>Magnum Ammo</color>.",
smg1 = lineb .. "Changes ammo type to <color=255,255,100>Carbine Ammo</color>.",
ar2 = lineb .. "Changes ammo type to <color=255,255,100>Rifle Ammo</color>.",
buckshot = lineb .. "Changes ammo type to <color=255,255,100>Shotgun Ammo</color>.",
sniperpenetratedround = lineb .. "Changes ammo type to <color=255,255,100>Sniper Ammo</color>.",
smg1_grenade = lineb .. "Changes ammo type to <color=255,255,100>Rifle Grenades</color>.",
xbowbolt = lineb .. "Changes ammo type to <color=255,255,100>Crossbow Bolts</color>.",
}

//////////////////////////////////////////////////////////////////////
///////////////////////////// Various Universal Information
//////////////////// Trivia

/////////// Manufacturer
L["mw19_manufacturer"] = "Manufacturer1"

/////////// Country of Origin
L["mw19_country"] = "Country of Origin2"

L["mw19_country_austria"] = "Austria"
L["mw19_country_belgium"] = "Belgium"
L["mw19_country_czechrepublic"] = "Czech Republic"
L["mw19_country_france"] = "France"
L["mw19_country_germany"] = "Germany"
L["mw19_country_israel"] = "Israel"
L["mw19_country_italy"] = "Italy"
L["mw19_country_russia"] = "Russia"
L["mw19_country_southafrica"] = "South Africa"
L["mw19_country_sovietunion"] = "Soviet Union"
L["mw19_country_sweden"] = "Sweden"
L["mw19_country_switzerland"] = "Switzerland"
L["mw19_country_uk"] = "United Kingdom"
L["mw19_country_usa"] = "United States"

/////////// Caliber
L["mw19_caliber"] = "Caliber3"

L["mw19_caliber_7.62x39mm"] = "7.62x39mm Soviet"
L["mw19_caliber_7.62x51mm"] = "7.62x51mm"
L["mw19_caliber_5.56x45mm"] = "5.56x45mm"
L["mw19_caliber_5.45x39mm"] = "5.45x39mm"
L["mw19_caliber_12gauge"] = "12 Gauge"
L["mw19_caliber_50ae"] = ".50 AE"
L["mw19_caliber_5.7x28mm"] = "FN 5.7x28mm"
L["mw19_caliber_4.6x30mm"] = "HK 4.6x30mm"
L["mw19_caliber_9x19mm"] = "9x19mm Parabellum"
L["mw19_caliber_.338"] = ".338 Lapua"
L["mw19_caliber_.308"] = ".308 Winchester"

/////////// Manufacturer
L["mw19_manufacturer"] = "Manufacturer2"

L["mw19_manufacturer_ai"] = "Accuracy International" -- TEMP

/////////// Authors
L["mw19_assets"] = "Assets1"
L["mw19_author"] = "Author2"

/////////// Weapon Categories
L["mw19_category_weapon_ar"] = "ASSAULT RIFLES"
L["mw19_category_weapon_smg"] = "SMGS"
L["mw19_category_weapon_shotgun"] = "SHOTGUNS"
L["mw19_category_weapon_lmg"] = "LMGS"
L["mw19_category_weapon_marksman"] = "MARKSMAN RIFLES"
L["mw19_category_weapon_sniper"] = "SNIPER RIFLES"
L["mw19_category_weapon_melee"] = "MELEE"

L["mw19_category_weapon_handgun"] = "HANDGUNS"
L["mw19_category_weapon_handgun_akimbo"] = "HANDGUNS - AKIMBO"
L["mw19_category_weapon_launcher"] = "LAUNCHERS"

/////////// Weapon Classes
L["mw19_class_weapon_ar"] = "Assault Rifle"
L["mw19_class_weapon_smg"] = "Submachine Gun"
L["mw19_class_weapon_shotgun"] = "Shotgun"
L["mw19_class_weapon_lmg"] = "Light Machine Gun"
L["mw19_class_weapon_marksman"] = "Marksman Rifle"
L["mw19_class_weapon_sniper"] = "Sniper Rifle"
L["mw19_class_weapon_melee"] = "Melee"

L["mw19_class_weapon_handgun"] = "Handgun"
L["mw19_class_weapon_launcher"] = "Launcher"

//////////////////////////////////////////////////////////////////////
////////////////////////////////////////// Notes
-- If "-- UO" is listed after the string, it is unofficial and its translation is not taken from MW19.
-- Therefore they will either remain untranslated (and remain in English) or require community contribution to fix.

///////////////////////////// Attachments
//////////////////// Customize
L["mw19_category_camouflage"] = "Camouflage"
L["mw19_category_reticle"] = "Reticle"
L["mw19_category_charm"] = "Charm"
L["mw19_category_sticker"] = "Sticker"

//////////////////// Attachment Categories
L["mw19_category_muzzle"] = "Muzzle"
L["mw19_category_barrel"] = "Barrel"
L["mw19_category_laser"] = "Laser"
L["mw19_category_optic"] = "Optic"
L["mw19_category_stock"] = "Stock"
L["mw19_category_underbarrel"] = "Underbarrel"
L["mw19_category_magazine"] = "Magazine"
L["mw19_category_reargrip"] = "Rear Grip"
L["mw19_category_perk"] = "Perk"

-- Specific to the Crossbow Marksman Rifle
L["mw19_category_cable"] = "Cable"
L["mw19_category_arms"] = "Arms"
L["mw19_category_bolt"] = "Bolt"

-- Specific to Handguns
L["mw19_category_triggeraction"] = "Trigger Action"

-- Specific to the R9-0 Shotgun
L["mw19_category_pumps"] = "Pumps"

-- Specific to the 725 Shotgun
L["mw19_category_guard"] = "Guard"

-- Specific to the VLK Rogue Shotgun
L["mw19_category_pumpgrip"] = "Pump Grip"

-- Specific to the SP-R 208 Marksman Rifle
L["mw19_category_boltassembly"] = "Bolt Assembly"

//////////////////// Folder Names
-- Other
L["mw19_folder_other2"] = "Other" -- UO

//////////////////// Firemodes
-- L["mw19_firemode_pump"] = "PUMP"

//////////////////////////////////////////////////////////////////////
///////////////////////////// Base Attachments
////////////////////  Ammo
L["cod2019_ammo_ap.printname"] = "Armor Piercing Rounds" -- UO
L["cod2019_ammo_ap.compactname"] = "AP" -- UO
L["cod2019_ammo_ap.description"] = "Ammunition made of hardened material designed to pierce armor.\nHigh penetrating capabilities, but wounding potential is reduced." -- UO

L["cod2019_ammo_hr.printname"] = "High Ricochet Rounds" -- UO
L["cod2019_ammo_hr.compactname"] = "HR" -- UO
L["cod2019_ammo_hr.description"] = "Ammunition made of soft material designed to ricochet off of surfaces.\nHigh ricochet capabilities, but less damage output." -- UO

L["cod2019_ammo_fra.printname"] = "Hollow Point Rounds" -- UO
L["cod2019_ammo_fra.compactname"] = "HP" -- UO
L["cod2019_ammo_fra.description"] = "Ammunition with a hollow tip that expands upon hitting its targets, incapacitating them more easily.\nWidely used in police and civilian markets due to its inability to penetrate and ricochet." -- UO

L["cod2019_ammo_subsonic.printname"] = "Low Profile Rounds" -- UO
L["cod2019_ammo_subsonic.compactname"] = "LP" -- UO
L["cod2019_ammo_subsonic.description"] = "Ammunition with reduced powder loads made for easier weapon handling.\nImproves weapon recoil control at the cost of weapon range." -- UO

L["cod2019_ammo_tracer_col.printname"] = "Weapon Color Tracer Rounds" -- UO
L["cod2019_ammo_tracer_col.compactname"] = "WCTR" -- UO
L["cod2019_ammo_tracer_col.description"] = "Ammunition with tracer points with the color matching the user's physics gun color.\n\nPretty dope, right?" -- UO

L["cod2019_ammo_db.printname"] = "Incendiary Rounds" -- UO
L["cod2019_ammo_db.compactname"] = "Inc." -- UO
L["cod2019_ammo_db.description"] = "Incendiary ammunition that light targets on fire on hit." -- UO
-- L["cod2019_ammo_db.description"] = "Incendiary ammunition that has a change to light targets on fire on hit." -- UO

L["cod2019_ammo_he.printname"] = "High Explosive Rounds" -- UO
L["cod2019_ammo_he.compactname"] = "HE" -- UO
L["cod2019_ammo_he.description"] = "Explosive ammunition that sacrifice direct damage in favor of dealing damage in a radius around the impact area.\nThe effect is spectacular, but very little explosive filler can be put inside the bullets." -- UO

-- Shotgun Ammo
L["cod2019_ammo_sg_magnum.printname"] = "8.5mm Magnum Buckshot" -- UO
L["cod2019_ammo_sg_magnum.compactname"] = "MAG" -- UO
L["cod2019_ammo_sg_magnum.description"] = "High-powered buckshot loaded with fewer but larger lead pellets.\nProvides better close range power, but worsened range and accuracy." -- UO

-- L["cod2019_ammo_sg_bird.printname"] = "3.5mm Birdshot" -- UO
-- L["cod2019_ammo_sg_bird.compactname"] = "BIRD" -- UO
-- L["cod2019_ammo_sg_bird.description"] = "Reduced diameter load containing a higher quantity of pallets.\nThe spread is increased which makes hitting more targets easier." -- UO

L["cod2019_ammo_sg_slug.printname"] = "70mm Full-bore Slug" -- UO
L["cod2019_ammo_sg_slug.compactname"] = "SLUG" -- UO
L["cod2019_ammo_sg_slug.description"] = "A single large projectile loaded into a shotgun shell.\nThe aerodynamic pellet has much higher effective range." -- UO

-- L["cod2019_ammo_sg_triple.printname"] = "70mm Triple Hit Slugs" -- UO
-- L["cod2019_ammo_sg_triple.compactname"] = "TRI" -- UO
-- L["cod2019_ammo_sg_triple.description"] = "Load containing three short, slug-sized pellets.\nThe slugs provide increased effective range and accuracy, but not as much as the full-bore slug." -- UO

L["cod2019_ammo_sg_flechette.printname"] = "Flechette Shells" -- UO
L["cod2019_ammo_sg_flechette.compactname"] = "FLE" -- UO
L["cod2019_ammo_sg_flechette.description"] = "Load containing thin, dart-shaped projectiles.\nProvides tighter spread and increased range alongside increased penetration, but at the cost of reduced stopping power." -- UO

L["cod2019_ammo_sg_frag.printname"] = "70mm \"FRAG-12\" High Explosive" -- UO
L["cod2019_ammo_sg_frag.compactname"] = "FRAG-12" -- UO
L["cod2019_ammo_sg_frag.description"] = "Load containing a single projectile filled with an explosive compound.\nDeals damage around a small radius at the impact area." -- UO

L["cod2019_ammo_sg_rebounder.printname"] = "10mm Rebounder Rounds" -- UO
L["cod2019_ammo_sg_rebounder.compactname"] = "RBD" -- UO
L["cod2019_ammo_sg_rebounder.description"] = "Load containing specialized pellets that have a high chance to ricochet.\nThe pellets will bounce regardless of angle, dealing increased damage the more it ricochets.\nIt does, however, have reduced damage output on direct impact." -- UO

L["cod2019_ammo_sg_frag_x4.printname"] = "70mm \"FRAG-12\" High Explosive x4" -- UO
L["cod2019_ammo_sg_frag_x4.compactname"] = "FRAG-12 x4" -- UO
L["cod2019_ammo_sg_frag_x4.description"] = "Load containing four projectiles filled with explosive compounds.\nDeals damage around a small radius at the impact area." -- UO

L["cod2019_ammo_sg_db.printname"] = "70mm \"Dragon's Breach\"" -- UO
L["cod2019_ammo_sg_db.compactname"] = "DB" -- UO
L["cod2019_ammo_sg_db.description"] = "Load containing magnesium pellets that lights a target on fire on hit." -- UO

////////////////////  Etc.
L["cod2019_etc_ammo_extend.printname"] = "Lightweight Extended Mag" -- UO
L["cod2019_etc_ammo_extend.compactname"] = "Light EM" -- UO
L["cod2019_etc_ammo_extend.description"] = "Custom extended magazines holding <color=100,255,100>20%</color> more ammunition." -- UO

L["cod2019_attach_grip_support.printname"] = "Grip Support" -- UO
L["cod2019_attach_grip_support.compactname"] = "Grip S." -- UO
L["cod2019_attach_grip_support.description"] = "Allows the installation of foregrips onto handguns. <color=255,100,100>Cannot apply lasers as well.</color>" -- UO

L["cod2019_view_alt_pistol.printname"] = "Alternative View" -- UO
L["cod2019_view_alt_pistol.compactname"] = "Alt. View" -- UO
L["cod2019_view_alt_pistol.description"] = "Alternative viewing angle." -- UO

L["cod2019_attach_laser_rail.printname"] = "Laser Attachment" -- UO
L["cod2019_attach_laser_rail.compactname"] = "Laser Att." -- UO
L["cod2019_attach_laser_rail.description"] = "Allows the installation of laser sights onto your weapon." -- UO

L["cod2019_attach_laser_rail_2.printname"] = "Laser Attachment" -- UO
L["cod2019_attach_laser_rail_2.compactname"] = "Laser Att." -- UO
L["cod2019_attach_laser_rail_2.description"] = "Allows the installation of small, cylindrical laser sights onto your weapon." -- UO

L["cod2019_attach_laser_cylinder.printname"] = "Laser Attachment" -- UO
L["cod2019_attach_laser_cylinder.compactname"] = "Laser Att." -- UO
L["cod2019_attach_laser_cylinder.description"] = "Allows the installation of laser sights onto your weapon." -- UO

L["cod2019_attach_laser_cylinder_2.printname"] = "Laser Attachment" -- UO
L["cod2019_attach_laser_cylinder_2.compactname"] = "Laser Att." -- UO
L["cod2019_attach_laser_cylinder_2.description"] = "Allows the installation of small, cylindrical laser sights onto your weapon." -- UO

////////////////////  Grips
-- L["cod2019_attach_grip_foregrip_side.printname"] = "Lightweight Extended Mag" -- UO
-- L["cod2019_attach_grip_foregrip_side.compactname"] = "Light EM" -- UO
-- L["cod2019_attach_grip_foregrip_side.description"] = "Custom extended magazines holding <color=100,255,100>20%</color> more ammunition." -- UO

//////////////////////////////////////////////////////////////////////
///////////////////////////// Weapon Names, Descriptions and unique attachments
//////////////////// Assault Rifles
//////////// Alpha, Kilo 141
L["mw19_weapon_kilo141"] = "Kilo 141"
L["mw19_weapon_kilo141_desc"] = "Fully automatic assault rifle with an ergonomic design that improves handling, and a steady fire rate helps stay on target."

L["mw19_weapon_kilo141_manufacturer"] = "MANUFACTURERNAME"

//////////// Bravo, FAL
L["mw19_weapon_fal"] = "FAL"
L["mw19_weapon_fal_desc"] = "A semi-automatic assault rifle with a high rate of fire for faster follow up shots."

L["mw19_weapon_fal_manufacturer"] = "FN Herstal"
