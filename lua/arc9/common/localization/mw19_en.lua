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

//////////////////// Firemodes
-- L["mw19_firemode_pump"] = "PUMP"

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
