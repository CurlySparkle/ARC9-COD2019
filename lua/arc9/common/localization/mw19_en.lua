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
L["cod2019_attach_grip_foregrip_side.printname"] = "ARC Foregrip" -- UO
L["cod2019_attach_grip_foregrip_side.compactname"] = "ARC" -- UO
L["cod2019_attach_grip_foregrip_side.description"] = "Extended foregrip that reduces vertical recoil and provides stability when firing from the hip for fast-paced guerilla tactics." -- UO

L["cod2019_grips_none.printname"] = "Alternative Holding" -- UO
L["cod2019_grips_none.compactname"] = "Alt. Hold" -- UO
L["cod2019_grips_none.description"] = "Alternative holding style." -- UO

L["cod2019_grips_alt_cclamp.printname"] = "C-Clamp Holding" -- UO
L["cod2019_grips_alt_cclamp.compactname"] = "C-Clamp" -- UO
L["cod2019_grips_alt_cclamp.description"] = "Alternative holding style." -- UO

L["cod2019_grips_alt_nocclamp.printname"] = "No C-Clamp Holding" -- UO
L["cod2019_grips_alt_nocclamp.compactname"] = "No C-C" -- UO
L["cod2019_grips_alt_nocclamp.description"] = "Alternative holding style." -- UO

////////////////////  Perks
L["cod2019_perks_soh.printname"] = "Sleight of Hand"
L["cod2019_perks_soh.compactname"] = "SoH"
L["cod2019_perks_soh.description"] = "Training in reloading faster when under pressure."

L["cod2019_perks_soh_alt.printname"] = "Sleight of Hand"
L["cod2019_perks_soh_alt.compactname"] = "SoH"
L["cod2019_perks_soh_alt.description"] = "Training in reloading faster when under pressure."

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

L["cod2019_perks_slamfire.printname"] = "Slamfire" -- UO
L["cod2019_perks_slamfire.compactname"] = "Slamfire" -- UO
L["cod2019_perks_slamfire.description"] = "Bruteforce the weapon to fire and cycle the weapon much quicker at the cost of reduced accuracy." -- UO

L["cod2019_perks_burst.printname"] = "Burst"
L["cod2019_perks_burst.compactname"] = "Burst"
L["cod2019_perks_burst.description"] = "Changes fire mode to <color=100,255,100>3-round</color> burst."

L["cod2019_perks_burst_2.printname"] = "Burst"
L["cod2019_perks_burst_2.compactname"] = "Burst"
L["cod2019_perks_burst_2.description"] = "Changes fire mode to <color=100,255,100>2-round</color> burst."

////////////////////  Scopes
L["cod2019_optic_scope_pila.printname"] = "PILA Scope" -- UO
L["cod2019_optic_scope_pila.compactname"] = "PILA" -- UO
L["cod2019_optic_scope_pila.description"] = "Advanced optic with <color=100,255,100>4.0x</color> magnification provides excellent target acquisition."

L["cod2019_model680_iron.printname"] = "Remove Sight Mount" -- UO
L["cod2019_model680_iron.compactname"] = "R. Sight M." -- UO
L["cod2019_model680_iron.description"] = "Removes the sight mount on the Model 680, making it sleeker." -- UO

////////////////////  Stocks
L["cod2019_stock_vlk.printname"] = "VLK Rogue Stock" -- UO
L["cod2019_stock_vlk.compactname"] = "VLK Rogue" -- UO
L["cod2019_stock_vlk.description"] = "Stock designed for agility while aiming down sights." -- Taken from FORGE TAC Ultralight (VLK Rogue)

L["cod2019_stock_amax.printname"] = "CR-56 AMAX Stock" -- UO
L["cod2019_stock_amax.compactname"] = "CR-56 AMAX" -- UO
L["cod2019_stock_amax.description"] = "Ultralight stock speeds up weapon handling and movement at the expensve of aiming stability." -- Taken from CR-56 EXO (CR-56 AMAX)

L["cod2019_stock_slima.printname"] = "Slima Stock" -- UO
L["cod2019_stock_slima.compactname"] = "Slima" -- UO
L["cod2019_stock_slima.description"] = "Tactical stock streamlined for close quarters combat. Gets you on target faster." -- Taken from FSS Close Quarters Stock (FN SCAR 17)

L["cod2019_stock_m4.printname"] = "Desert Storm Stock" -- UO
L["cod2019_stock_m4.compactname"] = "Storm" -- UO
L["cod2019_stock_m4.description"] = "Heavy duty stock provides stability while aiming." -- Taken from M-16 Stock (M4A1)

L["cod2019_stock_origin12.printname"] = "Origin Stock" -- UO
L["cod2019_stock_origin12.compactname"] = "Origin" -- UO
L["cod2019_stock_origin12.description"] = "Stock designed for agility while aiming down sights." -- Taken from FORGE TAC Ultralight (Origin 12 Shotgun)

L["cod2019_m32_stock_retract.printname"] = "Shortened Stock" -- UO
L["cod2019_m32_stock_retract.compactname"] = "Shortened" -- UO
L["cod2019_m32_stock_retract.description"] = "Shortens the stock to allow for <color=100,255,100>higher agility.</color>" -- UO

////////////////////  Buffer Tubes
L["cod2019_stock_tube.printname"] = "Desert Storm Buffer Tube" -- UO
L["cod2019_stock_tube.compactname"] = "Storm" -- UO
L["cod2019_stock_tube.description"] = "Buffer tube made out of aluminium. Allows installation of aftermarket stocks." -- UO

L["cod2019_stock_tube_vlk.printname"] = "VLK Buffer Tube" -- UO
L["cod2019_stock_tube_vlk.compactname"] = "VLK" -- UO
L["cod2019_stock_tube_vlk.description"] = "Custom made buffer tube that allows installation of aftermarket stocks." -- UO

L["cod2019_stock_tube_origin12.printname"] = "FTAC Tube" -- UO
L["cod2019_stock_tube_origin12.compactname"] = "FTAC" -- UO
L["cod2019_stock_tube_origin12.description"] = "Heavy-duty buffer tube that allows installation of aftermarket stocks." -- UO

L["cod2019_m14_stock_tube.printname"] = "EBR Tube" -- UO
L["cod2019_m14_stock_tube.compactname"] = "EBR" -- UO
L["cod2019_m14_stock_tube.description"] = "Heavy-duty buffer tube that allows installation of aftermarket stocks." -- UO

////////////////////  EFT (Escape from Tarkov) Support
L["cod2019_eft_grips.printname"] = "Escape from Tarkov Support" -- UO
L["cod2019_eft_grips.compactname"] = "EFT" -- UO
L["cod2019_eft_grips.description"] = "Allows installation of foregrips from the Escape from Tarkov addons." -- UO

L["cod2019_eft_muzzle.printname"] = "Escape from Tarkov Support" -- UO
L["cod2019_eft_muzzle.compactname"] = "EFT" -- UO
L["cod2019_eft_muzzle.description"] = "Allows installation of muzzle attachments from the Escape from Tarkov addons." -- UO

L["cod2019_eft_scopes.printname"] = "Escape from Tarkov Support" -- UO
L["cod2019_eft_scopes.compactname"] = "EFT" -- UO
L["cod2019_eft_scopes.description"] = "Allows installation of optics from the Escape from Tarkov addons." -- UO

L["cod2019_eft_scopes_pistol.printname"] = "Escape from Tarkov Support" -- UO
L["cod2019_eft_scopes_pistol.compactname"] = "EFT" -- UO
L["cod2019_eft_scopes_pistol.description"] = "Allows installation of optics from the Escape from Tarkov addons." -- UO

L["cod2019_eft_stocks.printname"] = "Escape from Tarkov Support" -- UO
L["cod2019_eft_stocks.compactname"] = "EFT" -- UO
L["cod2019_eft_stocks.description"] = "Allows installation of stocks from the Escape from Tarkov addons." -- UO

////////////////////  GSR (Gunsmith Reloaded) Support
L["cod2019_attach_support_gsr_laser_pstl.printname"] = "Gunsmith Reloaded Support" -- UO
L["cod2019_attach_support_gsr_laser_pstl.compactname"] = "GSR" -- UO
L["cod2019_attach_support_gsr_laser_pstl.description"] = "Allows installation of laser attachments from the Gunsmith Reloaded addon." -- UO

L["cod2019_attach_support_gsr_optics.printname"] = "Gunsmith Reloaded Support" -- UO
L["cod2019_attach_support_gsr_optics.compactname"] = "GSR" -- UO
L["cod2019_attach_support_gsr_optics.description"] = "Allows installation of optics from the Gunsmith Reloaded addon." -- UO

L["cod2019_attach_support_gsr_optics_pistols.printname"] = "Gunsmith Reloaded Support" -- UO
L["cod2019_attach_support_gsr_optics_pistols.compactname"] = "GSR" -- UO
L["cod2019_attach_support_gsr_optics_pistols.description"] = "Allows installation of optics from the Gunsmith Reloaded addon." -- UO

L["cod2019_attach_support_gsr_muzzles.printname"] = "Gunsmith Reloaded Support" -- UO
L["cod2019_attach_support_gsr_muzzles.compactname"] = "GSR" -- UO
L["cod2019_attach_support_gsr_muzzles.description"] = "Allows installation of muzzle attachments from the Gunsmith Reloaded addon." -- UO

L["cod2019_attach_support_gsr_muzzles_pistols.printname"] = "Gunsmith Reloaded Support" -- UO
L["cod2019_attach_support_gsr_muzzles_pistols.compactname"] = "GSR" -- UO
L["cod2019_attach_support_gsr_muzzles_pistols.description"] = "Allows installation of muzzle attachments from the Gunsmith Reloaded addon." -- UO

L["cod2019_attach_support_gsr_muzzles_alt.printname"] = "Gunsmith Reloaded Support" -- UO
L["cod2019_attach_support_gsr_muzzles_alt.compactname"] = "GSR" -- UO
L["cod2019_attach_support_gsr_muzzles_alt.description"] = "Allows installation of muzzle attachments from the Gunsmith Reloaded addon." -- UO

L["cod2019_attach_support_gsr_grips.printname"] = "Gunsmith Reloaded Support" -- UO
L["cod2019_attach_support_gsr_grips.compactname"] = "GSR" -- UO
L["cod2019_attach_support_gsr_grips.description"] = "Allows installation of foregrips from the Gunsmith Reloaded addon." -- UO

////////////////////  Custom Crossbow Ammo
L["cod2019_ammo_crossbow_rock.printname"] = "FTAC Boulder 30g Rock" -- UO
L["cod2019_ammo_crossbow_rock.compactname"] = "Boulder" -- UO
L["cod2019_ammo_crossbow_rock.description"] = "Replaces the aerodynamic bolts with a <color=100,255,100>rock</color>.\n\nFor that <color=100,255,100>stoner</color> within us all." -- UO

L["cod2019_ammo_crossbow_he.printname"] = "FTAC Contact 20\" Bolts" -- UO
L["cod2019_ammo_crossbow_he.compactname"] = "Contact" -- UO
L["cod2019_ammo_crossbow_he.description"] = "Bolts with a <color=255,255,100>low pressure explosive compound</color> imbedded within the arrowhead. <color=255,100,100>Bolts can not be recovered</color>, and are undetectable by trophy systems." -- UO

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

////////////////////  Rytec Atts. before they are actually added, remove when the proper ones are introduced
L["cod2019_rytec_barrel_short.printname"] = "Short Barrel" -- UO
L["cod2019_rytec_barrel_short.compactname"] = "Short" -- UO
L["cod2019_rytec_barrel_short.description"] = "Compact barrel for the Rytec AMR allowing increased agility at the cost of recoil control." -- UO

L["cod2019_rytec_barrel_long.printname"] = "Long Barrel" -- UO
L["cod2019_rytec_barrel_long.compactname"] = "Long" -- UO
L["cod2019_rytec_barrel_long.description"] = "Long barrel for the Rytec AMR allowing increased range and accuracy at the cost of agility." -- UO

L["cod2019_rytec_mag_10.printname"] = "10-Round Magazine" -- UO
L["cod2019_rytec_mag_10.compactname"] = "10R" -- UO
L["cod2019_rytec_mag_10.description"] = "Extended magazine holding <color=100,255,100>10 rounds</color>." -- UO

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
