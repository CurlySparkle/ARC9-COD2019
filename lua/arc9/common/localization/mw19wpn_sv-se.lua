L = {}

local lineb = "\n"

local changeammo = { -- UO
pistol = lineb .. "Byter patrontyp till <color=255,255,100>Pistol Ammo</color>.",
["357"] = lineb .. "Byter patrontyp till <color=255,255,100>Magnum Ammo</color>.",
smg1 = lineb .. "Byter patrontyp till <color=255,255,100>Karbin Ammo</color>.",
ar2 = lineb .. "Byter patrontyp till <color=255,255,100>Gevärs Ammo</color>.",
buckshot = lineb .. "Byter patrontyp till <color=255,255,100>Hagelbössa Ammo</color>.",
sniperpenetratedround = lineb .. "Byter patrontyp till <color=255,255,100>Prickskytt. Ammo</color>.",
smg1_grenade = lineb .. "Byter patrontyp till <color=255,255,100>Gevärsgranater</color>.",
xbowbolt = lineb .. "Byter patrontyp till <color=255,255,100>Armborst Bultar</color>.",
}

local missingloc = "\n\nNotis: Icke-lokaliserad text; Prenumerera på <color=255,255,100>SHARED-tillägget</color> för översatta texter."

//////////////////////////////////////////////////////////////////////
///////////////////////////// Various Universal Information
//////////////////// Trivia
/////////// Caliber -- UO
L["mw19_caliber"] = "Caliber1"

L["mw19_caliber_7.62x39mm"] = "7.62x39mm Sovjet"
L["mw19_caliber_7.62x51mm"] = "7.62x51mm"
L["mw19_caliber_5.56x45mm"] = "5.56x45mm"
L["mw19_caliber_5.45x39mm"] = "5.45x39mm"
L["mw19_caliber_12gauge"] = "12 Kaliber"
L["mw19_caliber_50ae"] = ".50 AE"
L["mw19_caliber_5.7x28mm"] = "FN 5.7x28mm"
L["mw19_caliber_4.6x30mm"] = "HK 4.6x30mm"
L["mw19_caliber_9x19mm"] = "9x19mm Parabellum"
L["mw19_caliber_.338"] = ".338 Lapua"
L["mw19_caliber_.308"] = ".308 Winchester"

/////////// Country of Origin -- UO
L["mw19_country"] = "Ursprungsland2"

L["mw19_country_austria"] = "Österrike"
L["mw19_country_belgium"] = "Belgien"
L["mw19_country_czechrepublic"] = "Tjeckien"
L["mw19_country_france"] = "Frankrike"
L["mw19_country_germany"] = "Tyskland"
L["mw19_country_israel"] = "Israel"
L["mw19_country_italy"] = "Italien"
L["mw19_country_russia"] = "Ryssland"
L["mw19_country_southafrica"] = "Sydafrika"
L["mw19_country_sovietunion"] = "Sovjetunionen"
L["mw19_country_sweden"] = "Sverige"
L["mw19_country_switzerland"] = "Schweiz"
L["mw19_country_uk"] = "Storbritannien"
L["mw19_country_usa"] = "Förenta Staterna"

/////////// Manufacturer
L["mw19_manufacturer"] = "Tillverkare3" -- UO

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

L["mw19_manufacturer_unknown"] = "???" -- FAL, Oden, AK-47, Grau 5.56, CR-56 AMAX, AUG, PP19 Bizon, SA87, MG34, Kar98k, Dragunov, Riot Shield, X16, 1911, .357, Sykov, Strela-P, JOKR, RPG-7, MGL-32, Knife, Kali Sticks, Dual Kodachis

/////////// Weight -- UO
L["mw19_weight"] = "Vikt (Laddad)4"
L["mw19_weight_val"] = "%s kg / %s lb"

/////////// Projectile Weight -- UO
L["mw19_weight_projectile"] = "Projektilvikt5"
L["mw19_weight_projectile_val"] = "%s g"

/////////// Muzzle Energy -- UO
L["mw19_muzzle_energy"] = "Mynningsenergi6"
L["mw19_muzzle_energy_val"] = "%s joules"

/////////// Muzzle Velocity -- UO
L["mw19_muzzle_velocity"] = "Mynningshastighet7"
L["mw19_muzzle_velocity_val"] = "%s m/s | %s ft/s"

/////////// Authors -- UO
L["mw19_assets"] = "Tillgångar2"
L["mw19_author"] = "Skapare1"

/////////// Weapon Categories
L["mw19_category_weapon_ar"] = "AUTOMATKARBINER"
L["mw19_category_weapon_smg"] = "KPISTAR"
L["mw19_category_weapon_shotgun"] = "HAGELBÖSSOR"
L["mw19_category_weapon_lmg"] = "KULSPRUTOR"
L["mw19_category_weapon_marksman"] = "MARKSMAN-GEVÄR"
L["mw19_category_weapon_sniper"] = "PRICKSKYTTEGEVÄR"
L["mw19_category_weapon_melee"] = "NÄRSTRID"
L["mw19_category_weapon_throwable"] = "KASTBARA VAPEN"

L["mw19_category_weapon_handgun"] = "PISTOLER"
L["mw19_category_weapon_handgun_akimbo"] = "PISTOLER - AKIMBO"
L["mw19_category_weapon_launcher"] = "KASTARE"

/////////// Weapon Classes
L["mw19_class_weapon_ar"] = "Automatkarbin"
L["mw19_class_weapon_smg"] = "Kulsprutepistol"
L["mw19_class_weapon_shotgun"] = "Hagelbössa"
L["mw19_class_weapon_lmg"] = "Lätt Kulspruta"
L["mw19_class_weapon_marksman"] = "Marksman-Gevär"
L["mw19_class_weapon_sniper"] = "Prickskyttegevär"
L["mw19_class_weapon_melee"] = "Närstridsvapen"
L["mw19_class_weapon_grenade"] = "Granat" -- UO

L["mw19_class_weapon_handgun"] = "Pistol"
L["mw19_class_weapon_launcher"] = "Kastare"

//////////////////////////////////////////////////////////////////////
////////////////////////////////////////// Notes
-- 1) If "-- UO" is listed after the string, it is unofficial and its translation is not taken from MW19.
-- Therefore they will either remain untranslated (and remain in English) or require community contribution to fix.

-- 2) If a string uses "ARC9:GetPhrase" in it, then do not touch it. It uses another localization as its quick access.

-- 3) If the string has the above text and an " or " after it, do not translate the text after it.

///////////////////////////// Attachments
//////////////////// Customize
L["mw19_category_camouflage"] = "Kamouflage"
L["mw19_category_reticle"] = "Hårkors"
L["mw19_category_charm"] = "Smycke"
L["mw19_category_sticker"] = "Klistermärke"

//////////////////// Attachment Categories
L["mw19_category_muzzle"] = "Mynning"
L["mw19_category_barrel"] = "Pipa"
L["mw19_category_laser"] = "Laser"
L["mw19_category_optic"] = "Riktmedel"
L["mw19_category_stock"] = "Kolv"
L["mw19_category_underbarrel"] = "Under Pipan"
L["mw19_category_magazine"] = "Magasin"
L["mw19_category_reargrip"] = "Bakre Grepp"
L["mw19_category_perk"] = "Färdighet"

-- Specific to the Crossbow Marksman Rifle
L["mw19_category_cable"] = "Kabel"
L["mw19_category_arms"] = "Armar"
L["mw19_category_bolt"] = "Pil"

-- Specific to Handguns
L["mw19_category_triggeraction"] = "Avtryckare"

-- Specific to the R9-0 Shotgun
L["mw19_category_pumps"] = "Pumphandtag"

-- Specific to the 725 Shotgun
L["mw19_category_guard"] = "Skydd"

-- Specific to the VLK Rogue Shotgun
L["mw19_category_pumpgrip"] = "Pumpgrepp"

-- Specific to the SP-R 208 Marksman Rifle
L["mw19_category_boltassembly"] = "Bultmontering"

-- Custom ones for the addon
L["mw19_category_ammo"] = "Ammo" -- UO
L["mw19_category_function"] = "Funktionalitet" -- UO
L["mw19_category_grip"] = "Framgrepp" -- UO
L["mw19_category_rails"] = "Skenor" -- UO
L["mw19_category_receiver"] = "Låda" -- UO
L["mw19_category_skins"] = "Utseenden" -- UO
L["mw19_category_slide"] = "Slide" -- UO, "Pistol Slide"
L["mw19_category_stats"] = "Statistik" -- UO
L["mw19_category_view"] = "Vy" -- UO

//////////////////// Folder Names
-- Other
L["mw19_folder_other2"] = "Annat" -- UO

//////////////////// Firemodes
-- L["mw19_firemode_pump"] = "PUMP"

//////////////////////////////////////////////////////////////////////
///////////////////////////// Base Attachments
////////////////////  Ammo
L["cod2019_ammo_ap.printname"] = "Pansarbrytande Patroner" -- UO
L["cod2019_ammo_ap.compactname"] = "PB" -- UO
L["cod2019_ammo_ap.description"] = "Ammunition gjord av hårda material designade för att bryta sig igenom skyddsvästar.\nHög penetrationsförmåga, men skadepotentialen är sänkt." -- UO

L["cod2019_ammo_hr.printname"] = "Hög Rikoschett Patroner" -- UO
L["cod2019_ammo_hr.compactname"] = "HR" -- UO
L["cod2019_ammo_hr.description"] = "Ammunition gjord av mjuk material designade för att studsa av ytor.\nHög rikoschett förmåga, men mindre skadepotential." -- UO

L["cod2019_ammo_fra.printname"] = "Hålspets Patroner" -- UO
L["cod2019_ammo_fra.compactname"] = "HS" -- UO
L["cod2019_ammo_fra.description"] = "Ammunition med en ihålig topp som expanderar när den träffar dess måltavla vilket oförmögnar dem lättare.\nAnvänds ofta i polisiära och civila marknader tack vare dess oförmåga att penetrera och rikoschetta." -- UO

L["cod2019_ammo_subsonic.printname"] = "Låg Profil Patroner" -- UO
L["cod2019_ammo_subsonic.compactname"] = "LP" -- UO
L["cod2019_ammo_subsonic.description"] = "Ammunition med sänkt kraftladdning gjorda för lättare vapenhantering.\nFörbättrar vapnets rekylkontroll med kostnad på vapenräckvidd." -- UO

L["cod2019_ammo_tracer_col.printname"] = "Vapenfärgade Spårljus Patroner" -- UO
L["cod2019_ammo_tracer_col.compactname"] = "VFSL" -- UO
L["cod2019_ammo_tracer_col.description"] = "Ammunition med spårljus färgade för att matcha spelarens physics gun-färg.\n\nGanska fräckt, eller hur?"

L["cod2019_ammo_db.printname"] = "Brandpatroner" -- UO
L["cod2019_ammo_db.compactname"] = "BRAND" -- UO
L["cod2019_ammo_db.description"] = "Brandpatroner som tänder fyr på måltavlor vid träff." -- UO
-- L["cod2019_ammo_db.description"] = "Brandpatroner som har en chans att tända fyr på måltavlor vid träff." -- UO

L["cod2019_ammo_he.printname"] = "Explosiva Patroner" -- UO
L["cod2019_ammo_he.compactname"] = "HE" -- UO
L["cod2019_ammo_he.description"] = "Explosiv ammunition som offrar direkt skada för att kunna göra skada i en radie runt träffpunkten.\nEffekten är spektakulär men väldigt lite sprängmedel kan sättas in i patronerna." -- UO

-- Shotgun Ammo
L["cod2019_ammo_sg_magnum.printname"] = "8.5mm Magnum Hagelskott" -- UO
L["cod2019_ammo_sg_magnum.compactname"] = "MAG" -- UO
L["cod2019_ammo_sg_magnum.description"] = "Högt kraftfull hagelskott laddade med färre men större hagelskott.\nErbjuder bättre kraft i närstrid men värre räckvidd och träffsäkerhet." -- UO

-- L["cod2019_ammo_sg_bird.printname"] = "3.5mm Fågelskott" -- UO
-- L["cod2019_ammo_sg_bird.compactname"] = "FÅGEL" -- UO
-- L["cod2019_ammo_sg_bird.description"] = "Sänkt diameter laddning innehåller ett högre antal skott.\nSpridningen ökas vilket gör det lättare att träffa fler måltavlor." -- UO

L["cod2019_ammo_sg_slug.printname"] = "70mm Helhål Sluggpatron" -- UO
L["cod2019_ammo_sg_slug.compactname"] = "SLUGG" -- UO
L["cod2019_ammo_sg_slug.description"] = "En enkel projektil laddad i en hagelpatron.\nDet aerodynamiska skottet har mycket högre effektiv räckvidd." -- UO

-- L["cod2019_ammo_sg_triple.printname"] = "70mm Trippelträff Sluggpatroner" -- UO
-- L["cod2019_ammo_sg_triple.compactname"] = "TRI" -- UO
-- L["cod2019_ammo_sg_triple.description"] = "Laddning innehåller tre korta, sluggstora skott.\nSluggarna erbjuder högre effektiv räckvidd och träffsäkerhet, men inte lika mycket som helhåliga sluggpatronen." -- UO

L["cod2019_ammo_sg_flechette.printname"] = "Flechetteskott" -- UO
L["cod2019_ammo_sg_flechette.compactname"] = "FLE" -- UO
L["cod2019_ammo_sg_flechette.description"] = "Laddning innehåller tunna, pilformade projektiler.\nErbjuder tätare spridning och ökad räckvidd, inklusive ökad penetration, men med kostnad på sänkt stoppkraft." -- UO

L["cod2019_ammo_sg_frag.printname"] = "70mm \"FRAG-12\" Explosiva Skott" -- UO
L["cod2019_ammo_sg_frag.compactname"] = "FRAG-12" -- UO
L["cod2019_ammo_sg_frag.description"] = "Laddning innehåller en enkel projektil fylld med ett explosivt ämne.\nDelar ut skada runt en mindre radie vid träffpunkten." -- UO

L["cod2019_ammo_sg_rebounder.printname"] = "10mm Rebounder-Skott" -- UO
L["cod2019_ammo_sg_rebounder.compactname"] = "RBD" -- UO
L["cod2019_ammo_sg_rebounder.description"] = "Laddning innehåller specialskott som har en hög chans att studsa.\nSkotten studsar oavsett vinkeln. Skadan ökas ju mer den studsar.\nDen har dock sänkt skada vid direkta träffar." -- UO

L["cod2019_ammo_sg_frag_x4.printname"] = "70mm \"FRAG-12\" Explosiva Skott x4" -- UO
L["cod2019_ammo_sg_frag_x4.compactname"] = "FRAG-12 x4" -- UO
L["cod2019_ammo_sg_frag_x4.description"] = "Laddning innehåller fyra projektiler fyllda med sprängämnen.\nDelar ut skada runt en liten radie vid träffpunkten." -- UO

L["cod2019_ammo_sg_db.printname"] = "70mm \"Dragon's Breach\"" -- UO
L["cod2019_ammo_sg_db.compactname"] = "DB" -- UO
L["cod2019_ammo_sg_db.description"] = "Laddning innehåller magnesium skott som tänder fyr på en måtavla vid träff." -- UO

////////////////////  Etc.
L["cod2019_etc_ammo_extend.printname"] = "Lättvikt Förstorat Magasin" -- UO
L["cod2019_etc_ammo_extend.compactname"] = "Lättvikt FM" -- UO
L["cod2019_etc_ammo_extend.description"] = "Anpassat förstorat magasin som innehåller <color=100,255,100>20%</color> mer ammunition." -- UO

L["cod2019_attach_grip_support.printname"] = "Stöd för Framgrepp" -- UO
L["cod2019_attach_grip_support.compactname"] = "Stöd F." -- UO
L["cod2019_attach_grip_support.description"] = "Tillåter installering av framgrepp på pistoler. <color=255,100,100>Kan inte sätta på lasrar också.</color>" -- UO

L["cod2019_view_alt_pistol.printname"] = "Alternativ Vy" -- UO
L["cod2019_view_alt_pistol.compactname"] = "Alt. Vy" -- UO
L["cod2019_view_alt_pistol.description"] = "Alternativ siktvy." -- UO

L["cod2019_attach_laser_rail.printname"] = "Lasertillbehör" -- UO
L["cod2019_attach_laser_rail.compactname"] = "Lasertill." -- UO
L["cod2019_attach_laser_rail.description"] = "Tillåter installering av lasersikten på ditt vapen." -- UO

L["cod2019_attach_laser_rail_2.printname"] = ARC9:GetPhrase("cod2019_attach_laser_rail.printname")
L["cod2019_attach_laser_rail_2.compactname"] = ARC9:GetPhrase("cod2019_attach_laser_rail.compactname")
L["cod2019_attach_laser_rail_2.description"] = "Tillåter installering av smål, cylindriska lasersikten på ditt vapen." -- UO

L["cod2019_attach_laser_cylinder.printname"] = ARC9:GetPhrase("cod2019_attach_laser_rail.printname")
L["cod2019_attach_laser_cylinder.compactname"] = ARC9:GetPhrase("cod2019_attach_laser_rail.compactname")
L["cod2019_attach_laser_cylinder.description"] = ARC9:GetPhrase("cod2019_attach_laser_rail.description")

L["cod2019_attach_laser_cylinder_2.printname"] = ARC9:GetPhrase("cod2019_attach_laser_rail.printname")
L["cod2019_attach_laser_cylinder_2.compactname"] = ARC9:GetPhrase("cod2019_attach_laser_rail.compactname")
L["cod2019_attach_laser_cylinder_2.description"] = ARC9:GetPhrase("cod2019_attach_laser_rail_2.description")

////////////////////  Grips
L["cod2019_attach_grip_foregrip_side.printname"] = "ARC-Framgrepp" -- UO
L["cod2019_attach_grip_foregrip_side.compactname"] = "ARC" -- UO
L["cod2019_attach_grip_foregrip_side.description"] = ARC9:GetPhrase("csgo_cod2019_grips_merc.description") or "Extended foregrip reduces vertical recoil and provides stability from the hip for fast-paced guerrilla tactics." .. missingloc

L["cod2019_grips_none.printname"] = "Alternativ Hållande" -- UO
L["cod2019_grips_none.compactname"] = "Alt. Håll." -- UO
L["cod2019_grips_none.description"] = "Alternativ hållningsstil." -- UO

L["cod2019_grips_alt_cclamp.printname"] = "C-Clamp-Hållande" -- UO
L["cod2019_grips_alt_cclamp.compactname"] = "C-Clamp" -- UO
L["cod2019_grips_alt_cclamp.description"] = ARC9:GetPhrase("cod2019_grips_none.description")

L["cod2019_grips_alt_nocclamp.printname"] = "Ingen C-Clamp-Hållande" -- UO
L["cod2019_grips_alt_nocclamp.compactname"] = "Ingen C-C" -- UO
L["cod2019_grips_alt_nocclamp.description"] = ARC9:GetPhrase("cod2019_grips_none.description")

////////////////////  Perks
L["cod2019_perks_soh.printname"] = "Fingerfärdighet"
L["cod2019_perks_soh.compactname"] = "FF"
L["cod2019_perks_soh.description"] = "Träna att ladda om snabbare under press."

L["cod2019_perks_soh_alt.printname"] = ARC9:GetPhrase("cod2019_perks_soh.printname")
L["cod2019_perks_soh_alt.compactname"] = ARC9:GetPhrase("cod2019_perks_soh.compactname")
L["cod2019_perks_soh_alt.description"] = ARC9:GetPhrase("cod2019_perks_soh.description")

L["cod2019_perks_speedmelee.printname"] = "Snabb Närstrid"
L["cod2019_perks_speedmelee.compactname"] = "Närstrid"
L["cod2019_perks_speedmelee.description"] = "Träna att utföra närstridsanfall med högre hastighet."

L["cod2019_perks_heavyhitter.printname"] = "Hård Träffare"
L["cod2019_perks_heavyhitter.compactname"] = "Träffare"
L["cod2019_perks_heavyhitter.description"] = "Närstridsanfall ger högre chock på måltavlor."

L["cod2019_perks_enforcer.printname"] = "Enforcer" -- UO
L["cod2019_perks_enforcer.compactname"] = "Enforcer" -- UO
L["cod2019_perks_enforcer.description"] = "Ger användaren 30% motstånd till all skada." -- UO

L["cod2019_perks_bolt.printname"] = "Skickliga Händare" -- UO
L["cod2019_perks_bolt.compactname"] = "Skicklig" -- UO
L["cod2019_perks_bolt.description"] = "Träna med ditt vapen tillåter dig att ladda vapnet snabbare." -- UO

L["cod2019_perks_slamfire.printname"] = "Slamfire" -- UO
L["cod2019_perks_slamfire.compactname"] = "Slamfire" -- UO
L["cod2019_perks_slamfire.description"] = "Tvinga vapnet att skjuta och ladda vapnet mycket snabbare med kostnad på sänkt träffsäkerhet." -- UO

L["cod2019_perks_burst.printname"] = "Salvoeld"
L["cod2019_perks_burst.compactname"] = "Salvo"
L["cod2019_perks_burst.description"] = "Ändrar skjutläget till <color=100,255,100>3-skott</color>salvo."

L["cod2019_perks_burst_2.printname"] = "Salvoeld (x2)"
L["cod2019_perks_burst_2.compactname"] = ARC9:GetPhrase("cod2019_perks_burst.compactname")
L["cod2019_perks_burst_2.description"] = "Ändrar skjutläget till <color=100,255,100>2-skott</color>salvo."

////////////////////  Scopes
L["cod2019_optic_scope_pila.printname"] = "PILA-Riktmedel" -- UO
L["cod2019_optic_scope_pila.compactname"] = "PILA" -- UO
L["cod2019_optic_scope_pila.description"] = ARC9:GetPhrase("cod2019_optic_scope_mike14.description") or "High power <color=100,255,100>4.4x</color> scope for long range encounters. <color=255,100,100>Optic glint visible to enemies.</color>" .. missingloc

L["cod2019_model680_iron.printname"] = "Ta Bort Siktfäste" -- UO
L["cod2019_model680_iron.compactname"] = "Ta Bort S." -- UO
L["cod2019_model680_iron.description"] = "Tar bort siktfästet på Modell 680 vilket gör den mer slät." -- UO

////////////////////  Stocks
L["cod2019_stock_vlk.printname"] = "VLK Rogue-Kolv" -- UO
L["cod2019_stock_vlk.compactname"] = "VLK Rogue" -- UO
L["cod2019_stock_vlk.description"] = ARC9:GetPhrase("cod2019_stock_light.description") or "Stock designed for agility while aiming down sights." .. missingloc

L["cod2019_stock_amax.printname"] = "CR-56 AMAX-Kolv" -- UO
L["cod2019_stock_amax.compactname"] = "CR-56 AMAX" -- UO
L["cod2019_stock_amax.description"] = ARC9:GetPhrase("cod2019_stock_vlight.description") or "Extended foregrip reduces vertical recoil and provides stability from the hip for fast-paced guerrilla tactics." .. missingloc

L["cod2019_stock_slima.printname"] = "Slima-Kolv" -- UO
L["cod2019_stock_slima.compactname"] = "Slima" -- UO
L["cod2019_stock_slima.description"] = ARC9:GetPhrase("cod2019_stock_medium.description") or "Tactical stock streamlined for close quarters combat. Gets you on target faster." .. missingloc

L["cod2019_stock_m4.printname"] = "Ökenstorm Kolv" -- UO
L["cod2019_stock_m4.compactname"] = "Storm" -- UO
L["cod2019_stock_m4.description"] = ARC9:GetPhrase("cod2019_stock_heavy.description") or "Heavy duty stock keeps your aim steady for precision shots." .. missingloc

L["cod2019_stock_origin12.printname"] = "Origin-Kolv" -- UO
L["cod2019_stock_origin12.compactname"] = "Origin" -- UO
L["cod2019_stock_origin12.description"] = ARC9:GetPhrase("cod2019_stock_light.description") or "Stock designed for agility while aiming down sights." .. missingloc

L["cod2019_m32_stock_retract.printname"] = "Förkortad Kolv" -- UO
L["cod2019_m32_stock_retract.compactname"] = "Förkortad" -- UO
L["cod2019_m32_stock_retract.description"] = "Förkortar kolven för att tillåta <color=100,255,100>högre rörlighet.</color>" -- UO

////////////////////  Buffer Tubes
L["cod2019_stock_tube.printname"] = "Ökenstorm Bufferrör" -- UO
L["cod2019_stock_tube.compactname"] = "Storm" -- UO
L["cod2019_stock_tube.description"] = "Bufferrör gjort av aluminium. Tillåter installering av kolvar från eftermarknaden." -- UO

L["cod2019_stock_tube_vlk.printname"] = "VLK-Bufferrör" -- UO
L["cod2019_stock_tube_vlk.compactname"] = "VLK" -- UO
L["cod2019_stock_tube_vlk.description"] = "Anpassat bufferrör som tillåter installering av kolvar från eftermarknaden." -- UO

L["cod2019_stock_tube_origin12.printname"] = "FTAC-Rör" -- UO
L["cod2019_stock_tube_origin12.compactname"] = "FTAC" -- UO
L["cod2019_stock_tube_origin12.description"] = "Tungt bufferrör som tillåter installering av kolvar från eftermarknaden" -- UO

L["cod2019_m14_stock_tube.printname"] = "EBR-Rör" -- UO
L["cod2019_m14_stock_tube.compactname"] = "EBR" -- UO
L["cod2019_m14_stock_tube.description"] = ARC9:GetPhrase("cod2019_stock_tube_origin12.description")

////////////////////  EFT (Escape from Tarkov) Support
L["cod2019_eft_grips.printname"] = "\"Escape from Tarkov\"-Stöd" -- UO
L["cod2019_eft_grips.compactname"] = "EFT" -- UO
L["cod2019_eft_grips.description"] = "Tillåter installering av framgrepp från \"Escape from Tarkov\"-tilläggen." -- UO

L["cod2019_eft_muzzle.printname"] = ARC9:GetPhrase("cod2019_eft_grips.printname")
L["cod2019_eft_muzzle.compactname"] = ARC9:GetPhrase("cod2019_eft_grips.compactname")
L["cod2019_eft_muzzle.description"] = "Tillåter installering av mynningstillbehör från \"Escape from Tarkov\"-tilläggen." -- UO

L["cod2019_eft_scopes.printname"] = ARC9:GetPhrase("cod2019_eft_grips.printname")
L["cod2019_eft_scopes.compactname"] = ARC9:GetPhrase("cod2019_eft_grips.compactname")
L["cod2019_eft_scopes.description"] = "Tillåter installering av riktmedel från \"Escape from Tarkov\"-tilläggen." -- UO

L["cod2019_eft_scopes_pistol.printname"] = ARC9:GetPhrase("cod2019_eft_grips.printname")
L["cod2019_eft_scopes_pistol.compactname"] = ARC9:GetPhrase("cod2019_eft_grips.compactname")
L["cod2019_eft_scopes_pistol.description"] = ARC9:GetPhrase("cod2019_eft_scopes.description")

L["cod2019_eft_stocks.printname"] = ARC9:GetPhrase("cod2019_eft_grips.printname")
L["cod2019_eft_stocks.compactname"] = ARC9:GetPhrase("cod2019_eft_grips.compactname")
L["cod2019_eft_stocks.description"] = "Tillåter installering av kolvar från \"Escape from Tarkov\"-tilläggen." -- UO

////////////////////  GSR (Gunsmith Reloaded) Support
L["cod2019_attach_support_gsr_laser_pstl.printname"] = "\"Gunsmith Reloaded\"-Stöd" -- UO
L["cod2019_attach_support_gsr_laser_pstl.compactname"] = "GSR" -- UO
L["cod2019_attach_support_gsr_laser_pstl.description"] = "Tillåter installering av lasertillbehör från \"Gunsmith Reloaded\"-tillägget." -- UO

L["cod2019_attach_support_gsr_optics.printname"] = ARC9:GetPhrase("cod2019_attach_support_gsr_laser_pstl.printname")
L["cod2019_attach_support_gsr_optics.compactname"] = ARC9:GetPhrase("cod2019_attach_support_gsr_laser_pstl.compactname")
L["cod2019_attach_support_gsr_optics.description"] = "Tillåter installering av riktmedel från \"Gunsmith Reloaded\"-tillägget." -- UO

L["cod2019_attach_support_gsr_optics_pistols.printname"] = ARC9:GetPhrase("cod2019_attach_support_gsr_laser_pstl.printname")
L["cod2019_attach_support_gsr_optics_pistols.compactname"] = ARC9:GetPhrase("cod2019_attach_support_gsr_laser_pstl.compactname")
L["cod2019_attach_support_gsr_optics_pistols.description"] = ARC9:GetPhrase("cod2019_attach_support_gsr_optics.description")

L["cod2019_attach_support_gsr_muzzles.printname"] = ARC9:GetPhrase("cod2019_attach_support_gsr_laser_pstl.printname")
L["cod2019_attach_support_gsr_muzzles.compactname"] = ARC9:GetPhrase("cod2019_attach_support_gsr_laser_pstl.compactname")
L["cod2019_attach_support_gsr_muzzles.description"] = "Tillåter installering av mynningstillbehör från \"Gunsmith Reloaded\"-tillägget." -- UO

L["cod2019_attach_support_gsr_muzzles_pistols.printname"] = ARC9:GetPhrase("cod2019_attach_support_gsr_laser_pstl.printname")
L["cod2019_attach_support_gsr_muzzles_pistols.compactname"] = ARC9:GetPhrase("cod2019_attach_support_gsr_laser_pstl.compactname")
L["cod2019_attach_support_gsr_muzzles_pistols.description"] = ARC9:GetPhrase("cod2019_attach_support_gsr_muzzles.description")

L["cod2019_attach_support_gsr_muzzles_alt.printname"] = ARC9:GetPhrase("cod2019_attach_support_gsr_laser_pstl.printname")
L["cod2019_attach_support_gsr_muzzles_alt.compactname"] = ARC9:GetPhrase("cod2019_attach_support_gsr_laser_pstl.compactname")
L["cod2019_attach_support_gsr_muzzles_alt.description"] = ARC9:GetPhrase("cod2019_attach_support_gsr_muzzles.description")

L["cod2019_attach_support_gsr_grips.printname"] = ARC9:GetPhrase("cod2019_attach_support_gsr_laser_pstl.printname")
L["cod2019_attach_support_gsr_grips.compactname"] = ARC9:GetPhrase("cod2019_attach_support_gsr_laser_pstl.compactname")
L["cod2019_attach_support_gsr_grips.description"] = "Tillåter installering av framgrepp från \"Gunsmith Reloaded\"-tillägget." -- UO

////////////////////  Custom Crossbow Ammo
L["cod2019_ammo_crossbow_rock.printname"] = "FTAC Boulder 30g Sten" -- UO
L["cod2019_ammo_crossbow_rock.compactname"] = "Boulder" -- UO
L["cod2019_ammo_crossbow_rock.description"] = "Ersätter dem aerodynamiska pilarna med en <color=100,255,100>sten</color>.\n\nFör den <color=100,255,100>stonern</color> i oss alla." -- UO

L["cod2019_ammo_crossbow_he.printname"] = "FTAC Kontakt 510mm Pilar" -- UO
L["cod2019_ammo_crossbow_he.compactname"] = "Kontakt" -- UO
L["cod2019_ammo_crossbow_he.description"] = "Pilar med <color=255,255,100>lågtrycks sprängmedel</color> inbyggda i pilspetsen. <color=255,100,100>Pilar kan inte återhämtas</color> och är oupptäckbara av trofésystem." -- UO

////////////////////  Custom MGL-32 Ammo
L["cod2019_ammo_gl_rock.printname"] = "40mm Boulder" -- UO
L["cod2019_ammo_gl_rock.compactname"] = "Boulder" -- UO
L["cod2019_ammo_gl_rock.description"] = "Anpassade 40mm patroner fyllda med <color=100,255,100>stenar</color>." -- UO

L["cod2019_ammo_gl_flash.printname"] = "40mm Chock" -- UO
L["cod2019_ammo_gl_flash.compactname"] = "Chock" -- UO
L["cod2019_ammo_gl_flash.description"] = "Anpassade 40mm patroner fyllda med icke-dödliga <color=100,255,100>Chock</color>granater designade att temporärligt blända din fiende." -- UO, partially taken from M203 40mm Flash

L["cod2019_ammo_gl_inc.printname"] = "40mm Brand" -- UO
L["cod2019_ammo_gl_inc.compactname"] = "Brand" -- UO
L["cod2019_ammo_gl_inc.description"] = "Anpassade 40mm patroner fyllda med dödliga <color=100,255,100>Brand</color>granater." -- UO, partially taken from M203 40mm Incendiary

L["cod2019_ammo_gl_smoke.printname"] = "40mm Rökskärm" -- UO
L["cod2019_ammo_gl_smoke.compactname"] = "Rök" -- UO
L["cod2019_ammo_gl_smoke.description"] = "Anpassade 40mm patroner fyllda med icke-dödliga <color=100,255,100>Rök</color>granater designade att gömma din rörelse." -- UO, partially taken from M203 40mm Smokescreen

L["cod2019_ammo_gl_gas.printname"] = "40mm Gas" -- UO
L["cod2019_ammo_gl_gas.compactname"] = "Gas" -- UO
L["cod2019_ammo_gl_gas.description"] = "Anpassade 40mm patroner fyllda med delvist dödliga <color=100,255,100>Gas</color>granater som skapar ett gasmoln vid träffpunkten.\nFlertal skott i samma område <color=100,255,100>ökar dess dödlighet</color>." -- UO

////////////////////  Rytec Atts. before they are actually added, remove when the proper ones are introduced
L["cod2019_rytec_barrel_short.printname"] = "Kort Pipa" -- UO
L["cod2019_rytec_barrel_short.compactname"] = "Kort" -- UO
L["cod2019_rytec_barrel_short.description"] = "Compact barrel for the Rytec AMR allowing increased agility at the cost of recoil control." -- UO
L["cod2019_rytec_barrel_short.description"] = "Kompakt pipa till Rytec AMR tillåter ökad rörlighet med kostnad på rekylkontroll." -- UO

L["cod2019_rytec_barrel_long.printname"] = "Lång Pipa" -- UO
L["cod2019_rytec_barrel_long.compactname"] = "Lång" -- UO
L["cod2019_rytec_barrel_long.description"] = "Lång pipa till Rytec AMR vilket ökar räckvidden och träffsäkerheten med kostnad på rörlighet." -- UO

L["cod2019_rytec_mag_10.printname"] = "10-Patronersmagasin" -- UO
L["cod2019_rytec_mag_10.compactname"] = "10P" -- UO
L["cod2019_rytec_mag_10.description"] = "Förstorat magasin som håller <color=100,255,100>10 patroner</color>." -- UO

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

L["mw19_weapon_m680"] = "Modell 680"
L["mw19_weapon_r90"] = "R9-0"
L["mw19_weapon_725"] = "725"
L["mw19_weapon_origin12"] = "Hagelbössa Origin 12"
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
L["mw19_weapon_mk2"] = "MK2 Karbin"
L["mw19_weapon_kar98"] = "Kar98k"
L["mw19_weapon_crossbow"] = "Armborst"
L["mw19_weapon_sks"] = "SKS"
L["mw19_weapon_spr"] = "SP-R 208"

L["mw19_weapon_dragunov"] = "Dragunov"
L["mw19_weapon_hdr"] = "HDR"
L["mw19_weapon_ax50"] = "AX-50"
L["mw19_weapon_rytec"] = "Rytec AMR"

L["mw19_weapon_shield"] = "Kravallsköld"

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

L["mw19_weapon_knife"] = "Kniv"
L["mw19_weapon_stick"] = "Kali-Pinnar"
L["mw19_weapon_sword"] = "Dual Kodachis"

L["mw19_weapon_akimbo"] = "%s Akimbo"

L["mw19_weapon_nade_claymore"] = "Claymore-Mina"
L["mw19_weapon_nade_frag"] = "Splittergranat"
L["mw19_weapon_nade_molotov"] = "Molotov Cocktail"
L["mw19_weapon_nade_c4"] = "C4"
L["mw19_weapon_nade_semtex"] = "Semtex"
L["mw19_weapon_nade_knife"] = "Kastbar Kniv"
L["mw19_weapon_nade_proximity"] = "Närhetsmina"
L["mw19_weapon_nade_thermite"] = "Thermit"

L["mw19_weapon_nade_flash"] = "Chockgranat"
L["mw19_weapon_nade_stun"] = "Distraktionsgranat"
L["mw19_weapon_nade_smoke"] = "Rökgranat"
L["mw19_weapon_nade_snapshot"] = "Snapshot-Granat"
L["mw19_weapon_nade_heartbeat"] = "Hjärtslagssensor"
L["mw19_weapon_nade_stim"] = "Stim"
L["mw19_weapon_nade_decoy"] = "Lockbetsgranat"
L["mw19_weapon_nade_gas"] = "Gasgranat"

L["mw19_weapon_minigun"] = "Minigun"
L["mw19_weapon_fists"] = "Knytnävar" -- UO
L["mw19_weapon_nade_rock"] = "Sten" -- UO

//////////// Weapon Descriptions
L["mw19_weapon_kilo141_desc"] = "Helautomatisk automatkarbin med en ergonomisk design som förbättrar hantering, oen stadig eldhastighet hjälper att hålla sig på måltavlan."
L["mw19_weapon_fal_desc"] = "Halvautomatisk automatkarbin med en hög eldhastighet för snabbare uppföljande skott."
L["mw19_weapon_m4a1_desc"] = "Helautomatisk automatkarbin för alla ändamål. Kontrollera dina skott och detta vapnet kan vara väldigt effektivt vid räckvidd."
L["mw19_weapon_fr556_desc"] = "3-skottsalva automatkarbin av typen bullpup. En välplacerad salvo kan vara extremt dödlig vid måttliga räckvidder."
L["mw19_weapon_oden_desc"] = "Helautomatisk automatkarbin av typen bullpup behåller en låg eldhastighet för att hjälpa kontrollera den tungt träffande 12.7 x 55mm ammunitionen."
L["mw19_weapon_m13_desc"] = "Automatisk automatkarbin innehåller ett kort gaslåssystem som håller eldhastigheten hög och rekylen låg."
L["mw19_weapon_scar_desc"] = "Helautomatisk automatkarbin med hög kaliber som erbjuder hög skada vid längre räckvidder."
L["mw19_weapon_ak47_desc"] = "Väldigt pålitlig automatkarbin matad med 7.62mm Sovjet. Stor kaliber ammunition kräver skicklighet att kontrollera rekylen."
L["mw19_weapon_ram7_desc"] = "Helautomatisk automatkarbin av typen bullpup med en kompakt design som tillåter lättare strider på nära håll."
L["mw19_weapon_grau_desc"] = "Detta modulära 5.56-vapen plattformen är lätt och manövrerbar med utmärkt räckvidd. Precisionstillverkning och världsklass eftermarknadspipor ger detta vapen extrem potential.."
L["mw19_weapon_cr56_desc"] = "Denna lätta 7.62 x 39mm helautomatiska automatkarbinen är kompakt och kraftfull. Byggd exklusivt för militär användning, detta standardgeväret är dödligt vid måttliga räckvidder och är lätt konfiguerbar för diverse angreppstaktiker."
L["mw19_weapon_an94_desc"] = "Toppmodern 5.45x39mm rysk automatkarbin ned en unik <color=255,255,100>hyper-salvo</color> funktion. Det första skottet vid varje avtryckning skjuter ett snabbt 2-skottsalvo innan den uppfattade rekylen känns, vilket skapar en tajt grupp kloster med ökad skadepotential. Denna mekanisk matas med ett kantat magasin, och en fram- och återgående låda hjälper hålla kontroll över rekylen."
L["mw19_weapon_asval_desc"] = "Matad med <color=255,255,100>subsonisk</color> 9x39mm och internt <color=255,255,100>ljuddämpad</color>, AS VAL är ett kraftfullt vapen gjort för smygande, träffsäkerhet och penetrering. Detta vapen är bäst i händerna på en operatör som kan hantera den tunga rekylen och höga eldhastigheten."

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

L["mw19_weapon_nade_claymore_desc"] = "Proximity-activated explosive mine."
L["mw19_weapon_nade_frag_desc"] = "Cookable fragmentation grenade."
L["mw19_weapon_nade_molotov_desc"] = "Improvised incendiary device that explodes on impact."
L["mw19_weapon_nade_c4_desc"] = "Large explosive that sticks to surfaces and can be detonated remotely with {ATTACK} when the equipment is depleted.\n\nDouble-tapping {USE} always detonates the explosives."
L["mw19_weapon_nade_semtex_desc"] = "Timed sticky grenade."
L["mw19_weapon_nade_knife_desc"] = "Retrievable knife that can be thrown to quickly and quietly eliminate enemies."
L["mw19_weapon_nade_proximity_desc"] = "Proximity-triggered explosive that deals heavy damage to vehicles."
L["mw19_weapon_nade_thermite_desc"] = "Explosive which burns fiercely for a short time after impact. Sticks to surfaces."

L["mw19_weapon_nade_flash_desc"] = "Blinds and deafens targets."
L["mw19_weapon_nade_stun_desc"] = "Slows victim's movement and aiming."
L["mw19_weapon_nade_smoke_desc"] = "Deploys a smoke screen that blocks vision."
L["mw19_weapon_nade_snapshot_desc"] = "Provides a momentary glimpse of enemies within the blast radius for your squad."
L["mw19_weapon_nade_heartbeat_desc"] = "A tablet that displays rough information about nearby enemies."
L["mw19_weapon_nade_stim_desc"] = "Military stimulant that cauterizes combat wounds and refreshes Tactical Sprint."
L["mw19_weapon_nade_decoy_desc"] = "Counter-intel grenade that simulates fake gunfire and radar signatures that confuse the enemy."
L["mw19_weapon_nade_gas_desc"] = "Explodes on impact with the ground, releasing a lingering cloud of tear gas that causes slowed movement, blurred vision, and coughing."

L["mw19_weapon_minigun_desc"] = "Portable gatling gun with a very high cyclic rate." -- UO
L["mw19_weapon_fists_desc"] = "When all else fails, punch your way out. Remember, fists do not require reloading, so they are always quick." -- UO
L["mw19_weapon_nade_rock_desc"] = "For when you need to hit an enemy with a \"non-lethal\" item, or if you need to provide a distraction in order to sneak past guards." -- UO
