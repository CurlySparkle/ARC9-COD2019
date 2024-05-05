L = {} -- Portuguese, UO by ??

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

L["mw19_caliber_556"] = "OTAN 5.56"
L["mw19_caliber_762"] = "OTAN 7.62"
L["mw19_caliber_762soviet"] = "Soviético 7.62"
L["mw19_caliber_762mmr"] = "7.62×54 mm R"
L["mw19_caliber_762mauser"] = "Mauser 7.62"
L["mw19_caliber_545"] = "5.45×39 mm"
L["mw19_caliber_127x55"] = "12.7×55 mm"
L["mw19_caliber_127x108"] = "12.7×108 mm"
L["mw19_caliber_939"] = "9×39 mm"
L["mw19_caliber_919"] = "Parabellum 9mm"
L["mw19_caliber_57x28"] = "5.7×28 mm"
L["mw19_caliber_918"] = "Makarov 9mm"
L["mw19_caliber_46x30"] = "4.6×30 mm"
L["mw19_caliber_45acp"] = "ACP 0.45"
L["mw19_caliber_12gauge"] = "Calibre 12"
L["mw19_caliber_338"] = "Norma Mag 0.338"
L["mw19_caliber_45-70"] = "Government 0.45-70"
L["mw19_caliber_bolt"] = "Flecha 20.0\""
L["mw19_caliber_300"] = "Win Mag .300"
L["mw19_caliber_50bmg"] = "BMG 0.50"
L["mw19_caliber_357"] = "Magnum 0.357"
L["mw19_caliber_50p"] = "Pistola 0.50"

/////////// Country of Origin -- UO
-- L["mw19_country"] = "Country of Origin1"

L["mw19_country_austria"] = "Áustria"
L["mw19_country_belgium"] = "Bélgica"
L["mw19_country_czechrepublic"] = "República Tcheca"
L["mw19_country_france"] = "França"
L["mw19_country_germany"] = "Alemanha"
L["mw19_country_israel"] = "Israel"
L["mw19_country_italy"] = "Itália"
L["mw19_country_russia"] = "Rússia"
L["mw19_country_southafrica"] = "África do Sul"
L["mw19_country_sovietunion"] = "União Soviética"
L["mw19_country_sweden"] = "Suécia"
L["mw19_country_switzerland"] = "Suíça"
L["mw19_country_uk"] = "Reino Unido"
L["mw19_country_usa"] = "Estados Unidos"
L["mw19_country_japan"] = "Japão"

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
L["mw19_category_weapon_ar"] = "Fuzis de Assalto"
L["mw19_category_weapon_smg"] = "SMTs"
L["mw19_category_weapon_shotgun"] = "Escopetas"
L["mw19_category_weapon_lmg"] = "MLs"
L["mw19_category_weapon_marksman"] = "Fuzis de Atirador"
L["mw19_category_weapon_sniper"] = "Fuzis de Precisão"
L["mw19_category_weapon_melee"] = "Corpo a corpo"
L["mw19_category_weapon_throwable"] = "Letal & Tático"

L["mw19_category_weapon_handgun"] = "Pistolas"
L["mw19_category_weapon_handgun_akimbo"] = "Pistolas (Akimbo)"
L["mw19_category_weapon_launcher"] = "Lançadores"

/////////// Weapon Classes
L["mw19_class_weapon_ar"] = "Fuzil de Assalto"
L["mw19_class_weapon_smg"] = "Submetralhadora"
L["mw19_class_weapon_shotgun"] = "Escopeta"
L["mw19_class_weapon_lmg"] = "Metralhadora Leve"
L["mw19_class_weapon_marksman"] = "Fuzil de Atirador"
L["mw19_class_weapon_sniper"] = "Fuzil de Precisão"
L["mw19_class_weapon_melee"] = "Corpo a corpo"
L["mw19_class_weapon_lethal"] = "Letal"
L["mw19_class_weapon_tactical"] = "Tático"
L["mw19_class_weapon_grenade"] = "Granada" -- UO

L["mw19_class_weapon_handgun"] = "Pistola"
L["mw19_class_weapon_launcher"] = "Lançador"

//////////////////////////////////////////////////////////////////////
///////////////////////////// Attachments
//////////////////// Customize
L["mw19_category_camouflage"] = "Camuflagem"
L["mw19_category_reticle"] = "Retícula"
L["mw19_category_charm"] = "Pingente"
L["mw19_category_sticker"] = "Adesivo"

//////////////////// Attachment Categories
L["mw19_category_muzzle"] = "Boca"
L["mw19_category_barrel"] = "Cano"
L["mw19_category_laser"] = "Laser"
L["mw19_category_optic"] = "Lente"
L["mw19_category_stock"] = "Coronha"
L["mw19_category_underbarrel"] = "Acoplamento"
L["mw19_category_magazine"] = "Carregador"
L["mw19_category_reargrip"] = "Cabo"
L["mw19_category_perk"] = "Vantagem"

-- Specific to Handguns
L["mw19_category_triggeraction"] = "Ação de gatilho"

-- Specific to the R9-0 Shotgun
L["mw19_category_pumps"] = "Telhas"

-- Specific to the 725 Shotgun
L["mw19_category_guard"] = "Guarda"

-- Specific to the VLK Rogue Shotgun
L["mw19_category_pumpgrip"] = "Empunhadura de telha"

-- Specific to the Crossbow Marksman Rifle
L["mw19_category_cable"] = "Cabo"
L["mw19_category_arms"] = "Braços"
L["mw19_category_bolt"] = "Flechas"

-- Specific to the SP-R 208 Marksman Rifle
L["mw19_category_boltassembly"] = "Montagem de Ferrolho"

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
L["mw19_optic_stat_zoom2"] = "Nível de zoom" -- Most scopes
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
L["cod2019_perks_soh.printname"] = "Mãos Leves"
L["cod2019_perks_soh.compactname"] = "ML"
L["cod2019_perks_soh.description"] = "Treinamento de recarga mais rápida quando sob pressão."

L["cod2019_perks_speedmelee.printname"] = "Corpo a Corpo Rápido"
L["cod2019_perks_speedmelee.compactname"] = "CCR"
L["cod2019_perks_speedmelee.description"] = "Treinamento na execução de manobras corpo a corpo com grande velocidade."

L["cod2019_perks_heavyhitter.printname"] = "Peso-Pesado"
L["cod2019_perks_heavyhitter.compactname"] = "PP"
L["cod2019_perks_heavyhitter.description"] = "Golpes corpo a corpo atordoam mais os alvos."

-- L["cod2019_perks_enforcer.printname"] = "Enforcer" -- UO
-- L["cod2019_perks_enforcer.compactname"] = "Enforcer" -- UO
-- L["cod2019_perks_enforcer.description"] = "Grants the user 30% resistance to all damage." -- UO

-- L["cod2019_perks_bolt.printname"] = "Deft Hands" -- UO
-- L["cod2019_perks_bolt.compactname"] = "Deft" -- UO
-- L["cod2019_perks_bolt.description"] = "Training with your weapon allows you to cycle the weapon faster." -- UO

-- L["cod2019_perks_slamfire.printname"] = "Slamfire" -- UO
-- L["cod2019_perks_slamfire.compactname"] = "Slamfire" -- UO
-- L["cod2019_perks_slamfire.description"] = "Bruteforce the weapon to fire and cycle the weapon much quicker at the cost of reduced accuracy." -- UO

L["cod2019_perks_burst.printname"] = "Estouro"
L["cod2019_perks_burst.compactname"] = "Estouro"
L["cod2019_perks_burst.description"] = "Muda o modo de disparo para rajada de <color=100,255,100>3 tiros</color>."

L["cod2019_perks_burst_2.description"] = "Muda o modo de disparo para rajada de <color=100,255,100>2 tiros</color>."

-- L["cod2019_perks_super_sprint.printname"] = "Tactical Sprint" -- UO
-- L["cod2019_perks_super_sprint.compactname"] = "Tac. Sprint" -- UO
-- L["cod2019_perks_super_sprint.description"] = "Provides an altered stance when sprinting. Cancels out up to <color=100,255,100>20%</color> sprint speed reduction at the cost of reduced sprint-to-fire speed." -- UO

L["cod2019_perks_auto.printname"] = "Automático" -- UO
L["cod2019_perks_auto.compactname"] = "Auto." -- UO
L["cod2019_perks_auto.description"] = "Muda o modo de disparo para <color=100,255,100>automático</color>." -- UO

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

L["mw19_weapon_m680"] = "Modelo 680"
L["mw19_weapon_r90"] = "Escopeta R9-0"
L["mw19_weapon_725"] = "725"
L["mw19_weapon_origin12"] = "Origin 12: Escopeta"
L["mw19_weapon_vlk"] = "VLK Rogue"
L["mw19_weapon_aa12"] = "JAK-12"

L["mw19_weapon_pkm"] = "PKM"
L["mw19_weapon_sa87"] = "SA87"
L["mw19_weapon_m91"] = "M91"
L["mw19_weapon_mg34"] = "MG34"
L["mw19_weapon_holger"] = "Holger-26"
L["mw19_weapon_bruen"] = "Bruen Mk9"
L["mw19_weapon_finn"] = "ML FiNN"
L["mw19_weapon_raal"] = "RAAL MG"

L["mw19_weapon_ebr"] = "EBR-14"
L["mw19_weapon_mk2"] = "Carabina MK2"
L["mw19_weapon_kar98"] = "Kar98k"
L["mw19_weapon_crossbow"] = "Besta"
L["mw19_weapon_sks"] = "SKS"
L["mw19_weapon_spr"] = "SP-R 208"

L["mw19_weapon_dragunov"] = "Dragunov"
L["mw19_weapon_hdr"] = "HDR"
L["mw19_weapon_ax50"] = "AX-50"
L["mw19_weapon_rytec"] = "Rytec AMR"

L["mw19_weapon_shield"] = "Escudo Antimotim"

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

L["mw19_weapon_knife"] = "Faca"
L["mw19_weapon_stick"] = "Bastões Kali"
L["mw19_weapon_sword"] = "Kodachis Duplos"

L["mw19_weapon_akimbo"] = "%s Akimbo"

L["mw19_weapon_nade_claymore"] = "Claymore"
L["mw19_weapon_nade_frag"] = "Fragmentação"
L["mw19_weapon_nade_molotov"] = "Coquetel Molotov"
L["mw19_weapon_nade_c4"] = "C4"
L["mw19_weapon_nade_semtex"] = "Semtex"
L["mw19_weapon_nade_knife"] = "Faca de Arremesso"
L["mw19_weapon_nade_proximity"] = "Mina de Proximidade"
L["mw19_weapon_nade_thermite"] = "Termita"
L["mw19_weapon_nade_thermite_alt"] = "Granada de Termita" -- UO

L["mw19_weapon_nade_flash"] = "Granada de Luz"
L["mw19_weapon_nade_stun"] = "Concussão"
L["mw19_weapon_nade_smoke"] = "Granada de Fumaça"
L["mw19_weapon_nade_snapshot"] = "Granada de Detacção"
L["mw19_weapon_nade_heartbeat"] = "Sensor de Pulsação"
L["mw19_weapon_nade_stim"] = "Estimulante"
L["mw19_weapon_nade_decoy"] = "Granada de Distração"
L["mw19_weapon_nade_gas"] = "Granada de Gás"

-- L["mw19_weapon_minigun"] = "Minigun" -- UO
-- L["mw19_weapon_fists"] = "Fists" -- UO
-- L["mw19_weapon_nade_rock"] = "Rock" -- UO

//////////// Weapon Descriptions
L["mw19_weapon_kilo141_desc"] = "Fuzil de assalto totalmente automático com design ergonômico que melhora o manuseio. Possui cadência de tiros estável que ajuda a manter o foco no alvo."
L["mw19_weapon_fal_desc"] = "Fuzil de assalto semiautomático com alta cadência de tiros que permite disparos subsequentes mais rápidos."
L["mw19_weapon_m4a1_desc"] = "Fuzil de assalto totalmente automático, para todo tipo de combate. Controle seus tiros e essa arma será eficiente a qualquer distância."
L["mw19_weapon_fr556_desc"] = "Fuzil de assalto bullpup com rajada de 3 tiros. Uma rajada precisa pode ser extremamente mortal a distâncias intermitentes."
L["mw19_weapon_oden_desc"] = "Fuzil de assalto bullpup totalmente automático, com um ciclo lento para ajudar a controlar a munição impactante de 12,7 x 55mm."
L["mw19_weapon_m13_desc"] = "Fuzil de assalto automático com um sistema de pistão de curso curto que permite alta cadência de tiro e recuo menor."
L["mw19_weapon_scar_desc"] = "Fuzil de assalto de grande calibre e totalmente automático que fornece alto dano a longas distâncias."
L["mw19_weapon_ak47_desc"] = "Fuzil de assalto automático muito confiável com cartuchos soviéticos 7,62mm. A munição de grande calibre requer habilidade para controlar o recuo."
L["mw19_weapon_ram7_desc"] = "Fuzil de assalto bullpup totalmente automático com um design compacto projetado para confrontos a curta distância."
L["mw19_weapon_grau_desc"] = "Esta 5,56 modular é leve, manobrável e possui um alcance excepcional. Engenharia precisa e canos de primeira qualidade dão a essa arma um potencial extremo."
L["mw19_weapon_cr56_desc"] = "Este leve fuzil de assalto automático de ?,62x39 mm é compacto e poderoso. Construído exclusivamente para uso militar, o fuzil padrão é mortal em combate de médio alcance e facilmente configurado para uma variedade de táticas de assalto."
L["mw19_weapon_an94_desc"] = "Fuzil de assalto russo de ponta de 5,45 x 39 mm <color=255,255,100>explosivo</color> único. O disparo inicial a com um recurso cada aperto do gatilho atira uma rajada veloz de 2 projéteis antes que o recuo possa ser sentido, criando um agrupamento concentrado com maior potencial de dano. Esse mecanismo é alimentado por um carregador inclinado, e um receptor de pistão ajuda a controlar o recuo."
L["mw19_weapon_asval_desc"] = "Com uma câmara <color=255,255,100>subsônica</color> de 9x39mm e <color=255,255,100>supressor</color> integral, a AS VAL é uma arma poderosa perfeita para furtividade, precisão e penetração. Essa arma se destacará nas mãos de um operador capaz de controlar o forte recuo e a alta cadência de tiro."

L["mw19_weapon_aug_desc"] = "Arma modular totalmente automática configurada para mobilidade e combate a curta distância."
L["mw19_weapon_p90_desc"] = "Submetralhadora bullpup automática. Seu carregador exclusivo montado na parte superior suporta munição 5,7 x 28mm de alta velocidade."
L["mw19_weapon_mp5_desc"] = "Submetralhadora 9mm totalmente automática. Um equilibrio perfeito de estabilidade, mobilidade e letalidade."
L["mw19_weapon_uzi_desc"] = "Submetralhadora de ferrolho aberto totalmente automática. Simples, resistente, eficaz."
L["mw19_weapon_pp19_desc"] = "Submetralhadora automática equilibrada. Possui um carregador em hélice de alta capacidade."
L["mw19_weapon_mp7_desc"] = "De design compacto, esta arma totalmente automática possui alta cadência e baixo recuo."
L["mw19_weapon_striker_desc"] = "Submetralhadora de alto impacto, munição ,45 automática que se fragmenta a distâncias mais longas do que outras armas de sua classe. A cadência de tiro moderada mantém a arma no controle enquanto é usada totalmente automática."
L["mw19_weapon_fennec_desc"] = "Uma submetralhadora automática completa e agressiva, com recuo suave e uma cadência de tiro incrivelmente rápida, excepcional para a limpeza estratégica de salas e a manutenção da linha de frente."
L["mw19_weapon_iso_desc"] = "Submetralhadora de 9 mm com foco em precisão e alta cadência. Esta arma leve e confiável foi desenvolvida para controlar embates a curta distância."
L["mw19_weapon_cx9_desc"] = "Excelente mobilidade e uma alta cadência de tiro fazem dessa submetralhadora com sistema blowback uma arma formidável em CCD."

L["mw19_weapon_m680_desc"] = "Escopeta calibre 12 de recarga deslizante. Confiável e equilibrada."
L["mw19_weapon_r90_desc"] = "Escopeta de cano duplo que dispara dois tiros rápidos antes de cada bombeio."
L["mw19_weapon_725_desc"] = "Escopeta com ação basculante e de capacidade para 2 projéteis. Seu cano de diâmetro alargado e o estrangulador cilíndrico mantêm a dispersão estreita e letal a longas distâncias."
L["mw19_weapon_origin12_desc"] = "Escopeta semiautomática com grande capacidade de munição. Permite disparos contínuos e eficazes a curta distância."
L["mw19_weapon_vlk_desc"] = "Uma escopeta calibre 12 da VLK alimentada por carregador com muitas opções de modificação de alcance, estabilidade e mobilidade."
L["mw19_weapon_aa12_desc"] = "Escopeta de ferrolho aberto totalmente automática, com sistema de reação a gás redutor de recuo. Esta escopeta de combate descarrega um grande volume de chumbo a um ritmo constante."

L["mw19_weapon_pkm_desc"] = "Metralhadora leve totalmente automática que dispara munição 7,62mm para dano alto com cadência moderada."
L["mw19_weapon_sa87_desc"] = "Metralhadora bullpup leve totalmente automática. A menor cadência de tiro e a munição 5,56mm mantêm esse fuzil estável e eficaz a longas distâncias."
L["mw19_weapon_m91_desc"] = "Metralhadora leve e robusta que sacrifica a mobilidade em nome da estabilidade. Possui alto calibre de fogo contínuo para neutralizar alvos a longas distâncias."
L["mw19_weapon_mg34_desc"] = "Arma totalmente automática com alta cadência de tiros e munição 7,92 Mauser devastadora. Metralhadoras resgatadas da Segunda Guerra ainda são confiáveis e mortais no campo de batalha."
L["mw19_weapon_holger_desc"] = "Versátil metralhadora leve automática de 5,56 mm. O design modular pode ser configurado para uma ampla gama de confrontos."
L["mw19_weapon_bruen_desc"] = "Esta MT 5.56mm de ferrolho aberto e resfriada por ar possui uma cadência de tiro competitiva e excelente estabilidade que dominará o combate de médio a longo alcance."
L["mw19_weapon_finn_desc"] = "Uma metralhadora ultraleve 5.56 de ferrolho aberto com ciclo baixo e controles de recuo avançado que dão à FiNN uma precisão totalmente automática excepcional."
L["mw19_weapon_raal_desc"] = "A Metralhadora Leve Auxiliar de Reconhecimento e Assalto usa uma cadência de tiro baixa e cano de pistão para mitigar o forte recuo da Norma Mag 0.338. A estrutura avançada de titânio deixa o peso razoável."

L["mw19_weapon_ebr_desc"] = "Fuzil de atirador semiautomático de longo alcance que equilibra cadência de tiros com letalidade."
L["mw19_weapon_mk2_desc"] = "Fuzil de alavanca altamente preciso. Neutraliza um inimigo com uma bala bem colocada na cabeça ou no peito."
L["mw19_weapon_kar98_desc"] = "Fuzil calibre 7,92 Mauser de ação por ferrolho. Uma relíquia da Segunda Guerra que ainda é extremamente letal nas mãos de atiradores experientes."
L["mw19_weapon_crossbow_desc"] = "Ágil e silenciosa, esta besta de alta performance dispara flechas de 20,0\" com uma letalidade sem igual. Personalização exclusiva, funcionalidade distinta e tipos únicos de munição levam esta arma a um patamar exclusivo. Flechas comuns de 20,0\" podem ser recuperadas e não são detectadas pelos sistemas trophy."
L["mw19_weapon_sks_desc"] = "Carabina leve e semiautomática com câmara de ? ,62 x 39 mm. Este fuzil soviético ágil e de alto impacto foca a utilidade, não a precisão. Ele tem uma cadência de tiro mais rápida do que outras armas de sua classe, mas um projétil preciso eliminará a necessidade de mais tiros. Este clássico FAD já viu muitas batalhas, e suas configurações exclusivas do armeiro refletem um histórico de serviço muito variado."
L["mw19_weapon_spr_desc"] = "Fuzil Win .300 confiável e de alto impacto com ação por ferrolho da Sloan Precision. A grande utilização militar e civil desta arma proporciona várias opções de personalização."

L["mw19_weapon_dragunov_desc"] = "Uma potência soviética com câmara de 7.62mm x 54mmR. Esse fuzil de precisão semiautomático operado por gás permite disparos rápidos seguidos."
L["mw19_weapon_hdr_desc"] = "Fuzil de precisão antimaterial calibre 12,?x108mm e com ação por ferrolho. Os projéteis de ?45g têm menor velocidade de bocal, mas são devastadores a longas distâncias."
L["mw19_weapon_ax50_desc"] = "Com força de impacto, é um fuzil de precisão com ação por ferrolho com munição BMG de .50 cal.. Suas balas de tungstênio são rápidas e poderosas, mas requerem disparos precisos à longa distância."
L["mw19_weapon_rytec_desc"] = "Fuzil antimaterial semiautomático com munição BMG .50 para ataques dominantes a longa distância. Sua variante de carga 25x59 mm altamente explosiva está oficialmente listada como \"experimental\", mas foi utilizada em várias missões secretas com grande eficácia."

L["mw19_weapon_shield_desc"] = "Escudo à prova de balas e resistente a explosivos com maior dano de corpo a corpo."

L["mw19_weapon_glock_desc"] = "Pistola semiautomática calibre .45 ACP. Muito útil para quando você está em um combate de curta distância."
L["mw19_weapon_1911_desc"] = "Pistola semiautomática versátil com cadência de tiros moderada. Tem um alcance levemente maior do que uma pistola .45 ACP mediana."
L["mw19_weapon_357_desc"] = "Revólver de ação dupla que dispara munição Magnum .357 com dano poderoso a longas distâncias."
L["mw19_weapon_m19_desc"] = "Pistola 9mm semiautomática, excelente estabilidade com um ciclo rápido,"
L["mw19_weapon_deagle_desc"] = "A pistola semiautomática mais poderosa disponível. Inflige dano pesado a distâncias medianas."
L["mw19_weapon_m9_desc"] = "Pistola semiautomática bem equilibrada de 9mm. Esta arma despretensiosa destaca-se em combates a curta distância e apresenta recursos exclusivos para a classe de pistolas, que permitem uma variedade de estratégias de combate."
L["mw19_weapon_makarov_desc"] = "Uma opção confiável para curtas distâncias, esta pistola de ação dupla/açào simples vem com algumas modificações personalizadas do Armeiro e é uma ótima adição para qualquer arsenal."

L["mw19_weapon_pila_desc"] = "Lançador portátil superfície-ar infravermelho com opção de tiro livre. Dispara mísseis automotrizqs de maior velocidade e carga explosiva moderada."
L["mw19_weapon_strela_desc"] = "Lançador calibre 84 mm sem recuo. Dispara projéteis explosivos não guiados a altíssima velocidade que perfuram blindagens. Possui baixa carga explosiva, mas é devastador contra veículos."
L["mw19_weapon_javelin_desc"] = "Lança-mísseis automático portátil com trava de mira. Com grande carga explosiva, seus mísseis teleguiados infravermelhos atacam por cima, garantindo a destruição de veículos altamente blindados."
L["mw19_weapon_rpg_desc"] = "Lança-foguetes não guiado e automotriz que dispara um projétil mais lento com carga altamente explosiva."
-- L["mw19_weapon_mgl_desc"] = "Rapid firing grenade launcher fed with a 6-round rotating cylinder. Can utilize a variety of 40mm rounds for various roles." -- UO

L["mw19_weapon_knife_desc"] = "Uma faca tática de combate a curta distância. Padrão militar, usada para trabalhos sujos rápidos, silenciosos e mortais."
L["mw19_weapon_stick_desc"] = "Os cassetetes duplos permitem aos operadores abordarem seus alvos com grande agilidade, O design leve e resistente permite a você desferir ataques velozes contra seus inimigos."
L["mw19_weapon_sword_desc"] = "As lâminas de aço carbono forjadas à mão fornecem o gume mais afiado possível para dilacerar seus inimigos em silêncio."

L["mw19_weapon_nade_claymore_desc"] = "Mina explosiva ativada por proximidade."
L["mw19_weapon_nade_frag_desc"] = "Granada de fragmentação cozinhável."
L["mw19_weapon_nade_molotov_desc"] = "Dispositivo incendiário improvisado que explode com o impacto."
L["mw19_weapon_nade_c4_desc"] = "Explosivo grande que gruda em su erfícies e pode ser detonado remotamente com {ATTACK} quando o equipamento se esgota.\n\nUm toque duplo em {USE} sempre detona os explosivos."
L["mw19_weapon_nade_semtex_desc"] = "Granada adesiva cronometrada."
L["mw19_weapon_nade_knife_desc"] = "Faca recuperável que pode ser arremessada para eliminar inimigos de maneira rápida e silenciosa."
L["mw19_weapon_nade_proximity_desc"] = "Explosivo ativado por proximidade que causa alto dano a veículos."
L["mw19_weapon_nade_thermite_desc"] = "Explosivo que queima intensamente por um curto período após o impacto. Adere às superfícies."

L["mw19_weapon_nade_flash_desc"] = "Cega e ensurdece inimigos."
L["mw19_weapon_nade_stun_desc"] = "Desacelera o movimento e a mira da vítima."
L["mw19_weapon_nade_smoke_desc"] = "Lança uma cortina de fumaça que bloqueia a visão."
L["mw19_weapon_nade_snapshot_desc"] = "Fornece uma visão momentânea dos inimigos dentro do raio de explosão ao seu esquadrão."
L["mw19_weapon_nade_heartbeat_desc"] = "Um tablet que exibe informações básicas sobre os inimigos próximos."
L["mw19_weapon_nade_stim_desc"] = "Estimulante militar que cauteriza os ferimentos de combate e reinicia a corrida tática."
L["mw19_weapon_nade_decoy_desc"] = "Granada de contrainteligência que simula tiros falsos e assinaturas de radar que confundem o inimigo."
L["mw19_weapon_nade_gas_desc"] = "Explode no impacto com o chão, soltando uma nuvem persistente de gás lacrimogêneo. Causa movimentação lenta, visão borrada e tosse."

-- L["mw19_weapon_minigun_desc"] = "Portable gatling gun with a very high cyclic rate." -- UO
-- L["mw19_weapon_fists_desc"] = "When all else fails, punch your way out. Remember, fists do not require reloading, so they are always quick." -- UO
-- L["mw19_weapon_nade_rock_desc"] = "For when you need to hit an enemy with a \"non-lethal\" item, or if you need to provide a distraction in order to sneak past guards." -- UO
