L = {} -- German, UO by ??

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
L["mw19_caliber_762soviet"] = "7,62 russisch"
L["mw19_caliber_762mmr"] = "7,62×54mmR"
L["mw19_caliber_762mauser"] = "7,62 Mauser"
L["mw19_caliber_545"] = "5,45×39mm"
L["mw19_caliber_127x55"] = "12,7×55mm"
L["mw19_caliber_127x108"] = "12,7×108mm"
L["mw19_caliber_939"] = "9×39mm"
L["mw19_caliber_919"] = "9mm Parabellum"
L["mw19_caliber_57x28"] = "5,7×28mm"
L["mw19_caliber_918"] = "9mm Makarov"
L["mw19_caliber_46x30"] = "4.6×30mm"
L["mw19_caliber_45acp"] = ".45 ACP"
L["mw19_caliber_12gauge"] = "Kaliber 12"
L["mw19_caliber_338"] = ".338 Norma Mag"
L["mw19_caliber_45-70"] = ".45-70 Regierung"
L["mw19_caliber_bolt"] = "20.0\" Bolzen"
L["mw19_caliber_300"] = ".300 Win Mag"
L["mw19_caliber_50bmg"] = ".50 BMG"
L["mw19_caliber_357"] = ".357 Magnum"
L["mw19_caliber_50p"] = ".50 Pistole"

/////////// Country of Origin -- UO
-- L["mw19_country"] = "Country of Origin1"

L["mw19_country_austria"] = "Österreich"
L["mw19_country_belgium"] = "Belgien"
L["mw19_country_czechrepublic"] = "Tschechische Republik"
L["mw19_country_france"] = "Frankreich"
L["mw19_country_germany"] = "Deutschland"
L["mw19_country_israel"] = "Israel"
L["mw19_country_italy"] = "Italien"
L["mw19_country_russia"] = "Russland"
L["mw19_country_southafrica"] = "Südafrika"
L["mw19_country_sovietunion"] = "Sowjetunion"
L["mw19_country_sweden"] = "Schweden"
L["mw19_country_switzerland"] = "Schweiz"
L["mw19_country_uk"] = "Vereinigtes Königreich"
L["mw19_country_usa"] = "Vereinigte Staaten"
L["mw19_country_japan"] = "Japan"

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
L["mw19_category_weapon_ar"] = "Sturmgewehre"
L["mw19_category_weapon_smg"] = "MPs"
L["mw19_category_weapon_shotgun"] = "Schrotflinten"
L["mw19_category_weapon_lmg"] = "Leichte MGs"
L["mw19_category_weapon_marksman"] = "DMRs"
L["mw19_category_weapon_sniper"] = "Scharfschützengewehre"
L["mw19_category_weapon_melee"] = "Nahkampf"
L["mw19_category_weapon_throwable"] = "Primär & Taktik"

L["mw19_category_weapon_handgun"] = "Handfeuer-Waffen"
L["mw19_category_weapon_handgun_akimbo"] = "Handfeuer-Waffen (Akimbo)"
L["mw19_category_weapon_launcher"] = "Werfer"

/////////// Weapon Classes
L["mw19_class_weapon_ar"] = "Sturmgewehr"
L["mw19_class_weapon_smg"] = "MP"
L["mw19_class_weapon_shotgun"] = "Schrotflinte"
L["mw19_class_weapon_lmg"] = "LMG"
L["mw19_class_weapon_marksman"] = "DMR"
L["mw19_class_weapon_sniper"] = "Scharfschützengewehr"
L["mw19_class_weapon_melee"] = "Nahkampf"
L["mw19_class_weapon_lethal"] = "Primär"
L["mw19_class_weapon_tactical"] = "Taktik"
L["mw19_class_weapon_grenade"] = "Granate" -- UO

L["mw19_class_weapon_handgun"] = "Handfeuerwaffe"
L["mw19_class_weapon_launcher"] = "Werfer"

//////////////////////////////////////////////////////////////////////
///////////////////////////// Attachments
//////////////////// Customize
L["mw19_category_camouflage"] = "Tarnung"
L["mw19_category_reticle"] = "Fadenkreuz"
L["mw19_category_charm"] = "Talisman"
L["mw19_category_sticker"] = "Sticker"

//////////////////// Attachment Categories
L["mw19_category_muzzle"] = "Mündung"
L["mw19_category_barrel"] = "Lauf"
L["mw19_category_laser"] = "Laser"
L["mw19_category_optic"] = "Visier"
L["mw19_category_stock"] = "Schaft"
L["mw19_category_underbarrel"] = "Unterlauf"
L["mw19_category_magazine"] = "Magazin"
L["mw19_category_reargrip"] = "Griff"
L["mw19_category_perk"] = "Extra"

-- Specific to Handguns
L["mw19_category_triggeraction"] = "Abzug"

-- Specific to the R9-0 Shotgun
L["mw19_category_pumps"] = "Pumps"

-- Specific to the 725 Shotgun
L["mw19_category_guard"] = "Handschutz"

-- Specific to the VLK Rogue Shotgun
L["mw19_category_pumpgrip"] = "Vorderschaft-Griff"

-- Specific to the Crossbow Marksman Rifle
L["mw19_category_cable"] = "Kabel"
L["mw19_category_arms"] = "Wurfarme"
L["mw19_category_bolt"] = "Bolzen"

-- Specific to the SP-R 208 Marksman Rifle
L["mw19_category_boltassembly"] = "Bolzenmechanismus"

-- Custom ones for the addon
L["mw19_category_ammo"] = "Munition" -- UO
L["mw19_category_function"] = "Functionality" -- UO
L["mw19_category_grip"] = "Griff" -- UO
L["mw19_category_misc"] = "Misc." -- UO
L["mw19_category_rails"] = "Rails" -- UO
L["mw19_category_receiver"] = "Receiver" -- UO
L["mw19_category_skins"] = "Skins" -- UO
L["mw19_category_slide"] = "Slide" -- UO, "Pistol Slide"
L["mw19_category_stats"] = "Stats" -- UO
L["mw19_category_view"] = "View" -- UO

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
L["mw19_optic_stat_zoom2"] = "Zoomstufe" -- Most scopes
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
L["cod2019_perks_soh.printname"] = "Finderfertigkeit"
L["cod2019_perks_soh.compactname"] = "FF"
L["cod2019_perks_soh.description"] = "Training im schnellen Nachladen unter Druck."

L["cod2019_perks_speedmelee.printname"] = "Schneller Nahkampf"
L["cod2019_perks_speedmelee.compactname"] = "S. Nahk."
L["cod2019_perks_speedmelee.description"] = "Training im Ausführen von Nahkampfmanövern in hohem Tempo."

L["cod2019_perks_heavyhitter.printname"] = "Schlagkräftig"
L["cod2019_perks_heavyhitter.compactname"] = "Kräftig"
L["cod2019_perks_heavyhitter.description"] = "Nahkämpfe lähmen Feinde stärker."

-- L["cod2019_perks_enforcer.printname"] = "Enforcer" -- UO
-- L["cod2019_perks_enforcer.compactname"] = "Enforcer" -- UO
-- L["cod2019_perks_enforcer.description"] = "Grants the user 30% resistance to all damage." -- UO

-- L["cod2019_perks_bolt.printname"] = "Deft Hands" -- UO
-- L["cod2019_perks_bolt.compactname"] = "Deft" -- UO
-- L["cod2019_perks_bolt.description"] = "Training with your weapon allows you to cycle the weapon faster." -- UO

-- L["cod2019_perks_slamfire.printname"] = "Slamfire" -- UO
-- L["cod2019_perks_slamfire.compactname"] = "Slamfire" -- UO
-- L["cod2019_perks_slamfire.description"] = "Bruteforce the weapon to fire and cycle the weapon much quicker at the cost of reduced accuracy." -- UO

L["cod2019_perks_burst.printname"] = "Salve"
L["cod2019_perks_burst.compactname"] = "Salve"
L["cod2019_perks_burst.description"] = "Verändert den Feuermodus zum <color=100,255,100>3-Schuss</color>-Feuerstoß."

L["cod2019_perks_burst_2.description"] = "Verändert den Feuermodus zum <color=100,255,100>2-Schuss</color>-Feuerstoß."

-- L["cod2019_perks_super_sprint.printname"] = "Tactical Sprint" -- UO
-- L["cod2019_perks_super_sprint.compactname"] = "Tac. Sprint" -- UO
-- L["cod2019_perks_super_sprint.description"] = "Provides an altered stance when sprinting. Cancels out up to <color=100,255,100>20%</color> sprint speed reduction at the cost of reduced sprint-to-fire speed." -- UO

L["cod2019_perks_auto.printname"] = "Automatisch" -- UO
L["cod2019_perks_auto.compactname"] = "Auto." -- UO
L["cod2019_perks_auto.description"] = "Verändert den Feuermodus zum <color=100,255,100>automatisch</color>." -- UO

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
L["mw19_weapon_sa87"] = "SAR-87"
L["mw19_weapon_m91"] = "M91"
L["mw19_weapon_mg34"] = "MG34"
L["mw19_weapon_holger"] = "Holger-26"
L["mw19_weapon_bruen"] = "Bruen Mk9"
L["mw19_weapon_finn"] = "FiNN LMG"
L["mw19_weapon_raal"] = "LAHS MG"

L["mw19_weapon_ebr"] = "EBR-14"
L["mw19_weapon_mk2"] = "MK2 Karabiner"
L["mw19_weapon_kar98"] = "Kar 98k"
L["mw19_weapon_crossbow"] = "Armbrust"
L["mw19_weapon_sks"] = "SKS"
L["mw19_weapon_spr"] = "SP-R 208"

L["mw19_weapon_dragunov"] = "Dragunow"
L["mw19_weapon_hdr"] = "HDR"
L["mw19_weapon_ax50"] = "AX50"
L["mw19_weapon_rytec"] = "Rytec AMR"

L["mw19_weapon_shield"] = "Einsatzschild"

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
L["mw19_weapon_rpg"] = "Raketenwerfer"
L["mw19_weapon_mgl"] = "MGL-32"

L["mw19_weapon_knife"] = "Messer"
L["mw19_weapon_stick"] = "Kali-Stöcke"
L["mw19_weapon_sword"] = "Doppel-Kodachis"

L["mw19_weapon_akimbo"] = "%s Akimbo"

L["mw19_weapon_nade_claymore"] = "Claymore"
L["mw19_weapon_nade_frag"] = "Splittergranate"
L["mw19_weapon_nade_molotov"] = "Molotow-Cocktail"
L["mw19_weapon_nade_c4"] = "C4"
L["mw19_weapon_nade_semtex"] = "Semtex"
L["mw19_weapon_nade_knife"] = "Wurfmesser"
L["mw19_weapon_nade_proximity"] = "Näherungsmine"
L["mw19_weapon_nade_thermite"] = "Thermit"
L["mw19_weapon_nade_thermite_alt"] = "Thermit Granate" -- UO

L["mw19_weapon_nade_flash"] = "Blendgranate"
L["mw19_weapon_nade_stun"] = "Betäubung"
L["mw19_weapon_nade_smoke"] = "Rauchgranate"
L["mw19_weapon_nade_snapshot"] = "Schnappschussgranate"
L["mw19_weapon_nade_heartbeat"] = "Herzschlagsensor"
L["mw19_weapon_nade_stim"] = "Stim"
L["mw19_weapon_nade_decoy"] = "Täuschgranate"
L["mw19_weapon_nade_gas"] = "Gasgranate"

-- L["mw19_weapon_minigun"] = "Minigun"-- UO
-- L["mw19_weapon_fists"] = "Fists" -- UO
-- L["mw19_weapon_nade_rock"] = "Rock" -- UO

//////////// Weapon Descriptions
L["mw19_weapon_kilo141_desc"] = "Vollautomatisches Sturmgewehr mit ergonomischem Design zur verbesserten Handhabung und einer stabilen Feuerrate, um am Ziel zu bleiben."
L["mw19_weapon_fal_desc"] = "Ein halbautomatisches Sturmgewehr mit hoher Feuerrate für schnelle Folgeschusse."
L["mw19_weapon_m4a1_desc"] = "Ein vollautomatisches Allzweck-Sturmgewehr. Wenn Sie Ihre Schüsse kontrollieren, ist diese Waffe aus der Distanz sehr effektiv."
L["mw19_weapon_fr556_desc"] = "Ein Hinterschaftlader-Sturmgewehr mit 3-Schuss-Salve. Eine gut platzierte Salve kann auf mittlere Distanz extrem tödlich sein."
L["mw19_weapon_oden_desc"] = "Ein vollautomatisches Hinterschaftlader-Sturmgewehr mit geringer Feuerrate, um die starke Munition mit 12,7 x 55mm zu kontrollieren."
L["mw19_weapon_m13_desc"] = "Automatisches Sturmgewehr mit kurzem Gaskolbenrücklauf, der die Feuerrate hoch und den Rückstoß gering hält."
L["mw19_weapon_scar_desc"] = "Großkalibriges vollautomatisches Sturmgewehr mit hohem Schaden auf lange Distanzen."
L["mw19_weapon_ak47_desc"] = "Sehr zuverlässiges automatisches Sturmgewehr mit russischer 7,62mm-Munition. Große Kaliber erfordern Geschick, um den Rückstoß handhaben zu konnen."
L["mw19_weapon_ram7_desc"] = "Ein vollautomatisches Hinterschaftlader-Sturmgewehr, das sich dank des kompakten Designs für Nahkampfkonfrontationen eignet."
L["mw19_weapon_grau_desc"] = "Diese modulare 5,56-Waffenplattform ist leicht und manövrierfähig bei herausragender Reichweite. Präzisionstechnik und Nachrüstläufe der Extraklasse geben dieser Waffe extremes Potenzial."
L["mw19_weapon_cr56_desc"] = "Dieses leichte, vollautomatische 7,62 x 39mm-Sturmgewehr ist kompakt und stark. Dieses Standardgewehr wurde exklusiv für den Militärdienst entwickelt, ist tödlich auf mittlere Distanz und kann leicht für eine Vielzahl an Angriffstaktiken konfiguriert werden."
L["mw19_weapon_an94_desc"] = "Innovatives russisches 5,45x39mm Sturmgewehr mit einzigartiger <color=255,255,100>Rückstoß-Verzögerung</color>. Jede erste Abzugbetatigung feuert 2 schnelle Schüsse, bevor der Rückstoß einsetzt. Die hohe Schussdichte erhöht das Schadenspotenzial. Der Mechanismus wird von einem geneigten Magazin gespeist, während ein Kolbengehäuse beim Kontrollieren des Rückstoßes hilft."
L["mw19_weapon_asval_desc"] = "Mit seinem <color=255,255,100>Unterschall</color>-9x39mm und einem integrierten <color=255,255,100>Schalldämpfer</color> ist das AS VAL ein Kraftpaket für Tarnung, Präzision und Durchschlagskraft. Diese Waffe wird in den Händen eines talentierten Operators, der den schweren Rückstoß und die hohe Feuerrate zu kontrollieren weiß, glänzen."

L["mw19_weapon_aug_desc"] = "Eine modulare, vollautomatische Waffe, die auf Milibität und Nahkämpfe ausgelegt ist."
L["mw19_weapon_p90_desc"] = "Eine vollautomatische Hinterschaftlader-MP. Ein oben angebrachtes Magazin nimmt extrem schnelle Munition Kaliber 5,7 x 28mm auf."
L["mw19_weapon_mp5_desc"] = "Eine vollautomatische 9mm-MP - die perfekte Balance zwischen Stabilität, Milibität und Tödlichkeit."
L["mw19_weapon_uzi_desc"] = "Eine vollautomatische, zuschießende MP - einfach, stabil, effektiv."
L["mw19_weapon_pp19_desc"] = "Ausgewogene, automatische MP mit hoher Kapazität im spiralförmigen Magazin."
L["mw19_weapon_mp7_desc"] = "Diese kompakte vollautomatische Waffe hat eine hohe Feuerrate und einen geringen Rückstoß."
L["mw19_weapon_striker_desc"] = "Extrem starke automatische MP mit Munition Kaliber .45, die auf größere Distanz wirkt als andere Waffen dieser Klasse. Die moderate Feuerrate sorgt für mehr Stabilität im vollautomatischen Modus."
L["mw19_weapon_fennec_desc"] = "Eine aggressive vollautomatische MP mit butterweichem Rückstoß und einer blitzschnellen Feuerrate, die sich hervorragend eignet, um Räume zu sichern und die Linie zu halten."
L["mw19_weapon_iso_desc"] = "Präzise gearbeitete 9mm MP mit schneller Schussrate. Diese leichte und zuverlässige Feuerwaffe soll das Kampfgeschehen auf kurze Distanz beherschen."
L["mw19_weapon_cx9_desc"] = "Hervorragende Manövrierfähigkeit und hohe Schussrate machen diese rückstoßebetriebene MP zu eine ausgezeichneten Wahl für den Nahkampf."

L["mw19_weapon_m680_desc"] = "Eine zuverlässige, ausgewogene Pump-Action-Schrotflinte mit Kaliber 12."
L["mw19_weapon_r90_desc"] = "Der Doppellauf bietet zwei schnelle Schüsse vor jedem Nachladen."
L["mw19_weapon_725_desc"] = "Kipplauf-Schrotflinte mit 2 Schuss. Ein langer, aufgebohrter Lauf und eine zylindrische Würgebohrung sorgen für geringere Streuung und tödliche Wirkung auf längere Distanz."
L["mw19_weapon_origin12_desc"] = "Eine halbautomatische Schrotflinte mit hoher Kapazität für durchgehendes Feuer. Effektiv auf kurze Distanz."
L["mw19_weapon_vlk_desc"] = "Eine agile Schrotflinte mit Kaliber 12-Magazin von VLK mit zahlreichen Optionen, um Reichweite, Stabilität und Beweglichkeit zu modifizieren."
L["mw19_weapon_aa12_desc"] = "Vollautomatische Schrotflinte mit offenem Bolzen und einem rückstoßreduzierenden Gassystem. Die Kampfschrotflinte verschießt große Mengen Blei bei gleichbleibender Schussrate."

L["mw19_weapon_pkm_desc"] = "Ein vollautomatisches leichtes Maschinengewehr mit 7,62mm-Munition für hohen Schaden bei mittlerer Feuerrate."
L["mw19_weapon_sa87_desc"] = "Ein vollautomatisches, leichtes Hinterschaftlader-Maschinengewehr. Die geringere Feuerrate und die 5,56mm-Geschosse machen dieses Gewehr stabil und effektiv auf große Distanz."
L["mw19_weapon_m91_desc"] = "Robustes leichtes Maschinengewehr, das Mobilität für Stabilität opfert. Dauerfeuer mit hohem Kaliber neutralisiert Zielen auf große Distanz."
L["mw19_weapon_mg34_desc"] = "Vollautomatische Waffe mit hoher Feuerrate und verheerender 7,62-Mauser-Munition. Maschinengewehre aus dem Zweiten Weltkrieg sind noch immer zuverlässig und tödlich auf dem Schlachtfeld."
L["mw19_weapon_holger_desc"] = "Ein vielseitiges, vollautomatisches, leichtes 5,56mm-MG. Das modulare Design ermöglicht unterschiedlichste Einsätze."
L["mw19_weapon_bruen_desc"] = "Dieses luftgekühlte, zuschießende leichte 5,56-Maschinengewehr bietet eine konkurrenzfähige Feuerrate und exzellente Stabilitat, mit denen man auf mittlere bis große Distanz dominiert."
L["mw19_weapon_finn_desc"] = "Ein ultraleichtes, zuschießendes 5,56-Maschinengewehr mit geringer Schussrate und verbesserter Rückstoßkontrolle, die dem FiNN außergewöhnliche Präzision mit Vollautomatik verleiht."
L["mw19_weapon_raal_desc"] = "Das leichte Aufklärungs-Helfer-Sturm-MG reduziert den Rückstoß der durchschlagskräftigen .338 Norma Magnum-Munition mithilfe einer geringen Feuerrate und eines zurückgleitenden Laufs. Die fortschrittliche Titankonstruktion hält das Gewicht im Rahmen,"

L["mw19_weapon_ebr_desc"] = "Ein halbautomatisches DMR mit hoher Reichweite und einer guten Balance aus Feuerrate und tödlicher Wirkung."
L["mw19_weapon_mk2_desc"] = "Extrem präzises Unterhebel-Gewehr - neutralisiert Feinde mit einem gut platzierten Schuss in Brust oder Kopf."
L["mw19_weapon_kar98_desc"] = "Gewehr mit Geradezugverschluss und 7,92-Mauser-Munition. Ein Relikt aus dem Zweiten Weltkrieg, das in den Händen eines geübten Schützen immer noch extrem tödlich ist."
L["mw19_weapon_crossbow_desc"] = "Diese leise und bewegliche Hochleistungs-Armbrust verschießt 20\"- Bolzen mit außergewöhnlich tödlicher Wirkung. Exklusive Personalisierung, Funktionalität und Munitionstypen machen aus dieser Waffe eine Klasse für sich. Die Standardbolzen mit 20\" können zurückgeholt werden und sind für Trophy-Systeme nicht erkennbar."
L["mw19_weapon_sks_desc"] = "Leichter, halbautomatischer Karabiner mit 7,62x39mm-Munition. Dieses durchschlagskräftige und mobile russische Gewehr setzt eher auf Wirkung als auf Präzision. Es hat eine höhere Feuerrate als andere Waffen seiner Klasse, eine sorgfältig platzierte Kugel macht nachfolgende Schüsse müßig. Dieses klassische DMR hat schon viele Kämpfe erlebt, und die einzigartigen Waffenschmied-Konfigurationen zeugen von einer vielseitigen Einsatzhistorie."
L["mw19_weapon_spr_desc"] = "Das zuverlässige und starke Gewehr mit Geradezugverschluss .300 von Sloan Precision. Der vielseitige zivile und militärische Nutzen dieser Waffe bietet jede Menge Anpassungsmoglichkeiten."

L["mw19_weapon_dragunov_desc"] = "Ein russisches Arbeitstier mit 7,62mm x 54mmR-Munition. Das halbautomatische Scharfschützengewehr ist ein Gasdrucklader mit einer hohen Feuerrate bei Folgeschüssen."
L["mw19_weapon_hdr_desc"] = "Ein \"Anti-Material\"-Gewehr mit Geradezugverschluss und 12,7x108mm-Munition. Die 745g-Munition hat eine geringere Mündungsgeschwindigkeit, ist aber bei großer Entfernung verheerend."
L["mw19_weapon_ax50_desc"] = "Starkes Scharfschützengewehr mit Geradezugverschluss und BMG-Munition Kaliber 50. Seine Wolfram-Wuchtgeschosse sind schnell und schlagkräftig, erfordern jedoch präzise Schüsse auf große Distanz."
L["mw19_weapon_rytec_desc"] = "Dieses halbautomatische Anti-Material-Gewehr setzt auf .50 BMG für kraftvolle Angriffe aus der Distanz. Eine Variante mit hochexplosiver 25x59mm-Ladung gilt offiziell als \"experimentell\", wurde aber bereits mehrfach effektiv in vielen Geheimoperationen eingesetzt."

L["mw19_weapon_shield_desc"] = "Schild mit erhöhtem Nahkampfschaden zur Abwehr von Kugel- und Explosionsschaden."

L["mw19_weapon_glock_desc"] = "Eine halbautomatische Pistole mit .45-ACP-Munition - eine zuverlässige Notlösung für plötzliche Nahkämpfe."
L["mw19_weapon_1911_desc"] = "Eine ausgewogene, halbautomatische Pistole mit moderater Feuerrate. Die Reichweite ist etwas höher als bei einer durchschnittlichen .45-ACP-Pistole."
L["mw19_weapon_357_desc"] = "Revolver mit Spannabzug, der Kaliber .357-Magnummunition nutzt, um viel Schaden auf größere Distanz zu bewirken."
L["mw19_weapon_m19_desc"] = "Halbautomatische 9mm-Pistole mit exzellenter Stabilität und schnellem Durchsatz."
L["mw19_weapon_deagle_desc"] = "Die stärkste halbautomatische Handfeuerwaffe. Bewirkt großen Schaden bis auf mittlere Distanz."
L["mw19_weapon_m9_desc"] = "Ausgewogene halbautomatische 9mm-Pistole. Diese bescheidene Handfeuerwaffe glänzt auf kurze Distanz und bietet Modifikationsmöglichkeiten, die in der Pistolenklasse einzigartig sind und verschiedene Strategien ermöglichen."
L["mw19_weapon_makarov_desc"] = "Diese Spann-/Direktabzug-Pistole ist ein zuverlässiger Plan B im Nahkampf und bietet ein paar Waffenschmied-Modifikationen, die jedes Arsenal hervorragend ergänzen."

L["mw19_weapon_pila_desc"] = "Tragbarer Infrarot-Boden-Luft-Raketen-Werfer mit Freifeueroption. Die Raketen mit eigenem Antripb haben eine höhere Geschwindigkeit und moderate Sprengkraft."
L["mw19_weapon_strela_desc"] = "Dieser rückstoßfreie 84mm-Werfer feuert ein Explosivgeschoss mit hoher Geschwindigkeit ab. Das ungelenkte, panzerbrechende Geschoss hat nyr geringe Sprengkraft, wirkt bei einem direkten Treffer jedoch verheerend gegen Fahrzeuge."
L["mw19_weapon_javelin_desc"] = "Tragbarer Lenkraketenwerfer mit Zielerfassung und hoher Sprengkraft. Die Infrarotlenkraketen treffén ihr Ziel von oben, um selbst schwer gepanzerte Fahrzeuge zu zerstören."
L["mw19_weapon_rpg_desc"] = "Dieser Raketenwerfer für ungelenkte Raketen mit Eigenantrieb feuert langsame Projektile mit großer Sprengkraft ab."
-- L["mw19_weapon_mgl_desc"] = "Rapid firing grenade launcher fed with a 6-round rotating cylinder. Can utilize a variety of 40mm rounds for various roles." -- UO

L["mw19_weapon_knife_desc"] = "Ein taktisches Messer für den Nahkampf. Standard-Militärausrustung fur schnelles, leises und tödliches Ausschalten."
L["mw19_weapon_stick_desc"] = "Schlagstöcke aus Stahl - je einer pro Hand - ermöglichen es Ihrem Operator, sich dem Ziel und flink zu nähern. Das robuste, leichte Design ermöglicht schnelle Angriffe."
L["mw19_weapon_sword_desc"] = "Die handgeschmiedeten Klingen aus unlegiertem Stahl bieten die schärfsten Schneiden, die es gibt, um leise durch Ihre Feinde zu schlitzen."

L["mw19_weapon_nade_claymore_desc"] = "Annäherungsmine."
L["mw19_weapon_nade_frag_desc"] = "Splittergranate zum Scharfmachen."
L["mw19_weapon_nade_molotov_desc"] = "Improvisierte Brandwaffe, die beim Aufprall explodiert."
L["mw19_weapon_nade_c4_desc"] = "Großer Sprengsatz, der an Oberflächen haftet und mit {ATTACK} ferngezündet werden kann, wenn die Ausrüstung aufgebraucht ist.\n\nDoppeltes Drücken {USE} zündet die Ladung immer."
L["mw19_weapon_nade_semtex_desc"] = "Haftgranate mit Timer."
L["mw19_weapon_nade_knife_desc"] = "Wiederverwendbares Messer, das geworfen werden kann, um Feinde schnell und lautlos zu eliminieren."
L["mw19_weapon_nade_proximity_desc"] = "Durch Annäherung ausgelöster Sprengsatz, der schwere Schäden an Fahrzeugen verursacht."
L["mw19_weapon_nade_thermite_desc"] = "Sprengsatz, der nach dem Aufschlag eine Zeit lang lichterloh brennt. Bleibt an Oberflächen haften."

L["mw19_weapon_nade_flash_desc"] = "Blendet und betäubt Ziele."
L["mw19_weapon_nade_stun_desc"] = "Verlangsamt die Bewegungen und die Zielfähigkeit des Opfers."
L["mw19_weapon_nade_smoke_desc"] = "Setzt eine Rauchwand frei, die die Sicht behindert."
L["mw19_weapon_nade_snapshot_desc"] = "Bietet einen kurzen Blick auf die Gegner innerhalb des Sprengradius des eigenen Trupps."
L["mw19_weapon_nade_heartbeat_desc"] = "Ein Tablet, das Grundinformation über Gegner in der Nähe anzeigt."
L["mw19_weapon_nade_stim_desc"] = "Militärisches Stimulans, das Gefechtswunden kauterisiert und den Taktiksprint erneuert."
L["mw19_weapon_nade_decoy_desc"] = "Spionageabwehr-Granate, die Schüsse und Radarsignaturen vortäuscht, um den Gegner zu verwirren."
L["mw19_weapon_nade_gas_desc"] = "Explodiert beim Aufprall auf den Boden und setzt eine Tränengaswolke frei, die Bewegungen verlangsamt, die Sicht behindert und Hustenanfälle auslöst."

-- L["mw19_weapon_minigun_desc"] = "Portable gatling gun with a very high cyclic rate." -- UO
-- L["mw19_weapon_fists_desc"] = "When all else fails, punch your way out. Remember, fists do not require reloading, so they are always quick." -- UO
-- L["mw19_weapon_nade_rock_desc"] = "For when you need to hit an enemy with a \"non-lethal\" item, or if you need to provide a distraction in order to sneak past guards." -- UO
