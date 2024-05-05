L = {} -- Swedish (Unofficial) by Moka

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

//////////////////////////////////////////////////////////////////////
////////////////////////////////////////// Notes
-- 1) If "-- UO" is listed after the string, it is unofficial and its translation is not taken from MW19.
-- Therefore they will either remain untranslated (and remain in English) or require community contribution to fix.

-- 2) If a string uses "ARC9:GetPhrase" in it, then do not touch it. It uses another localization as its quick access.

///////////////////////////// Various Universal Information
//////////////////// Settings
L["settings.mw19"] = "Tillägg - MW19" -- UO
L["settings.mw19.warzonestats"] = "Warzone-Statistik" -- UO
L["settings.mw19.warzonestats.title"] = "Aktivera Warzone-Statistik" -- UO
L["settings.mw19.warzonestats.desc"] = "Ändrar statistiken på alla* vapen och tillbehör så dem har statistik som är mer likt Modern Warfare 2019 / Warzone.\n\nDetta är en servervariabel. Kräver omstart för att ta effekt.\n\n\n*Vissa vapen och tillbehör kommer inte bete sig annorlunda." -- UO

//////////////////// Trivia
/////////// Caliber -- UO
L["mw19_caliber"] = "Kaliber3"

L["mw19_caliber_556"] = "5,56 NATO"
L["mw19_caliber_762"] = "7,62 NATO"
L["mw19_caliber_762soviet"] = "7,62 Sovjet"
L["mw19_caliber_762mmr"] = "7,62 × 54 mm R"
L["mw19_caliber_762mauser"] = "7,62 Mauser"
L["mw19_caliber_545"] = "5,45 × 39 mm"
L["mw19_caliber_127x55"] = "12,7 × 55 mm"
L["mw19_caliber_127x108"] = "12,7 × 108 mm"
L["mw19_caliber_939"] = "9 × 39 mm"
L["mw19_caliber_919"] = "9mm Parabellum"
L["mw19_caliber_57x28"] = "5,7 × 28 mm"
L["mw19_caliber_918"] = "9 mm Makarov"
L["mw19_caliber_46x30"] = "4,6 × 30 mm"
L["mw19_caliber_45acp"] = ".45 ACP"
L["mw19_caliber_12gauge"] = "Kaliber 12"
L["mw19_caliber_338"] = ".338 Norma Mag"
L["mw19_caliber_45-70"] = ".45-70 Regering"
L["mw19_caliber_bolt"] = "508mm Pil"
L["mw19_caliber_300"] = ".300 Win Mag"
L["mw19_caliber_50bmg"] = ".50 BMG"
L["mw19_caliber_357"] = ".357 Magnum"
L["mw19_caliber_50p"] = ".50 Pistol"

/////////// Country of Origin -- UO
L["mw19_country"] = "Ursprungsland1"

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
L["mw19_country_japan"] = "Japan"

/////////// Manufacturer
L["mw19_manufacturer"] = "Tillverkare2" -- UO

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
L["mw19_weight"] = "Vikt (Laddad)4"
L["mw19_weight_val"] = "%s kg / ~%s lb"

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
L["mw19_category_weapon_ar"] = "Automatkarbiner"
L["mw19_category_weapon_smg"] = "Kulsprutepistoler"
L["mw19_category_weapon_shotgun"] = "Hagelbössor"
L["mw19_category_weapon_lmg"] = "Kulsprutor"
L["mw19_category_weapon_marksman"] = "Marksman-Gevär"
L["mw19_category_weapon_sniper"] = "Prickskyttegevär"
L["mw19_category_weapon_melee"] = "Närstridsvapen"
L["mw19_category_weapon_throwable"] = "Dödlig & Taktisk Utrustning"

L["mw19_category_weapon_handgun"] = "Sidovapen"
L["mw19_category_weapon_handgun_akimbo"] = "Sidovapen (Akimbo)"
L["mw19_category_weapon_launcher"] = "Kastare"

/////////// Weapon Classes
L["mw19_class_weapon_ar"] = "Automatkarbin"
L["mw19_class_weapon_smg"] = "Kulsprutepistol"
L["mw19_class_weapon_shotgun"] = "Hagelbössa"
L["mw19_class_weapon_lmg"] = "Lätt Kulspruta"
L["mw19_class_weapon_marksman"] = "Marksman-Gevär"
L["mw19_class_weapon_sniper"] = "Prickskyttegevär"
L["mw19_class_weapon_melee"] = "Närstridsvapen"
L["mw19_class_weapon_lethal"] = "Lethal"
L["mw19_class_weapon_tactical"] = "Tactical"
L["mw19_class_weapon_grenade"] = "Granat" -- UO

L["mw19_class_weapon_handgun"] = "Pistol"
L["mw19_class_weapon_launcher"] = "Kastare"

//////////////////////////////////////////////////////////////////////
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

-- Specific to Handguns
L["mw19_category_triggeraction"] = "Avtryckare"

-- Specific to the R9-0 Shotgun
L["mw19_category_pumps"] = "Pumphandtag"

-- Specific to the 725 Shotgun
L["mw19_category_guard"] = "Skydd"

-- Specific to the VLK Rogue Shotgun
L["mw19_category_pumpgrip"] = "Pumpgrepp"

-- Specific to the Crossbow Marksman Rifle
L["mw19_category_cable"] = "Kabel"
L["mw19_category_arms"] = "Armar"
L["mw19_category_bolt"] = "Pil"

-- Specific to the SP-R 208 Marksman Rifle
L["mw19_category_boltassembly"] = "Bultmontering"

-- Custom ones for the addon
L["mw19_category_ammo"] = "Ammo" -- UO
L["mw19_category_function"] = "Funktionalitet" -- UO
L["mw19_category_grip"] = "Framgrepp" -- UO
L["mw19_category_misc"] = "Diverse" -- UO
L["mw19_category_rails"] = "Skenor" -- UO
L["mw19_category_receiver"] = "Låda" -- UO
L["mw19_category_skins"] = "Utseenden" -- UO
L["mw19_category_slide"] = "Slide" -- UO, "Pistol Slide"
L["mw19_category_stats"] = "Statistik" -- UO
L["mw19_category_view"] = "Vy" -- UO

//////////////////// Folder Names
-- Stocks
L["mw19_folder_tube2"] = "Rör" -- UO

-- Other
L["mw19_folder_other2"] = "Annat" -- UO
L["mw19_folder_side2"] = "Sida" -- UO

//////////////////// Firemodes
-- L["mw19_firemode_pump"] = "PUMP"

L["mw19_firemode_single"] = "ENKEL" -- UO
L["mw19_firemode_double"] = "DUBBEL" -- UO
L["mw19_firemode_throwable"] = "KASTBAR" -- UO
L["mw19_firemode_plant"] = "UTPLACERBAR" -- UO, "Plant" the bomb
L["mw19_firemode_melee"] = "NÄRSTRID" -- UO
L["mw19_firemode_lockon"] = "SPÅRNING" -- UO
L["mw19_firemode_lockon_top"] = "SPÅRNING (FRÅN OVAN)" -- UO
L["mw19_firemode_guided"] = "STYRD" -- UO
L["mw19_firemode_unguided"] = "OSTYRD" -- UO

//////////////////////////////////////////////////////////////////////
///////////////////////////// Base Attachments
-- Stats
L["mw19_optic_stat_zoom2"] = "Zoom-nivå" -- Most scopes
L["mw19_ammo_stat_ignite_chance"] = "Vid träff: Chans att tända fyr på offret" -- UO

////////////////////  Default Scopes
L["cod2019_optic_default_svd.printname"] = "Standard Riktmedel" -- UO
L["cod2019_optic_default_svd.compactname"] = "Standard" -- UO
L["cod2019_optic_default_svd.description"] = "Standard <color=100,255,100>5,5x</color> riktmedel till Dragunov. <color=255,100,100>Riktmedel glimb synlig till fienden.</color>"

L["cod2019_optic_default_hdr.description"] = "Riktmedel med <color=100,255,100>6,0x</color> zoom-nivå till HDR. <color=255,100,100>Riktmedel glimb synlig till fienden.</color>"

L["cod2019_optic_default_ax50.description"] = "Riktmedel med <color=100,255,100>5,5x</color> zoom-nivå till AX50. <color=255,100,100>Riktmedel glimb synlig till fienden.</color>"

L["cod2019_optic_default_rytec.description"] = "Riktmedel med <color=100,255,100>4,5x</color> zoom-nivå till Rytec AMR. <color=255,100,100>Riktmedel glimb synlig till fienden.</color>"

L["cod2019_optic_default_strela.description"] = "Sikte med <color=100,255,100>3,0x</color> zoom-nivå till Strela-P."

L["cod2019_optic_default_m32.printname"] = "MGL-32 Granattillsats Sikte"
L["cod2019_optic_default_m32.compactname"] = "MGL GTS"
L["cod2019_optic_default_m32.description"] = "Sikte med <color=100,255,100>3,5x</color> zoom-nivå till MGL-32."

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
L["cod2019_ammo_db.description"] = "Brandpatroner som har en chans att tända fyr på måltavlor vid träff." -- UO

L["cod2019_ammo_he.printname"] = "Explosiva Patroner" -- UO
L["cod2019_ammo_he.compactname"] = "HE" -- UO
L["cod2019_ammo_he.description"] = "Explosiv ammunition som offrar direkt skada för att kunna göra skada i en radie runt träffpunkten.\nEffekten är spektakulär men väldigt lite sprängmedel kan sättas in i patronerna." -- UO

////////// Shotgun Ammo
L["cod2019_ammo_sg_magnum.printname"] = "8.5mm Magnum Hagelskott" -- UO
L["cod2019_ammo_sg_magnum.compactname"] = "MAG" -- UO
L["cod2019_ammo_sg_magnum.description"] = "Högt kraftfull hagelskott laddade med färre men större hagelskott.\nErbjuder bättre kraft i närstrid men värre räckvidd och träffsäkerhet." -- UO

L["cod2019_ammo_sg_slug.printname"] = "70mm Helhål Sluggpatron" -- UO
L["cod2019_ammo_sg_slug.compactname"] = "SLUGG" -- UO
L["cod2019_ammo_sg_slug.description"] = "En enkel projektil laddad i en hagelpatron.\nDet aerodynamiska skottet har mycket högre effektiv räckvidd." -- UO

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
L["cod2019_etc_ammo_extend.description"] = "Anpassat förstorat magasin som innehåller <color=100,255,100>33%</color> mer ammunition." -- UO

L["cod2019_attach_grip_support.printname"] = "Stöd för Framgrepp" -- UO
L["cod2019_attach_grip_support.compactname"] = "Stöd F." -- UO
L["cod2019_attach_grip_support.description"] = "Tillåter installering av framgrepp på pistoler. <color=255,100,100>Kan inte sätta på lasrar också.</color>" -- UO

L["cod2019_view_alt_pistol.printname"] = "Alternativ Vy" -- UO
L["cod2019_view_alt_pistol.compactname"] = "Alt. Vy" -- UO
L["cod2019_view_alt_pistol.description"] = "Alternativ siktvy." -- UO

L["cod2019_attach_laser_rail.printname"] = "Lasertillbehör" -- UO
L["cod2019_attach_laser_rail.compactname"] = "Lasertill." -- UO
L["cod2019_attach_laser_rail.description"] = "Tillåter installering av lasersikten på ditt vapen." -- UO

L["cod2019_attach_laser_rail_2.description"] = "Tillåter installering av smål, cylindriska lasersikten på ditt vapen." -- UO

////////////////////  Grips
L["cod2019_attach_grip_foregrip_side.printname"] = "ARC-Framgrepp" -- UO
L["cod2019_attach_grip_foregrip_side.compactname"] = "ARC" -- UO
L["cod2019_attach_grip_foregrip_side.description"] = "Extended foregrip reduces vertical recoil and provides stability from the hip for fast-paced guerrilla tactics." -- cod2019_grips_merc.description

L["cod2019_grips_none.printname"] = "Alternativt Hållande" -- UO
L["cod2019_grips_none.compactname"] = "Alt. Håll." -- UO
L["cod2019_grips_none.description"] = "Alternativ hållningsstil." -- UO

L["cod2019_grips_none2.printname"] = "Alternativt Hållande II" -- UO
L["cod2019_grips_none2.compactname"] = "Alt. Håll. II" -- UO

L["cod2019_grips_alt_cclamp.printname"] = "C-Clamp-Hållande" -- UO
L["cod2019_grips_alt_cclamp.compactname"] = "C-Clamp" -- UO

L["cod2019_grips_alt_nocclamp.printname"] = "Ingen C-Clamp-Hållande" -- UO
L["cod2019_grips_alt_nocclamp.compactname"] = "Ingen C-C" -- UO

////////////////////  Perks
L["cod2019_perks_soh.printname"] = "Fingerfärdighet"
L["cod2019_perks_soh.compactname"] = "FF"
L["cod2019_perks_soh.description"] = "Träna att ladda om snabbare under press."

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

L["cod2019_perks_burst_2.description"] = "Ändrar skjutläget till <color=100,255,100>2-skott</color>salvo."

L["cod2019_perks_super_sprint.printname"] = "Taktisk Sprint" -- UO
L["cod2019_perks_super_sprint.compactname"] = "Tak. Sprint" -- UO
L["cod2019_perks_super_sprint.description"] = "Erbjuder en justerad hållning när du springer. Tar bort upp till <color=100,255,100>20%</color> rörelsehastighet sänkning i sprint med kostnad på spring-till-sikte hastighet." -- UO

L["cod2019_perks_auto.printname"] = "Helautomat" -- UO
L["cod2019_perks_auto.compactname"] = "Auto." -- UO
L["cod2019_perks_auto.description"] = "Ändrar skjutläget till <color=100,255,100>helautomat</color>." -- UO

////////////////////  Scopes
L["cod2019_model680_iron.printname"] = "Ta Bort Siktfäste" -- UO
L["cod2019_model680_iron.compactname"] = "Ta Bort S." -- UO
L["cod2019_model680_iron.description"] = "Tar bort siktfästet på Modell 680 vilket gör den mer slät." -- UO

////////////////////  Stocks
L["cod2019_stock_vlk.printname"] = "VLK Rogue Kolv" -- UO
L["cod2019_stock_vlk.compactname"] = "Rogue" -- UO
L["cod2019_stock_vlk.description"] = "Kolv designad för rörlighet i siktet." -- mw19stockdesc.light

L["cod2019_stock_amax.printname"] = "CR-56 AMAX Kolv" -- UO
L["cod2019_stock_amax.compactname"] = "AMAX" -- UO
L["cod2019_stock_amax.description"] = "Ultralätt kolv ökar hastigheten på vapenhantering och rörelse med kostnad på stabilitet i siktet." -- mw19stockdesc.vlight

L["cod2019_stock_slima.printname"] = "KP RAAL Kolv" -- UO
L["cod2019_stock_slima.compactname"] = "KP RAAL" -- UO
L["cod2019_stock_slima.description"] = "Taktisk och effektiv kolv designad för närstrid. Får dig snabbare på målet." -- mw19stockdesc.medium

L["cod2019_stock_m4.printname"] = "M4A1 Kolv" -- UO
L["cod2019_stock_m4.compactname"] = "M4A1" -- UO
L["cod2019_stock_m4.description"] = "Tung kolv som låter dig hålla ditt sikte stadigt för träffsäkra skott." -- mw19stockdesc.heavy

L["cod2019_stock_origin12.printname"] = "Hagelbössa Origin 12 Kolv" -- UO
L["cod2019_stock_origin12.compactname"] = "Origin 12" -- UO

L["cod2019_m32_stock_retract.printname"] = "Förkortad Kolv" -- UO
L["cod2019_m32_stock_retract.compactname"] = "Förkortad" -- UO
L["cod2019_m32_stock_retract.description"] = "Förkortar kolven för att tillåta <color=100,255,100>högre rörlighet.</color>" -- UO

////////////////////  Buffer Tubes
L["cod2019_stock_tube.printname"] = "FTAC Lätt Bufferrör" -- UO
L["cod2019_stock_tube.compactname"] = "FTAC L." -- UO
L["cod2019_stock_tube.description"] = "Bufferrör gjort av aluminium. Tillåter installering av kolvar från eftermarknaden." -- UO

L["cod2019_stock_tube_vlk.printname"] = "VLK Bufferrör" -- UO
L["cod2019_stock_tube_vlk.compactname"] = "VLK" -- UO
L["cod2019_stock_tube_vlk.description"] = "Anpassat bufferrör som tillåter installering av kolvar från eftermarknaden." -- UO

L["cod2019_stock_tube_origin12.printname"] = "FTAC Bufferrör" -- UO
L["cod2019_stock_tube_origin12.compactname"] = "FTAC" -- UO
L["cod2019_stock_tube_origin12.description"] = "Tungt bufferrör som tillåter installering av kolvar från eftermarknaden" -- UO

////////////////////  EFT (Escape from Tarkov) Support
L["cod2019_eft_grips.printname"] = "\"Escape from Tarkov\"-Stöd" -- UO
L["cod2019_eft_grips.compactname"] = "EFT" -- UO
L["cod2019_eft_grips.description"] = "Tillåter installering av framgrepp från \"<color=255,255,100>Escape from Tarkov</color>\"-tilläggen.\n\nNotera: Inte optimerad - kan orsaka <color=255,100,100>visuella glitchar</color>.\n\"Ergonomics\" har <color=255,100,100>ingen effekt</color>." -- UO

L["cod2019_eft_muzzle.description"] = "Tillåter installering av mynningstillbehör från \"<color=255,255,100>Escape from Tarkov</color>\"-tilläggen.\n\nNotera: Inte optimerad - kan orsaka <color=255,100,100>visuella glitchar</color>.\n\"Ergonomics\" har <color=255,100,100>ingen effekt</color>." -- UO

L["cod2019_eft_scopes.description"] = "Tillåter installering av riktmedel från \"<color=255,255,100>Escape from Tarkov</color>\"-tilläggen.\n\nNotera: Inte optimerad - kan orsaka <color=255,100,100>visuella glitchar</color>.\n\"Ergonomics\" har <color=255,100,100>ingen effekt</color>." -- UO

L["cod2019_eft_stocks.description"] = "Tillåter installering av kolvar från \"<color=255,255,100>Escape from Tarkov</color>\"-tilläggen.\n\nNotera: Inte optimerad - kan orsaka <color=255,100,100>visuella glitchar</color>.\n\"Ergonomics\" har <color=255,100,100>ingen effekt</color>." -- UO

////////////////////  GSR (Gunsmith Reloaded) Support
L["cod2019_attach_support_gsr_laser_pstl.printname"] = "\"Gunsmith Reloaded\"-Stöd" -- UO
L["cod2019_attach_support_gsr_laser_pstl.compactname"] = "GSR" -- UO
L["cod2019_attach_support_gsr_laser_pstl.description"] = "Tillåter installering av lasertillbehör från \"<color=255,255,100>Gunsmith Reloaded</color>\"-tillägget.\n\nNotera: Inte optimerad - kan orsaka <color=255,100,100>visuella glitchar</color>." -- UO

L["cod2019_attach_support_gsr_optics.description"] = "Tillåter installering av riktmedel från \"<color=255,255,100>Gunsmith Reloaded</color>\"-tillägget.\n\nNotera: Inte optimerad - kan orsaka <color=255,100,100>visuella glitchar</color>." -- UO

L["cod2019_attach_support_gsr_muzzles.description"] = "Tillåter installering av mynningstillbehör från \"<color=255,255,100>Gunsmith Reloaded</color>\"-tillägget.\n\nNotera: Inte optimerad - kan orsaka <color=255,100,100>visuella glitchar</color>." -- UO

L["cod2019_attach_support_gsr_grips.description"] = "Tillåter installering av framgrepp från \"<color=255,255,100>Gunsmith Reloaded</color>\"-tillägget.\n\nNotera: Inte optimerad - kan orsaka <color=255,100,100>visuella glitchar</color>." -- UO

////////////////////  Custom Crossbow Ammo
L["cod2019_ammo_crossbow_rock.printname"] = "FTAC Boulder 30g Sten" -- UO
L["cod2019_ammo_crossbow_rock.compactname"] = "Boulder" -- UO
L["cod2019_ammo_crossbow_rock.description"] = "Ersätter dem aerodynamiska pilarna med en <color=100,255,100>sten</color>.\n\nFör den <color=100,255,100>stonern</color> i oss alla." -- UO

L["cod2019_ammo_crossbow_he.printname"] = "FTAC Kontakt 508 mm Pilar" -- UO
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
L["mw19_weapon_nade_thermite_alt"] = "Thermitgranat"

L["mw19_weapon_nade_flash"] = "Distraktionsgranat"
L["mw19_weapon_nade_stun"] = "Chockgranat"
L["mw19_weapon_nade_smoke"] = "Rökgranat"
L["mw19_weapon_nade_snapshot"] = "Snapshot-Granat"
L["mw19_weapon_nade_heartbeat"] = "Hjärtslagssensor"
L["mw19_weapon_nade_stim"] = "Stimulant"
L["mw19_weapon_nade_decoy"] = "Lockbetsgranat"
L["mw19_weapon_nade_gas"] = "Gasgranat"

L["mw19_weapon_minigun"] = "Gatlingkulspruta"-- UO
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
L["mw19_weapon_ak47_desc"] = "Väldigt pålitlig automatkarbin matad med 7,62mm Sovjet. Stor kaliber ammunition kräver skicklighet att kontrollera rekylen."
L["mw19_weapon_ram7_desc"] = "Helautomatisk automatkarbin av typen bullpup med en kompakt design som tillåter lättare strider på nära håll."
L["mw19_weapon_grau_desc"] = "Detta modulära 5,56-vapen plattformen är lätt och manövrerbar med utmärkt räckvidd. Precisionstillverkning och världsklass eftermarknadspipor ger detta vapen extrem potential.."
L["mw19_weapon_cr56_desc"] = "Denna lätta 7,62 x 39mm helautomatiska automatkarbinen är kompakt och kraftfull. Byggd exklusivt för militär användning, detta standardgeväret är dödligt vid måttliga räckvidder och är lätt konfiguerbar för diverse angreppstaktiker."
L["mw19_weapon_an94_desc"] = "Toppmodern 5,45x39mm rysk automatkarbin ned en unik <color=255,255,100>hyper-salvo</color> funktion. Det första skottet vid varje avtryckning skjuter ett snabbt 2-skottsalvo innan den uppfattade rekylen känns, vilket skapar en tajt grupp kloster med ökad skadepotential. Denna mekanisk matas med ett kantat magasin, och en fram- och återgående låda hjälper hålla kontroll över rekylen."
L["mw19_weapon_asval_desc"] = "Matad med <color=255,255,100>subsonisk</color> 9x39mm och internt <color=255,255,100>ljuddämpad</color>, AS VAL är ett kraftfullt vapen gjort för smygande, träffsäkerhet och penetrering. Detta vapen är bäst i händerna på en operatör som kan hantera den tunga rekylen och höga eldhastigheten."

L["mw19_weapon_aug_desc"] = "Modulär och helautomatiskt vapen konfiguerad för rörlighet och närstridsangrepp."
L["mw19_weapon_p90_desc"] = "En helautomatisk bullpup-kulsprutepistol. Det unika toppmonterade magasinet håller högre antal, hög hastighet 5.7 x 28mm ammunition."
L["mw19_weapon_mp5_desc"] = "Helautomatisk 9mm kulsprutepistol. En perfekt balans av stabilitet, förlighet och dödlighet."
L["mw19_weapon_uzi_desc"] = "En helautomatisk kulsprutepistol med öppen bult. Enkel, stadig, effektiv."
L["mw19_weapon_pp19_desc"] = "Välbalanserad, helautomatisk kulsprutepistol med högkapacitets spiralmagasin."
L["mw19_weapon_mp7_desc"] = "Designad att vara kompakt, detta helautomatiska vapnet har en hög eldhastighet och låg rekyl."
L["mw19_weapon_striker_desc"] = "En hårdträffande kulsprutepsitol matad med .45 Auto som kommer strimlar vid längre räckvidder än andra vapen i dess klass. Måttlig eldhastighet håller vapnet under kontroll under automateld."
L["mw19_weapon_fennec_desc"] = "En aggressiv helautomatisk kulsprutepistol med smörslät rekyl och en flammande eldhastighet som är utmärkt för strategisk rensning av rum och att hålla framlinjen ren."
L["mw19_weapon_iso_desc"] = "Precisionstillverkad 9mm kulsprutepistol med en snabb eldhastighet. Detta lätta och pålitliga eldvapen designades att kontrollera slagfältets närstrider."
L["mw19_weapon_cx9_desc"] = "Utmärkt manövrering och snabb eldhastighet gör denna blowback-hanterad KPist. ett formidabelt vapen i närstridsangrepp."

L["mw19_weapon_m680_desc"] = "Pålitlig, välbalanserad kaliber 12 pumprepeter hagelbössa."
L["mw19_weapon_r90_desc"] = "Dubbla pipor erbjuder två snabba skott innan omladdning."
L["mw19_weapon_725_desc"] = "Dubbelstudsare hagelbössa med 2-skott kapacitet. En lång bakhål pipa och cylindrisk choke håller spridningen tajt och dödlig över förlängda räckvidder."
L["mw19_weapon_origin12_desc"] = "Halvautomatisk hagelbössa med stor ammunitionskapacitet tillåter kontinuerlig eld. Effektiv på nära distanser."
L["mw19_weapon_vlk_desc"] = "En rörlig kaliber 12, magasinmatad hagelbössa från VLK med omfattande alternativ att anpassa räckvidd, stabilitet, och manövrering."
L["mw19_weapon_aa12_desc"] = "Helautomatisk hagelbössa med öppen bult med ett rekylsänkande gaslåssystem. Denna stridshagelbössa skickar ut höga volym av hagel mot måltavlan i en stadig hastighet."

L["mw19_weapon_pkm_desc"] = "Helautomatisk lätt kulspruta som skjuter 7,62mm ammunition med hög skada med en måttlig eldhastighet."
L["mw19_weapon_sa87_desc"] = "Helautomatisk lätt kulspruta av typen bullpup. Lägre eldhastighet och 5,56mm ammunition håller detta geväret stabilt och effektivt vid långa räckvidder."
L["mw19_weapon_m91_desc"] = "Kraftig lätt kulspruta offrar rörlighet för stabilitet. Hög kaliber kontinuerlig eld kommer neutralisera måltavlor vid längre räckvidder."
L["mw19_weapon_mg34_desc"] = "Helautomatiskt vapen med en hög eldhastighet och bestraffanda 7,62 Mauser-ammunition. Räddade kulsprutor från andra världskriget är fortfarande pålitliga och dödliga på slagfältet."
L["mw19_weapon_holger_desc"] = "Mångsidigt, helautomatisk 5,56mm lätt kulspruta. Modulär design kan konfigueras till en bred lista av strider."
L["mw19_weapon_bruen_desc"] = "Denna luftnedkylda, öppen bult, 5,56 lätta kulsprutan har en konkurrenskraftig eldhastighet och utmärkt stabilitet som kommer dominera mitten-till-lång distans slagfälten."
L["mw19_weapon_finn_desc"] = "En väldigt lätt, öppen bult 5,56 kulspruta med en låg eldhastighet och avancerade rekylkontroller vilket ger FiNN utmärkt träffsäkerhet under automateld."
L["mw19_weapon_raal_desc"] = "\"Reconnaissance Auxiliary Assault Lightweight Machine Gun\" använder en låg eldhastighet med en fram- och återgående pipa för att kontra den kraftfulla .338 Norma Mag-rekylen. Avancerad konstruering av titan håller vikten hanterlig."

L["mw19_weapon_ebr_desc"] = "Halvautomatiskt marksman-gevär för långa distanser balanserar eldhastighet med dödlighet."
L["mw19_weapon_mk2_desc"] = "Väldigt träffsäker bygelrepetergevär. Kommer neutralisera en fiende med ett välplacerat skott till huvudet eller bröstkorgen."
L["mw19_weapon_kar98_desc"] = "Cylinderrepetergevär matad med 7,62 Mauser. En relik från andra världskriget som fortfarande är extremt dödlig i händerna på en rebell krypskytt."
L["mw19_weapon_crossbow_desc"] = "Tyst och rörlig, denna hög prestanda armborst skjuter 510mm pilar med utmärkt dödlighet. Exklusiv anpassning, distinkt funktionalitet, och unika ammunitionstyper placerar detta vapnet i dess egna klass. Standard 510mm pilar kan återhämtas och är oupptäckbara av trofésystem."
L["mw19_weapon_sks_desc"] = "Lätt, halvautomatisk Karbin matat med 7,62x39mm. Detta hårt träffande och rörliga Sovjetiska gevär fokuserar på nytta istället för träffsäkerhet. Den prunkar en snabbare eldhastighet än andra vapen i dess klass, men ett välplacerat skott kan eliminera behovet av efterföljande skott helt och hållet. Denna klassiska DMR har sett många strider, och dess unika vapensmide konfigueringar reflekterar en mångfaldig servicehistorik."
L["mw19_weapon_spr_desc"] = "Pålitlig, hårt träffande .300 Win cylinderrepetergevär från Sloan Precision. Detta vapens omfattande militära och civila användning ger ett överflöd av anpassningsalternativ."

L["mw19_weapon_dragunov_desc"] = "En Sovjetisk arbetshäst matad med 7,62x54mmR. Denna gaslåssystem, halvautomatiska prickskyttegeväret tillåter för snabba efterföljande skott."
L["mw19_weapon_hdr_desc"] = "Cylinderrepeter antimaterialgevär matad med 12,7x108mm ammunition. 745 gr kulor har en lägre mynningshastighet men är katastrofal vid längre räckvidder."
L["mw19_weapon_ax50_desc"] = "Hårt träffande cylinderrepeter prickskyttegevär med kaliber .50 BMG ammunition. Dess volfram drivspegel-doppade kulor är snabba och kraftfulla, men kräver träffsäkra skott vid längre distanser."
L["mw19_weapon_rytec_desc"] = "Detta halvautomatiska antimaterialgeväret är matad med .50 BMG för dominerande angrepp på långa räckvidder. En 25x59mm sprängmedel version är officiellt nämnd som \"experimental\", men har skickats ut på flertal hemliga uppdrag med hög effektivitet."

L["mw19_weapon_shield_desc"] = "Skottsäker och explosivt skyddande sköld med ökad närstridsskada."

L["mw19_weapon_glock_desc"] = "Halvautomatisk pistol matad med .45 ACP ammunition. Pålitlig reserv om du befinner dig i närstridsanfall."
L["mw19_weapon_1911_desc"] = "Ett välbalanserat, halvautomatiskt sidovapen med en måttlig eldhastighet. Lite mer räckvidd än din normala .45 ACP pistol."
L["mw19_weapon_357_desc"] = "\"Double Action\"-revolver skjuter .357 Magnum-ammunition för kraftfull skada vid förlängda räckvidder."
L["mw19_weapon_m19_desc"] = "Halvautomatisk 9mm pistol, utmärkt stabilitet med en snabb eldhastighet."
L["mw19_weapon_deagle_desc"] = "Det mest kraftfulla halvautomatiska handvapnet tillgängligt, gör hög skada upp till mellanliggande räckvidd."
L["mw19_weapon_m9_desc"] = "Välbalanserad halvautomatisk 9mm pistol. Detta anspråkslösa sidovapnet utmärker sig i närstridsangrepp och har vapensmide förmågor unikt till pistolklassen vilket tillåter diverse strategier till strider."
L["mw19_weapon_makarov_desc"] = "Pålitlig reservvapen i närstrid, detta \"double-/single-action\"-sidovapen har ett antal anpassade vapensmide modifikationer vilket gör den till ett utestående tillägg till vilken arsenal som helst."

L["mw19_weapon_pila_desc"] = "Portabel infraröd luftvärnsrobot med ett fritt skjutlägesalternativ. Självstyrda robotar har en högre hastighet och måttlig explosiv avkastning."
L["mw19_weapon_strela_desc"] = "Rekylfri 84mm raketgevär skjuter en explosiv projektil i väldigt hög hastighet. Den oguidade pansarbrytande granaten har en låg explosiv avkastning, men är förödande mot fordon vid kontakt."
L["mw19_weapon_javelin_desc"] = "Portabel \"Fire-and-forget\" pansarvärnsrobot med hög explosiv avkastning. Infraröd guidade missiler använder en \"top-attack\"-teknik vilket garanterar förstörelse av tungt bepansrade fordon."
L["mw19_weapon_rpg_desc"] = "Oguidad, raketdrivet raketgevär skjuter en söligare projektil med en hög explosiv avkastning."
L["mw19_weapon_mgl_desc"] = "Snabbskjutande granatkastare matad med en roterande cylinder som håller 6 skott. Kan använda flertal olika 40mm-granater för diverse roller." -- UO

L["mw19_weapon_knife_desc"] = "En taktisk kniv för närstrid. Standard militärutrustning, utdelad för snabba, tysta och dödliga våtarbeten."
L["mw19_weapon_stick_desc"] = "Dubbla batonger tillåter operatörer att närma deras måltavlor med otrolig rörlighet. Stadig och lätt design tillåter snabba angrepp för zonering av dina fiender."
L["mw19_weapon_sword_desc"] = "Handsmidda blad av kolstål erbjuder det vassaste möjliga alternativet för att ljudlöst slajsa din väg genom dina fiender."

L["mw19_weapon_nade_claymore_desc"] = "Närhetsaktiverad explosiv mina."
L["mw19_weapon_nade_frag_desc"] = "Handgrant med armerbar rivtändare."
L["mw19_weapon_nade_molotov_desc"] = "Hemmagjord eldgranat som sprängs vid kontakt."
L["mw19_weapon_nade_c4_desc"] = "Stort sprängmedel som fastnar på ytor som kan fjärrdetoneras med {ATTACK} när utrustningen är slut.\n\nDubbeltryckning av {USE} spränger alltid sprängmedlen."
L["mw19_weapon_nade_semtex_desc"] = "Klistergranat med timer."
L["mw19_weapon_nade_knife_desc"] = "Återhämtningsbar kniv som kan snabbt kastas för att ljudlöst eliminera fiender."
L["mw19_weapon_nade_proximity_desc"] = "Närhetsaktiverad sprängmedel som orsakar tunga skador till fordon."
L["mw19_weapon_nade_thermite_desc"] = "Sprängmedel som starkt brinner under en kort tid efter träff. Fastnar på ytor."

L["mw19_weapon_nade_flash_desc"] = "Bländer och dövar offer."
L["mw19_weapon_nade_stun_desc"] = "Saktar ned offrets rörelse och sikte."
L["mw19_weapon_nade_smoke_desc"] = "Skickar ut en rökskärm som blockerar vyn."
L["mw19_weapon_nade_snapshot_desc"] = "Erbjuder en tillfällig blick av fiender inne i sprängområdet till din trupp."
L["mw19_weapon_nade_heartbeat_desc"] = "En platta som visar ungefärlig information om nära fiender."
L["mw19_weapon_nade_stim_desc"] = "Militär stimulerande medel som bränner stridssår och förfriskar Taktisk Sprint."
L["mw19_weapon_nade_decoy_desc"] = "Spiongranat som simulerar falsk vapeneld och radarsignaturer för att förvirra fienden."
L["mw19_weapon_nade_gas_desc"] = "Exploderar vid kontakt med marken och släpper ut ett dröjande moln av tårgas som orsakar saktar ner rörelsen, orsakar suddig vy och hostande."

L["mw19_weapon_minigun_desc"] = "Portabel gatlingkulspruta med en väldigt hög eldhastighet." -- UO
L["mw19_weapon_fists_desc"] = "När allt annat misslyckas så får du slå din väg ut. Kom ihåg att knytnävarna inte kräver omladdning, så dem är alltid snabba." -- UO
L["mw19_weapon_nade_rock_desc"] = "När du behöver träffa en fiende med ett \"inte lika dödligt\" föremål, eller när du behöver orsaka en distraktion för att smyga dig förbi vakter." -- UO
