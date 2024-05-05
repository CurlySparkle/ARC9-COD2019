L = {} -- Italian, UO by ??

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

L["mw19_caliber_556"] = "NATO 5,56"
L["mw19_caliber_762"] = "NATO 7,62"
L["mw19_caliber_762soviet"] = "Soviet 7,62"
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
L["mw19_caliber_12gauge"] = "Calibro 12"
L["mw19_caliber_338"] = "Caricatore .338 Norma"
L["mw19_caliber_45-70"] = ".45-70 Government"
L["mw19_caliber_bolt"] = "Dardo 20.0\""
L["mw19_caliber_300"] = "Win Mag .300"
L["mw19_caliber_50bmg"] = ".50 BMG"
L["mw19_caliber_357"] = ".357 Magnum"
L["mw19_caliber_50p"] = "Pistola calibro .50"

/////////// Country of Origin -- UO
-- L["mw19_country"] = "Country of Origin1"

L["mw19_country_austria"] = "Austria"
L["mw19_country_belgium"] = "Belgio"
L["mw19_country_czechrepublic"] = "Repubblica Ceca"
L["mw19_country_france"] = "Francia"
L["mw19_country_germany"] = "Germania"
L["mw19_country_israel"] = "Israele"
L["mw19_country_italy"] = "Italia"
L["mw19_country_russia"] = "Russia"
L["mw19_country_southafrica"] = "Sudafrica"
L["mw19_country_sovietunion"] = "Unione Sovietica"
L["mw19_country_sweden"] = "Svezia"
L["mw19_country_switzerland"] = "Svizzera"
L["mw19_country_uk"] = "Regno Unito"
L["mw19_country_usa"] = "Stati Uniti"
L["mw19_country_japan"] = "Giappone"

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
L["mw19_category_weapon_ar"] = "Fucili d'assalto"
L["mw19_category_weapon_smg"] = "Mitragliette"
L["mw19_category_weapon_shotgun"] = "A canna liscia"
L["mw19_category_weapon_lmg"] = "Mitragliatrice leggere"
L["mw19_category_weapon_marksman"] = "Fucili tattici"
L["mw19_category_weapon_sniper"] = "Ficili di precisione"
L["mw19_category_weapon_melee"] = "Mischia"
L["mw19_category_weapon_throwable"] = "Letale & Tattico"

L["mw19_category_weapon_handgun"] = "Pistole"
L["mw19_category_weapon_handgun_akimbo"] = "Pistole (Doppia arma)"
L["mw19_category_weapon_launcher"] = "Lanciatori"

/////////// Weapon Classes
L["mw19_class_weapon_ar"] = "Fucile d'assalto"
L["mw19_class_weapon_smg"] = "Mitraglietta"
L["mw19_class_weapon_shotgun"] = "Fucile a canna liscia"
L["mw19_class_weapon_lmg"] = "Mitragliatrice leggera"
L["mw19_class_weapon_marksman"] = "Fucile tattico"
L["mw19_class_weapon_sniper"] = "Fucile di precisione"
L["mw19_class_weapon_melee"] = "Mischia"
L["mw19_class_weapon_lethal"] = "Letale"
L["mw19_class_weapon_tactical"] = "Taqttico"
L["mw19_class_weapon_grenade"] = "Granata" -- UO

L["mw19_class_weapon_handgun"] = "Pistola"
L["mw19_class_weapon_launcher"] = "Lanciatore"

//////////////////////////////////////////////////////////////////////
///////////////////////////// Attachments
//////////////////// Customize
L["mw19_category_camouflage"] = "Mimetica"
L["mw19_category_reticle"] = "Mirino"
L["mw19_category_charm"] = "Portafortuna"
L["mw19_category_sticker"] = "Adesivo"

//////////////////// Attachment Categories
L["mw19_category_muzzle"] = "Volata"
L["mw19_category_barrel"] = "Canna"
L["mw19_category_laser"] = "Laser"
L["mw19_category_optic"] = "Ottica"
L["mw19_category_stock"] = "Calcio"
L["mw19_category_underbarrel"] = "Sottocanna"
L["mw19_category_magazine"] = "Caricatore"
L["mw19_category_reargrip"] = "Impugnatura"
L["mw19_category_perk"] = "Specialità"

-- Specific to Handguns
L["mw19_category_triggeraction"] = "Azione grilletto"

-- Specific to the R9-0 Shotgun
L["mw19_category_pumps"] = "Pompe"

-- Specific to the 725 Shotgun
L["mw19_category_guard"] = "Guardia"

-- Specific to the VLK Rogue Shotgun
L["mw19_category_pumpgrip"] = "Impugnatura pompa"

-- Specific to the Crossbow Marksman Rifle
L["mw19_category_cable"] = "Cavo"
L["mw19_category_arms"] = "Braccia"
L["mw19_category_bolt"] = "Dardo"

-- Specific to the SP-R 208 Marksman Rifle
L["mw19_category_boltassembly"] = "Sicura"

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
L["mw19_optic_stat_zoom2"] = "Livello zoom" -- Most scopes
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
L["cod2019_perks_soh.printname"] = "Gioco di prestigio"
L["cod2019_perks_soh.compactname"] = "GDP"
L["cod2019_perks_soh.description"] = "Ricarichi piü in fretta nelle situazioni più concitate."

L["cod2019_perks_speedmelee.printname"] = "Corpo a corpo rapido"
L["cod2019_perks_speedmelee.compactname"] = "CaC R."
L["cod2019_perks_speedmelee.description"] = "Esegui attacchi corpo a corpo con grande valocità."

L["cod2019_perks_heavyhitter.printname"] = "Martellata"
L["cod2019_perks_heavyhitter.compactname"] = "Martellata"
L["cod2019_perks_heavyhitter.description"] = "Gli attacchi corpo a corpo hanno un maggiore effetto stordente sui bersagli."

-- L["cod2019_perks_enforcer.printname"] = "Enforcer" -- UO
-- L["cod2019_perks_enforcer.compactname"] = "Enforcer" -- UO
-- L["cod2019_perks_enforcer.description"] = "Grants the user 30% resistance to all damage." -- UO

-- L["cod2019_perks_bolt.printname"] = "Deft Hands" -- UO
-- L["cod2019_perks_bolt.compactname"] = "Deft" -- UO
-- L["cod2019_perks_bolt.description"] = "Training with your weapon allows you to cycle the weapon faster." -- UO

-- L["cod2019_perks_slamfire.printname"] = "Slamfire" -- UO
-- L["cod2019_perks_slamfire.compactname"] = "Slamfire" -- UO
-- L["cod2019_perks_slamfire.description"] = "Bruteforce the weapon to fire and cycle the weapon much quicker at the cost of reduced accuracy." -- UO

L["cod2019_perks_burst.printname"] = "Scoppio"
L["cod2019_perks_burst.compactname"] = "Burst"
L["cod2019_perks_burst.description"] = "Cambia la modalità di fuoco per sparare raffiche da <color=100,255,100>3 colpi</color>."

L["cod2019_perks_burst_2.description"] = "Cambia la modalità di fuoco per sparare raffiche da <color=100,255,100>2 colpi</color>."

-- L["cod2019_perks_super_sprint.printname"] = "Tactical Sprint" -- UO
-- L["cod2019_perks_super_sprint.compactname"] = "Tac. Sprint" -- UO
-- L["cod2019_perks_super_sprint.description"] = "Provides an altered stance when sprinting. Cancels out up to <color=100,255,100>20%</color> sprint speed reduction at the cost of reduced sprint-to-fire speed." -- UO

L["cod2019_perks_auto.printname"] = "Automatica" -- UO
L["cod2019_perks_auto.compactname"] = "Auto." -- UO
L["cod2019_perks_auto.description"] = "Cambia la modalità di fuoco in <color=100,255,100>automatica</color>." -- UO

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
L["mw19_weapon_finn"] = "FiNN"
L["mw19_weapon_raal"] = "RAAL MG"

L["mw19_weapon_ebr"] = "EBR-14"
L["mw19_weapon_mk2"] = "Carabina MK2"
L["mw19_weapon_kar98"] = "Kar98k"
L["mw19_weapon_crossbow"] = "Balestra"
L["mw19_weapon_sks"] = "SKS"
L["mw19_weapon_spr"] = "SP-R 208"

L["mw19_weapon_dragunov"] = "Dragunov"
L["mw19_weapon_hdr"] = "HDR"
L["mw19_weapon_ax50"] = "AX-50"
L["mw19_weapon_rytec"] = "Rytec AMR"

L["mw19_weapon_shield"] = "Scudo antisommossa"

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

L["mw19_weapon_knife"] = "Coltello"
L["mw19_weapon_stick"] = "Bastoni Kali"
L["mw19_weapon_sword"] = "Kodachi doppie"

L["mw19_weapon_akimbo"] = "%s Doppia arma"

L["mw19_weapon_nade_claymore"] = "Claymore"
L["mw19_weapon_nade_frag"] = "Granata a frammentazione"
L["mw19_weapon_nade_molotov"] = "Bomba Molotov"
L["mw19_weapon_nade_c4"] = "C4"
L["mw19_weapon_nade_semtex"] = "Semtex"
L["mw19_weapon_nade_knife"] = "Coltello da lancio"
L["mw19_weapon_nade_proximity"] = "Mina di prossimità"
L["mw19_weapon_nade_thermite"] = "Termite"
L["mw19_weapon_nade_thermite_alt"] = "Granata Termite" -- UO

L["mw19_weapon_nade_flash"] = "Flashbang"
L["mw19_weapon_nade_stun"] = "Granata stordente"
L["mw19_weapon_nade_smoke"] = "Granata fumogena"
L["mw19_weapon_nade_snapshot"] = "Granata localizzante"
L["mw19_weapon_nade_heartbeat"] = "Sensore di battito cardiaco"
L["mw19_weapon_nade_stim"] = "Stimolante"
L["mw19_weapon_nade_decoy"] = "Granata esca"
L["mw19_weapon_nade_gas"] = "Granata a gas"

-- L["mw19_weapon_minigun"] = "Minigun"-- UO
-- L["mw19_weapon_fists"] = "Fists" -- UO
-- L["mw19_weapon_nade_rock"] = "Rock" -- UO

//////////// Weapon Descriptions
L["mw19_weapon_kilo141_desc"] = "Fucile d'assalto automatico con un design ergonomico che migliora la maneggevolezza e una cadenza stabile che rende piü preciso il puntamento."
L["mw19_weapon_fal_desc"] = "Un fucile d'assalto semiautomatico con una cadenza elevata che permette di sparare colpi in rapida successione."
L["mw19_weapon_m4a1_desc"] = "Un fucile d'assalto automatico e versatile che, controllando bene i colpi, si rivela molto efficace a distanza."
L["mw19_weapon_fr556_desc"] = "Un fucile d'assalto in configurazione bullpup che spara raffiche da 3 colpi. Una raffica ben piazzata può essere micidiale a distanze variabili."
L["mw19_weapon_oden_desc"] = "Un fucile d'assalto automatico in configurazione bullpup con una cadenza ciclica rallentata che aiuta a controllare i potenti colpi 12,7 x 55 mm."
L["mw19_weapon_m13_desc"] = "Fucile d'assalto automatico con un sistema a pistoni a corsa breve che aumentano la cadenza e riducono il rinculo."
L["mw19_weapon_scar_desc"] = "Fucile d'assalto automatico di grosso calibro che infligge danni elevati sulle lunghe distanze."
L["mw19_weapon_ak47_desc"] = "Fucile d'assalto automatico molto affidabile che spara colpi 7,62 mm Soviet. Le munizioni di grosso calibro richiedono una certa abilitå per controllare il rinculo."
L["mw19_weapon_ram7_desc"] = "Un fucile d'assalto automatico in configurazione bullpup dal design compatto. Ideale negli scontri rawicinati."
L["mw19_weapon_grau_desc"] = "Questo modello modulare da 5,56 leggero, maneggevole è dalla portata eccezionale. Tecniche di produzione ad alta precisione e canne personalizzate di prima scelta conferiscono a quest'arma un incredibile potenziale."
L["mw19_weapon_cr56_desc"] = "Questo fucile d'assalto automatico 7,62 x 39 mm è leggero, compatto e potente. Progettato esclusivamente per l'uso militare, il fucile d'ordinanza è micidiale a medio raggio e facilmente configurabile per tattiche d'assalto di vario tipo."
L["mw19_weapon_an94_desc"] = "Fucile d'assalto russo 5,45 x 39 mm con una funzione unica di <color=255,255,100>super raffica</color>. Ogni pressione del grilletto produce una rapida raffica da 2 colpi prima ancora che si percepisca l'effetto del rinculo, creando un gruppo di proiettili dall'alto potenziale di danno. Il meccanismo alimentato da un caricatore curvo e il rinculo tenuto sotto controllo da un castello alternante."
L["mw19_weapon_asval_desc"] = "Grazie alle munizioni 9x39 mm <color=255,255,100>subsoniche</color> e al <color=255,255,100>silenziatore</color> integrale, I'AS VAL è una potente arma che Offre furtività, precisione e penetrazione. Eccelle nelle mani degli operatori capaci di controllare il forte rinculo e l'elevata cadenza di fuoco."

L["mw19_weapon_aug_desc"] = "Arma automatica modulare, configurata per la massima mobilità e l'efficacia a corto raggio."
L["mw19_weapon_p90_desc"] = "Una mitraglietta automatica in configurazione bullpup. Il particolare caricatore superiore incamera molte munizioni 5,7 x 28 mm ad alta velocità."
L["mw19_weapon_mp5_desc"] = "Una mitraglietta automatica che spara colpi da 9 mm. Connubio perfetto di stabilità, mobilità e letalità."
L["mw19_weapon_uzi_desc"] = "Una mitraglietta automatica a otturatore aperto. Semplice, stabile ed efficace."
L["mw19_weapon_pp19_desc"] = "Mitraglietta automatica ben bilanciata con un caricatore elicoidale ad alta capienza."
L["mw19_weapon_mp7_desc"] = "Arma automatica compatta con cadenza elevata e scarso rinculo."
L["mw19_weapon_striker_desc"] = "Questa potente mitraglietta caricata con colpi calibro .45 Auto ha una portata effettiva maggiore rispetto ad altre armi della stessa classe. La modalità di fuoco è automatica, ma la cadenza moderata aiuta a mantenere il controllo dell'arma."
L["mw19_weapon_fennec_desc"] = "Un'aggressiva mitraglietta automatica con un'ottima compensazione del rinculo e una formidabile cadenza di fuoco, l'ideale per ripulire rapidamente le stanze occupate da nemici e presidiare le prime linee."
L["mw19_weapon_iso_desc"] = "Mitraglietta da 9 mm fabbricata con grande precisione che offre un'elevata cadenza di fuoco. Quest'arma leggera e affidabile è progettata per dominare gli scontri a distanza ravvicinata."
L["mw19_weapon_cx9_desc"] = "Eccellente manovrabilità e cadenza di fuoco elevata rendono questa mitraglietta un'arma formidabile negli scontri ravvicinati."

L["mw19_weapon_m680_desc"] = "Un fucile a canna liscia con azione a pompa calibro 12, affidabile e ben bilanciato."
L["mw19_weapon_r90_desc"] = "La doppia canna permette di sparare due colpi in rapida successione, prima di dover ricaricare."
L["mw19_weapon_725_desc"] = "Fucile a canna liscia con meccanismo basculante, caricabile con 2 colpi. La canna lunga ad anima allargata e lo strozzatore cilindrico riducono la dispersione e conservano la letalità dei colpi sulle lunghe distanze."
L["mw19_weapon_origin12_desc"] = "Un fucile a canna liscia semiautomatico con un'elevata capienza di munizioni che garantisce un flusso di fuoco continuo. Efficace a corto raggio."
L["mw19_weapon_vlk_desc"] = "Un agile fucile a canna liscia calibro 12 prodotto da VLK e con numerose opzioni per modificare portata, stabilità e maneggevolezza."
L["mw19_weapon_aa12_desc"] = "Fucile a canna liscia automatico a otturatore aperto con sistema di sfiato del gas. Spara con alti volumi di fuoco a ritmo stabile."

L["mw19_weapon_pkm_desc"] = "Una mitragliatrice leggera automatica che spara munizioni da 7,62 mm con danni elevati e cadenza moderata."
L["mw19_weapon_sa87_desc"] = "Una mitragliatrice leggera automatica in configurazione bullpup. Cadenza ridotta e colpi da 5,56 mm garantiscono stabilità ed efficacia anche sulle lunghe distanze."
L["mw19_weapon_m91_desc"] = "Robusta mitragliatrice leggera che sacrifica la mobilità per aumentare la stabilità. Le raffiche di colpi di grosso calibro neutralizzano i bersagli a grande distanza."
L["mw19_weapon_mg34_desc"] = "Arma automatica dalla cadenza elevata e con potenti munizioni 7,92 Mauser. Le mitragliatrici risalenti alla Seconda Guerra Mondiale si dimostrano ancora affidabili e micidiali sul campo di battaglia."
L["mw19_weapon_holger_desc"] = "Una versatile mitragliatrice leggera automatica da 5,56 mm. II design modulare può essere configurato per un'ampia varietà di contesti operativi."
L["mw19_weapon_bruen_desc"] = "Questa mitragliatrice leggera a otturatore aperto calibro 5,56 raffreddata ad aria è caratterizzata da una cadenza competitiva e da un'eccellente stabilità che le permettono di dominare negli ingaggi a medio e lungo raggio."
L["mw19_weapon_finn_desc"] = "Una mitragliatrice 5,56 ultraleggera a otturatore aperto con una bassa cadenza ciclica e un sofisticato sistema di controllo del rinculo che garantisce un'eccezionale precisione in modalità di fuoco automatica."
L["mw19_weapon_raal_desc"] = "La mitragliatrice leggera RAAL ha una bassa cadenza di fuoco e una canna alternante che mitigano il forte rinculo del caricatore .338 Norma. La sofisticata struttura in titanio rende il peso tutto sommato gestibile."

L["mw19_weapon_ebr_desc"] = "Un fucile tattico semiautomatico a lungo raggio con un ottimo compromesso tra cadenza e letalità."
L["mw19_weapon_mk2_desc"] = "Fucile con azione a leva estremamente preciso. Neutralizza un nemico con un solo colpo ben piazzato alla testa o al petto."
L["mw19_weapon_kar98_desc"] = "Fucile a culatta mobile con munizioni 7,92 Mauser. Un cimelio della Seconda Guerra Mondiale che può essere ancora letale in mano a un tiratore scelto ribelle."
L["mw19_weapon_crossbow_desc"] = "Silenziosa e maneggevole, questa balestra ad alte prestazioni spara dardi da 20,0\" con eccezionale letalità. Personalizzazione esclusiva, funzionalità speciale e tipologia di munizioni unica sono caratteristiche che mettono quest'arma in una categoria a parte. I dardi standard da 20,0\" possono essere recuperati e non sono rilevabili dai sistemi Trophy."
L["mw19_weapon_sks_desc"] = "Carabina leggera semiautomatica caricata con munizioni 7,62 mm x 39 mm. Questo potente e agile fucile sovietico dà priorità alla versatilità sulla precisione. Garantisce una cadenza di fuoco più elevata rispetto ad altre armi della stessa classe, ma un colpo ben piazzato annulla la necessità di piazzare colpi successivi. Questo fucile tattico classico è ben collaudato e le sue configurazioni uniche ne riflettono il lungo ruolino di servizio."
L["mw19_weapon_spr_desc"] = "Fucile a culatta mobile Win .300 potente e affidabile, fabbricato da Sloan Precision. L'ampio utilizzo di quest'arma in ambito civile e militare ha favorito la creazione di numerose opzioni di personalizzazione."

L["mw19_weapon_dragunov_desc"] = "Caricato con munizioni 7,62 mm x 54 mm R, questo fucile di precisione semiautomatico sovietico con meccanismo a gas permette di sparare colpi in rapida successione."
L["mw19_weapon_hdr_desc"] = "Un fucile di precisione a culatta mobile anti-materiale che spara munizioni da 12,7 x 108 mm. I proiettili da 745 grammi hanno una minore velocità alla volata, ma sono devastanti a lunghissimo raggio."
L["mw19_weapon_ax50_desc"] = "Potente fucile di precisione a culatta mobile che spara colpi calibro .50 BMG. I proiettili con involucro in tungsteno sono veloci e potenti, ma richiedono una mira precisa sulle lunghe distanze."
L["mw19_weapon_rytec_desc"] = "Questo fucile antimateriale semiautomatico spara colpi .50 BMG per dominare negli assalti a lungo raggio. Una variante con munizioni altamente esplosive 25 x 59 mm è registrata ufficialmente come \"sperimentale\", sebbene sia già stata impiegata con ottimi risultati in diverse missioni segrete."

L["mw19_weapon_shield_desc"] = "Scudo antiproiettile e resistente agli esplosivi che infligge danni corpo a corpo maggiori."

L["mw19_weapon_glock_desc"] = "Una pistola semiautomatica che spara colpi calibro .45 ACP, efficace come ripiego in combattimenti a distanza ravvicinata."
L["mw19_weapon_1911_desc"] = "Arma da fianco semiautomatica ben bilanciata e con una cadenza moderata. Portata leggermente più ampia rispetto alla pistola calibro .45 ACP standard."
L["mw19_weapon_357_desc"] = "Revolver a doppia azione che spara colpi calibro .35? Magnum, infliggendo gravi danni a notevoli distanze."
L["mw19_weapon_m19_desc"] = "Pistola semiautomatica che spara colpi da 9 mm. Eccellente stabilità unita a una cadenza ciclica elevata."
L["mw19_weapon_deagle_desc"] = "La pistola semiautomatica più potente in assoluto. Infligge gravi danni fino a distanze intermedie."
L["mw19_weapon_m9_desc"] = "Pistola semiautomatica ben bilanciata che spara colpi da 9 mm. Quest'arma secondaria senza troppi fronzoli eccelle nei combattimenti ravvicinati e offre ampie possibilità di configurazione uniche, che le permettono di adattarsi a diverse strategie d'ingaggio."
L["mw19_weapon_makarov_desc"] = "Affidabile come ripiego negli scontri ravvicinati, quest'arma secondaria a doppia/singola azione dispone di alcune modifiche personalizzate che la rendono un'eccellente aggiunta per qualsiasi arsenale."

L["mw19_weapon_pila_desc"] = "Lanciamissili terra-aria a infrarossi portatile con opzione per fuoco libero. I missili a propulsione autonoma sono più veloci e hanno un potenziale esplosivo moderato."
L["mw19_weapon_strela_desc"] = "Lanciatore da 84 mm senza rinculo che lancia proiettili esplosivi ad alta velocità. II colpo perforante non guidato ha un basso potenziale esplosivo, ma è devastante all'impatto con i veicoli."
L["mw19_weapon_javelin_desc"] = "Missile con aggancio a guida autonoma e grande potenziale esplosivo. I missili con guida a infrarossi colpiscono dall'alto per assicurare la distruzione dei veicoli pesantemente corazzati."
L["mw19_weapon_rpg_desc"] = "Lanciarazzi senza guida a propulsione autonoma. Spara proiettili più lenti dall'alto potenziale esplosivo."
-- L["mw19_weapon_mgl_desc"] = "Rapid firing grenade launcher fed with a 6-round rotating cylinder. Can utilize a variety of 40mm rounds for various roles." -- UO

L["mw19_weapon_knife_desc"] = "Un coltello tattico corpo a corpo. Dotazione militare standard, utile per uccidere i bersagli in modo rapido e furtivo."
L["mw19_weapon_stick_desc"] = "Sfollagente a doppia impugnatura. Permette agli operatori di avvicinarsi agilmente al bersaglio. La struttura robusta ma leggera consente di effettuare attacchi rapidi e di tenere a bada il nemico."
L["mw19_weapon_sword_desc"] = "Lame in acciaio al carbonio forgiate a mano per essere il più affilate possibile e falciare silenziosamente il nemico."

L["mw19_weapon_nade_claymore_desc"] = "Mina esplosiva con sensore di prossimità."
L["mw19_weapon_nade_frag_desc"] = "Granata a frammentazione ritardabile."
L["mw19_weapon_nade_molotov_desc"] = "Ordigno incendiario improvvisato che esplode all'impatto."
L["mw19_weapon_nade_c4_desc"] = "Esplosivo di grandi dimensioni che aderisce alle superfici, detonabile a distanza con {ATTACK} quando l'equipaggiamento è esaurito.\n\nPremere due volte {USE} fa sempre detonare gli esplosivi."
L["mw19_weapon_nade_semtex_desc"] = "Granata adesiva a tempo."
L["mw19_weapon_nade_knife_desc"] = "Coltello recuperabile che può essere lanciato per eliminare i nemici in modo rapido e silenzioso."
L["mw19_weapon_nade_proximity_desc"] = "Esplosivo con innesco a prossimità che danneggia gravemente i veicoli."
L["mw19_weapon_nade_thermite_desc"] = "Esplosivo che brucia violentemente per breve tempo dopo l'impatto. Aderisce alle superfici."

L["mw19_weapon_nade_flash_desc"] = "Acceca e assorda i bersagli."
L["mw19_weapon_nade_stun_desc"] = "Rallenta movimenti e puntamento della vittima."
L["mw19_weapon_nade_smoke_desc"] = "Crea una cortina di fumo che ostruisce la visuale."
L["mw19_weapon_nade_snapshot_desc"] = "Evidenzia brevemente a beneficio della tua squadra i nemici all'interno del raggio dell'esplosione."
L["mw19_weapon_nade_heartbeat_desc"] = "Un tablet che visualizza informazioni di base sui nemici nei paraggi."
L["mw19_weapon_nade_stim_desc"] = "Stimolante militare che cauterizza le ferite subite in battaglia e ripristina all'istante lo scatto tattico."
L["mw19_weapon_nade_decoy_desc"] = "Granata che confonde il nemico simulando colpi d'arma da fuoco e segnali radar fasulli."
L["mw19_weapon_nade_gas_desc"] = "Esplode all'impatto con il terreno, sprigionando una nube di gas lacrimogeno che per breve tempo rallenta i nemici, ne ostruisce la visuale e li fa tossire."

-- L["mw19_weapon_minigun_desc"] = "Portable gatling gun with a very high cyclic rate." -- UO
-- L["mw19_weapon_fists_desc"] = "When all else fails, punch your way out. Remember, fists do not require reloading, so they are always quick." -- UO
-- L["mw19_weapon_nade_rock_desc"] = "For when you need to hit an enemy with a \"non-lethal\" item, or if you need to provide a distraction in order to sneak past guards." -- UO
