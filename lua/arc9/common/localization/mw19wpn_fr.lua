L = {} -- French, UO by ??

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

L["mw19_caliber_556"] = "5,56 OTAN"
L["mw19_caliber_762"] = "7,62 OTAN"
L["mw19_caliber_762soviet"] = "7,62 soviétique"
L["mw19_caliber_762mmr"] = "7,62×54 mm R"
L["mw19_caliber_762mauser"] = "7,92 Mauser"
L["mw19_caliber_545"] = "5,45 × 39 mm"
L["mw19_caliber_127x55"] = "12,7 × 55 mm"
L["mw19_caliber_127x108"] = "12,7 × 108 mm"
L["mw19_caliber_939"] = "9 × 39 mm"
L["mw19_caliber_919"] = "9 mm Parabellum"
L["mw19_caliber_57x28"] = "5,7 × 28 mm"
L["mw19_caliber_918"] = "9 mm Makarov"
L["mw19_caliber_46x30"] = "4,6 × 30 mm"
L["mw19_caliber_45acp"] = ".45 ACP"
L["mw19_caliber_12gauge"] = "Calibre 12"
L["mw19_caliber_338"] = ".338 Norma Mag"
L["mw19_caliber_45-70"] = ".45-70 gouvernemental"
L["mw19_caliber_bolt"] = "Carreau de 508 mm"
L["mw19_caliber_300"] = ".300 Win Mag"
L["mw19_caliber_50bmg"] = ".50 BMG"
L["mw19_caliber_357"] = ".357 Magnum"
L["mw19_caliber_50p"] = ".50 pistolet"

/////////// Country of Origin -- UO
-- L["mw19_country"] = "Country of Origin1"

L["mw19_country_austria"] = "Autriche"
L["mw19_country_belgium"] = "Belgique"
L["mw19_country_czechrepublic"] = "République tchèque"
L["mw19_country_france"] = "France"
L["mw19_country_germany"] = "Allemagne"
L["mw19_country_israel"] = "Israël"
L["mw19_country_italy"] = "Italie"
L["mw19_country_russia"] = "Russie"
L["mw19_country_southafrica"] = "Afrique du Sud"
L["mw19_country_sovietunion"] = "Union soviétique"
L["mw19_country_sweden"] = "Suède"
L["mw19_country_switzerland"] = "Suisse"
L["mw19_country_uk"] = "Royaume-Uni"
L["mw19_country_usa"] = "États-Unis"
L["mw19_country_japan"] = "Japon"

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
L["mw19_category_weapon_ar"] = "Fusils d'assaut"
L["mw19_category_weapon_smg"] = "Mitraillettes"
L["mw19_category_weapon_shotgun"] = "Fusils à pompe"
L["mw19_category_weapon_lmg"] = "Mitrailleuses"
L["mw19_category_weapon_marksman"] = "Fusils tactiques"
L["mw19_category_weapon_sniper"] = "Fusils de précision"
L["mw19_category_weapon_melee"] = "Corps à corps"
L["mw19_category_weapon_throwable"] = "Mortel & Tactique"

L["mw19_category_weapon_handgun"] = "Armes de poing"
L["mw19_category_weapon_handgun_akimbo"] = "Armes de poing (Akimbo)"
L["mw19_category_weapon_launcher"] = "Lanceurs"

/////////// Weapon Classes
L["mw19_class_weapon_ar"] = "Fusil d'assaut"
L["mw19_class_weapon_smg"] = "Mitraillette"
L["mw19_class_weapon_shotgun"] = "Fusil à pompe"
L["mw19_class_weapon_lmg"] = "Mitrailleuse"
L["mw19_class_weapon_marksman"] = "Fusil tactique"
L["mw19_class_weapon_sniper"] = "Fusil de précision"
L["mw19_class_weapon_melee"] = "Corps à corps"
L["mw19_class_weapon_lethal"] = "Mortel"
L["mw19_class_weapon_tactical"] = "Tactique"
L["mw19_class_weapon_grenade"] = "Grenade" -- UO

L["mw19_class_weapon_handgun"] = "Arme de poing"
L["mw19_class_weapon_launcher"] = "Lanceur"

//////////////////////////////////////////////////////////////////////
///////////////////////////// Attachments
//////////////////// Customize
L["mw19_category_camouflage"] = "Camouflage"
L["mw19_category_reticle"] = "Réticule"
L["mw19_category_charm"] = "Porte-bonheur"
L["mw19_category_sticker"] = "Autocollant"

//////////////////// Attachment Categories
L["mw19_category_muzzle"] = "Bouche"
L["mw19_category_barrel"] = "Canon"
L["mw19_category_laser"] = "Laser"
L["mw19_category_optic"] = "Lunette"
L["mw19_category_stock"] = "Crosse"
L["mw19_category_underbarrel"] = "Accessoire canon"
L["mw19_category_magazine"] = "Chargeur"
L["mw19_category_reargrip"] = "Poignée arrière"
L["mw19_category_perk"] = "Atout"

-- Specific to Handguns
L["mw19_category_triggeraction"] = "Gâchette"

-- Specific to the R9-0 Shotgun
L["mw19_category_pumps"] = "Pompes"

-- Specific to the 725 Shotgun
L["mw19_category_guard"] = "Poignée"

-- Specific to the VLK Rogue Shotgun
L["mw19_category_pumpgrip"] = "Poignée de pompe"

-- Specific to the Crossbow Marksman Rifle
L["mw19_category_cable"] = "Câble"
L["mw19_category_arms"] = "Arc"
L["mw19_category_bolt"] = "Carreau"

-- Specific to the SP-R 208 Marksman Rifle
L["mw19_category_boltassembly"] = "Culasse"

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
L["mw19_optic_stat_zoom2"] = "Niveau de zoom" -- Most scopes
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
L["cod2019_perks_soh.printname"] = "Tour de passe-passe"
L["cod2019_perks_soh.compactname"] = "TDPP"
L["cod2019_perks_soh.description"] = "Entraînement spécial pour recharger plus rapidement en condition extrême."

L["cod2019_perks_speedmelee.printname"] = "Mêlée rapide"
L["cod2019_perks_speedmelee.compactname"] = "Mêlée"
L["cod2019_perks_speedmelee.description"] = "Entraînement spécial pour effectuer rapidement des attaques au corps à corps."

L["cod2019_perks_heavyhitter.printname"] = "Coup brutal"
L["cod2019_perks_heavyhitter.compactname"] = "Brutal"
L["cod2019_perks_heavyhitter.description"] = "Les attaques au corps à corps permettent d'étourdir plus efficacement les cibles."

-- L["cod2019_perks_enforcer.printname"] = "Enforcer" -- UO
-- L["cod2019_perks_enforcer.compactname"] = "Enforcer" -- UO
-- L["cod2019_perks_enforcer.description"] = "Grants the user 30% resistance to all damage." -- UO

-- L["cod2019_perks_bolt.printname"] = "Deft Hands" -- UO
-- L["cod2019_perks_bolt.compactname"] = "Deft" -- UO
-- L["cod2019_perks_bolt.description"] = "Training with your weapon allows you to cycle the weapon faster." -- UO

-- L["cod2019_perks_slamfire.printname"] = "Slamfire" -- UO
-- L["cod2019_perks_slamfire.compactname"] = "Slamfire" -- UO
-- L["cod2019_perks_slamfire.description"] = "Bruteforce the weapon to fire and cycle the weapon much quicker at the cost of reduced accuracy." -- UO

L["cod2019_perks_burst.printname"] = "Tir en rafales (x3)"
L["cod2019_perks_burst.compactname"] = "Rafales"
L["cod2019_perks_burst.description"] = "Change le mode de tir pour tirer en rafales de <color=100,255,100>3 coups</color>."

L["cod2019_perks_burst_2.printname"] = "Tir en rafales (x2)"
L["cod2019_perks_burst_2.description"] = "Change le mode de tir pour tirer en rafales de <color=100,255,100>2 coups</color>."

-- L["cod2019_perks_super_sprint.printname"] = "Tactical Sprint" -- UO
-- L["cod2019_perks_super_sprint.compactname"] = "Tac. Sprint" -- UO
-- L["cod2019_perks_super_sprint.description"] = "Provides an altered stance when sprinting. Cancels out up to <color=100,255,100>20%</color> sprint speed reduction at the cost of reduced sprint-to-fire speed." -- UO

L["cod2019_perks_auto.printname"] = "Automatiquement" -- UO
L["cod2019_perks_auto.compactname"] = "Auto." -- UO
L["cod2019_perks_auto.description"] = "Change le mode de tir pour tirer <color=100,255,100>automatiquement</color>." -- UO

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
L["mw19_weapon_fr556"] = "FR 5.56"
L["mw19_weapon_oden"] = "Oden"
L["mw19_weapon_m13"] = "M13"
L["mw19_weapon_scar"] = "FN Scar 17"
L["mw19_weapon_ak47"] = "AK-47"
L["mw19_weapon_ram7"] = "RAM-7"
L["mw19_weapon_grau"] = "Grau 5.56"
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
L["mw19_weapon_r90"] = "Fusil à pompe R9-0"
L["mw19_weapon_725"] = "725"
L["mw19_weapon_origin12"] = "Origin 12 Shotgun"
L["mw19_weapon_vlk"] = "VLK Rogue"
L["mw19_weapon_aa12"] = "JAK-12"

L["mw19_weapon_pkm"] = "PKM"
L["mw19_weapon_sa87"] = "SA87"
L["mw19_weapon_m91"] = "M91"
L["mw19_weapon_mg34"] = "MG34"
L["mw19_weapon_holger"] = "Holger-26"
L["mw19_weapon_bruen"] = "Bruen Mk9"
L["mw19_weapon_finn"] = "Mitrailleuse Finn"
L["mw19_weapon_raal"] = "RAAL MG"

L["mw19_weapon_ebr"] = "EBR-14"
L["mw19_weapon_mk2"] = "Carabine MK2"
L["mw19_weapon_kar98"] = "Kar98k"
L["mw19_weapon_crossbow"] = "Arbalète"
L["mw19_weapon_sks"] = "SKS"
L["mw19_weapon_spr"] = "SP-R 208"

L["mw19_weapon_dragunov"] = "Dragunov"
L["mw19_weapon_hdr"] = "HDR"
L["mw19_weapon_ax50"] = "AX-50"
L["mw19_weapon_rytec"] = "Rytec AMR"

L["mw19_weapon_shield"] = "Bouclier antiémeute"

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

L["mw19_weapon_knife"] = "Couteau"
L["mw19_weapon_stick"] = "Bâtons de Kali"
L["mw19_weapon_sword"] = "Double kodachi"

L["mw19_weapon_akimbo"] = "%s Akimbo"

L["mw19_weapon_nade_claymore"] = "Claymore"
L["mw19_weapon_nade_frag"] = "Grenade frag"
L["mw19_weapon_nade_molotov"] = "Cocktail Molotov"
L["mw19_weapon_nade_c4"] = "C4"
L["mw19_weapon_nade_semtex"] = "Semtex"
L["mw19_weapon_nade_knife"] = "Couteau de lancer"
L["mw19_weapon_nade_proximity"] = "Mine de proximité"
L["mw19_weapon_nade_thermite"] = "Thermite"
L["mw19_weapon_nade_thermite_alt"] = "Grenade thermite" -- UO

L["mw19_weapon_nade_flash"] = "Grenade flash"
L["mw19_weapon_nade_stun"] = "Grenade paralysante"
L["mw19_weapon_nade_smoke"] = "Grenade fumigène"
L["mw19_weapon_nade_snapshot"] = "Grenade sensorielle"
L["mw19_weapon_nade_heartbeat"] = "Capteur cardiaque"
L["mw19_weapon_nade_stim"] = "Stimulant"
L["mw19_weapon_nade_decoy"] = "Grenade-leurre"
L["mw19_weapon_nade_gas"] = "Grenade lacrymogènge"

-- L["mw19_weapon_minigun"] = "Minigun"-- UO
-- L["mw19_weapon_fists"] = "Fists" -- UO
-- L["mw19_weapon_nade_rock"] = "Rock" -- UO

//////////// Weapon Descriptions
L["mw19_weapon_kilo141_desc"] = "Fusil d'assaut automatique doté d'une conception ergonomique qui facilite son maniement et dont la cadence de tir stable minimise le recul."
L["mw19_weapon_fal_desc"] = "Fusil d'assaut semi-automatique à cadence de tir élevée qui permet d'enchaîner plus rapidement les tirs."
L["mw19_weapon_m4a1_desc"] = "Fusil d'assaut automatique et polyvalent. En maîtrisant ses tirs, cette arme peut se révéler très efficace à distance."
L["mw19_weapon_fr556_desc"] = "Fusil d'assaut bullpup tirant des rafales de 3 coups. Une rafale bien placée peut être extrêmement mortelle à moyenne portée."
L["mw19_weapon_oden_desc"] = "Fusil d'assaut automatique bullpup à cadence de tir lente permettant un meilleur contrôle des munitions 12,7x55 mm."
L["mw19_weapon_m13_desc"] = "Fusil d'assaut automatique utilisant un système de piston qui garantit une cadence de tir élevée et un faible recul."
L["mw19_weapon_scar_desc"] = "Fusil d'assaut automatique utilisant des balles de gros calibre. Idéal pour infliger de lourds dégâts à longue portée."
L["mw19_weapon_ak47_desc"] = "Fusil d'assaut automatique fiable qui accueille des munitions soviétiques de calibre 7,62 mm. Nécessite de pouvoir gérer efficacement le recul important."
L["mw19_weapon_ram7_desc"] = "Fusil d'assaut bullpup automatique compact qui se prête parfaitement au combat rapproché."
L["mw19_weapon_grau_desc"] = "Ce fusil d'assaut modulaire calibre 5,56 est léger et maniable, pour une portée exceptionnelle. Un artisanat de précision et des canons de pointe supplémentaires confèrent à cette arme un potentiel inégalé."
L["mw19_weapon_cr56_desc"] = "Ce fusil d'assaut automatique de calibre 7,62 x 39 mm est léger, compact et puissant. Conçu exclusivement pour un usage militaire, le modèle standard est redoutable à moyenne portée et peut être configuré pour diverses stratégies offensives."
L["mw19_weapon_an94_desc"] = "Ce fusil d'assaut 5,45 x 39 mm russe de pointe possède une fonctionnalité de <color=255,255,100>rafales</color> unique. Le premier tir est immédiatement suivi d'une seconde rafale avant que le recul ne soit ressenti. Ces balles forment un groupe serré, pour des dégâts potentiels augmentés. Le mécanisme est nourri par un chargeur incliné, et un récepteur réciproque aide à garder le contrôle sur le recul."
L["mw19_weapon_asval_desc"] = "Avec ses munitions 9 x 39 mm <color=255,255,100>subsoniques</color> et son <color=255,255,100>silencieux</color> intégral, l'AS VAL a été conçu tout spécialement pour mêler discrétion, précision et force de pénétration. Cette arme fera des ravages aux mains des opérateurs capables de gérer son recul et sa cadence de tir particulièrement élevée."

L["mw19_weapon_aug_desc"] = "Arme automatique modulable adaptée aux déplacements et aux combats rapprochés."
L["mw19_weapon_p90_desc"] = "Mitraillette automatique bullbup. Son chargeur monté unique contient une grande quantité de munitions à grande vélocité 5,7 x 28 mm."
L["mw19_weapon_mp5_desc"] = "Mitraillette automatique 9mm. Elle offre un équilibre parfait entre stabilité, mobilité et puissance."
L["mw19_weapon_uzi_desc"] = "Mitraillette automatique à culasse ouverte : simple, stable et efficace."
L["mw19_weapon_pp19_desc"] = "Mitraillette automatique équilibrée avec un chargeur hélicoïdal haute capacité."
L["mw19_weapon_mp7_desc"] = "Arme automatique compacte offrant une cadence de tir élevée et un faible recul."
L["mw19_weapon_striker_desc"] = "Mitraillette infligeant de lourds dégâts et accueillant des munitions calibre .45 Auto. Sa portée dépasse celle des autres armes de sa classe. Une vitesse de tir modérée permet de garder le contrôle de l'arme, même en mode automatique."
L["mw19_weapon_fennec_desc"] = "Mitraillette automatique et agressive offrant un faible recul et une cadence de tir incroyablement élevée, idéale pour faire le ménage dans une pièce ou attaquer en première ligne."
L["mw19_weapon_iso_desc"] = "Mitraillette de précision 9 mm disposant d'une cadence de tir élevée. Cette arme légère et fiable est conçue pour les affrontements à courte distance."
L["mw19_weapon_cx9_desc"] = "Cette mitraillette dispose d'une manœuvrabilité supérieure et d'une cadence de tir élevée. Particulièrement efficace dans les combats rapprochés."

L["mw19_weapon_m680_desc"] = "Fusil à pompe fiable et équilibré de calibre .12."
L["mw19_weapon_r90_desc"] = "Arme dont le double canon permet deux tirs rapides avant chaque rechargement."
L["mw19_weapon_725_desc"] = "Fusil à canon basculant avec une capacité de 2 cartouches. Son canon long suralésé et son choke cylindrique permettent de limiter la dispersion tout en infligeant un maximum de dégâts à longue portée."
L["mw19_weapon_origin12_desc"] = "Fusil à pompe semi-automatique avec des chargeurs grande capacité permettant de tirer en continu. Efficace à courte portée."
L["mw19_weapon_vlk_desc"] = "Un fusil à pompe calibre 12 maniable signé VLK, disposant de nombreuses options de modifications de portée, de stabilité et de maniabilité."
L["mw19_weapon_aa12_desc"] = "Fusil à pompe automatique à verrou ouvert équipé d'un système d'expulsion du gaz réduisant le recul. Ce fusil à pompe de combat décharge du plomb à longue portée et à une cadence stable."

L["mw19_weapon_pkm_desc"] = "Mitrailleuse automatique légère tirant des balles de calibre 7,62 mm. Elle dispose d'une cadence de tir correcte et inflige de lourds dégâts."
L["mw19_weapon_sa87_desc"] = "Mitrailleuse automatique bullpup. Sa cadence de tir réduite et ses munitions de 5,56 mm lui garantissent une bonne stabilité et une excellente efficacité à longue portée."
L["mw19_weapon_m91_desc"] = "Mitrailleuse robuste qui sacrifie sa mobilité contre une meilleure stabilité. Ses balles de gros calibre seront idéales contre les cibles éloignées."
L["mw19_weapon_mg34_desc"] = "Arme automatique à cadence de tir élevée et dotée de munitions Mauser 7,92 mm mortelles. Les mitrailleuses datant de la seconde guerre mondiale restent encore aujourd'hui de bonne facture, et sont très efficaces sur le champ de bataille."
L["mw19_weapon_holger_desc"] = "Mitrailleuse automatique polyvalente de calibre 5,56 mm. Son design peut être modifié pour s'adapter à toutes les portées."
L["mw19_weapon_bruen_desc"] = "Cette mitrailleuse de calibre 5,56 dispose d'un système de refroidissement par air, d'une cadence de tir compétitive et d'une excellente stabilité qui vous permettront de dominer les combats à moyenne et longue portée."
L["mw19_weapon_finn_desc"] = "Mitrailleuse 5.56 à culasse ouverte ultra-légère, à la cadence de tir faible et au contrôle du recul avancé, qui confèrent au Finn une précision de tir automatique exceptionnelle."
L["mw19_weapon_raal_desc"] = "La mitrailleuse légère d'assaut et de reconnaissance auxiliaire offre une faible cadence de tir et un canon réciproque pour compenser le recul des puissantes munitions de calibre .338. Sa fabrication en titane lui permet de conserver un poids raisonnable."

L["mw19_weapon_ebr_desc"] = "Fusil tactique semi-automatique à longue portée. L équilibre parfait entre cadence de tir et puissance de feu."
L["mw19_weapon_mk2_desc"] = "Fusil à levier très précis. Il neutralisera n'importe quel ennemi d'une balle bien placée dans la tête ou la poitrine."
L["mw19_weapon_kar98_desc"] = "Fusil à verrou utilisant des munitions Mauser 7,92 mm. Une relique de la Seconde Guerre mondiale qui demeure particulièrement mortelle entre les mains d'un tireur d'élite."
L["mw19_weapon_crossbow_desc"] = "Silencieuse mais agile, cette arbalète tire des carreaux de 508 mm particulièrement puissants. Avec ses éléments personnalisables, ses fonctionnalités uniques et le type incomparable de ses munitions, elle n'a pas son égal. Les carreaux 508 mm standard peuvent être récupérés et ne sont pas détectables par les systèmes Trophg."
L["mw19_weapon_sks_desc"] = "Carabine semi-automatique légère qui accueille des munitions de calibre 7,62 x 39 mm. Ce fusil soviétique puissant et maniable privilégie l'efficacité sur la précision. Il possède une cadence de tir plus rapide que d'autres armes de sa catégorie, mais une balle bien placée pourra rendre inutile tout tir supplémentaire. Ce fusil tactique classique a participé à de nombreuses batailles, et ses configurations d'armurerie uniques sont la preuve de sa polyvalence au cours de l'histoire."
L["mw19_weapon_spr_desc"] = "Fusil à verrou fiable et puissant de Sloan Precision. Tire des cartouches .300 Win. Cette arme, aussi utile à des fins militaires que civiles, offre tout un tas d'options de personnalisation."

L["mw19_weapon_dragunov_desc"] = "Une arme de conception soviétique qui utilise des balles de P,62mm x 54 mm R. Ce fusil de précision semi-automatique permet d'enchaîner rapidement les tirs."
L["mw19_weapon_hdr_desc"] = "Fusil de précision antimatériel à verrou qui accueille des munitions de calibre 12,7 x 108 mm. Ses cartouches de 745 grains ont une vitesse initiale réduite, mais sont dévastatrices à très longue portée."
L["mw19_weapon_ax50_desc"] = "Puissant fusil de précision à verrou utilisant des munitions de calibre .50 BMG. Ses balles renforcées au tungstène sont rapides et puissantes, mais l'arme requiert une grande précision pour les tirs à longue distance."
L["mw19_weapon_rytec_desc"] = "Ce fusil anti-matériel semi-automatique accueille des munitions .50 BMG pour une efficacité inégalée à longue distance. Bien qu'officiellement expérimentale, une variante disposant de munitions 25 x 59 mm hautement explosives a déjà fait ses preuves lors de nombreuses missions classées top secret."

L["mw19_weapon_shield_desc"] = "Bouclier résistant aux balles et aux explosions. Permet d'augmenter les dégâts de corps à corps."

L["mw19_weapon_glock_desc"] = "Pistolet semi-automatique tirant des munitions de calibre .45 ACP. Une arme très utile en situation de combat rapproché."
L["mw19_weapon_1911_desc"] = "Une arme de poing semi-automatique et équilibrée dotée d'une cadence de tir modérée. Sa portée est légèrement supérieure à celle des autres pistolets .45 ACP."
L["mw19_weapon_357_desc"] = "Un revolver qui tire des balles de calibre Magnum .357 pour des dégâts élevés à distance."
L["mw19_weapon_m19_desc"] = "Pistolet 9 mm semi-automatique à la stabilité excellente et à la cadence de tir élevée."
L["mw19_weapon_deagle_desc"] = "La plus puissante des armes de poing semi-automatiques disponibles. Inflige de lourds dégâts à moyenne portée."
L["mw19_weapon_m9_desc"] = "Pistolet semi-automatique 9 mm parfaitement équilibré, Cette arme de poing ne paie pas de mine, c'est sûr, mais elle excelle pour tout ce qui implique du combat rapproché et permet, comme toutes les autres armes de sa catégorie, d'adopter plusieurs stratégies d'engagement."
L["mw19_weapon_makarov_desc"] = "Particulièrement efficace dans les combats rapprochés, cette arme de poing à double ou simple action est équipée de mods personnalisés indispensables à tout arsenal."

L["mw19_weapon_pila_desc"] = "Lance-missiles sol-air portable à infrarouge doté d'une option de tir libre. Les missiles autopropuhés sont plus rapides mais disposent d'une puissance explosive modérée."
L["mw19_weapon_strela_desc"] = "Lanceur de calibre 84 mm tirant des projectiles explosifs à très grande vitesse. Pas de recul. L $ munitions perforantes disposent d'une puissance explosive faible, mais sont particulièrement efficaces contre les véhicules."
L["mw19_weapon_javelin_desc"] = "Lance-missiles portable à verrouillage doté d'une forte puissance explosive. Les missiles guidés par infrarouge attaquent par le dessus, et peuvent ainsi détruire les véhicules blindés."
L["mw19_weapon_rpg_desc"] = "Lance-roquettes non guidées aux munitions autopropulsées lentes mais à forte puissance explosive."
-- L["mw19_weapon_mgl_desc"] = "Rapid firing grenade launcher fed with a 6-round rotating cylinder. Can utilize a variety of 40mm rounds for various roles." -- UO

L["mw19_weapon_knife_desc"] = "Couteau tactique de combat rapproché. Modèle militaire standard, utilisé pour les éliminations rapides et discrètes."
L["mw19_weapon_stick_desc"] = "Ces doubles bâtons offrent une agilité hors du commun pour approcher une cible en toute tranquillité. Robustes et légers, ils vous permettent d'enchaîner les attaques sans laisser le temps à votre ennemi de réagir."
L["mw19_weapon_sword_desc"] = "Ces lames en carbone forgées à la main n'ont pas leur égal pour découper la chair."

L["mw19_weapon_nade_claymore_desc"] = "Mine explosive à déclencheur de proximité."
L["mw19_weapon_nade_frag_desc"] = "Grenade à fragmentation pouvant être gardée un instant en main après dégoupillage."
L["mw19_weapon_nade_molotov_desc"] = "Dispositif incendiaire improvisé qui explose à l'impact."
L["mw19_weapon_nade_c4_desc"] = "Un explosif qui se colle aux surfaces et que vous pouvez déclencher à distance avec {ATTACK} lorsque l'équipement est épuisé.\n\nAppuyez deux fois sur {USE} explosifs. pour déclencher les explosifs."
L["mw19_weapon_nade_semtex_desc"] = "Grenade adhésive avec minuteur."
L["mw19_weapon_nade_knife_desc"] = "Couteau récupérable qui peut être lancé pour éliminer rapidement et silencieusement les ennemis."
L["mw19_weapon_nade_proximity_desc"] = "Explosif doté d'un système de déclenchement à proximité. Inflige de lourds dégâts aux véhicules."
L["mw19_weapon_nade_thermite_desc"] = "Explosif qui brûle intensément pendant un court instant après l'impact. Se colle aux surfaces."

L["mw19_weapon_nade_flash_desc"] = "Aveugle et assourdit les cibles."
L["mw19_weapon_nade_stun_desc"] = "Ralentit les déplacements et la visée."
L["mw19_weapon_nade_smoke_desc"] = "Déploie un écran de fumée qui bloque la vision."
L["mw19_weapon_nade_snapshot_desc"] = "Permet à votre escouade de voir les ennemis pris dans le rayon de l'explosion pendant un court instant."
L["mw19_weapon_nade_heartbeat_desc"] = "Appareil donnant des informations basiques sur les ennemis proches."
L["mw19_weapon_nade_stim_desc"] = "Stimulant militaire qui cautérise les blessures et réinitialise le temps de rechargement du sprint tactique."
L["mw19_weapon_nade_decoy_desc"] = "Grenade qui simule de faux bruits de tirs et de fausses signatures radar pour perturber l'ennemi."
L["mw19_weapon_nade_gas_desc"] = "Explose à l'impact et libère un nuage de gaz lacrymogène qui ralentit les mouvements, brouille la vision et provoque une forte toux."

-- L["mw19_weapon_minigun_desc"] = "Portable gatling gun with a very high cyclic rate." -- UO
-- L["mw19_weapon_fists_desc"] = "When all else fails, punch your way out. Remember, fists do not require reloading, so they are always quick." -- UO
-- L["mw19_weapon_nade_rock_desc"] = "For when you need to hit an enemy with a \"non-lethal\" item, or if you need to provide a distraction in order to sneak past guards." -- UO
