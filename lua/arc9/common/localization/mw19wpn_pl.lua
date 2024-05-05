L = {} -- Polish, UO by ??

local lineb = "\n"

local changeammo = { -- UO
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
////////////////////////////////////////// Notes
-- 1) If "-- UO" is listed after the string, it is unofficial and its translation is not taken from MW19.
-- Therefore they will either remain untranslated (and remain in English) or require community contribution to fix.

-- 2) If a string uses "ARC9:GetPhrase" in it, then do not touch it. It uses another localization as its quick access.

///////////////////////////// Various Universal Information
//////////////////// Settings
-- L["settings.mw19"] = "Addon - MW19" -- UO
-- L["settings.mw19.warzonestats"] = "Warzone Stats" -- UO
-- L["settings.mw19.warzonestats.title"] = "Enable Warzone Stats" -- UO
-- L["settings.mw19.warzonestats.desc"] = "Changes the stats on all* weapons and attachments to have stats more accurate to Modern Warfare 2019 / Warzone.\n\nThis is a server variable. Requires restart to take affect.\n\n\n*Some weapons and attachments will not behave differently." -- UO

//////////////////// Trivia
/////////// Caliber -- UO
-- L["mw19_caliber"] = "Caliber3"

L["mw19_caliber_556"] = "5,56 NATO"
L["mw19_caliber_762"] = "7,62 NATO"
L["mw19_caliber_762soviet"] = "7,62 x 39 mm wz. 43"
L["mw19_caliber_762mmr"] = "7,62 × 54 mm R"
L["mw19_caliber_762mauser"] = "7,62 Mauser"
L["mw19_caliber_545"] = "5,45 × 39 mm"
L["mw19_caliber_127x55"] = "12,7 × 55 mm"
L["mw19_caliber_127x108"] = "12,7 × 108 mm"
L["mw19_caliber_939"] = "9 × 39 mm"
L["mw19_caliber_919"] = "9 mm Parabellum"
L["mw19_caliber_57x28"] = "5,7 × 28 mm"
L["mw19_caliber_918"] = "9 mm Makarov"
L["mw19_caliber_46x30"] = "4,6 × 30 mm"
L["mw19_caliber_45acp"] = ".45 ACP"
L["mw19_caliber_12gauge"] = "Amunicja kalibru 12"
L["mw19_caliber_338"] = ".338 Norma Magnum"
L["mw19_caliber_45-70"] = ".45-70 Government"
L["mw19_caliber_bolt"] = "Bełt 20.0\""
L["mw19_caliber_300"] = ".300 Winchester Magnum"
L["mw19_caliber_50bmg"] = ".50 BMG"
L["mw19_caliber_357"] = ".357 Magnum"
L["mw19_caliber_50p"] = "Amunicja pistoletowa .50"

/////////// Country of Origin -- UO
-- L["mw19_country"] = "Country of Origin1"

L["mw19_country_austria"] = "Austria"
L["mw19_country_belgium"] = "Belgia"
L["mw19_country_czechrepublic"] = "Czechy"
L["mw19_country_france"] = "Francja"
L["mw19_country_germany"] = "Niemcy"
L["mw19_country_israel"] = "Izrael"
L["mw19_country_italy"] = "Włochy"
L["mw19_country_russia"] = "Rosja"
L["mw19_country_southafrica"] = "Afryka Południowa"
L["mw19_country_sovietunion"] = "Związek Radziecki"
L["mw19_country_sweden"] = "Szwecja"
L["mw19_country_switzerland"] = "Szwajcaria"
L["mw19_country_uk"] = "Wielka Brytania"
L["mw19_country_usa"] = "Stany Zjednoczone"
L["mw19_country_japan"] = "Japonia"

/////////// Manufacturer
-- L["mw19_manufacturer"] = "Manufacturer2" -- UO

-- L["mw19_manufacturer_singuard"] = "Singuard Arms"

-- L["mw19_manufacturer_forgetac"] = "FORGE TAC Manufacturing"

-- L["mw19_manufacturer_tempus"] = "Tempus Armament Inc."

-- L["mw19_manufacturer_verdansk"] = "Verdansk Arms Plant"

-- L["mw19_manufacturer_fss"] = "FSS"

-- L["mw19_manufacturer_cronen"] = "Cronen Industries"

-- L["mw19_manufacturer_zlr"] = "ZLR Special Inc."

-- L["mw19_manufacturer_xrk"] = "XRK"

-- L["mw19_manufacturer_vlk"] = "VLK Inc."

-- L["mw19_manufacturer_sloan"] = "Sloan Precision"

-- L["mw19_manufacturer_cronen"] = "Cronen"

-- L["mw19_manufacturer_silverfield"] = "Silverfield Ordnance"

-- L["mw19_manufacturer_corvus"] = "Corvus Defence"

-- L["mw19_manufacturer_stvol"] = "Stvol Tactical"

/////////// Weight -- UO
-- L["mw19_weight"] = "Weight (Loaded)4"
-- L["mw19_weight_val"] = "%s kg / ~%s lb"

/////////// Projectile Weight -- UO
-- L["mw19_weight_projectile"] = "Projectile Weight5"
-- L["mw19_weight_projectile_val"] = "%s g"

/////////// Muzzle Energy -- UO
-- L["mw19_muzzle_energy"] = "Muzzle Energy6"
-- L["mw19_muzzle_energy_val"] = "%s joules"

/////////// Muzzle Velocity -- UO
-- L["mw19_muzzle_velocity"] = "Muzzle Velocity7"
-- L["mw19_muzzle_velocity_val"] = "%s m/s | %s ft/s"

/////////// Authors -- UO
-- L["mw19_assets"] = "Assets2"
-- L["mw19_author"] = "Author1"

/////////// Weapon Categories
L["mw19_category_weapon_ar"] = "Karabiny szturmowe"
L["mw19_category_weapon_smg"] = "Pistolety maszynowe"
L["mw19_category_weapon_shotgun"] = "Strzelby"
L["mw19_category_weapon_lmg"] = "RKM-Y"
L["mw19_category_weapon_marksman"] = "Karabiny wyborowe"
L["mw19_category_weapon_sniper"] = "Karabiny snajperskie"
L["mw19_category_weapon_melee"] = "Broń do walki wręcz"
L["mw19_category_weapon_throwable"] = "Ofensywne & Taktyczne"

L["mw19_category_weapon_handgun"] = "Pistolety"
L["mw19_category_weapon_handgun_akimbo"] = "Pistolety (Akimbo)"
L["mw19_category_weapon_launcher"] = "Wyrzutnie"

/////////// Weapon Classes
L["mw19_class_weapon_ar"] = "Karabin szturmowy"
L["mw19_class_weapon_smg"] = "Pistolet maszynowy"
L["mw19_class_weapon_shotgun"] = "Strzelba"
L["mw19_class_weapon_lmg"] = "RKM"
L["mw19_class_weapon_marksman"] = "Karabin wyborowy"
L["mw19_class_weapon_sniper"] = "Karabin snajperski"
L["mw19_class_weapon_melee"] = "Broń do walki wręcz"
L["mw19_class_weapon_lethal"] = "Ofensywne"
L["mw19_class_weapon_tactical"] = "Taktyczne"
L["mw19_class_weapon_grenade"] = "Granat" -- UO

L["mw19_class_weapon_handgun"] = "Pistolet"
L["mw19_class_weapon_launcher"] = "Wyrzutnia"

//////////////////////////////////////////////////////////////////////
///////////////////////////// Attachments
//////////////////// Customize
L["mw19_category_camouflage"] = "Kamuflaż"
L["mw19_category_reticle"] = "Celownik"
L["mw19_category_charm"] = "Talizman"
L["mw19_category_sticker"] = "Naklejka"

//////////////////// Attachment Categories
L["mw19_category_muzzle"] = "Wylot lufy"
L["mw19_category_barrel"] = "Lufa"
L["mw19_category_laser"] = "Laser"
L["mw19_category_optic"] = "Celownik"
L["mw19_category_stock"] = "Kolba"
L["mw19_category_underbarrel"] = "Pod lufą"
L["mw19_category_magazine"] = "Magazynek"
L["mw19_category_reargrip"] = "Rękojeść"
L["mw19_category_perk"] = "Atut"

-- Specific to Handguns
L["mw19_category_triggeraction"] = "Spust"

-- Specific to the R9-0 Shotgun
L["mw19_category_pumps"] = "Ruchome łoże"

-- Specific to the 725 Shotgun
L["mw19_category_guard"] = "Łoże"

-- Specific to the VLK Rogue Shotgun
L["mw19_category_pumpgrip"] = "Chwyt-pompka"

-- Specific to the Crossbow Marksman Rifle
L["mw19_category_cable"] = "Cięciwa"
L["mw19_category_arms"] = "Ramiona"
L["mw19_category_bolt"] = "Bełt"

-- Specific to the SP-R 208 Marksman Rifle
L["mw19_category_boltassembly"] = "Mechanizm ryglowy"

-- Custom ones for the addon
-- L["mw19_category_ammo"] = "Ammo" -- UO
-- L["mw19_category_function"] = "Functionality" -- UO
-- L["mw19_category_grip"] = "Foregrip" -- UO
-- L["mw19_category_misc"] = "Misc." -- UO
-- L["mw19_category_rails"] = "Rails" -- UO
-- L["mw19_category_receiver"] = "Receiver" -- UO
-- L["mw19_category_skins"] = "Skins" -- UO
-- L["mw19_category_slide"] = "Slide" -- UO, "Pistol Slide"
-- L["mw19_category_stats"] = "Stats" -- UO
-- L["mw19_category_view"] = "View" -- UO

//////////////////// Folder Names
-- Stocks
-- L["mw19_folder_tube2"] = "Tube" -- UO

-- Other
-- L["mw19_folder_other2"] = "Other" -- UO
-- L["mw19_folder_side2"] = "Side" -- UO

//////////////////// Firemodes
-- L["mw19_firemode_pump"] = "PUMP"

-- L["mw19_firemode_single"] = "SINGLE" -- UO
-- L["mw19_firemode_double"] = "DOUBLE" -- UO
-- L["mw19_firemode_throwable"] = "THROWABLE" -- UO
-- L["mw19_firemode_plant"] = "PLANT" -- UO, "Plant" the bomb
-- L["mw19_firemode_melee"] = "MELEE" -- UO
-- L["mw19_firemode_lockon"] = "LOCK-ON" -- UO
-- L["mw19_firemode_lockon_top"] = "LOCK-ON (TOP-DOWN)" -- UO
-- L["mw19_firemode_guided"] = "GUIDED" -- UO
-- L["mw19_firemode_unguided"] = "UNGUIDED" -- UO

//////////////////////////////////////////////////////////////////////
///////////////////////////// Base Attachments
-- Stats
L["mw19_optic_stat_zoom2"] = "Poziom powiększenia" -- Most scopes
-- L["mw19_ammo_stat_ignite_chance"] = "On Hit: Chance to Ignite Target" -- UO

////////////////////  Default Scopes
-- L["cod2019_optic_default_svd.printname"] = "Default Scope" -- UO
-- L["cod2019_optic_default_svd.compactname"] = "Default" -- UO
-- L["cod2019_optic_default_svd.description"] = "Default <color=100,255,100>5.5x</color> scope for the Dragunov. <color=255,100,100>Optic glint visible to enemies.</color>"

-- L["cod2019_optic_default_hdr.description"] = "Default <color=100,255,100>6.0x</color> scope for the HDR. <color=255,100,100>Optic glint visible to enemies.</color>"

-- L["cod2019_optic_default_ax50.description"] = "Default <color=100,255,100>5.5x</color> scope for the AX-50. <color=255,100,100>Optic glint visible to enemies.</color>"

-- L["cod2019_optic_default_rytec.description"] = "Default <color=100,255,100>4.5x</color> scope for the Rytec AMR. <color=255,100,100>Optic glint visible to enemies.</color>"

-- L["cod2019_optic_default_strela.description"] = "Default <color=100,255,100>3.0x</color> sight for the Strela-P."

-- L["cod2019_optic_default_m32.printname"] = "MGL-32 Grenade Launcher Sight"
-- L["cod2019_optic_default_m32.compactname"] = "MGL GLS"
-- L["cod2019_optic_default_m32.description"] = "Default <color=100,255,100>3.5x</color> sight for the MGL-32."

////////////////////  Ammo
-- L["cod2019_ammo_ap.printname"] = "Armor Piercing Rounds" -- UO
-- L["cod2019_ammo_ap.compactname"] = "AP" -- UO
-- L["cod2019_ammo_ap.description"] = "Ammunition made of hardened material designed to pierce armor.\nHigh penetrating capabilities, but wounding potential is reduced." -- UO

-- L["cod2019_ammo_hr.printname"] = "High Ricochet Rounds" -- UO
-- L["cod2019_ammo_hr.compactname"] = "HR" -- UO
-- L["cod2019_ammo_hr.description"] = "Ammunition made of soft material designed to ricochet off of surfaces.\nHigh ricochet capabilities, but less damage output." -- UO

-- L["cod2019_ammo_fra.printname"] = "Hollow Point Rounds" -- UO
-- L["cod2019_ammo_fra.compactname"] = "HP" -- UO
-- L["cod2019_ammo_fra.description"] = "Ammunition with a hollow tip that expands upon hitting its targets, incapacitating them more easily.\nWidely used in police and civilian markets due to its inability to penetrate and ricochet." -- UO

-- L["cod2019_ammo_subsonic.printname"] = "Low Profile Rounds" -- UO
-- L["cod2019_ammo_subsonic.compactname"] = "LP" -- UO
-- L["cod2019_ammo_subsonic.description"] = "Ammunition with reduced powder loads made for easier weapon handling.\nImproves weapon recoil control at the cost of weapon range." -- UO

-- L["cod2019_ammo_tracer_col.printname"] = "Weapon Color Tracer Rounds" -- UO
-- L["cod2019_ammo_tracer_col.compactname"] = "WCTR" -- UO
-- L["cod2019_ammo_tracer_col.description"] = "Ammunition with tracer points with the color matching the user's physics gun color.\n\nPretty dope, right?" -- UO

-- L["cod2019_ammo_db.printname"] = "Incendiary Rounds" -- UO
-- L["cod2019_ammo_db.compactname"] = "Inc." -- UO
-- L["cod2019_ammo_db.description"] = "Incendiary ammunition that has a change to light targets on fire on hit." -- UO

-- L["cod2019_ammo_he.printname"] = "High Explosive Rounds" -- UO
-- L["cod2019_ammo_he.compactname"] = "HE" -- UO
-- L["cod2019_ammo_he.description"] = "Explosive ammunition that sacrifice direct damage in favor of dealing damage in a radius around the impact area.\nThe effect is spectacular, but very little explosive filler can be put inside the bullets." -- UO

////////// Shotgun Ammo
-- L["cod2019_ammo_sg_magnum.printname"] = "8.5mm Magnum Buckshot" -- UO
-- L["cod2019_ammo_sg_magnum.compactname"] = "MAG" -- UO
-- L["cod2019_ammo_sg_magnum.description"] = "High-powered buckshot loaded with fewer but larger lead pellets.\nProvides better close range power, but worsened range and accuracy." -- UO

-- L["cod2019_ammo_sg_slug.printname"] = "70mm Full-bore Slug" -- UO
-- L["cod2019_ammo_sg_slug.compactname"] = "SLUG" -- UO
-- L["cod2019_ammo_sg_slug.description"] = "A single large projectile loaded into a shotgun shell.\nThe aerodynamic pellet has much higher effective range." -- UO

-- L["cod2019_ammo_sg_flechette.printname"] = "Flechette Shells" -- UO
-- L["cod2019_ammo_sg_flechette.compactname"] = "FLE" -- UO
-- L["cod2019_ammo_sg_flechette.description"] = "Load containing thin, dart-shaped projectiles.\nProvides tighter spread and increased range alongside increased penetration, but at the cost of reduced stopping power." -- UO

-- L["cod2019_ammo_sg_frag.printname"] = "70mm \"FRAG-12\" High Explosive" -- UO
-- L["cod2019_ammo_sg_frag.compactname"] = "FRAG-12" -- UO
-- L["cod2019_ammo_sg_frag.description"] = "Load containing a single projectile filled with an explosive compound.\nDeals damage around a small radius at the impact area." -- UO

-- L["cod2019_ammo_sg_rebounder.printname"] = "10mm Rebounder Rounds" -- UO
-- L["cod2019_ammo_sg_rebounder.compactname"] = "RBD" -- UO
-- L["cod2019_ammo_sg_rebounder.description"] = "Load containing specialized pellets that have a high chance to ricochet.\nThe pellets will bounce regardless of angle, dealing increased damage the more it ricochets.\nIt does, however, have reduced damage output on direct impact." -- UO

-- L["cod2019_ammo_sg_frag_x4.printname"] = "70mm \"FRAG-12\" High Explosive x4" -- UO
-- L["cod2019_ammo_sg_frag_x4.compactname"] = "FRAG-12 x4" -- UO
-- L["cod2019_ammo_sg_frag_x4.description"] = "Load containing four projectiles filled with explosive compounds.\nDeals damage around a small radius at the impact area." -- UO

-- L["cod2019_ammo_sg_db.printname"] = "70mm \"Dragon's Breach\"" -- UO
-- L["cod2019_ammo_sg_db.compactname"] = "DB" -- UO
-- L["cod2019_ammo_sg_db.description"] = "Load containing magnesium pellets that lights a target on fire on hit." -- UO

////////////////////  Etc.
-- L["cod2019_etc_ammo_extend.printname"] = "Lightweight Extended Mag" -- UO
-- L["cod2019_etc_ammo_extend.compactname"] = "Light EM" -- UO
-- L["cod2019_etc_ammo_extend.description"] = "Custom extended magazines holding <color=100,255,100>33%</color> more ammunition." -- UO

-- L["cod2019_attach_grip_support.printname"] = "Grip Support" -- UO
-- L["cod2019_attach_grip_support.compactname"] = "Grip S." -- UO
-- L["cod2019_attach_grip_support.description"] = "Allows the installation of foregrips onto handguns. <color=255,100,100>Cannot apply lasers as well.</color>" -- UO

-- L["cod2019_view_alt_pistol.printname"] = "Alternative View" -- UO
-- L["cod2019_view_alt_pistol.compactname"] = "Alt. View" -- UO
-- L["cod2019_view_alt_pistol.description"] = "Alternative viewing angle." -- UO

-- L["cod2019_attach_laser_rail.printname"] = "Laser Attachment" -- UO
-- L["cod2019_attach_laser_rail.compactname"] = "Laser Att." -- UO
-- L["cod2019_attach_laser_rail.description"] = "Allows the installation of laser sights onto your weapon." -- UO

-- L["cod2019_attach_laser_rail_2.description"] = "Allows the installation of small, cylindrical laser sights onto your weapon." -- UO

////////////////////  Grips
-- L["cod2019_attach_grip_foregrip_side.printname"] = "ARC Foregrip" -- UO
-- L["cod2019_attach_grip_foregrip_side.compactname"] = "ARC" -- UO
-- L["cod2019_attach_grip_foregrip_side.description"] = "Extended foregrip reduces vertical recoil and provides stability from the hip for fast-paced guerrilla tactics." -- cod2019_grips_merc.description

-- L["cod2019_grips_none.printname"] = "Alternative Holding" -- UO
-- L["cod2019_grips_none.compactname"] = "Alt. Hold" -- UO
-- L["cod2019_grips_none.description"] = "Alternative holding style." -- UO

-- L["cod2019_grips_none2.printname"] = "Alternative Holding II" -- UO
-- L["cod2019_grips_none2.compactname"] = "Alt. Hold II" -- UO

-- L["cod2019_grips_alt_cclamp.printname"] = "C-Clamp Holding" -- UO
-- L["cod2019_grips_alt_cclamp.compactname"] = "C-Clamp" -- UO

-- L["cod2019_grips_alt_nocclamp.printname"] = "No C-Clamp Holding" -- UO
-- L["cod2019_grips_alt_nocclamp.compactname"] = "No C-C" -- UO

////////////////////  Perks
L["cod2019_perks_soh.printname"] = "Sprawne dłonie"
L["cod2019_perks_soh.compactname"] = "Sprawne d."
L["cod2019_perks_soh.description"] = "wyszkolenie w szybszym przeładowywaniu pod dużą presją."

L["cod2019_perks_speedmelee.printname"] = "Szybka walka wręcz"
L["cod2019_perks_speedmelee.compactname"] = "S.w.w."
L["cod2019_perks_speedmelee.description"] = "Wyszkolenie w błyskawicznym wykonywaniu ataków wręcz."

L["cod2019_perks_heavyhitter.printname"] = "Mocny cios"
L["cod2019_perks_heavyhitter.compactname"] = "Mocny c."
L["cod2019_perks_heavyhitter.description"] = "Ataki wręcz ogłuszają cel na dłużej."

-- L["cod2019_perks_enforcer.printname"] = "Enforcer" -- UO
-- L["cod2019_perks_enforcer.compactname"] = "Enforcer" -- UO
-- L["cod2019_perks_enforcer.description"] = "Grants the user 30% resistance to all damage." -- UO

-- L["cod2019_perks_bolt.printname"] = "Deft Hands" -- UO
-- L["cod2019_perks_bolt.compactname"] = "Deft" -- UO
-- L["cod2019_perks_bolt.description"] = "Training with your weapon allows you to cycle the weapon faster." -- UO

-- L["cod2019_perks_slamfire.printname"] = "Slamfire" -- UO
-- L["cod2019_perks_slamfire.compactname"] = "Slamfire" -- UO
-- L["cod2019_perks_slamfire.description"] = "Bruteforce the weapon to fire and cycle the weapon much quicker at the cost of reduced accuracy." -- UO

L["cod2019_perks_burst.printname"] = "Seria"
L["cod2019_perks_burst.compactname"] = "Seria"
L["cod2019_perks_burst.description"] = "Przełącza na tryb serii <color=100,255,100>3 pocisków</color>."

L["cod2019_perks_burst_2.description"] = "Przełącza na tryb serii <color=100,255,100>2 pocisków</color>."

-- L["cod2019_perks_super_sprint.printname"] = "Tactical Sprint" -- UO
-- L["cod2019_perks_super_sprint.compactname"] = "Tac. Sprint" -- UO
-- L["cod2019_perks_super_sprint.description"] = "Provides an altered stance when sprinting. Cancels out up to <color=100,255,100>20%</color> sprint speed reduction at the cost of reduced sprint-to-fire speed." -- UO

L["cod2019_perks_auto.printname"] = "Automatyczny" -- UO
L["cod2019_perks_auto.compactname"] = "Auto." -- UO
L["cod2019_perks_auto.description"] = "Przełącza na tryb <color=100,255,100>automatyczny</color>." -- UO

////////////////////  Scopes
-- L["cod2019_model680_iron.printname"] = "Remove Sight Mount" -- UO
-- L["cod2019_model680_iron.compactname"] = "R. Sight M." -- UO
-- L["cod2019_model680_iron.description"] = "Removes the sight mount on the Model 680, making it sleeker." -- UO

////////////////////  Stocks
-- L["cod2019_stock_vlk.printname"] = "VLK Rogue Stock" -- UO
-- L["cod2019_stock_vlk.compactname"] = "Rogue" -- UO
-- L["cod2019_stock_vlk.description"] = "Stock designed for agility while aiming down sights." -- mw19stockdesc.light

-- L["cod2019_stock_amax.printname"] = "CR-56 AMAX Stock" -- UO
-- L["cod2019_stock_amax.compactname"] = "AMAX" -- UO
-- L["cod2019_stock_amax.description"] = "Ultralight stock speeds up weapon handling and movement at the expense of aiming stability." -- mw19stockdesc.vlight

-- L["cod2019_stock_slima.printname"] = "RAAL MG Stock" -- UO
-- L["cod2019_stock_slima.compactname"] = "RAAL MG" -- UO
-- L["cod2019_stock_slima.description"] = "Tactical stock streamlined for close quarters combat. Gets you on target faster." -- mw19stockdesc.medium

-- L["cod2019_stock_m4.printname"] = "M4A1 Stock" -- UO
-- L["cod2019_stock_m4.compactname"] = "M4A1" -- UO
-- L["cod2019_stock_m4.description"] = "Heavy duty stock keeps your aim steady for precision shots." -- mw19stockdesc.heavy

-- L["cod2019_stock_origin12.printname"] = "Origin 12 Shotgun Stock" -- UO
-- L["cod2019_stock_origin12.compactname"] = "Origin 12" -- UO

-- L["cod2019_m32_stock_retract.printname"] = "Shortened Stock" -- UO
-- L["cod2019_m32_stock_retract.compactname"] = "Shortened" -- UO
-- L["cod2019_m32_stock_retract.description"] = "Shortens the stock to allow for <color=100,255,100>higher agility.</color>" -- UO

////////////////////  Buffer Tubes
-- L["cod2019_stock_tube.printname"] = "FTAC Light Buffer Tube" -- UO
-- L["cod2019_stock_tube.compactname"] = "FTAC L." -- UO
-- L["cod2019_stock_tube.description"] = "Buffer tube made out of aluminium. Allows installation of aftermarket stocks." -- UO

-- L["cod2019_stock_tube_vlk.printname"] = "VLK Buffer Tube" -- UO
-- L["cod2019_stock_tube_vlk.compactname"] = "VLK" -- UO
-- L["cod2019_stock_tube_vlk.description"] = "Custom made buffer tube that allows installation of aftermarket stocks." -- UO

-- L["cod2019_stock_tube_origin12.printname"] = "FTAC Buffer Tube" -- UO
-- L["cod2019_stock_tube_origin12.compactname"] = "FTAC" -- UO
-- L["cod2019_stock_tube_origin12.description"] = "Heavy-duty buffer tube that allows installation of aftermarket stocks." -- UO

////////////////////  EFT (Escape from Tarkov) Support
-- L["cod2019_eft_grips.printname"] = "Escape from Tarkov Support" -- UO
-- L["cod2019_eft_grips.compactname"] = "EFT" -- UO
-- L["cod2019_eft_grips.description"] = "Allows installation of foregrips from the <color=255,255,100>Escape from Tarkov</color> addons.\n\nNote: Not optimised - may cause <color=255,100,100>visual glitches</color>.\n\"Ergonomics\" have <color=255,100,100>no effect</color>." -- UO

-- L["cod2019_eft_muzzle.description"] = "Allows installation of muzzle attachments from the <color=255,255,100>Escape from Tarkov</color> addons.\n\nNote: Not optimised - may cause <color=255,100,100>visual glitches</color>.\n\"Ergonomics\" have <color=255,100,100>no effect</color>." -- UO

-- L["cod2019_eft_scopes.description"] = "Allows installation of optics from the <color=255,255,100>Escape from Tarkov</color> addons.\n\nNote: Not optimised - may cause <color=255,100,100>visual glitches</color>.\n\"Ergonomics\" have <color=255,100,100>no effect</color>." -- UO

-- L["cod2019_eft_stocks.description"] = "Allows installation of stocks from the <color=255,255,100>Escape from Tarkov</color> addons.\n\nNote: Not optimised - may cause <color=255,100,100>visual glitches</color>.\n\"Ergonomics\" have <color=255,100,100>no effect</color>." -- UO

////////////////////  GSR (Gunsmith Reloaded) Support
-- L["cod2019_attach_support_gsr_laser_pstl.printname"] = "Gunsmith Reloaded Support" -- UO
-- L["cod2019_attach_support_gsr_laser_pstl.compactname"] = "GSR" -- UO
-- L["cod2019_attach_support_gsr_laser_pstl.description"] = "Allows installation of laser attachments from the <color=255,255,100>Gunsmith Reloaded</color> addon.\n\nNote: Not optimised - may cause <color=255,100,100>visual glitches</color>." -- UO

-- L["cod2019_attach_support_gsr_optics.description"] = "Allows installation of optics from the <color=255,255,100>Gunsmith Reloaded</color> addons.\n\nNote: Not optimised - may cause <color=255,100,100>visual glitches</color>." -- UO

-- L["cod2019_attach_support_gsr_muzzles.description"] = "Allows installation of muzzle attachments from the <color=255,255,100>Gunsmith Reloaded</color> addon.\n\nNote: Not optimised - may cause <color=255,100,100>visual glitches</color>." -- UO

-- L["cod2019_attach_support_gsr_grips.description"] = "Allows installation of foregrips from the <color=255,255,100>Gunsmith Reloaded</color> addon.\n\nNote: Not optimised - may cause <color=255,100,100>visual glitches</color>." -- UO

////////////////////  Custom Crossbow Ammo
-- L["cod2019_ammo_crossbow_rock.printname"] = "FTAC Boulder 30g Rock" -- UO
-- L["cod2019_ammo_crossbow_rock.compactname"] = "Boulder" -- UO
-- L["cod2019_ammo_crossbow_rock.description"] = "Replaces the aerodynamic bolts with a <color=100,255,100>rock</color>.\n\nFor that <color=100,255,100>stoner</color> within us all." -- UO

-- L["cod2019_ammo_crossbow_he.printname"] = "FTAC Contact 20\" Bolts" -- UO
-- L["cod2019_ammo_crossbow_he.compactname"] = "Contact" -- UO
-- L["cod2019_ammo_crossbow_he.description"] = "Bolts with a <color=255,255,100>low pressure explosive compound</color> imbedded within the arrowhead. <color=255,100,100>Bolts can not be recovered</color>, and are undetectable by trophy systems." -- UO

////////////////////  Custom MGL-32 Ammo
-- L["cod2019_ammo_gl_rock.printname"] = "40mm Boulder" -- UO
-- L["cod2019_ammo_gl_rock.compactname"] = "Boulder" -- UO
-- L["cod2019_ammo_gl_rock.description"] = "Custom 40mm shells filled with <color=100,255,100>rocks</color>." -- UO

-- L["cod2019_ammo_gl_flash.printname"] = "40mm Flash" -- UO
-- L["cod2019_ammo_gl_flash.compactname"] = "Flash" -- UO
-- L["cod2019_ammo_gl_flash.description"] = "Custom 40mm shells filled with non-lethal <color=100,255,100>Flash</color> rounds designed to temporarily blind your enemy." -- UO, partially taken from M203 40mm Flash

-- L["cod2019_ammo_gl_inc.printname"] = "40mm Incendiary" -- UO
-- L["cod2019_ammo_gl_inc.compactname"] = "Incendiary" -- UO
-- L["cod2019_ammo_gl_inc.description"] = "Custom 40mm shells filled with lethal <color=100,255,100>Incendiary</color> rounds." -- UO, partially taken from M203 40mm Incendiary

-- L["cod2019_ammo_gl_smoke.printname"] = "40mm Smokescreen" -- UO
-- L["cod2019_ammo_gl_smoke.compactname"] = "Smoke" -- UO
-- L["cod2019_ammo_gl_smoke.description"] = "Custom 40mm shells filled with non-lethal <color=100,255,100>Smoke</color> rounds designed to coneal your movement." -- UO, partially taken from M203 40mm Smokescreen

-- L["cod2019_ammo_gl_gas.printname"] = "40mm Gas" -- UO
-- L["cod2019_ammo_gl_gas.compactname"] = "Gas" -- UO
-- L["cod2019_ammo_gl_gas.description"] = "Custom 40mm shells filled with semi-lethal <color=100,255,100>Gas</color> rounds that create a gas cloud at the impact area.\nMultiple shots within the same area will <color=100,255,100>increase its lethality</color>." -- UO

-- L["cod2019_pila_ammo_guided.printname"] = "Guided Rockets" -- UO
-- L["cod2019_pila_ammo_guided.compactname"] = "Guided" -- UO
-- L["cod2019_pila_ammo_guided.description"] = "Replaces the unguided rockets with <color=100,255,100>guided</color> high-explosive rockets." -- UO

-- L["cod2019_jokr_ammo_guided.description"] = "Replaces the lock-on rockets with <color=100,255,100>guided</color> high-explosive rockets. <color=255,100,100>Removes the lock-on feature</color>." -- UO

//////////////////////////////////////////////////////////////////////
///////////////////////////// Weapon Names, Descriptions and unique attachments
//////////////////// Assault Rifles
//////////// Weapon Names
L["mw19_weapon_kilo141"] = "Kilo 141"
L["mw19_weapon_fal"] = "FAL"
L["mw19_weapon_m4a1"] = "M4A1"
L["mw19_weapon_fr556"] = "FR 5,56"
L["mw19_weapon_oden"] = "Oden"
L["mw19_weapon_m13"] = "M13"
L["mw19_weapon_scar"] = "FN Scar 17"
L["mw19_weapon_ak47"] = "AK-47"
L["mw19_weapon_ram7"] = "RAM-7"
L["mw19_weapon_grau"] = "Grau 5,56"
L["mw19_weapon_cr56"] = "CR-56 AMAX"
L["mw19_weapon_an94"] = "AN-94"
L["mw19_weapon_asval"] = "AS VAL"

L["mw19_weapon_aug"] = "AUG"
L["mw19_weapon_p90"] = "P90"
L["mw19_weapon_mp5"] = "MP5"
L["mw19_weapon_uzi"] = "Uzi"
L["mw19_weapon_pp19"] = "PP19 Bizon"
L["mw19_weapon_mp7"] = "MP7"
L["mw19_weapon_striker"] = "Striker 45"
L["mw19_weapon_fennec"] = "Fennec"
L["mw19_weapon_iso"] = "ISO"
L["mw19_weapon_cx9"] = "CX-9"

L["mw19_weapon_m680"] = "Model 680"
L["mw19_weapon_r90"] = "R9-0"
L["mw19_weapon_725"] = "725"
L["mw19_weapon_origin12"] = "Origin 12"
L["mw19_weapon_vlk"] = "VLK Rogue"
L["mw19_weapon_aa12"] = "JAK-12"

L["mw19_weapon_pkm"] = "PKM"
L["mw19_weapon_sa87"] = "SA87"
L["mw19_weapon_m91"] = "M91"
L["mw19_weapon_mg34"] = "MG34"
L["mw19_weapon_holger"] = "Holger-26"
L["mw19_weapon_bruen"] = "Bruen Mk9"
L["mw19_weapon_finn"] = "RKM RiNN"
L["mw19_weapon_raal"] = "KM RAAL"

L["mw19_weapon_ebr"] = "EBR-14"
L["mw19_weapon_mk2"] = "MK2 Carbine"
L["mw19_weapon_kar98"] = "Kar98k"
L["mw19_weapon_crossbow"] = "Kusza"
L["mw19_weapon_sks"] = "SKS"
L["mw19_weapon_spr"] = "SP-R 208"

L["mw19_weapon_dragunov"] = "Dragunow"
L["mw19_weapon_hdr"] = "HDR"
L["mw19_weapon_ax50"] = "AX-50"
L["mw19_weapon_rytec"] = "Rytec AMR"

L["mw19_weapon_shield"] = "Tarcza balistyczna"

L["mw19_weapon_glock"] = "X16"
L["mw19_weapon_1911"] = "1911"
L["mw19_weapon_357"] = ".357"
L["mw19_weapon_m19"] = "M19"
L["mw19_weapon_deagle"] = ".50 GS"
L["mw19_weapon_m9"] = "Renetti"
L["mw19_weapon_makarov"] = "Sykov"

L["mw19_weapon_pila"] = "PILA"
L["mw19_weapon_strela"] = "Strela-P"
L["mw19_weapon_javelin"] = "JOKR"
L["mw19_weapon_rpg"] = "RPG-7"
L["mw19_weapon_mgl"] = "MGL-32"

L["mw19_weapon_knife"] = "Nóż"
L["mw19_weapon_stick"] = "Kije Kali"
L["mw19_weapon_sword"] = "Podwójne kodachi"

L["mw19_weapon_akimbo"] = "%s Akimbo"

L["mw19_weapon_nade_claymore"] = "Mina Claymore"
L["mw19_weapon_nade_frag"] = "Granat odłamkowy"
L["mw19_weapon_nade_molotov"] = "Koktajl Mołotowa"
L["mw19_weapon_nade_c4"] = "C4"
L["mw19_weapon_nade_semtex"] = "Semteks"
L["mw19_weapon_nade_knife"] = "Nóż do rzucania"
L["mw19_weapon_nade_proximity"] = "Mina przeciwpancerna"
L["mw19_weapon_nade_thermite"] = "Termit"
L["mw19_weapon_nade_thermite_alt"] = "Granat termit" -- UO

L["mw19_weapon_nade_flash"] = "Granat błyskowy"
L["mw19_weapon_nade_stun"] = "Granat ogłuszający"
L["mw19_weapon_nade_smoke"] = "Granat dymny"
L["mw19_weapon_nade_snapshot"] = "Granat wykrywający"
L["mw19_weapon_nade_heartbeat"] = "Czujnik pulsu"
L["mw19_weapon_nade_stim"] = "Stymulant"
L["mw19_weapon_nade_decoy"] = "Granat-wabik"
L["mw19_weapon_nade_gas"] = "Granat gazowy"

-- L["mw19_weapon_minigun"] = "Minigun" -- UO
-- L["mw19_weapon_fists"] = "Fists" -- UO
-- L["mw19_weapon_nade_rock"] = "Rock" -- UO

//////////// Weapon Descriptions
L["mw19_weapon_kilo141_desc"] = "Karabinek samoczynno-samopowtarzalng o usprawniającej obsługę ergonomicznej budowie oraz zrównoważonej szy bkostrzelności ułatwiającej prowadzenie celnego ognia."
L["mw19_weapon_fal_desc"] = "Samopowtarzalny karabin szturmowy umożliwiający szybkie oddawanie kolejnych strzałów."
L["mw19_weapon_m4a1_desc"] = "Wszechstronny, samoczg nno-samopowtarzalng karabin. Kontroluj odrzut, a broń okaże się skuteczna nawet na dużym dystansie."
L["mw19_weapon_fr556_desc"] = "Karabinek w układzie bullpup strzelający 3-pociskowgmi seriami. Celna seria może być zabójcza na średnim dystansie."
L["mw19_weapon_oden_desc"] = "Karabin samoczgnno-samopowtarzalng w układzie bullpup o niskiej szybkostrzelności, co pomaga w kontrolowaniu odrzutu potężnej amunicji 12,7 x 55 mm."
L["mw19_weapon_m13_desc"] = "Samoczynno-samopowtarzalng karabinek z systemem tłokowym o krótkim skoku zapewniającym dużą szybkostrzelność i małg od rzut."
L["mw19_weapon_scar_desc"] = "Karabin samoczgnno-samopowtarzalng zadający duże obrażenia na dużym dystansie."
L["mw19_weapon_ak47_desc"] = "Niezawodny karabinek samoczynno-samopowtarzalng kalibru 7,62 mm. Amunicja większego kalibru wymaga wprawy w kontroli od rzutu."
L["mw19_weapon_ram7_desc"] = "Samoczynny karabin szturmowy w układzie bullpup o kompaktowej konstrukcji przystosowanej do walk na małym dystansie."
L["mw19_weapon_grau_desc"] = "Ta modułowa broń kalibru 5,56 mm jest lekka, mobilna i ma wyjątkowo daleki zasięg. Precyzyjne wykonanie i światowej klasy lufa sprawiają, że w tej broni drzemie olbrzymi potencjał"
L["mw19_weapon_cr56_desc"] = "Ten lekki karabin szturmowy kalibru 7,62 x 39 mm to potężna, choć kompaktowa broń. Stworzony dla wojska, świetnie radzi sobie w potyczkach na średnim dystansie i można go łatwo dostosować do różnych taktyk."
L["mw19_weapon_an94_desc"] = "Nowoczesny rosyjski karabin szturmowy kalibru 5,45 x 39 mm z unikalnym trybem <color=255,255,100>hiperserii</color>. Po każdym pociągnięciu za cyngiel zostaje wystrzelona błyskawiczna seria 2 pocisków. Dopiero wtedy czuć większy odrzut. Wystrzelone w ten sposób ciasno skupione pociski mogą zadawać poważne obrażenia. Broń zasilana jest skośnymi magazynkami, a ruchoma komora zamkowa ułatwia kontrolowanie odrzutu."
L["mw19_weapon_asval_desc"] = "Wyposażony w zintegrowany <color=255,255,100>tłumik</color> i zasilany <color=255,255,100>subsoniczną</color> amunicją 9x39 mm AS VAL stanowi niezwykle potężną broń, opracowaną z myślą o działaniach z ukrycia, prowadzeniu celnego ostrzału i przebijaniu osłon. Ta broń świetnie sprawdzi się w rękach operatora, który będzie w stanie okiełznać jej mocny odrzut i wysoką szybkostrzelność."

L["mw19_weapon_aug_desc"] = "Samoczgnno-samopowtarzalna broń modułowa stworzona z myślą o mobilności i walce z bliska."
L["mw19_weapon_p90_desc"] = "Samoczgnng pistolet maszgnowg w układzie bullpup. W tej wyjątkowej konstrukcji magazynek zamontowano u góry. Mieści on imponującg zapas amunicji kalibru 5,7 x 28 mm o dużej prędkości wg lotowej."
L["mw19_weapon_mp5_desc"] = "Pistolet maszynowy kalibru 9 mm. Idealna równowaga między stabilnością, mobilnością i zabójczą skutecznością."
L["mw19_weapon_uzi_desc"] = "Pistolet maszynowy z zamkiem otwartym. Prosty, celny, skuteczny."
L["mw19_weapon_pp19_desc"] = "Dobrze wyważony samoczynny pistolet maszynowy z pojemnym magazynkiem ślimakowym."
L["mw19_weapon_mp7_desc"] = "Ta samoczynno-samopowtarzalna broń o zwartej budowie cechuje się dużą szybkostrzelnością i małym odrzutem."
L["mw19_weapon_striker_desc"] = "PM o dużej sile rażenia przystosowany do amunicji .45 Auto. Ma większy zasięg skuteczny niż pozostałe typy broni tej klasy. Umiarkowana szybkostrzelność pozwala zachować panowanie nad bronią przy prowadzeniu ognia ciągłego."
L["mw19_weapon_fennec_desc"] = "Agresywny pistolet maszynowy z opcją ognia ciągłego oraz łagodnym odrzutem i dużą szybkostrzelnością. Idealnie nadaje się do oczyszczania pomieszczeń i walk na linii frontu."
L["mw19_weapon_iso_desc"] = "Precyzyjnie wykonany pistolet maszynowy kalibru 9 mm o dużej szybkostrzelności. Ta lekka i niezawodna broń świetnie się sprawdza w walkach na bliski dystans."
L["mw19_weapon_cx9_desc"] = "Doskonała mobilność i duża szybkostrzelność sprawiają, że ten PM z systemem redukującym odrzut jest świetną bronią podczas starć na bliskim dystansie."

L["mw19_weapon_m680_desc"] = "Solidna, wszechstronna strzelba kalibru 12 z ruchomym łożem."
L["mw19_weapon_r90_desc"] = "Dwie lufy umożliwiają szybkie wystrzelenie dwóch nabojów przed każdym przeładowaniem."
L["mw19_weapon_725_desc"] = "Łamana nadlufka. Długie lufy z systemem back-bored i cylindryczny czok zwiększają skupienie śrutu, przez co jest zabójczo skuteczna nawet na większych dystansach."
L["mw19_weapon_origin12_desc"] = "Strzelba samopowtarzalna o pojemnym magazynku umożliwiająca prowadzenie długiego ostrzału. Skuteczna na małym dystansie."
L["mw19_weapon_vlk_desc"] = "Lekka strzelba kalibru 12 z magazynkiem od VLK oferująca wiele możliwości konfiguracji zasięgu, stabilności oraz mobilności."
L["mw19_weapon_aa12_desc"] = "W pełni automatyczna strzelba z otwartym zamkiem i gazowym systemem redukującym odrzut. Ta strzelba bojowa wypluwa z siebie duże ilości ołowiu w równym tempie."

L["mw19_weapon_pkm_desc"] = "Samoczynny ręczny karabin maszynowy kalibru 7,62 mm zapewniający duże obrażenia i średnią szybkostrzelność."
L["mw19_weapon_sa87_desc"] = "Samoczgnng ręczny karabin maszynowy w układzie bullpup. Mniejsza szybkostrzelność i pociski kalibru 5,56 mm sprawiają, że jest stabilny i skuteczny na dużym dystansie."
L["mw19_weapon_m91_desc"] = "Sporych rozmiarów ręczny karabin maszynowy, w którym stabilność góruje nad mobilnością. Prowadzenie ciągłego ognia amunicją większego kalibru zneutralizuje cele na dużym dystansie."
L["mw19_weapon_mg34_desc"] = "Samoczynny, szybkostrzelny karabin na amunicję 7,92 mm Mauser. Karabiny maszynowe z czasów II wojny światowej wciąż są niezawodne i niezwykle skuteczne na polu walki."
L["mw19_weapon_holger_desc"] = "Wszechstronny samoczynny RKM kalibru 5,56 mm. Modułowa budowa pozwala na dostosowanie konfiguracji do różnych typów starć."
L["mw19_weapon_bruen_desc"] = "Chłodzony powietrzem RKM kalibru 5,56z otwartym zamkiem. Dość wysoka szybkostrzelność i wyjątkowa stabilność pomogą ci zdominować wrogów na średnim i dużym dystansie."
L["mw19_weapon_finn_desc"] = "Lekki RKM kalibru 5,56 z otwartym zamkiem. Dzięki niskiej szybkostrzelności i zaawansowanej kontroli odrzutu FiNN jest niezwykle celny podczas ostrzału automatycznego."
L["mw19_weapon_raal_desc"] = "Karabin maszynowy Reconnaissance Auxiliarg Assault Lightweight ma niską szybkostrzelność i osadzoną ruchomo lufę, co niweluje spory odrzut pocisków .338 Norma Magnum. Zaawansowana konstrukcja z tytanu sprawia, że broń nie jest zbyt ciężka."

L["mw19_weapon_ebr_desc"] = "Samopowtarzalny karabin, który idealnie łączy szybkostrzelność i skuteczność."
L["mw19_weapon_mk2_desc"] = "Niezwykle celny karabin ładowany dźwigniowo. Wyeliminuje wroga jednym strzałem w głowę lub korpus."
L["mw19_weapon_kar98_desc"] = "Karabin powtarzalny na amunicję 7,92 Mauser. Ten zabytek z czasów II wojny światowej wciąż stanowi śmiertelnie groźną broń w rękach rebelianckiego strzelca."
L["mw19_weapon_crossbow_desc"] = "Ta zaawansowana kusza to lekka i cicha broń miotająca 20-calowgmi bełtami z zabójczą skutecznością. Ekskluzywne opcje personalizacji, charakterystyczna fu ncjonalność i unikalna amunicja sprawiają, że broń ta stanowi odmienną klasę sama w sobie. Standardowe 20-calowe bełty wielokrotnego użytku są niewykrywalne dla Systemu Trophg."
L["mw19_weapon_sks_desc"] = "Lekka samopowtarzalna broń na naboje 7,62 x 39 mm. Ten potężny radziecki karabin stawia na skuteczność. Cechuje się większą szybkostrzelnością niż inne bronie w tej klasie, ale dobrze posłany pocisk wyeliminuje potrzebę oddawania kolejnych strzałów. Ten karabin wyborowy brał udział w licznych bitwach, a wiele zróżnicowanych konfiguracji rusznikarskich odzwierciedla jego długą służbę."
L["mw19_weapon_spr_desc"] = "Niezawodny, potężny karabin powtarzalny .300 Winchester produkcji Sloan Precision. Popularność tej broni w zastosowaniach wojskowych i cywilnych zaowocowała bogatymi możliwościami personalizacji."

L["mw19_weapon_dragunov_desc"] = "Popularny karabin radziecki kalibru 7,62 mm x 54 mm R. Ten gazodynamiczny, samopowtarzalny karabin snajperski może się poszczycić dużą szybkostrzelnością."
L["mw19_weapon_hdr_desc"] = "Wielkokalibrowy powtarzalny karabin snajperski kalibru 12,7 x 108 mm. Ważący 48 g pocisk ma niższą prędkość wylotową, ale zadaje ogromne obrażenia nawet na bardzo dużych dystansach."
L["mw19_weapon_ax50_desc"] = "Potężny powtarzalny karabin snajperski kalibru .50 BMG. Wolframowe pociski z sabotem są szybkie i skuteczne, ale wymagają precyzyjnego strzelania na dużych dystansach."
L["mw19_weapon_rytec_desc"] = "Samopowtarzalny wielkokalibrowy karabin z amunicją .50 BMG, doskonały do walki na dużym dystansie. Specjalny wariant na amunicję wybuchową 25x59 mm oficjalnie stanowi sprzęt eksperymentalny. Użgtg w terenie w trakcie kilku ściśle tajnych misji, gdzie udowodnił swoją zabójczą skuteczność."

L["mw19_weapon_shield_desc"] = "Tarcza odporna na pociski i eksplozje. Zwiększa obrażenia zadawane w walce wręcz."

L["mw19_weapon_glock_desc"] = "Samopowtarzalny pistolet na amunicję .45 ACP. Niezawodny, kiedg przyjdzie ci walczyć na małym dystansie."
L["mw19_weapon_1911_desc"] = "Wszechstronny pistolet samopowtarzalny o średniej szybkostrzelności. Nieco większy zasięg niż w typowych pistoletach kalibru .45 ACP."
L["mw19_weapon_357_desc"] = "Rewolwer z samonapinaniem na amunicję .35? Magnum. Zapewnia dużą moc rażenia na większych dystansach."
L["mw19_weapon_m19_desc"] = "Samopowtarzalny pistolet kalibru 9 mm cechujący się dużą stabilnością i szybkostrzelnością."
L["mw19_weapon_deagle_desc"] = "Najpotężniejszy dostępny pistolet samopowtarzalny. Zadaje duże obrażenia nawet na średnim dystansie."
L["mw19_weapon_m9_desc"] = "Uniwersalny samopowtarzalny pistolet 9 mm. Niepozorna broń, świetnie sprawdzająca się w bliskich starciach. Mozna w niej dokonać pistoletowych ulepszeń rusznikarskich, które zwiększą przydatność w różnorodnych strategiach bojowych."
L["mw19_weapon_makarov_desc"] = "Solidna broń na bliskie starcia, z trybami podwójnego i pojedynczego działania. Wyposażono ją w kilka niestandardowych modyfikacji rusznikarskich, które czynią z niej doskonałe uzupełnienie każdego arsenału."

L["mw19_weapon_pila_desc"] = "Przenośna, działająca na podczerwień wyrzutnia rakiet ziemia-powietrze z trybem swobodnego ostrzału. Rakiety osiągają większą prędkość i cechują się średnią mocą wybuchu."
L["mw19_weapon_strela_desc"] = "Wyrzutnia bezodrzutowa 84 mm o dużej pręd kości wg lotowej strzelająca wg buchowgmi pociskami. Choć te niekierowane pociski przeciwpancerne mają niewielką siłę wybuchu, są niezwykle skuteczne przeciwko pojazdom."
L["mw19_weapon_javelin_desc"] = "Przenośna wyrzutnia rakiet samonaprowadzających cechujących się dużą siłą wybuchu. Rakiety na podczerwień atakują cele z góry, dzięki czemu mogą niszczyć nawet ciężko opancerzone pojazdy."
L["mw19_weapon_rpg_desc"] = "Wyrzutnia strzelająca niekierowanymi granatami rakietowymi o mniejszej prędkości i dużej silą wybuchu."
-- L["mw19_weapon_mgl_desc"] = "Rapid firing grenade launcher fed with a 6-round rotating cylinder. Can utilize a variety of 40mm rounds for various roles." -- UO

L["mw19_weapon_knife_desc"] = "Nóż taktgczng do walki wręcz. Standardowy egzemplarz wojskowy do cichych, szybkich i brudnych zadań."
L["mw19_weapon_stick_desc"] = "Dwie bojowe pałki umożliwiają operatorom szybkie rozprawienie się z przeciwnikiem. Le$ka i wytrzymała konstrukcja umożliwia wyprowadzanie szybkich ataków, dzięki czemu można błyskawicznie zneutralizować wrogów."
L["mw19_weapon_sword_desc"] = "Ręcznie wykute ostrza ze stali węglowej idealnie nadają się do cięcia wrogów."

L["mw19_weapon_nade_claymore_desc"] = "Mina zbliżeniowa."
L["mw19_weapon_nade_frag_desc"] = "Granat odłamkowy, który można odbezpieczyć przed rzutem."
L["mw19_weapon_nade_molotov_desc"] = "Prowizoryczny granat zapalający, eksplodujący przy uderzeniu."
L["mw19_weapon_nade_c4_desc"] = "Silny materiał wybuchowy przgczeoiającg się do powierzchni i zdalnie detonowany {ATTACK} zużyjesz wszystkie posiadane ładunki. Dwu krotne wciśnięcie {USE} zawsze detonuje materiał wybuchowy."
L["mw19_weapon_nade_semtex_desc"] = "Przyczepiający się granat z zapalnikiem czasowy m."
L["mw19_weapon_nade_knife_desc"] = "Nóż wielokrotnego użytku do szybkiej i cichej likwidacji wrogów."
L["mw19_weapon_nade_proximity_desc"] = "Ładunek aktywowany zbliżeniowo. Powoduje znaczne uszkodzenia pojazdów."
L["mw19_weapon_nade_thermite_desc"] = "Materiał wybuchowy, który intensywnie płonie przez chwilę po uderzeniu. Przykleja się do powierzchni."

L["mw19_weapon_nade_flash_desc"] = "Oślepia i ogłusza cele."
L["mw19_weapon_nade_stun_desc"] = "Spowalnia ruch i celowanie ofiary."
L["mw19_weapon_nade_smoke_desc"] = "Rozpyla dym, który utrudnia widzenie."
L["mw19_weapon_nade_snapshot_desc"] = "Na chwilę wykrywa wrogów w zasięgu rażenia."
L["mw19_weapon_nade_heartbeat_desc"] = "Tablet wyświetlający przybliżone położenie pobliskich przeciwników."
L["mw19_weapon_nade_stim_desc"] = "Wojskowy stymulant wypalający rang i odnawiający Sprint taktyczny."
L["mw19_weapon_nade_decoy_desc"] = "Granat utrudniający rozpoznanie, Symuluje strzały i sygnatury na radarze, mgląc przeciwników."
L["mw19_weapon_nade_gas_desc"] = "Wybucha po zetknięciu z ziemią. Wypuszcza chmurę gazu łzawiącego, który spowalnia ruch, wywołuje zaburzenia widzenia i kaszel."

-- L["mw19_weapon_minigun_desc"] = "Portable gatling gun with a very high cyclic rate." -- UO
-- L["mw19_weapon_fists_desc"] = "When all else fails, punch your way out. Remember, fists do not require reloading, so they are always quick." -- UO
-- L["mw19_weapon_nade_rock_desc"] = "For when you need to hit an enemy with a \"non-lethal\" item, or if you need to provide a distraction in order to sneak past guards." -- UO
