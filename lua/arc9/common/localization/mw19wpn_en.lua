L = {} -- English, UO by Moka

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
L["settings.mw19"] = "Addon - MW19" -- UO
L["settings.mw19.warzonestats"] = "Warzone Stats" -- UO
L["settings.mw19.warzonestats.title"] = "Enable Warzone Stats" -- UO
L["settings.mw19.warzonestats.desc"] = "Changes the stats on all* weapons and attachments to have stats more accurate to Modern Warfare 2019 / Warzone.\n\nThis is a server variable. Requires restart to take affect.\n\n\n*Some weapons and attachments will not behave differently." -- UO

//////////////////// Trivia
/////////// Caliber -- UO
L["mw19_caliber"] = "Caliber3"

L["mw19_caliber_556"] = "5.56 NATO" -- Kilo 141, M4A1, FR 5.56, M13, RAM-7, Grau 5.56, SA87, Holger-26, Bruen Mk9, FiNN LMG
L["mw19_caliber_762"] = "7.62 NATO" -- FAL, FN Scar 17, M91, EBR-14
L["mw19_caliber_762soviet"] = "7.62 Soviet" -- AK-47, CR-56 AMAX, SKS
L["mw19_caliber_762mmr"] = "7.62×54mmR" -- PKM, Dragunov
L["mw19_caliber_762mauser"] = "7.62 Mauser" -- MG34, Kar98k
L["mw19_caliber_545"] = "5.45×39mm" -- AN-94
L["mw19_caliber_127x55"] = "12.7×55mm" -- Oden
L["mw19_caliber_127x108"] = "12.7×108mm" -- HDR
L["mw19_caliber_939"] = "9×39mm" -- AS VAL
L["mw19_caliber_919"] = "9mm Parabellum" -- AUG, MP5, Uzi, ISO, CX-9, M19, Renetti
L["mw19_caliber_57x28"] = "5.7×28mm" -- P90
L["mw19_caliber_918"] = "9mm Makarov" -- PP19 Bizon, Sykov
L["mw19_caliber_46x30"] = "4.6×30mm" -- MP7
L["mw19_caliber_45acp"] = ".45 ACP" -- Striker 45, Fennec, X16, 1911
L["mw19_caliber_12gauge"] = "12 Gauge" -- All Shotguns
L["mw19_caliber_338"] = ".338 Norma Mag" -- RAAL MG
L["mw19_caliber_45-70"] = ".45-70 Government" -- MK2 Carbine
L["mw19_caliber_bolt"] = "20.0\" Bolt" -- Crossbow
L["mw19_caliber_300"] = ".300 Win Mag" -- SP-R 208
L["mw19_caliber_50bmg"] = ".50 BMG" -- AX-50, Rytec AMR
L["mw19_caliber_357"] = ".357 Magnum" -- .357
L["mw19_caliber_50p"] = ".50 pistol" -- .50 GS

/////////// Country of Origin -- UO
L["mw19_country"] = "Country of Origin1"

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
L["mw19_country_japan"] = "Japan"

/////////// Manufacturer
L["mw19_manufacturer"] = "Manufacturer2" -- UO

L["mw19_manufacturer_singuard"] = "Singuard Arms" -- Kilo 141

L["mw19_manufacturer_forgetac"] = "FORGE TAC Manufacturing" -- M4A1, FR 5.56, FN Scar 17, RAM-7, P90, Striker 45, Fennec, CX-9, R9-0, Holger-26, EBR-14, .50 GS

L["mw19_manufacturer_tempus"] = "Tempus Armament Inc." -- M13, 725, Bruen Mk9, FiNN LMG

L["mw19_manufacturer_verdansk"] = "Verdansk Arms Plant" -- AN-94, AS VAL, SKS

L["mw19_manufacturer_fss"] = "FSS" -- MP5, MP7, M91, MK2 Carbine

L["mw19_manufacturer_cronen"] = "Cronen Industries" -- Uzi

L["mw19_manufacturer_zlr"] = "ZLR Special Inc." -- ISO, RAAL MG

L["mw19_manufacturer_xrk"] = "XRK" -- Model 680, JAK-12, M19

L["mw19_manufacturer_vlk"] = "VLK Inc." -- VLK Rogue

L["mw19_manufacturer_sloan"] = "Sloan Precision" -- SP-R 208

L["mw19_manufacturer_cronen"] = "Cronen" -- AX-50

L["mw19_manufacturer_silverfield"] = "Silverfield Ordnance" -- Rytec AMR, Renetti

L["mw19_manufacturer_corvus"] = "Corvus Defence" -- M19

L["mw19_manufacturer_stvol"] = "Stvol Tactical" -- PILA

/////////// Weight -- UO
L["mw19_weight"] = "Weight (Loaded)4"
L["mw19_weight_val"] = "%s kg / ~%s lb"

/////////// Projectile Weight -- UO
L["mw19_weight_projectile"] = "Projectile Weight5"
L["mw19_weight_projectile_val"] = "%s g"

/////////// Authors -- UO
L["mw19_assets"] = "Assets2"
L["mw19_author"] = "Author1"

/////////// Weapon Categories
L["mw19_category_weapon_ar"] = "Assault Rifles"
L["mw19_category_weapon_smg"] = "SMGs"
L["mw19_category_weapon_shotgun"] = "Shotguns"
L["mw19_category_weapon_lmg"] = "LMGs"
L["mw19_category_weapon_marksman"] = "Marksman Rifles"
L["mw19_category_weapon_sniper"] = "Sniper Rifles"
L["mw19_category_weapon_melee"] = "Melee"
L["mw19_category_weapon_throwable"] = "Lethal & Tactical"

L["mw19_category_weapon_handgun"] = "Handguns"
L["mw19_category_weapon_handgun_akimbo"] = "Handguns (Akimbo)"
L["mw19_category_weapon_launcher"] = "Launchers"

/////////// Weapon Classes
L["mw19_class_weapon_ar"] = "Assault Rifle"
L["mw19_class_weapon_smg"] = "Submachine Gun"
L["mw19_class_weapon_shotgun"] = "Shotgun"
L["mw19_class_weapon_lmg"] = "Light Machine Gun"
L["mw19_class_weapon_marksman"] = "Marksman Rifle"
L["mw19_class_weapon_sniper"] = "Sniper Rifle"
L["mw19_class_weapon_melee"] = "Melee"
L["mw19_class_weapon_lethal"] = "Lethal"
L["mw19_class_weapon_tactical"] = "Tactical"
L["mw19_class_weapon_grenade"] = "Grenade" -- UO

L["mw19_class_weapon_handgun"] = "Handgun"
L["mw19_class_weapon_launcher"] = "Launcher"

//////////////////////////////////////////////////////////////////////
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

-- Specific to Handguns
L["mw19_category_triggeraction"] = "Trigger Action"

-- Specific to the R9-0 Shotgun
L["mw19_category_pumps"] = "Pumps"

-- Specific to the 725 Shotgun
L["mw19_category_guard"] = "Guard"

-- Specific to the VLK Rogue Shotgun
L["mw19_category_pumpgrip"] = "Pump Grip"

-- Specific to the Crossbow Marksman Rifle
L["mw19_category_cable"] = "Cable"
L["mw19_category_arms"] = "Arms"
L["mw19_category_bolt"] = "Bolt"

-- Specific to the SP-R 208 Marksman Rifle
L["mw19_category_boltassembly"] = "Bolt Assembly"

-- Custom ones for the addon
L["mw19_category_ammo"] = "Ammo" -- UO
L["mw19_category_function"] = "Functionality" -- UO
L["mw19_category_grip"] = "Foregrip" -- UO
L["mw19_category_misc"] = "Misc." -- UO
L["mw19_category_rails"] = "Rails" -- UO
L["mw19_category_receiver"] = "Receiver" -- UO
L["mw19_category_skins"] = "Skins" -- UO
L["mw19_category_slide"] = "Slide" -- UO, "Pistol Slide"
L["mw19_category_stats"] = "Stats" -- UO
L["mw19_category_view"] = "View" -- UO

//////////////////// Folder Names
-- Stocks
L["mw19_folder_tube2"] = "Tube" -- UO

-- Other
L["mw19_folder_other2"] = "Other" -- UO
L["mw19_folder_side2"] = "Side" -- UO

//////////////////// Firemodes
-- L["mw19_firemode_pump"] = "PUMP"

L["mw19_firemode_single"] = "SINGLE" -- UO
L["mw19_firemode_double"] = "DOUBLE" -- UO
L["mw19_firemode_throwable"] = "THROWABLE" -- UO
L["mw19_firemode_plant"] = "PLANT" -- UO, "Plant" the bomb
L["mw19_firemode_melee"] = "MELEE" -- UO
L["mw19_firemode_lockon"] = "LOCK-ON" -- UO
L["mw19_firemode_lockon_top"] = "LOCK-OFF (GROUND)" -- UO
L["mw19_firemode_guided"] = "GUIDED" -- UO
L["mw19_firemode_unguided"] = "UNGUIDED" -- UO

//////////////////////////////////////////////////////////////////////
///////////////////////////// Base Attachments
-- Stats
L["mw19_optic_stat_zoom2"] = "Zoom Level" -- Most scopes
L["mw19_ammo_stat_ignite_chance"] = "On Hit: Chance to Ignite Target" -- UO

////////////////////  Default Scopes
L["cod2019_optic_default_svd.printname"] = "Default Scope" -- UO
L["cod2019_optic_default_svd.compactname"] = "Default" -- UO
L["cod2019_optic_default_svd.description"] = "Default <color=100,255,100>5.5x</color> scope for the Dragunov. <color=255,100,100>Optic glint visible to enemies.</color>"

L["cod2019_optic_default_hdr.printname"] = ARC9:GetPhrase("cod2019_optic_default_svd.printname") or "Default Scope" -- UO
L["cod2019_optic_default_hdr.compactname"] = ARC9:GetPhrase("cod2019_optic_default_svd.compactname") or "Default" -- UO
L["cod2019_optic_default_hdr.description"] = "Default <color=100,255,100>6.0x</color> scope for the HDR. <color=255,100,100>Optic glint visible to enemies.</color>"

L["cod2019_optic_default_ax50.printname"] = ARC9:GetPhrase("cod2019_optic_default_svd.printname") or "Default Scope" -- UO
L["cod2019_optic_default_ax50.compactname"] = ARC9:GetPhrase("cod2019_optic_default_svd.compactname") or "Default" -- UO
L["cod2019_optic_default_ax50.description"] = "Default <color=100,255,100>5.5x</color> scope for the AX-50. <color=255,100,100>Optic glint visible to enemies.</color>"

L["cod2019_optic_default_rytec.printname"] = ARC9:GetPhrase("cod2019_optic_default_svd.printname") or "Default Scope" -- UO
L["cod2019_optic_default_rytec.compactname"] = ARC9:GetPhrase("cod2019_optic_default_svd.compactname") or "Default" -- UO
L["cod2019_optic_default_rytec.description"] = "Default <color=100,255,100>4.5x</color> scope for the Rytec AMR. <color=255,100,100>Optic glint visible to enemies.</color>"

L["cod2019_optic_default_strela.printname"] = ARC9:GetPhrase("cod2019_optic_default_svd.printname") or "Default Scope" -- UO
L["cod2019_optic_default_strela.compactname"] = ARC9:GetPhrase("cod2019_optic_default_svd.compactname") or "Default" -- UO
L["cod2019_optic_default_strela.description"] = "Default <color=100,255,100>3.0x</color> sight for the Strela-P."

L["cod2019_optic_default_pila.printname"] = ARC9:GetPhrase("cod2019_optic_default_svd.printname") or "Default Scope" -- UO
L["cod2019_optic_default_pila.compactname"] = ARC9:GetPhrase("cod2019_optic_default_svd.compactname") or "Default" -- UO
L["cod2019_optic_default_pila.description"] = "Default <color=100,255,100>3.0x</color> sight for the PILA."

L["cod2019_optic_default_m32.printname"] = "MGL-32 Grenade Launcher Sight"
L["cod2019_optic_default_m32.compactname"] = "MGL GLS"
L["cod2019_optic_default_m32.description"] = "Default <color=100,255,100>3.5x</color> sight for the MGL-32."

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

L["cod2019_ammo_tracer_random.printname"] = "Rainbow Tracer Rounds" -- UO
L["cod2019_ammo_tracer_random.compactname"] = "RB" -- UO
L["cod2019_ammo_tracer_random.description"] = "Ammunition with tracers painted in the various colors of the rainbow." -- UO

L["cod2019_ammo_db.printname"] = "Incendiary Rounds" -- UO
L["cod2019_ammo_db.compactname"] = "Inc." -- UO
L["cod2019_ammo_db.description"] = "Incendiary ammunition that has a change to light targets on fire on hit." -- UO

L["cod2019_ammo_he.printname"] = "High Explosive Rounds" -- UO
L["cod2019_ammo_he.compactname"] = "HE" -- UO
L["cod2019_ammo_he.description"] = "Explosive ammunition that sacrifice direct damage in favor of dealing damage in a radius around the impact area.\nThe effect is spectacular, but very little explosive filler can be put inside the bullets." -- UO

////////// Shotgun Ammo
L["cod2019_ammo_sg_magnum.printname"] = "8.5mm Magnum Buckshot" -- UO
L["cod2019_ammo_sg_magnum.compactname"] = "MAG" -- UO
L["cod2019_ammo_sg_magnum.description"] = "High-powered buckshot loaded with fewer but larger lead pellets.\nProvides better close range power, but worsened range and accuracy." -- UO

L["cod2019_ammo_sg_slug.printname"] = "12mm Full-bore Slug" -- UO
L["cod2019_ammo_sg_slug.compactname"] = "SLUG" -- UO
L["cod2019_ammo_sg_slug.description"] = "A single large projectile loaded into a shotgun shell.\nThe aerodynamic pellet has much higher effective range." -- UO

L["cod2019_ammo_sg_flechette.printname"] = "Flechette Shells" -- UO
L["cod2019_ammo_sg_flechette.compactname"] = "FLE" -- UO
L["cod2019_ammo_sg_flechette.description"] = "Load containing thin, dart-shaped projectiles.\nProvides tighter spread and increased range alongside increased penetration, but at the cost of reduced stopping power." -- UO

L["cod2019_ammo_sg_frag.printname"] = "\"FRAG-12\" High Explosive" -- UO
L["cod2019_ammo_sg_frag.compactname"] = "FRAG-12" -- UO
L["cod2019_ammo_sg_frag.description"] = "Load containing a single projectile filled with an explosive compound.\nDeals damage around a small radius at the impact area." -- UO

L["cod2019_ammo_sg_rebounder.printname"] = "10mm Rebounder Rounds" -- UO
L["cod2019_ammo_sg_rebounder.compactname"] = "RBD" -- UO
L["cod2019_ammo_sg_rebounder.description"] = "Load containing specialized pellets that have a high chance to ricochet.\nThe pellets will bounce regardless of angle, dealing increased damage the more it ricochets.\nIt does, however, have reduced damage output on direct impact." -- UO

L["cod2019_ammo_sg_frag_x4.printname"] = "\"FRAG-12\" High Explosive x4" -- UO
L["cod2019_ammo_sg_frag_x4.compactname"] = "FRAG-12 x4" -- UO
L["cod2019_ammo_sg_frag_x4.description"] = "Load containing four projectiles filled with explosive compounds.\nDeals damage around a small radius at the impact area." -- UO

L["cod2019_ammo_sg_db.printname"] = "\"Dragon's Breach\"" -- UO
L["cod2019_ammo_sg_db.compactname"] = "DB" -- UO
L["cod2019_ammo_sg_db.description"] = "Load containing magnesium pellets that lights a target on fire on hit." -- UO

////////////////////  Etc.
L["cod2019_etc_ammo_extend.printname"] = "Lightweight Extended Mag" -- UO
L["cod2019_etc_ammo_extend.compactname"] = "Light EM" -- UO
L["cod2019_etc_ammo_extend.description"] = "Custom extended magazines holding <color=100,255,100>33%</color> more ammunition." -- UO

L["cod2019_attach_grip_support.printname"] = "Grip Support" -- UO
L["cod2019_attach_grip_support.compactname"] = "Grip S." -- UO
L["cod2019_attach_grip_support.description"] = "Allows the installation of foregrips onto handguns. <color=255,100,100>Cannot apply lasers as well.</color>" -- UO

L["cod2019_view_alt_pistol.printname"] = "Alternative View" -- UO
L["cod2019_view_alt_pistol.compactname"] = "Alt. View" -- UO
L["cod2019_view_alt_pistol.description"] = "Alternative viewing angle." -- UO

L["cod2019_attach_laser_rail.printname"] = "Laser Attachment" -- UO
L["cod2019_attach_laser_rail.compactname"] = "Laser Att." -- UO
L["cod2019_attach_laser_rail.description"] = "Allows the installation of laser sights onto your weapon." -- UO

L["cod2019_attach_laser_rail_2.printname"] = ARC9:GetPhrase("cod2019_attach_laser_rail.printname")
L["cod2019_attach_laser_rail_2.compactname"] = ARC9:GetPhrase("cod2019_attach_laser_rail.compactname")
L["cod2019_attach_laser_rail_2.description"] = "Allows the installation of small, cylindrical laser sights onto your weapon." -- UO

L["cod2019_attach_laser_cylinder.printname"] = ARC9:GetPhrase("cod2019_attach_laser_rail.printname")
L["cod2019_attach_laser_cylinder.compactname"] = ARC9:GetPhrase("cod2019_attach_laser_rail.compactname")
L["cod2019_attach_laser_cylinder.description"] = ARC9:GetPhrase("cod2019_attach_laser_rail.description")

L["cod2019_attach_laser_cylinder_2.printname"] = ARC9:GetPhrase("cod2019_attach_laser_rail.printname")
L["cod2019_attach_laser_cylinder_2.compactname"] = ARC9:GetPhrase("cod2019_attach_laser_rail.compactname")
L["cod2019_attach_laser_cylinder_2.description"] = ARC9:GetPhrase("cod2019_attach_laser_rail_2.description")

////////////////////  Grips
L["cod2019_attach_grip_foregrip_side.printname"] = "ARC Foregrip" -- UO
L["cod2019_attach_grip_foregrip_side.compactname"] = "ARC" -- UO
L["cod2019_attach_grip_foregrip_side.description"] = "Extended foregrip reduces vertical recoil and provides stability from the hip for fast-paced guerrilla tactics." -- cod2019_grips_merc.description

L["cod2019_grips_none.printname"] = "Alternative Holding" -- UO
L["cod2019_grips_none.compactname"] = "Alt. Hold" -- UO
L["cod2019_grips_none.description"] = "Alternative holding style." -- UO

L["cod2019_grips_none2.printname"] = "Alternative Holding II" -- UO
L["cod2019_grips_none2.compactname"] = "Alt. Hold II" -- UO
L["cod2019_grips_none2.description"] = ARC9:GetPhrase("cod2019_grips_none.description") or "Alternative holding style." -- UO

L["cod2019_grips_alt_cclamp.printname"] = "C-Clamp Holding" -- UO
L["cod2019_grips_alt_cclamp.compactname"] = "C-Clamp" -- UO
L["cod2019_grips_alt_cclamp.description"] = ARC9:GetPhrase("cod2019_grips_none.description")

L["cod2019_grips_alt_nocclamp.printname"] = "No C-Clamp Holding" -- UO
L["cod2019_grips_alt_nocclamp.compactname"] = "No C-C" -- UO
L["cod2019_grips_alt_nocclamp.description"] = ARC9:GetPhrase("cod2019_grips_none.description")

L["cod2019_striker45_noclamp.printname"] = ARC9:GetPhrase("cod2019_grips_alt_nocclamp.printname")
L["cod2019_striker45_noclamp.compactname"] = ARC9:GetPhrase("cod2019_grips_alt_nocclamp.compactname")
L["cod2019_striker45_noclamp.description"] = ARC9:GetPhrase("cod2019_grips_none.description")

////////////////////  Perks
L["cod2019_perks_soh.printname"] = "Sleight of Hand"
L["cod2019_perks_soh.compactname"] = "SoH"
L["cod2019_perks_soh.description"] = "Training in reloading faster when under pressure."

L["cod2019_perks_soh_alt.printname"] = ARC9:GetPhrase("cod2019_perks_soh.printname")
L["cod2019_perks_soh_alt.compactname"] = ARC9:GetPhrase("cod2019_perks_soh.compactname")
L["cod2019_perks_soh_alt.description"] = ARC9:GetPhrase("cod2019_perks_soh.description")

L["cod2019_perks_speedmelee.printname"] = "Fast Melee"
L["cod2019_perks_speedmelee.compactname"] = "Melee"
L["cod2019_perks_speedmelee.description"] = "Training in executing melee maneuvers with great speed."

L["cod2019_perks_heavyhitter.printname"] = "Heavy Hitter"
L["cod2019_perks_heavyhitter.compactname"] = "Hitter"
L["cod2019_perks_heavyhitter.description"] = "Melee produces greater stun on targets."

L["cod2019_perks_enforcer.printname"] = "Enforcer" -- UO
L["cod2019_perks_enforcer.compactname"] = "Enforcer" -- UO
L["cod2019_perks_enforcer.description"] = "Grants the user 30% resistance to all damage." -- UO

L["cod2019_perks_bolt.printname"] = "Deft Hands" -- UO
L["cod2019_perks_bolt.compactname"] = "Deft" -- UO
L["cod2019_perks_bolt.description"] = "Training with your weapon allows you to cycle the weapon faster." -- UO

L["cod2019_perks_bolt_alt.printname"] = ARC9:GetPhrase("cod2019_perks_bolt.printname")
L["cod2019_perks_bolt_alt.compactname"] = ARC9:GetPhrase("cod2019_perks_bolt.compactname")
L["cod2019_perks_bolt_alt.description"] = ARC9:GetPhrase("cod2019_perks_bolt.description")

L["cod2019_perks_slamfire.printname"] = "Slamfire" -- UO
L["cod2019_perks_slamfire.compactname"] = "Slamfire" -- UO
L["cod2019_perks_slamfire.description"] = "Bruteforce the weapon to fire and cycle the weapon much quicker at the cost of reduced accuracy." -- UO

L["cod2019_perks_burst.printname"] = "Burst Fire"
L["cod2019_perks_burst.compactname"] = "Burst"
L["cod2019_perks_burst.description"] = "Changes fire mode to <color=100,255,100>3-round</color> burst."

L["cod2019_perks_burst_2.printname"] = ARC9:GetPhrase("cod2019_perks_burst.printname")
L["cod2019_perks_burst_2.compactname"] = ARC9:GetPhrase("cod2019_perks_burst.compactname")
L["cod2019_perks_burst_2.description"] = "Changes fire mode to <color=100,255,100>2-round</color> burst."

L["cod2019_perks_super_sprint.printname"] = "Tactical Sprint" -- UO
L["cod2019_perks_super_sprint.compactname"] = "Tac. Sprint" -- UO
L["cod2019_perks_super_sprint.description"] = "Provides an altered stance when sprinting. Cancels out up to <color=100,255,100>20%</color> sprint speed reduction at the cost of reduced sprint-to-fire speed." -- UO

L["cod2019_perks_auto.printname"] = "Full Auto" -- UO
L["cod2019_perks_auto.compactname"] = "Auto." -- UO
L["cod2019_perks_auto.description"] = "Changes fire mode to <color=100,255,100>fully automatic</color>." -- UO

////////////////////  Scopes
L["cod2019_model680_iron.printname"] = "Remove Sight Mount" -- UO
L["cod2019_model680_iron.compactname"] = "R. Sight M." -- UO
L["cod2019_model680_iron.description"] = "Removes the sight mount on the Model 680, making it sleeker." -- UO

////////////////////  Stocks
L["cod2019_stock_vlk.printname"] = "VLK Rogue Stock" -- UO
L["cod2019_stock_vlk.compactname"] = "Rogue" -- UO
L["cod2019_stock_vlk.description"] = "Stock designed for agility while aiming down sights." -- mw19stockdesc.light

L["cod2019_stock_amax.printname"] = "CR-56 AMAX Stock" -- UO
L["cod2019_stock_amax.compactname"] = "AMAX" -- UO
L["cod2019_stock_amax.description"] = "Ultralight stock speeds up weapon handling and movement at the expense of aiming stability." -- mw19stockdesc.vlight

L["cod2019_stock_slima.printname"] = "RAAL MG Stock" -- UO
L["cod2019_stock_slima.compactname"] = "RAAL MG" -- UO
L["cod2019_stock_slima.description"] = "Tactical stock streamlined for close quarters combat. Gets you on target faster." -- mw19stockdesc.medium

L["cod2019_stock_m4.printname"] = "M4A1 Stock" -- UO
L["cod2019_stock_m4.compactname"] = "M4A1" -- UO
L["cod2019_stock_m4.description"] = "Heavy duty stock keeps your aim steady for precision shots." -- mw19stockdesc.heavy

L["cod2019_stock_origin12.printname"] = "Origin 12 Shotgun Stock" -- UO
L["cod2019_stock_origin12.compactname"] = "Origin 12" -- UO
L["cod2019_stock_origin12.description"] = ARC9:GetPhrase("cod2019_stock_vlk.description")

L["cod2019_m32_stock_retract.printname"] = "Shortened Stock" -- UO
L["cod2019_m32_stock_retract.compactname"] = "Shortened" -- UO
L["cod2019_m32_stock_retract.description"] = "Shortens the stock to allow for <color=100,255,100>higher agility.</color>" -- UO

////////////////////  Buffer Tubes
L["cod2019_stock_tube.printname"] = "FTAC Light Buffer Tube" -- UO
L["cod2019_stock_tube.compactname"] = "FTAC L." -- UO
L["cod2019_stock_tube.description"] = "Buffer tube made out of aluminium. Allows installation of aftermarket stocks." -- UO

L["cod2019_stock_tube_vlk.printname"] = "VLK Buffer Tube" -- UO
L["cod2019_stock_tube_vlk.compactname"] = "VLK" -- UO
L["cod2019_stock_tube_vlk.description"] = "Custom made buffer tube that allows installation of aftermarket stocks." -- UO

L["cod2019_stock_tube_origin12.printname"] = "FTAC Buffer Tube" -- UO
L["cod2019_stock_tube_origin12.compactname"] = "FTAC" -- UO
L["cod2019_stock_tube_origin12.description"] = "Heavy-duty buffer tube that allows installation of aftermarket stocks." -- UO

////////////////////  EFT (Escape from Tarkov) Support
L["cod2019_eft_grips.printname"] = "\"EFT\" Grips" -- UO
L["cod2019_eft_grips.compactname"] = "EFT" -- UO
L["cod2019_eft_grips.description"] = "Allows installation of foregrips from the <color=255,255,100>Escape from Tarkov</color> addons.\n\nNote: Not optimised - may cause <color=255,100,100>visual glitches</color>.\n\"Ergonomics\" have <color=255,100,100>no effect</color>." -- UO

L["cod2019_eft_muzzle.printname"] = "\"EFT\" Muzzles" -- UO
L["cod2019_eft_muzzle.compactname"] = ARC9:GetPhrase("cod2019_eft_grips.compactname")
L["cod2019_eft_muzzle.description"] = "Allows installation of muzzle attachments from the <color=255,255,100>Escape from Tarkov</color> addons.\n\nNote: Not optimised - may cause <color=255,100,100>visual glitches</color>.\n\"Ergonomics\" have <color=255,100,100>no effect</color>." -- UO

L["cod2019_eft_scopes.printname"] = "\"EFT\" Optics" -- UO
L["cod2019_eft_scopes.compactname"] = ARC9:GetPhrase("cod2019_eft_grips.compactname")
L["cod2019_eft_scopes.description"] = "Allows installation of optics from the <color=255,255,100>Escape from Tarkov</color> addons.\n\nNote: Not optimised - may cause <color=255,100,100>visual glitches</color>.\n\"Ergonomics\" have <color=255,100,100>no effect</color>." -- UO

L["cod2019_eft_scopes_pistol.printname"] = ARC9:GetPhrase("cod2019_eft_scopes.printname")
L["cod2019_eft_scopes_pistol.compactname"] = ARC9:GetPhrase("cod2019_eft_grips.compactname")
L["cod2019_eft_scopes_pistol.description"] = ARC9:GetPhrase("cod2019_eft_scopes.description")

L["cod2019_eft_stocks.printname"] = "\"EFT\" Stocks" -- UO
L["cod2019_eft_stocks.compactname"] = ARC9:GetPhrase("cod2019_eft_grips.compactname")
L["cod2019_eft_stocks.description"] = "Allows installation of stocks from the <color=255,255,100>Escape from Tarkov</color> addons.\n\nNote: Not optimised - may cause <color=255,100,100>visual glitches</color>.\n\"Ergonomics\" have <color=255,100,100>no effect</color>." -- UO

L["cod2019_eft_tactical.printname"] = "\"EFT\" Tacticals" -- UO
L["cod2019_eft_tactical.compactname"] = ARC9:GetPhrase("cod2019_eft_grips.compactname")
L["cod2019_eft_tactical.description"] = "Allows installation of tacticals from the <color=255,255,100>Escape from Tarkov</color> addons.\n\nNote: Not optimised - may cause <color=255,100,100>visual glitches</color>.\n\"Ergonomics\" have <color=255,100,100>no effect</color>." -- UO

L["cod2019_eft_tactical_pistl.printname"] = "\"EFT\" Big Tacticals" -- UO
L["cod2019_eft_tactical_pistl.compactname"] = ARC9:GetPhrase("cod2019_eft_grips.compactname")
L["cod2019_eft_tactical_pistl.description"] = "Allows installation of large tacticals from the <color=255,255,100>Escape from Tarkov</color> addons.\n\nNote: Not optimised - may cause <color=255,100,100>visual glitches</color>.\n\"Ergonomics\" have <color=255,100,100>no effect</color>." -- UO

////////////////////  GSR (Gunsmith Reloaded) Support
L["cod2019_attach_support_gsr_laser_pstl.printname"] = "\"GSR\" Lasers" -- UO
L["cod2019_attach_support_gsr_laser_pstl.compactname"] = "GSR" -- UO
L["cod2019_attach_support_gsr_laser_pstl.description"] = "Allows installation of laser attachments from the <color=255,255,100>Gunsmith Reloaded</color> addon.\n\nNote: Not optimised - may cause <color=255,100,100>visual glitches</color>." -- UO

L["cod2019_attach_support_gsr_optics.printname"] = "\"GSR\" Optics" -- UO
L["cod2019_attach_support_gsr_optics.compactname"] = ARC9:GetPhrase("cod2019_attach_support_gsr_laser_pstl.compactname")
L["cod2019_attach_support_gsr_optics.description"] = "Allows installation of optics from the <color=255,255,100>Gunsmith Reloaded</color> addons.\n\nNote: Not optimised - may cause <color=255,100,100>visual glitches</color>." -- UO

L["cod2019_attach_support_gsr_optics_pistols.printname"] = ARC9:GetPhrase("cod2019_attach_support_gsr_optics.printname")
L["cod2019_attach_support_gsr_optics_pistols.compactname"] = ARC9:GetPhrase("cod2019_attach_support_gsr_laser_pstl.compactname")
L["cod2019_attach_support_gsr_optics_pistols.description"] = ARC9:GetPhrase("cod2019_attach_support_gsr_optics.description")

L["cod2019_attach_support_gsr_muzzles.printname"] = "\"GSR\" Muzzles" -- UO
L["cod2019_attach_support_gsr_muzzles.compactname"] = ARC9:GetPhrase("cod2019_attach_support_gsr_laser_pstl.compactname")
L["cod2019_attach_support_gsr_muzzles.description"] = "Allows installation of muzzle attachments from the <color=255,255,100>Gunsmith Reloaded</color> addon.\n\nNote: Not optimised - may cause <color=255,100,100>visual glitches</color>." -- UO

L["cod2019_attach_support_gsr_muzzles_pistols.printname"] = ARC9:GetPhrase("cod2019_attach_support_gsr_muzzles.printname")
L["cod2019_attach_support_gsr_muzzles_pistols.compactname"] = ARC9:GetPhrase("cod2019_attach_support_gsr_laser_pstl.compactname")
L["cod2019_attach_support_gsr_muzzles_pistols.description"] = ARC9:GetPhrase("cod2019_attach_support_gsr_muzzles.description")

L["cod2019_attach_support_gsr_muzzles_alt.printname"] = ARC9:GetPhrase("cod2019_attach_support_gsr_muzzles.printname")
L["cod2019_attach_support_gsr_muzzles_alt.compactname"] = ARC9:GetPhrase("cod2019_attach_support_gsr_laser_pstl.compactname")
L["cod2019_attach_support_gsr_muzzles_alt.description"] = ARC9:GetPhrase("cod2019_attach_support_gsr_muzzles.description")

L["cod2019_attach_support_gsr_grips.printname"] = "\"GSR\" Grips" -- UO
L["cod2019_attach_support_gsr_grips.compactname"] = ARC9:GetPhrase("cod2019_attach_support_gsr_laser_pstl.compactname")
L["cod2019_attach_support_gsr_grips.description"] = "Allows installation of foregrips from the <color=255,255,100>Gunsmith Reloaded</color> addon.\n\nNote: Not optimised - may cause <color=255,100,100>visual glitches</color>." -- UO

////////////////////  Custom Crossbow Ammo
L["cod2019_ammo_crossbow_rock.printname"] = "FTAC Boulder 30g Rock" -- UO
L["cod2019_ammo_crossbow_rock.compactname"] = "Boulder" -- UO
L["cod2019_ammo_crossbow_rock.description"] = "Replaces the aerodynamic bolts with a <color=100,255,100>rock</color>.\n\nFor that <color=100,255,100>stoner</color> within us all." -- UO

L["cod2019_ammo_crossbow_he.printname"] = "FTAC Contact 20\" Bolts" -- UO
L["cod2019_ammo_crossbow_he.compactname"] = "Contact" -- UO
L["cod2019_ammo_crossbow_he.description"] = "Bolts with a <color=255,255,100>low pressure explosive compound</color> imbedded within the arrowhead. <color=255,100,100>Bolts can not be recovered</color>, and are undetectable by trophy systems." -- UO

////////////////////  Custom RPG-7 Ammo
L["cod2019_ammo_rpg_rock.printname"] = "37\" \"Spade\"" -- UO
L["cod2019_ammo_rpg_rock.compactname"] = "\"Spade\"" -- UO
L["cod2019_ammo_rpg_rock.description"] = "Replace the high-explosive warheads with rather sharp <color=100,255,100>spades</color>.\nLet them dig their own graves." -- UO

L["cod2019_ammo_rpg_harpoon.printname"] = "37\" Harpoon" -- UO
L["cod2019_ammo_rpg_harpoon.compactname"] = "Harpoon" -- UO
L["cod2019_ammo_rpg_harpoon.description"] = "Replace the high-explosive warheads with very sharp <color=100,255,100>harpoons</color>.\nThey will not escape our grasp." -- UO

////////////////////  Custom MGL-32 Ammo
L["cod2019_ammo_gl_rock.printname"] = "40mm Boulder" -- UO
L["cod2019_ammo_gl_rock.compactname"] = "Boulder" -- UO
L["cod2019_ammo_gl_rock.description"] = "Custom 40mm shells filled with <color=100,255,100>rocks</color>." -- UO

L["cod2019_ammo_gl_flash.printname"] = "40mm Flash" -- UO
L["cod2019_ammo_gl_flash.compactname"] = "Flash" -- UO
L["cod2019_ammo_gl_flash.description"] = "Custom 40mm shells filled with non-lethal <color=100,255,100>Flash</color> rounds designed to temporarily blind your enemy." -- UO, partially taken from M203 40mm Flash

L["cod2019_ammo_gl_inc.printname"] = "40mm Incendiary" -- UO
L["cod2019_ammo_gl_inc.compactname"] = "Incendiary" -- UO
L["cod2019_ammo_gl_inc.description"] = "Custom 40mm shells filled with lethal <color=100,255,100>Incendiary</color> rounds." -- UO, partially taken from M203 40mm Incendiary

L["cod2019_ammo_gl_smoke.printname"] = "40mm Smokescreen" -- UO
L["cod2019_ammo_gl_smoke.compactname"] = "Smoke" -- UO
L["cod2019_ammo_gl_smoke.description"] = "Custom 40mm shells filled with non-lethal <color=100,255,100>Smoke</color> rounds designed to coneal your movement." -- UO, partially taken from M203 40mm Smokescreen

L["cod2019_ammo_gl_gas.printname"] = "40mm Gas" -- UO
L["cod2019_ammo_gl_gas.compactname"] = "Gas" -- UO
L["cod2019_ammo_gl_gas.description"] = "Custom 40mm shells filled with semi-lethal <color=100,255,100>Gas</color> rounds that create a gas cloud at the impact area.\nMultiple shots within the same area will <color=100,255,100>increase its lethality</color>." -- UO

L["cod2019_ammo_gl_slug.printname"] = "40mm Slug" -- UO
L["cod2019_ammo_gl_slug.compactname"] = "Slug" -- UO
L["cod2019_ammo_gl_slug.description"] = "Custom 40mm shells filled with large <color=100,255,100>slug</color> projectiles." -- UO

L["cod2019_ammo_gl_sticky.printname"] = "40mm Semtex" -- UO
L["cod2019_ammo_gl_sticky.compactname"] = "Semtex" -- UO
L["cod2019_ammo_gl_sticky.description"] = "Custom 40mm shells filled with lethal <color=100,255,100>Semtex</color> grenades that stick onto surfaces and detonates after a short moment." -- UO

L["cod2019_ammo_gl_mine.printname"] = "40mm Proximity" -- UO
L["cod2019_ammo_gl_mine.compactname"] = "Prox." -- UO
L["cod2019_ammo_gl_mine.description"] = "Custom 40mm shells filled with <color=100,255,100>Proximity</color>-activated grenades that stick onto surfaces." -- UO

L["cod2019_ammo_gl_energy.printname"] = "40mm EMP" -- UO
L["cod2019_ammo_gl_energy.compactname"] = "EMP" -- UO
L["cod2019_ammo_gl_energy.description"] = "Custom 40mm shells with an <color=100,255,100>EMP</color> grenade that explodes on disorients targets." -- UO

L["cod2019_ammo_gl_seeker.printname"] = "40mm Seeker" -- UO
L["cod2019_ammo_gl_seeker.compactname"] = "Seeker" -- UO
L["cod2019_ammo_gl_seeker.description"] = "Custom 40mm shells loaded with <color=100,255,100>Seeker</color> grenades that are not affected by drop-off, and can lock onto targets when aiming.\nInspired by the <color=175,175,255>Seeker Six</color> from <color=255,25,25>Killing Floor</color>." -- UO

L["cod2019_ammo_gl_buck.printname"] = "40mm Buckshot" -- UO
L["cod2019_ammo_gl_buck.compactname"] = "Buckshot" -- UO
L["cod2019_ammo_gl_buck.description"] = "Custom 40mm shells filled with <color=100,255,100>buckshot</color>." -- UO

////////////////////  Custom PILA Ammo
L["cod2019_pila_ammo_guided.printname"] = "Guided Rockets" -- UO
L["cod2019_pila_ammo_guided.compactname"] = "Guided" -- UO
L["cod2019_pila_ammo_guided.description"] = "Replaces the unguided rockets with <color=100,255,100>guided</color> high-explosive rockets." -- UO

////////////////////  Custom JOKR Ammo
L["cod2019_jokr_ammo_guided.printname"] = ARC9:GetPhrase("cod2019_pila_ammo_guided.printname")
L["cod2019_jokr_ammo_guided.compactname"] = ARC9:GetPhrase("cod2019_pila_ammo_guided.compactname")
L["cod2019_jokr_ammo_guided.description"] = "Replaces the lock-on rockets with <color=100,255,100>guided</color> high-explosive rockets. <color=255,100,100>Removes the lock-on feature</color>." -- UO

L["cod2019_jokr_ammo_airstrike.printname"] = "Cluster Rockets"
L["cod2019_jokr_ammo_airstrike.compactname"] = "Cluster"
L["cod2019_jokr_ammo_airstrike.description"] = "Rockets that split into <color=100,255,100>heat-seeking</color> mini-rockets when near their target." -- UO

////////////////////  Custom MGL-32 Ammo
L["cod2019_ammo_ubgl_rock.printname"] = ARC9:GetPhrase("cod2019_ammo_gl_rock.printname")
L["cod2019_ammo_ubgl_rock.compactname"] = ARC9:GetPhrase("cod2019_ammo_gl_rock.compactname")
L["cod2019_ammo_ubgl_rock.description"] = ARC9:GetPhrase("cod2019_ammo_gl_rock.description")

L["cod2019_ammo_ubgl_flash.printname"] = ARC9:GetPhrase("cod2019_ammo_gl_flash.printname")
L["cod2019_ammo_ubgl_flash.compactname"] = ARC9:GetPhrase("cod2019_ammo_gl_flash.compactname")
L["cod2019_ammo_ubgl_flash.description"] = ARC9:GetPhrase("cod2019_ammo_gl_flash.description")

L["cod2019_ammo_ubgl_inc.printname"] = ARC9:GetPhrase("cod2019_ammo_gl_inc.printname")
L["cod2019_ammo_ubgl_inc.compactname"] = ARC9:GetPhrase("cod2019_ammo_gl_inc.compactname")
L["cod2019_ammo_ubgl_inc.description"] = ARC9:GetPhrase("cod2019_ammo_gl_inc.description")

L["cod2019_ammo_ubgl_smoke.printname"] = ARC9:GetPhrase("cod2019_ammo_gl_smoke.printname")
L["cod2019_ammo_ubgl_smoke.compactname"] = ARC9:GetPhrase("cod2019_ammo_gl_smoke.compactname")
L["cod2019_ammo_ubgl_smoke.description"] = ARC9:GetPhrase("cod2019_ammo_gl_smoke.description")

L["cod2019_ammo_ubgl_gas.printname"] = ARC9:GetPhrase("cod2019_ammo_gl_gas.printname")
L["cod2019_ammo_ubgl_gas.compactname"] = ARC9:GetPhrase("cod2019_ammo_gl_gas.compactname")
L["cod2019_ammo_ubgl_gas.description"] = ARC9:GetPhrase("cod2019_ammo_gl_gas.description")

L["cod2019_ammo_ubgl_slug.printname"] = ARC9:GetPhrase("cod2019_ammo_gl_slug.printname")
L["cod2019_ammo_ubgl_slug.compactname"] = ARC9:GetPhrase("cod2019_ammo_gl_slug.compactname")
L["cod2019_ammo_ubgl_slug.description"] = ARC9:GetPhrase("cod2019_ammo_gl_slug.description")

L["cod2019_ammo_ubgl_sticky.printname"] = ARC9:GetPhrase("cod2019_ammo_gl_sticky.printname")
L["cod2019_ammo_ubgl_sticky.compactname"] = ARC9:GetPhrase("cod2019_ammo_gl_sticky.compactname")
L["cod2019_ammo_ubgl_sticky.description"] = ARC9:GetPhrase("cod2019_ammo_gl_sticky.description")

L["cod2019_ammo_ubgl_mine.printname"] = ARC9:GetPhrase("cod2019_ammo_gl_mine.printname")
L["cod2019_ammo_ubgl_mine.compactname"] = ARC9:GetPhrase("cod2019_ammo_gl_mine.compactname")
L["cod2019_ammo_ubgl_mine.description"] = ARC9:GetPhrase("cod2019_ammo_gl_mine.description")

L["cod2019_ammo_ubgl_energy.printname"] = ARC9:GetPhrase("cod2019_ammo_gl_energy.printname")
L["cod2019_ammo_ubgl_energy.compactname"] = ARC9:GetPhrase("cod2019_ammo_gl_energy.compactname")
L["cod2019_ammo_ubgl_energy.description"] = ARC9:GetPhrase("cod2019_ammo_gl_energy.description")

L["cod2019_ammo_ubgl_seeker.printname"] = ARC9:GetPhrase("cod2019_ammo_gl_seeker.printname")
L["cod2019_ammo_ubgl_seeker.compactname"] = ARC9:GetPhrase("cod2019_ammo_gl_seeker.compactname")
L["cod2019_ammo_ubgl_seeker.description"] = ARC9:GetPhrase("cod2019_ammo_gl_seeker.description")

L["cod2019_ammo_ubgl_buck.printname"] = ARC9:GetPhrase("cod2019_ammo_gl_buck.printname")
L["cod2019_ammo_ubgl_buck.compactname"] = ARC9:GetPhrase("cod2019_ammo_gl_buck.compactname")
L["cod2019_ammo_ubgl_buck.description"] = ARC9:GetPhrase("cod2019_ammo_gl_buck.description")

L["cod2019_ammo_ubgl_sg_magnum.printname"] = ARC9:GetPhrase("cod2019_ammo_sg_magnum.printname") or "8.5mm Magnum Buckshot"
L["cod2019_ammo_ubgl_sg_magnum.compactname"] = ARC9:GetPhrase("cod2019_ammo_sg_magnum.compactname") or "MAG"
L["cod2019_ammo_ubgl_sg_magnum.description"] = ARC9:GetPhrase("cod2019_ammo_sg_magnum.description") or "High-powered buckshot loaded with fewer but larger lead pellets.\nProvides better close range power, but worsened range and accuracy."

L["cod2019_ammo_ubgl_sg_slug.printname"] = ARC9:GetPhrase("cod2019_ammo_sg_slug.printname") or "12mm Full-bore Slug"
L["cod2019_ammo_ubgl_sg_slug.compactname"] = ARC9:GetPhrase("cod2019_ammo_sg_slug.compactname") or "SLUG"
L["cod2019_ammo_ubgl_sg_slug.description"] = ARC9:GetPhrase("cod2019_ammo_sg_slug.description") or "A single large projectile loaded into a shotgun shell.\nThe aerodynamic pellet has much higher effective range."

L["cod2019_ammo_ubgl_sg_flechette.printname"] = ARC9:GetPhrase("cod2019_ammo_sg_flechette.printname") or "Flechette Shells"
L["cod2019_ammo_ubgl_sg_flechette.compactname"] = ARC9:GetPhrase("cod2019_ammo_sg_flechette.compactname") or "FLE"
L["cod2019_ammo_ubgl_sg_flechette.description"] = ARC9:GetPhrase("cod2019_ammo_sg_flechette.description") or "Load containing thin, dart-shaped projectiles.\nProvides tighter spread and increased range alongside increased penetration, but at the cost of reduced stopping power."

L["cod2019_ammo_ubgl_sg_frag.printname"] = ARC9:GetPhrase("cod2019_ammo_sg_frag.printname") or "\"FRAG-12\" High Explosive"
L["cod2019_ammo_ubgl_sg_frag.compactname"] = ARC9:GetPhrase("cod2019_ammo_sg_frag.compactname") or "FRAG-12"
L["cod2019_ammo_ubgl_sg_frag.description"] = ARC9:GetPhrase("cod2019_ammo_sg_frag.description") or "Load containing a single projectile filled with an explosive compound.\nDeals damage around a small radius at the impact area."

L["cod2019_ammo_ubgl_sg_rebounder.printname"] = ARC9:GetPhrase("cod2019_ammo_sg_rebounder.printname") or "10mm Rebounder Rounds"
L["cod2019_ammo_ubgl_sg_rebounder.compactname"] = ARC9:GetPhrase("cod2019_ammo_sg_rebounder.compactname") or "RBD"
L["cod2019_ammo_ubgl_sg_rebounder.description"] = ARC9:GetPhrase("cod2019_ammo_sg_rebounder.description") or "Load containing specialized pellets that have a high chance to ricochet.\nThe pellets will bounce regardless of angle, dealing increased damage the more it ricochets.\nIt does, however, have reduced damage output on direct impact."

L["cod2019_ammo_ubgl_sg_frag_x4.printname"] = ARC9:GetPhrase("cod2019_ammo_sg_frag_x4.printname") or "\"FRAG-12\" High Explosive x4"
L["cod2019_ammo_ubgl_sg_frag_x4.compactname"] = ARC9:GetPhrase("cod2019_ammo_sg_frag_x4.compactname") or "FRAG-12 x4"
L["cod2019_ammo_ubgl_sg_frag_x4.description"] = ARC9:GetPhrase("cod2019_ammo_sg_frag_x4.description") or "Load containing four projectiles filled with explosive compounds.\nDeals damage around a small radius at the impact area."

L["cod2019_ammo_ubgl_sg_db.printname"] = ARC9:GetPhrase("cod2019_ammo_sg_db.printname") or "\"Dragon's Breach\""
L["cod2019_ammo_ubgl_sg_db.compactname"] = ARC9:GetPhrase("cod2019_ammo_sg_db.compactname") or "DB"
L["cod2019_ammo_ubgl_sg_db.description"] = ARC9:GetPhrase("cod2019_ammo_sg_db.description") or "Load containing magnesium pellets that lights a target on fire on hit."

//////////////////////////////////////////////////////////////////////
///////////////////////////// Weapon Names, Descriptions and unique attachments
//////////////////// Weapon Names
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
L["mw19_weapon_r90"] = "R9-0 Shotgun"
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
L["mw19_weapon_finn"] = "FiNN LMG"
L["mw19_weapon_raal"] = "RAAL MG"

L["mw19_weapon_ebr"] = "EBR-14"
L["mw19_weapon_mk2"] = "MK2 Carbine"
L["mw19_weapon_kar98"] = "Kar98k"
L["mw19_weapon_crossbow"] = "Crossbow"
L["mw19_weapon_sks"] = "SKS"
L["mw19_weapon_spr"] = "SP-R 208"

L["mw19_weapon_dragunov"] = "Dragunov"
L["mw19_weapon_hdr"] = "HDR"
L["mw19_weapon_ax50"] = "AX-50"
L["mw19_weapon_rytec"] = "Rytec AMR"

L["mw19_weapon_shield"] = "Riot Shield"

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

L["mw19_weapon_knife"] = "Knife"
L["mw19_weapon_stick"] = "Kali Sticks"
L["mw19_weapon_sword"] = "Dual Kodachis"

L["mw19_weapon_akimbo"] = "%s Akimbo"

L["mw19_weapon_nade_claymore"] = "Claymore"
L["mw19_weapon_nade_frag"] = "Frag Grenade"
L["mw19_weapon_nade_molotov"] = "Molotov Cocktail"
L["mw19_weapon_nade_c4"] = "C4"
L["mw19_weapon_nade_semtex"] = "Semtex"
L["mw19_weapon_nade_knife"] = "Throwing Knife"
L["mw19_weapon_nade_proximity"] = "Proximity Mine"
L["mw19_weapon_nade_thermite"] = "Thermite"
L["mw19_weapon_nade_thermite_alt"] = "Thermite Grenade" -- UO
L["mw19_weapon_nade_drillcharge"] = "Drill Charge" -- UO

L["mw19_weapon_nade_flash"] = "Flash Grenade"
L["mw19_weapon_nade_stun"] = "Stun Grenade"
L["mw19_weapon_nade_smoke"] = "Smoke Grenade"
L["mw19_weapon_nade_snapshot"] = "Snapshot Grenade"
L["mw19_weapon_nade_heartbeat"] = "Heartbeat Sensor"
L["mw19_weapon_nade_stim"] = "Stim"
L["mw19_weapon_nade_decoy"] = "Decoy Grenade"
L["mw19_weapon_nade_gas"] = "Gas Grenade"

L["mw19_weapon_minigun"] = "Minigun"-- UO
L["mw19_weapon_fists"] = "Fists" -- UO
L["mw19_weapon_nade_rock"] = "Rock" -- UO

//////////////////// Weapon Descriptions
L["mw19_weapon_kilo141_desc"] = "Fully automatic assault rifle with an ergonomic design that improves handling, and a steady fire rate helps stay on target."
L["mw19_weapon_fal_desc"] = "A semi-automatic assault rifle with a high rate of fire for faster follow up shots."
L["mw19_weapon_m4a1_desc"] = "A fully automatic, all-purpose assault rifle. Control your shots and this weapon can be very effective at range."
L["mw19_weapon_fr556_desc"] = "A 3 round burst bullpup assault rifle. A well placed burst can be extremely deadly at intermittent ranges."
L["mw19_weapon_oden_desc"] = "A fully automatic bullpup assault rifle maintains a slow cyclic rate to help control hard hitting 12.7 x 55mm ammunition."
L["mw19_weapon_m13_desc"] = "Automatic assault rifle featuring a short stroke piston system that keeps the fire rate high and the recoil low."
L["mw19_weapon_scar_desc"] = "Large caliber, fully automatic assault rifle that provides high damage over long ranges."
L["mw19_weapon_ak47_desc"] = "Very reliable automatic assault rifle chambered in 7.62mm Soviet. Large caliber ammunition requires skill to control recoil."
L["mw19_weapon_ram7_desc"] = "A fully automatic bullpup assault rifle with a compact design that lends itself to close-quarter engagements."
L["mw19_weapon_grau_desc"] = "This modular 5.56 weapon platform is lightweight and maneuverable, with exceptional range. Precision engineering and world class aftermarket barrels give this weapon extreme potential."
L["mw19_weapon_cr56_desc"] = "This lightweight 7.62 x 39mm full auto assault rifle is compact and powerful. Built exclusively for military use, the standard issue rifle is deadly at mid range combat and easily configured for a variety of assault tactics."
L["mw19_weapon_an94_desc"] = "Cutting edge 5.45x39mm Russian assault rifle with a unique <color=255,255,100>hyberburst</color> feature. The initial shot from each trigger pull fires a rapid 2-round burst before perceived recoil is felt, creating a tightly grouped cluster with increased damage potential. This mechanism is fed by a canted magazine, and a reciprocating receiver helps keep control of the recoil."
L["mw19_weapon_asval_desc"] = "Chambered in <color=255,255,100>subsonic</color> 9x39mm and integrally <color=255,255,100>suppressed</color>, the AS VAL is a powerhouse built for stealth, accuracy and penetration. This weapon will excel in the hands of an operator able to control heavy recoil and a high rate of fire."

L["mw19_weapon_aug_desc"] = "A modular, fully automatic weapon configured for mobility and close range combat."
L["mw19_weapon_p90_desc"] = "An automatic bullpup submachine gun. The unique top mounted magazine hold carries ample high velocity 5.7 x 28mm ammunition."
L["mw19_weapon_mp5_desc"] = "A fully automatic 9mm submachine gun. A perfect balance of stability, mobility and lethality."
L["mw19_weapon_uzi_desc"] = "A fully automatic open bolt submachine gun. Simple, steady, effective."
L["mw19_weapon_pp19_desc"] = "Well-balanced automatic submachine gun with a high capacity helical magazine."
L["mw19_weapon_mp7_desc"] = "Compact by design, this fully automatic weapon has a high rate of fire and low recoil."
L["mw19_weapon_striker_desc"] = "A hard hitting submachine gun chambered in .45 Auto that will shred at longer distances than other weapons in its class. Moderate rate of fire keeps the gun in control while fully automatic."
L["mw19_weapon_fennec_desc"] = "An aggressive full auto submachine gun with buttery smooth recoil and a blazing fast rate of fire that is exceptional for strategic room clearing and holding down the front line."
L["mw19_weapon_iso_desc"] = "Precision crafted 9mm submachine gun with a fast rate of fire. This lightweight and reliable firearm is designed to control the close-range battlefield."
L["mw19_weapon_cx9_desc"] = "Excellent maneuverability and a fast fire rate make this blowback-operated SMG a formidable weapon in close-quarters engagements."

L["mw19_weapon_m680_desc"] = "A reliable, well-rounded 12 gauge pump-action shotgun."
L["mw19_weapon_r90_desc"] = "Double barrels provide two rapid shots before each re-chamber."
L["mw19_weapon_725_desc"] = "Break action shotgun with 2 round capacity. A long back-bored barrel and cylindrical choke keeps spread tight and lethal over extended ranges."
L["mw19_weapon_origin12_desc"] = "A semi-automatic shotgun with a large ammo capacity allows for continuous firing. Effective at close range."
L["mw19_weapon_vlk_desc"] = "An agile 12-gauge mag fed shotgun from VLK with extensive options to modify range, stability, and maneuverability."
L["mw19_weapon_aa12_desc"] = "Fully automatic open bolt shotgun with a recoil reducing gas blowback system. This combat shotgun unloads high volumes of lead down range at a steady rate."

L["mw19_weapon_pkm_desc"] = "A fully automatic light machine gun firing 7.62mm ammunition for high damage at a moderate fire rate."
L["mw19_weapon_sa87_desc"] = "A fully automatic bullpup light machine gun. Lower rate of fire and 5.56mm ammunition keeps this rifle stable and effective at long ranges."
L["mw19_weapon_m91_desc"] = "Robust light machine gun sacrifices mobility for stability. High caliber sustained fire will neutralize targets at long ranges."
L["mw19_weapon_mg34_desc"] = "Fully automatic weapon with a high rate of fire and punishing 7.62 Mauser ammunition. Salvaged WW2 machine guns are still reliable and deadly on the battlefield."
L["mw19_weapon_holger_desc"] = "A versatile fully automatic 5.56mm light machine gun. Modular design can be configured for a broad range of engagements."
L["mw19_weapon_bruen_desc"] = "This air-cooled open bolt 5.56 light machine gun features a competitive rate of fire and excellent stability that will dominate the mid to long range battlefield."
L["mw19_weapon_finn_desc"] = "An ultra-light open bolt 5.56 machine gun with a low cyclic rate and advanced recoil controls, giving the FiNN exceptional full-auto accuracy."
L["mw19_weapon_raal_desc"] = "The Reconnaissance Auxiliary Assault Lightweight Machine Gun uses a low fire rate and reciprocating barrel to mitigate the powerful .338 Norma Mag recoil. Advanced titanium construction keeps the weight manageable."

L["mw19_weapon_ebr_desc"] = "A semi-automatic long range marksman rifle balances rate of fire with lethality."
L["mw19_weapon_mk2_desc"] = "Highly accurate lever action rifle. Will neutralize an enemy with one well placed round to the head or chest."
L["mw19_weapon_kar98_desc"] = "Bolt action rifle chambered in 7.62 Mauser. A WW2 relic that is still extremely lethal in the hands of a rebel marksman."
L["mw19_weapon_crossbow_desc"] = "Silent and agile, this high-performance crossbow fires 20\" bolts with exceptional lethality. Exclusive customization, distinct functionality, and unique ammunition types put this weapon in a class of its own. Standard 20.0\" bolts are recoverable, and are undetectable by trophy systems."
L["mw19_weapon_sks_desc"] = "Lightweight, semi-auto Carbine chambered in 7.62x39mm. This hard hitting and agile Soviet rifle focuses on utility over accuracy. It flaunts a faster fire rate than other weapons in its class, but a carefully placed round will eliminate the need for follow up shots entirely. This classic DMR has seen a lot of battles, and its unique gunsmith configurations reflect a diverse service history."
L["mw19_weapon_spr_desc"] = "Reliable, hard-hitting .300 Win bolt action rifle from Sloan Precision. This weapon's extensive military and civilian use gives rise to an abundance of customization."

L["mw19_weapon_dragunov_desc"] = "A soviet workhorse chambered in 7.62mm x 54mmR. This gas-operated, semi-automatic sniper rifle allows for rapid follow-up shots."
L["mw19_weapon_hdr_desc"] = "An anti-material bolt action sniper rifle chambered in 12.7x108mm ammunition. 745 gr bullets have a lower muzzle velocity, but are devastating at very long ranges."
L["mw19_weapon_ax50_desc"] = "Hard hitting, bolt action sniper rifle with .50 cal BMG ammunition. Its tungsten sabot tipped bullets are fast and powerful, but require precise shots over long distances."
L["mw19_weapon_rytec_desc"] = "This semi-automatic Anti-Material Rifle is chambered in .50 BMG for dominant long range assaults. A 25x59mm high-explosive payload variant is officially listed as \"experimental\", but has been deployed on multiple classified missions with great effectiveness."

L["mw19_weapon_shield_desc"] = "Ballistic-proof and explosive-resistant shield with increased melee damage."

L["mw19_weapon_glock_desc"] = "A semi-automatic pistol chambered in .45 ACP ammunition. A reliable fallback when you find yourself in close quarters."
L["mw19_weapon_1911_desc"] = "A well-rounded, semi-automatic sidearm with a moderate rate of fire. Slightly more range than your average .45 ACP pistol."
L["mw19_weapon_357_desc"] = "Double action revolver firing .357 Magnum ammunition for powerful damage over extended ranges."
L["mw19_weapon_m19_desc"] = "Semi-automatic 9mm pistol, excellent stability with a rapid cycle rate."
L["mw19_weapon_deagle_desc"] = "The most powerful semi-automatic handgun available, deals heavy damage up to intermediate ranges."
L["mw19_weapon_m9_desc"] = "Well rounded semi-auto 9mm pistol. This unassuming sidearm excels in close range combat, and features gunsmithing capabilities unique to the pistol class that permit a variety of engagement strategies."
L["mw19_weapon_makarov_desc"] = "A dependable fallback in close quarters, this double-action/single-action sidearm comes with a few custom gunsmith mods that make it an outstanding addition to any arsenal."

L["mw19_weapon_pila_desc"] = "Portable infrared surface-to-air missile launcher with a free-fire option. Self-propelled missiles have a higher speed, and moderate explosive yield."
L["mw19_weapon_strela_desc"] = "84mm recoilless launcher lobs an explosive projectile at a very high velocity. The unguided armor piercing round has a low explosive yield, but is devastating against vehicles on contact."
L["mw19_weapon_javelin_desc"] = "Fire and forget lock-on portable missile launcher with a large explosive yield. Infrared guided missiles take a top-attack trajectory, ensuring destruction of heavily armored vehicles."
L["mw19_weapon_rpg_desc"] = "Unguided, self-propelled rocket launcher fires a slower projectile with a high-explosive yield."
L["mw19_weapon_mgl_desc"] = "Rapid firing grenade launcher fed with a 6-round rotating cylinder. Can utilize a variety of 40mm rounds for various roles." -- UO

L["mw19_weapon_knife_desc"] = "A CQC tactical knife. Standard military issue, employed for fast, quiet, and deadly wetwork."
L["mw19_weapon_stick_desc"] = "Dual wielding batons allow operators to approach their targets with great agility. Sturdy, lightweight design enables rapid attacks for zoning your enemies."
L["mw19_weapon_sword_desc"] = "Hand forged carbon steel blades provide the sharpest edge possible for silently slicing through your enemies."

local quicknade = "\n\nCan be used with \"Quickthrow\". Requires \"<color=175,175,255>+grenade1</color>\" bind." -- UO

L["mw19_weapon_nade_claymore_desc"] = "Proximity-activated explosive mine." .. quicknade
L["mw19_weapon_nade_frag_desc"] = "Cookable fragmentation grenade." .. quicknade
L["mw19_weapon_nade_molotov_desc"] = "Improvised incendiary device that explodes on impact." .. quicknade
-- L["mw19_weapon_nade_c4_desc"] = "Large explosive that sticks to surfaces and can be detonated remotely with {ATTACK} when the equipment is depleted.\n\nDouble-tapping {USE} always detonates the explosives." .. quicknade
L["mw19_weapon_nade_c4_desc"] = "Large explosive that sticks to surfaces and can be detonated remotely with {ATTACK} when the equipment is depleted." .. quicknade
L["mw19_weapon_nade_semtex_desc"] = "Timed sticky grenade." .. quicknade
L["mw19_weapon_nade_knife_desc"] = "Retrievable knife that can be thrown to quickly and quietly eliminate enemies." .. quicknade
L["mw19_weapon_nade_proximity_desc"] = "Proximity-triggered explosive that deals heavy damage to vehicles." .. quicknade
L["mw19_weapon_nade_thermite_desc"] = "Explosive which burns fiercely for a short time after impact. Sticks to surfaces." .. quicknade
L["mw19_weapon_nade_drillcharge_desc"] = "Charge with a thermal lance that can burrow into surfaces before exploding." .. quicknade -- UO from MWII desc.

L["mw19_weapon_nade_flash_desc"] = "Blinds and deafens targets." .. quicknade
L["mw19_weapon_nade_stun_desc"] = "Slows victim's movement and aiming." .. quicknade
L["mw19_weapon_nade_smoke_desc"] = "Deploys a smoke screen that blocks vision." .. quicknade
L["mw19_weapon_nade_snapshot_desc"] = "Provides a momentary glimpse of enemies within the blast radius for your squad." .. quicknade
L["mw19_weapon_nade_heartbeat_desc"] = "A tablet that displays rough information about nearby enemies." .. quicknade
L["mw19_weapon_nade_stim_desc"] = "Military stimulant that cauterizes combat wounds and refreshes Tactical Sprint." .. quicknade
L["mw19_weapon_nade_decoy_desc"] = "Counter-intel grenade that simulates fake gunfire and radar signatures that confuse the enemy." .. quicknade
L["mw19_weapon_nade_gas_desc"] = "Explodes on impact with the ground, releasing a lingering cloud of tear gas that causes slowed movement, blurred vision, and coughing." .. quicknade

L["mw19_weapon_minigun_desc"] = "Portable gatling gun with a very high cyclic rate." -- UO
L["mw19_weapon_fists_desc"] = "When all else fails, punch your way out. Remember, fists do not require reloading, so they are always quick." -- UO
L["mw19_weapon_nade_rock_desc"] = "For when you need to hit an enemy with a \"non-lethal\" item, or if you need to provide a distraction in order to sneak past guards." -- UO

//////////////////// Custom Weapon Names -- all UO
L["mw19_weapon_m4a1_friend"] = "Lil' Friend"
L["mw19_weapon_fr556_avancer"] = "FR Avancer"
L["mw19_weapon_grau_imbel"] = "Grau Intruso"

//////////////////// True Weapon Names
L["mw19_weapon_true_kilo141"] = "H&K HK433"
L["mw19_weapon_true_fal"] = "FN FAL"
L["mw19_weapon_true_m4a1"] = "Colt Model 933"
L["mw19_weapon_true_fr556"] = "FAMAS F1"
L["mw19_weapon_true_oden"] = "Oden"
L["mw19_weapon_true_m13"] = "SIG Sauer MCX"
L["mw19_weapon_true_scar"] = "FN SCAR-H"
L["mw19_weapon_true_ram7"] = "IWI Tavor CTAR-21"
L["mw19_weapon_true_grau"] = "SIG SG 552"
L["mw19_weapon_true_cr56"] = "IWI Galil ACE"
 
L["mw19_weapon_true_aug"] = "Steyr AUG A3 9mm XS"
L["mw19_weapon_true_p90"] = "FN P90 TR"
L["mw19_weapon_true_mp5"] = "H&K MP5A3"
L["mw19_weapon_true_uzi"] = "IMI Uzi"
L["mw19_weapon_true_pp19"] = "PP-19 Bizon"
L["mw19_weapon_true_mp7"] = "H&K MP7"
L["mw19_weapon_true_striker"] = "LWRC SMG-45"
L["mw19_weapon_true_fennec"] = "KRISS Vector"
L["mw19_weapon_true_iso"] = "B&T APC9 K PRO G"
L["mw19_weapon_true_cx9"] = "CZ Scorpion Evo 3 A1"

L["mw19_weapon_true_m680"] = "Remington 870 MCS"
L["mw19_weapon_true_r90"] = "DP-12"
L["mw19_weapon_true_725"] = "Browning Citori 725"
L["mw19_weapon_true_origin12"] = "Fostech Origin-12"
L["mw19_weapon_true_vlk"] = "M26 MASS"
L["mw19_weapon_true_aa12"] = "AA-12"

L["mw19_weapon_true_sa87"] = "L96A1"
L["mw19_weapon_true_m91"] = "H&K MG5"
L["mw19_weapon_true_holger"] = "H&K MG36"
L["mw19_weapon_true_bruen"] = "FN Minimi"
L["mw19_weapon_true_finn"] = "Knight's Armament LAMG"
L["mw19_weapon_true_raal"] = "SIG Sauer MG 338"

L["mw19_weapon_true_ebr"] = "M14 EBR"
L["mw19_weapon_true_mk2"] = "Marlin Model 1895"
L["mw19_weapon_true_kar98"] = "Karabiner 98k"
L["mw19_weapon_true_sks"] = "Zastava M59/66"
L["mw19_weapon_true_spr"] = "M24 SWS"

L["mw19_weapon_true_dragunov"] = "SVD Dragunov"
L["mw19_weapon_true_ax50"] = "Accuracy International AX50"
L["mw19_weapon_true_rytec"] = "Barrett XM109"

L["mw19_weapon_true_glock"] = "Glock 21"
L["mw19_weapon_true_1911"] = "Kimber Custom TLE/RL II"
L["mw19_weapon_true_m19"] = "SIG Sauer P320 RX"
L["mw19_weapon_true_deagle"] = "Desert Eagle Mark XIX"
L["mw19_weapon_true_m9"] = "Beretta M9A3"
L["mw19_weapon_true_makarov"] = "Makarov PM"

L["mw19_weapon_true_pila"] = "SA-25"
L["mw19_weapon_true_strela"] = "Carl Gustaf M4"
L["mw19_weapon_true_javelin"] = "FGM-148 Javelin"
L["mw19_weapon_true_mgl"] = "Milkor Mark 14"
