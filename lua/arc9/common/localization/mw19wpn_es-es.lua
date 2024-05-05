L = {} -- Spanish (EU), UO by ??

local lineb = "\n"

local changeammo = { -- UO
pistol = lineb .. "Cambia el tipo de munición a <color=255,255,100>Munición de pistola</color>.",
["357"] = lineb .. "Cambia el tipo de munición a <color=255,255,100>Munición Magnum</color>.",
smg1 = lineb .. "Cambia el tipo de munición a <color=255,255,100>Munición de carabina</color>.",
ar2 = lineb .. "Cambia el tipo de munición a <color=255,255,100>Munición de rifle</color>.",
buckshot = lineb .. "Cambia el tipo de munición a <color=255,255,100>Munición de escopeta</color>.",
sniperpenetratedround = lineb .. "Cambia el tipo de munición a <color=255,255,100>Munición de francotirador</color>.",
smg1_grenade = lineb .. "Cambia el tipo de munición a <color=255,255,100>Granadas de rifle</color>.",
xbowbolt = lineb .. "Cambia el tipo de munición a <color=255,255,100>Flechas de ballesta</color>.",
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

L["mw19_caliber_556"] = "OTAN 5,56"
L["mw19_caliber_762"] = "OTAN 7,62"
L["mw19_caliber_762soviet"] = "Sovitética 7,62"
L["mw19_caliber_762mmr"] = "7,62 × 54 mm R"
L["mw19_caliber_762mauser"] = "7,62 Mauser"
L["mw19_caliber_545"] = "5.45×39mm"
L["mw19_caliber_127x55"] = "12,7 × 55 mm"
L["mw19_caliber_127x108"] = "12,7 × 108 mm"
L["mw19_caliber_939"] = "9 × 39 mm"
L["mw19_caliber_919"] = "9 mm Parabellum"
L["mw19_caliber_57x28"] = "5,7 × 28 mm"
L["mw19_caliber_918"] = "9 mm Makarov"
L["mw19_caliber_46x30"] = "4,6 × 30 mm"
L["mw19_caliber_45acp"] = "ACP de calibre 45"
L["mw19_caliber_12gauge"] = "Calibre 12"
L["mw19_caliber_338"] = "Cargador de calibre 0.338 Norma"
L["mw19_caliber_45-70"] = "Gubernamental de calibre 45-70"
L["mw19_caliber_bolt"] = "Virote de 51cm"
L["mw19_caliber_300"] = "Cargador de calibre .300 Winchester"
L["mw19_caliber_50bmg"] = "BMG de calibre 50"
L["mw19_caliber_357"] = "Calibre .357 Magnum"
L["mw19_caliber_50p"] = "Pistola de calibre 50"

/////////// Country of Origin -- UO
-- L["mw19_country"] = "Country of Origin1"

L["mw19_country_austria"] = "Austria"
L["mw19_country_belgium"] = "Bélgica"
L["mw19_country_czechrepublic"] = "República Checa"
L["mw19_country_france"] = "Francia"
L["mw19_country_germany"] = "Alemania"
L["mw19_country_israel"] = "Israel"
L["mw19_country_italy"] = "Italia"
L["mw19_country_russia"] = "Rusia"
L["mw19_country_southafrica"] = "Sudáfrica"
L["mw19_country_sovietunion"] = "Unión Soviética"
L["mw19_country_sweden"] = "Suecia"
L["mw19_country_switzerland"] = "Suiza"
L["mw19_country_uk"] = "Reino Unido"
L["mw19_country_usa"] = "Estados Unidos"
L["mw19_country_japan"] = "Japón"

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
L["mw19_category_weapon_ar"] = "Fusiles de asalto"
L["mw19_category_weapon_smg"] = "Subfusiles"
L["mw19_category_weapon_shotgun"] = "Escopetas"
L["mw19_category_weapon_lmg"] = "Ametralladoreas ligeras"
L["mw19_category_weapon_marksman"] = "Fusiles tácticos"
L["mw19_category_weapon_sniper"] = "Fusiles de precisión"
L["mw19_category_weapon_melee"] = "Cuerpo a cuerpo"
L["mw19_category_weapon_throwable"] = "Letal & Táctico"

L["mw19_category_weapon_handgun"] = "Armas cortas"
L["mw19_category_weapon_handgun_akimbo"] = "Armas cortas (Duales)"
L["mw19_category_weapon_launcher"] = "Lanzadores"

/////////// Weapon Classes
L["mw19_class_weapon_ar"] = "Fusil de asalto"
L["mw19_class_weapon_smg"] = "Subfusil"
L["mw19_class_weapon_shotgun"] = "Escopeta"
L["mw19_class_weapon_lmg"] = "Ametralladora ligera"
L["mw19_class_weapon_marksman"] = "Fusil táctico"
L["mw19_class_weapon_sniper"] = "Fusil de precisión"
L["mw19_class_weapon_melee"] = "Cuerpo a cuerpo"
L["mw19_class_weapon_lethal"] = "Letal"
L["mw19_class_weapon_tactical"] = "Táctico"
L["mw19_class_weapon_grenade"] = "Granada" -- UO

L["mw19_class_weapon_handgun"] = "Arma corta"
L["mw19_class_weapon_launcher"] = "Lanzador"

//////////////////////////////////////////////////////////////////////
///////////////////////////// Attachments
//////////////////// Customize
L["mw19_category_camouflage"] = "Camuflaje"
L["mw19_category_reticle"] = "Retícula"
L["mw19_category_charm"] = "Amuleto"
L["mw19_category_sticker"] = "Pegatina"

//////////////////// Attachment Categories
L["mw19_category_muzzle"] = "Bocacha"
L["mw19_category_barrel"] = "Cañón"
L["mw19_category_laser"] = "Láser"
L["mw19_category_optic"] = "Mira"
L["mw19_category_stock"] = "Culata"
L["mw19_category_underbarrel"] = "Acople"
L["mw19_category_magazine"] = "Cargador"
L["mw19_category_reargrip"] = "Emuñadura trasera"
L["mw19_category_perk"] = "Ventaja"

-- Specific to Handguns
L["mw19_category_triggeraction"] = "Sistema del gatillo"

-- Specific to the R9-0 Shotgun
L["mw19_category_pumps"] = "Correderas"

-- Specific to the 725 Shotgun
L["mw19_category_guard"] = "Guarda"

-- Specific to the VLK Rogue Shotgun
L["mw19_category_pumpgrip"] = "Empuñadura de corredera"

-- Specific to the Crossbow Marksman Rifle
L["mw19_category_cable"] = "Cable"
L["mw19_category_arms"] = "Arcos"
L["mw19_category_bolt"] = "Virote"

-- Specific to the SP-R 208 Marksman Rifle
L["mw19_category_boltassembly"] = "Mecanismo de cerrojo"

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
L["mw19_optic_stat_zoom2"] = "Nivel de zoom" -- Most scopes
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
L["cod2019_perks_soh.printname"] = "Prestidigitación"
L["cod2019_perks_soh.compactname"] = "Prestid."
L["cod2019_perks_soh.description"] = "Entrenamiento para recargar más rápido bajo presión."

L["cod2019_perks_speedmelee.printname"] = "CaC rápido"
L["cod2019_perks_speedmelee.compactname"] = "CaC r."
L["cod2019_perks_speedmelee.description"] = "Entrenamiento en ejecución de maniobras cuerpo a cuerpo a gran velocidad."

L["cod2019_perks_heavyhitter.printname"] = "Peso pesado"
L["cod2019_perks_heavyhitter.compactname"] = "Pesado"
L["cod2019_perks_heavyhitter.description"] = "Los ataques cuerpo a cuerpo aturden más a los objetivos."

-- L["cod2019_perks_enforcer.printname"] = "Enforcer" -- UO
-- L["cod2019_perks_enforcer.compactname"] = "Enforcer" -- UO
-- L["cod2019_perks_enforcer.description"] = "Grants the user 30% resistance to all damage." -- UO

-- L["cod2019_perks_bolt.printname"] = "Deft Hands" -- UO
-- L["cod2019_perks_bolt.compactname"] = "Deft" -- UO
-- L["cod2019_perks_bolt.description"] = "Training with your weapon allows you to cycle the weapon faster." -- UO

-- L["cod2019_perks_slamfire.printname"] = "Slamfire" -- UO
-- L["cod2019_perks_slamfire.compactname"] = "Slamfire" -- UO
-- L["cod2019_perks_slamfire.description"] = "Bruteforce the weapon to fire and cycle the weapon much quicker at the cost of reduced accuracy." -- UO

L["cod2019_perks_burst.printname"] = "Ráfaga"
L["cod2019_perks_burst.compactname"] = "Ráfaga"
L["cod2019_perks_burst.description"] = "Cambia el modo de disparo a ráfaga de <color=100,255,100>3 disparos</color>."

L["cod2019_perks_burst_2.description"] = "Cambia el modo de disparo a ráfaga de <color=100,255,100>2 disparos</color>."

-- L["cod2019_perks_super_sprint.printname"] = "Tactical Sprint" -- UO
-- L["cod2019_perks_super_sprint.compactname"] = "Tac. Sprint" -- UO
-- L["cod2019_perks_super_sprint.description"] = "Provides an altered stance when sprinting. Cancels out up to <color=100,255,100>20%</color> sprint speed reduction at the cost of reduced sprint-to-fire speed." -- UO

L["cod2019_perks_auto.printname"] = "Automático" -- UO
L["cod2019_perks_auto.compactname"] = "Auto." -- UO
L["cod2019_perks_auto.description"] = "Cambia el modo de disparo <color=100,255,100>automático</color>." -- UO

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
L["mw19_weapon_grau"] = "Grau 5.56"
L["mw19_weapon_cr56"] = "CR-56 AMAX"
L["mw19_weapon_an94"] = "AN-94"
L["mw19_weapon_asval"] = "AS Val"

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

L["mw19_weapon_m680"] = "Modelo 680"
L["mw19_weapon_r90"] = "Escopeta R9-0"
L["mw19_weapon_725"] = "725"
L["mw19_weapon_origin12"] = "Escopeta Origin 12"
L["mw19_weapon_vlk"] = "Rogue VLK"
L["mw19_weapon_aa12"] = "JAK-12"

L["mw19_weapon_pkm"] = "PKM"
L["mw19_weapon_sa87"] = "SA87"
L["mw19_weapon_m91"] = "M91"
L["mw19_weapon_mg34"] = "MG34"
L["mw19_weapon_holger"] = "Holger-26"
L["mw19_weapon_bruen"] = "Bruen Mk9"
L["mw19_weapon_finn"] = "Ametralladora ligera FiNN"
L["mw19_weapon_raal"] = "RAAL"

L["mw19_weapon_ebr"] = "EBR-14"
L["mw19_weapon_mk2"] = "Carabina MK2"
L["mw19_weapon_kar98"] = "Kar98k"
L["mw19_weapon_crossbow"] = "Ballesta"
L["mw19_weapon_sks"] = "SKS"
L["mw19_weapon_spr"] = "SP-R 208"

L["mw19_weapon_dragunov"] = "Dragunov"
L["mw19_weapon_hdr"] = "HDR"
L["mw19_weapon_ax50"] = "AX-50"
L["mw19_weapon_rytec"] = "Rytec AMR"

L["mw19_weapon_shield"] = "Escudo antidisturbios"

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

L["mw19_weapon_knife"] = "Cuchillo"
L["mw19_weapon_stick"] = "Palos de kali"
L["mw19_weapon_sword"] = "Kodachis duales"

L["mw19_weapon_akimbo"] = "%s Duales"

L["mw19_weapon_nade_claymore"] = "Claymore"
L["mw19_weapon_nade_frag"] = "Granada de fragmentación"
L["mw19_weapon_nade_molotov"] = "Cóctel molotov"
L["mw19_weapon_nade_c4"] = "C4"
L["mw19_weapon_nade_semtex"] = "Semtex"
L["mw19_weapon_nade_knife"] = "Cuchillo arrojadizo"
L["mw19_weapon_nade_proximity"] = "Mina de proximidad"
L["mw19_weapon_nade_thermite"] = "Termita"
L["mw19_weapon_nade_thermite_alt"] = "Granada Termita" -- UO

L["mw19_weapon_nade_flash"] = "Granada cegadora"
L["mw19_weapon_nade_stun"] = "Granada aturdidora"
L["mw19_weapon_nade_smoke"] = "Granada de humo"
L["mw19_weapon_nade_snapshot"] = "Granada de visión"
L["mw19_weapon_nade_heartbeat"] = "Sensor de latidos"
L["mw19_weapon_nade_stim"] = "Estimulante"
L["mw19_weapon_nade_decoy"] = "Granada señuelo"
L["mw19_weapon_nade_gas"] = "Granada de gas"

-- L["mw19_weapon_minigun"] = "Minigun" -- UO
-- L["mw19_weapon_fists"] = "Fists" -- UO
-- L["mw19_weapon_nade_rock"] = "Rock" -- UO

//////////// Weapon Descriptions
L["mw19_weapon_kilo141_desc"] = "Fusil de asalto automático con un diseño ergonómico que facilita el manejo y una cadencia de disparo constante que ayuda a mantener la puntería."
L["mw19_weapon_fal_desc"] = "Un fusil de asalto semiautomático con una alta cadencia de disparo que permite efectuar más disparos consecutivos."
L["mw19_weapon_m4a1_desc"] = "Un fusil de asalto automático para todo uso. Si controlas los disparos, puede ser muy eficaz a grandes distancias."
L["mw19_weapon_fr556_desc"] = "Un fusil de asalto de tipo bullpup de ráfagas de tres disparos. Estas pueden ser letales a distancias intermedias."
L["mw19_weapon_oden_desc"] = "Un fusil de asalto automático de tipo bullpup con baja cadencia de disparo que permite controlar la gran potencia de la munición de calibre 12,7 x 55 mm."
L["mw19_weapon_m13_desc"] = "Fusil de asalto automático con un sistema de pistón de recorrido corto que mantiene una cadencia de disparo elevada y un bajo retroceso."
L["mw19_weapon_scar_desc"] = "Fusil de asalto automático de gran calibre con un daño elevado a larga distancia."
L["mw19_weapon_ak47_desc"] = "Fiable fusil de asalto automático con munición soviética de 7,62 mm. La munición de gran calibre requiere mucha habilidad para controlar el retroceso."
L["mw19_weapon_ram7_desc"] = "Un fusil de asalto de tipo bullpup completamente automático con un diseño compacto que se presta para los encuentros a corta distancia."
L["mw19_weapon_grau_desc"] = "Plataforma de arma modular de 5,56 ligera, maniobrable y con gran alcance. Su excelente diseño y los cañones incorporados posteriormente hacen que sea un arma extremadamente potente."
L["mw19_weapon_cr56_desc"] = "Este fusil de asalto automático y ligero de 7,62x39 mm es compacto y potente. Está destinado al uso exclusivamente militar. Es letal a distancias intermedias y se puede adaptar fácilmente a diversas tácticas de asalto."
L["mw19_weapon_an94_desc"] = "Fusil de asalto ruso de vanguardia de 5,45 x 39 mm con una funcionalidad especial de <color=255,255,100>hiperráfaga</color> disparo inicial al apretar el gatillo lanza una ráfaga rápida de 2 proyectiles antes de que se note el retroceso. Esto crea un grupo compacto que aumenta el potencial de daño. Este mecanismo se alimenta con un cargador inclinado y un receptor recíproco ayuda a controlar el retroceso."
L["mw19_weapon_asval_desc"] = "El AS VAL lleva munición <color=255,255,100>subsónica</color> de 9 x 39 mm y un <color=255,255,100>silenciador</color> integral. Su diseño es ideal para el sigilo, la precisión y la penetración. Esta arma será perfecta para los operadores que logren controlar su gran retroceso y la alta cadencia de disparo."

L["mw19_weapon_aug_desc"] = "Arma modular totalmente automática configurada para aumentar la movilidad en los combates a corta distancia."
L["mw19_weapon_p90_desc"] = "Un subfusil automático de tipo bullpup. Incorpora un cargador en la parte superior con munición 5,7 x 28 mm de gran velocidad."
L["mw19_weapon_mp5_desc"] = "Un subfusil automático con munición del calibre 9 mm. El equilibrio perfecto entre estabilidad, movilidad y letalidad."
L["mw19_weapon_uzi_desc"] = "Un subfusil automático con sistema de cerrojo. Simple, estable y efectivo."
L["mw19_weapon_pp19_desc"] = "Subfusil automático bien equilibrado provisto de un cargador helicoidal de gran capacidad."
L["mw19_weapon_mp7_desc"] = "Esta arma automática de diseño compacto tiene gran cadencia de disparo y bajo retroceso."
L["mw19_weapon_striker_desc"] = "Subfusil con munición automática de calibre 45 y mucho más potente que otras armas de su categoría a larga distancia. La cadencia de disparo moderada facilita el control del arma al disparar automáticamente."
L["mw19_weapon_fennec_desc"] = "Un subfusil automático agresivo, con un retroceso muy suave y una cadencia de disparo cegadora. Muy útil para despejar estancias y para defender frentes."
L["mw19_weapon_iso_desc"] = "Subfusil de 9 mm, excelente manufactura y alta cadencia de disparo. Es un arma ligera y fiable diseñada para controlar el campo de batalla a corta distancia."
L["mw19_weapon_cx9_desc"] = "Su excelente maniobrabilidad y la alta cadencia de disparo convierten a este subfusil con retroceso en un arma formidable en los enfrentamientos a corta distancia."

L["mw19_weapon_m680_desc"] = "Una fiable y equilibrada escopeta corredera con munición del calibre 12."
L["mw19_weapon_r90_desc"] = "El doble cañón permite efectuar dos disparos rápidos antes de cada recarga."
L["mw19_weapon_725_desc"] = "Escopeta con mecanismo de bisagra y capacidad para dos cartuchos. El cañón largo de diámetro aumentado y el estrangulador cilíndrico reducen la dispersión y aumentan la efectividad a larga distancia."
L["mw19_weapon_origin12_desc"] = "Una escopeta semiautomática con gran capacidad de munición que permite disparar de forma continua. Eficaz a corta distancia."
L["mw19_weapon_vlk_desc"] = "Ágil escopeta alimentada por un cargador del calibre 12 de VLK con amplias opciones para modificar su alcance, estabilidad y maniobrabilidad."
L["mw19_weapon_aa12_desc"] = "Escopeta automática de cerrojo abierto con sistema de expulsión de gases que reduce el retroceso. Esta escopeta de combate descarga altos volúmenes de plomo y aguda a mantener una buena cadencia de disparo."

L["mw19_weapon_pkm_desc"] = "Una ametralladora ligera automática que dispara munición de ? ,62 mm y causa daño elevado con una cadencia de disparo moderada."
L["mw19_weapon_sa87_desc"] = "Una ametralladora ligera de tipo bullpup totalmente automática. Su menor cadencia de disparo y su munición de 5,56 mm aportan estabilidad y hacen que sea más efectiva a larga distancia."
L["mw19_weapon_m91_desc"] = "Ametralladora ligera robusta que sacrifica la movilidad por la estabilidad. Su alta cadencia de disparo mantenida permite neutralizar objetivos a larga distancia."
L["mw19_weapon_mg34_desc"] = "Arma automática con una gran cadencia de disparo y munición letal 7,92 Mauser. Las ametralladoras rescatadas de la Segunda Guerra Mundial siguen siendo fiables y letales en el campo de batalla."
L["mw19_weapon_holger_desc"] = "Una ametralladora ligera versátil de 5,56 mm totalmente automática. Su diseño modular puede configurarse para una mayor variedad de enfrentamientos."
L["mw19_weapon_bruen_desc"] = "Esta ametralladora ligera de calibre 5,56, con sistema de cerrojo y refrigerada por aire ofrece una cadencia de disparo competitiva y una excelente estabilidad que te permitirá dominar el campo de batalla a distancias medias y largas."
L["mw19_weapon_finn_desc"] = "La FiNN es una ametralladora ultraligera con una excepcional precisión en el disparo automático gracias a su sistema de cerrojo del calibre 5,56, su baja cadencia de disparo y sus controles avanzados de retroceso."
L["mw19_weapon_raal_desc"] = "La ametralladora ligera de asalto y reconocimiento auxiliar RAAL utiliza una cadencia de disparo baja y un cañón recíproco para mitigar el elevado retroceso de los proyectiles del calibre 0.338 normal. Al estar hecha de titanio, el peso resulta manejable."

L["mw19_weapon_ebr_desc"] = "Un fusil táctico semiautomático de largo alcance que equilibra cadencia de disparo y letalidad."
L["mw19_weapon_mk2_desc"] = "Fusil con mecanismo de palanca de gran precisión. Neutraliza al enemigo con un disparo certero a la cabeza o al pecho."
L["mw19_weapon_kar98_desc"] = "Fusil con mecanismo de cerrojo y munición ? ,92 Mauser. Una reliquia de la Segunda Guerra Mundial extremadamente letal en manos de un tirador rebelde."
L["mw19_weapon_crossbow_desc"] = "Silenciosa y ágil, esta ballesta de alto rendimiento dispara virotes de 51 cm con una letalidad excepcional. La personalización exclusiva, una funcionalidad singular y su particular tipo de munición ponen a esta arma en una clase propia. Los virotes estándar de 51 cm son recuperables e indetectables por los sistemas Trophy."
L["mw19_weapon_sks_desc"] = "Carabina ligera semiautomática con munición de ? ,62x39 mm. Este potente y ágil fusil soviético antepone la utilidad a la precisión. Tiene mayor cadencia de disparo que otras armas de su categoría, pero una serie de disparos certeros harán que no sea necesario seguir apretando el gatillo. Este fusil táctico ha participado en muchas batallas y las exclusivas configuraciones de armero reflejan su variado historial de combate."
L["mw19_weapon_spr_desc"] = "Potente y fiable fusil con mecanismo de cerrojo de calibre 300 Winchester de Sloan Precision. EI amplio uso de esta arma en ámbitos civiles y militares ha dado lugar a numerosas personalizaciones."

L["mw19_weapon_dragunov_desc"] = "Una bestia soviética con munición de 7,62x54 mm R. Este fusil de precisión semiautomático con mecanismo de gas permite volver a disparar rápidamente."
L["mw19_weapon_hdr_desc"] = "Un fusil de precisión antimaterial con mecanismo de cerrojo y munición de 12,7x108 mm. Las balas de y tienen menor velocidad de salida, pero son devastadoras a distancias muy grandes."
L["mw19_weapon_ax50_desc"] = "Potente fusil de precisión con mecanismo de cerrojo y munición BMG del calibre 50. Sus balas de tungsteno con punta perforante son rápidas y potentes, pero necesitan tiros de precisión a distancias largas."
L["mw19_weapon_rytec_desc"] = "Este fusil antimaterial semiautomático lleva munición BMG de calibre 50, lo que permite mantener el dominio en asaltos a larga distancia. Hay una variante de 25 x 59 mm con carga altamente explosiva, que a pesar de estar clasificada como \"experimental\" se ha utilizado en múltiples misiones clasificadas con gran eficacia."

L["mw19_weapon_shield_desc"] = "Escudo a prueba de balas y resistente a los explosivos con daño cuerpo a cuerpo mejorado."

L["mw19_weapon_glock_desc"] = "Una pistola semiautomática con munición ACP de calibre 45. Fiable en combates a corta distancia."
L["mw19_weapon_1911_desc"] = "Un arma secundaria semiautomática bastante equilibrada y con una cadencia de disparo moderada. Su alcance es un poco mayor que el de la típica pistola con munición ACP de calibre 0.45."
L["mw19_weapon_357_desc"] = "Revólver de doble acción con munición Magnum del calibre 357. Causa daño elevado a distancias largas."
L["mw19_weapon_m19_desc"] = "Pistola semiautomática de 9 mm con gran estabilidad y gran cadencia de disparo."
L["mw19_weapon_deagle_desc"] = "EI arma corta semiautomática más potente. Inflige mucho daño con un alcance intermedio."
L["mw19_weapon_m9_desc"] = "Pistola semiautomática de 9 mm muy completa. Esta modesta arma corta es ideal para combates a distancias cortas y posee unas opciones de modificación en el armero únicas que facilitan una gran variedad de estrategias de combate."
L["mw19_weapon_makarov_desc"] = "Esta arma secundaria de acción doble/única es un recurso útil a corta distancia e incluye algunos mods del armero personalizados que la convierten en una extraordinaria aportación para cualquier arsenal."

L["mw19_weapon_pila_desc"] = "Lanzamisiles infrarrojo portátil tierra-aire con opción de disparo libre. Los misiles autopropulsados mayor velocidad y una capacidad explosiva moderada."
L["mw19_weapon_strela_desc"] = "Este lanzador de 84 mm sin retroceso dispara un proyectil explosivo a muy alta velocidad. La munición es perforante, no está guiada y su capacidad explosiva es baja, pero resulta devastadora al contactar con cualquier vehículo."
L["mw19_weapon_javelin_desc"] = "Lanzamisiles portátil con fijación de blanco que permite disparar y olvidarse, y que ofrece gran capacidad explosiva, Los misiles con guía infrarroja usan una trayectoria de ataque vertical, lo que asegura la destrucción de vehículos blindados pesados."
L["mw19_weapon_rpg_desc"] = "Lanzacohetes autopropulsados no guiado que dispara un proyectil lento con alta capacidad / explosiva."
-- L["mw19_weapon_mgl_desc"] = "Rapid firing grenade launcher fed with a 6-round rotating cylinder. Can utilize a variety of 40mm rounds for various roles." -- UO

L["mw19_weapon_knife_desc"] = "Un cuchillo táctico cuerpo a cuerpo. Objeto militar estándar, usado para el trabajo sucio rápido, silencioso y letal."
L["mw19_weapon_stick_desc"] = "Porras duales que permiten a los operadores acercarse a sus objetivos con gran agilidad. EI diseño ligero y sólido facilita los ataques rápidos para noquear a los enemigos."
L["mw19_weapon_sword_desc"] = "Las hojas de acero al carbono proporcionan el filo más cortante posible para descuartizar a tus enemigos sin hacer ruido."

L["mw19_weapon_nade_claymore_desc"] = "Mina explosiva de proximidad."
L["mw19_weapon_nade_frag_desc"] = "Granada de fragmentación con demora."
L["mw19_weapon_nade_molotov_desc"] = "Dispositivo incendiario improvisado que explota al impactar."
L["mw19_weapon_nade_c4_desc"] = "Explosivo grande que se adhiere a las superficies y se puede detonar a distancia con {ATTACK} cuando el equipamiento se ha agotado.\n\nLos explosivos siempre detonarán al pulsar dos a veces seguidas {USE}."
L["mw19_weapon_nade_semtex_desc"] = "Granada adhesiva con temporizador."
L["mw19_weapon_nade_knife_desc"] = "Cuchillo recuperable que se puede lanzar para eliminar a los enemigos rápida y silenciosamente."
L["mw19_weapon_nade_proximity_desc"] = "Explosivo activado por proximidad que causa graves daños a los vehículos."
L["mw19_weapon_nade_thermite_desc"] = "Explosivo que arde con fuerza durante unos instantes después del impacto. Se adhiere a las superficies."

L["mw19_weapon_nade_flash_desc"] = "Ciega g ensordece a los objetivos."
L["mw19_weapon_nade_stun_desc"] = "Ralentiza el movimiento y el apuntado de la víctima."
L["mw19_weapon_nade_smoke_desc"] = "Despliega una cortina de humo que impide la visión."
L["mw19_weapon_nade_snapshot_desc"] = "Muestra durante unos instantes a los enemigos dentro del radio de explosión para tu pelotón."
L["mw19_weapon_nade_heartbeat_desc"] = "Una tableta que muestra información poco precisa de los enemigos cercanos."
L["mw19_weapon_nade_stim_desc"] = "Estimulante del ejército que cauteriza las heridas de combate y reinicia el esprint táctico."
L["mw19_weapon_nade_decoy_desc"] = "Granada de contrainteligencia que simula un tiroteo falso y señales en el radar que confunden al enemigo."
L["mw19_weapon_nade_gas_desc"] = "Explota al impactar contra el suelo y emite una nube de gas lacrimógeno que produce tos, nubla la visita y ralentiza el movimiento."

-- L["mw19_weapon_minigun_desc"] = "Portable gatling gun with a very high cyclic rate." -- UO
-- L["mw19_weapon_fists_desc"] = "When all else fails, punch your way out. Remember, fists do not require reloading, so they are always quick." -- UO
-- L["mw19_weapon_nade_rock_desc"] = "For when you need to hit an enemy with a \"non-lethal\" item, or if you need to provide a distraction in order to sneak past guards." -- UO
