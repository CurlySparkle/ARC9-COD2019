L = {} -- Traditional Chinese, UO by ??

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

L["mw19_caliber_556"] = "5.56 NATO"
L["mw19_caliber_762"] = "7.62 NATO"
L["mw19_caliber_762soviet"] = "7.62 Soviet"
L["mw19_caliber_762mmr"] = "7.62 x 54mmR"
L["mw19_caliber_762mauser"] = "7.62 Mauser"
L["mw19_caliber_545"] = "5.45 × 39mm"
L["mw19_caliber_127x55"] = "12.7 × 55mm"
L["mw19_caliber_127x108"] = "12.7 × 108mm"
L["mw19_caliber_939"] = "9 × 39mm"
L["mw19_caliber_919"] = "9mm Parabellum"
L["mw19_caliber_57x28"] = "5.7 x 28mm"
L["mw19_caliber_918"] = "9mm Makarov"
L["mw19_caliber_46x30"] = "4.6 x 30mm"
L["mw19_caliber_45acp"] = ".45 ACP"
L["mw19_caliber_12gauge"] = "12 Gauge"
L["mw19_caliber_338"] = ".338普通彈匣"
L["mw19_caliber_45-70"] = ".45-70 Government"
L["mw19_caliber_bolt"] = "20.0\"弩箭"
L["mw19_caliber_300"] = ".300 Win Mag"
L["mw19_caliber_50bmg"] = ".50 BMG"
L["mw19_caliber_357"] = ".357 Magnum"
L["mw19_caliber_50p"] = ".50手槍"

/////////// Country of Origin -- UO
-- L["mw19_country"] = "Country of Origin1"

L["mw19_country_austria"] = "奥地利"
L["mw19_country_belgium"] = "比利时"
L["mw19_country_czechrepublic"] = "捷克共和国"
L["mw19_country_france"] = "法国"
L["mw19_country_germany"] = "德国"
L["mw19_country_israel"] = "以色列"
L["mw19_country_italy"] = "意大利"
L["mw19_country_russia"] = "俄罗斯"
L["mw19_country_southafrica"] = "南非"
L["mw19_country_sovietunion"] = "苏联"
L["mw19_country_sweden"] = "瑞典"
L["mw19_country_switzerland"] = "瑞士"
L["mw19_country_uk"] = "英国"
L["mw19_country_usa"] = "美国"
L["mw19_country_japan"] = "日本"

/////////// Manufacturer
L["mw19_manufacturer"] = "Manufacturer2" -- UO

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
L["mw19_category_weapon_ar"] = "突擊步"
L["mw19_category_weapon_smg"] = "衝鋒槍"
L["mw19_category_weapon_shotgun"] = "霰彈槍"
L["mw19_category_weapon_lmg"] = "輕機槍"
L["mw19_category_weapon_marksman"] = "射手步槍"
L["mw19_category_weapon_sniper"] = "狙擊步槍"
L["mw19_category_weapon_melee"] = "近戰"
L["mw19_category_weapon_throwable"] = "致命道具和戰術道具"

L["mw19_category_weapon_handgun"] = "手槍"
L["mw19_category_weapon_handgun_akimbo"] = "手槍 (雙武器)"
L["mw19_category_weapon_launcher"] = "發射器"

/////////// Weapon Classes
L["mw19_class_weapon_ar"] = "突擊步槍"
L["mw19_class_weapon_smg"] = "衝鋒槍"
L["mw19_class_weapon_shotgun"] = "霰彈槍"
L["mw19_class_weapon_lmg"] = "輕機槍"
L["mw19_class_weapon_marksman"] = "射手步槍"
L["mw19_class_weapon_sniper"] = "狙擊步槍"
L["mw19_class_weapon_melee"] = "近戰"
L["mw19_class_weapon_lethal"] = "致命道具"
L["mw19_class_weapon_tactical"] = "戰術道具"
L["mw19_class_weapon_grenade"] = "手榴彈" -- UO

L["mw19_class_weapon_handgun"] = "手槍"
L["mw19_class_weapon_launcher"] = "發射器"

//////////////////////////////////////////////////////////////////////
///////////////////////////// Attachments
//////////////////// Customize
L["mw19_category_camouflage"] = "迷彩"
L["mw19_category_reticle"] = "瞄準緑"
L["mw19_category_charm"] = "飾物"
L["mw19_category_sticker"] = "貼紙"

//////////////////// Attachment Categories
L["mw19_category_muzzle"] = "槍口"
L["mw19_category_barrel"] = "槍管"
L["mw19_category_laser"] = "雷射"
L["mw19_category_optic"] = "瞄準鏡"
L["mw19_category_stock"] = "槍托"
L["mw19_category_underbarrel"] = "下褂"
L["mw19_category_magazine"] = "彈匣Y"
L["mw19_category_reargrip"] = "側握把"
L["mw19_category_perk"] = "特長"

-- Specific to Handguns
L["mw19_category_triggeraction"] = "扳機"

-- Specific to the R9-0 Shotgun
L["mw19_category_pumps"] = "滑膛"

-- Specific to the 725 Shotgun
L["mw19_category_guard"] = "護木"

-- Specific to the VLK Rogue Shotgun
L["mw19_category_pumpgrip"] = "滑膛握把"

-- Specific to the Crossbow Marksman Rifle
L["mw19_category_cable"] = "弓弦"
L["mw19_category_arms"] = "弓臂"
L["mw19_category_bolt"] = "弩箭"

-- Specific to the SP-R 208 Marksman Rifle
L["mw19_category_boltassembly"] = "槍栓零件"

-- Custom ones for the addon
L["mw19_category_ammo"] = "Ammo" -- UO
L["mw19_category_function"] = "Functionality" -- UO
L["mw19_category_grip"] = "Foregrip" -- UO
L["mw19_category_misc"] = "Misc." -- UO
L["mw19_category_rails"] = "Rails" -- UO
L["mw19_category_misc"] = "Misc." -- UO
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
-- L["mw19_optic_stat_zoom2"] = "Zoom Level" -- Most scopes
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
L["cod2019_perks_soh.printname"] = "快手"
L["cod2019_perks_soh.compactname"] = "快手"
L["cod2019_perks_soh.description"] = "訓練讓亻尔在壓力下裝填更快。"

L["cod2019_perks_speedmelee.printname"] = "荷槍實彈"
L["cod2019_perks_speedmelee.compactname"] = "荷槍實彈"
L["cod2019_perks_speedmelee.description"] = "以最大儲備彈桑開始。"

L["cod2019_perks_heavyhitter.printname"] = "重型武器"
L["cod2019_perks_heavyhitter.compactname"] = "重型武器"
L["cod2019_perks_heavyhitter.description"] = "近戰曾對目標造成更强烈的暈眩效果。"

-- L["cod2019_perks_enforcer.printname"] = "Enforcer" -- UO
-- L["cod2019_perks_enforcer.compactname"] = "Enforcer" -- UO
-- L["cod2019_perks_enforcer.description"] = "Grants the user 30% resistance to all damage." -- UO

-- L["cod2019_perks_bolt.printname"] = "Deft Hands" -- UO
-- L["cod2019_perks_bolt.compactname"] = "Deft" -- UO
-- L["cod2019_perks_bolt.description"] = "Training with your weapon allows you to cycle the weapon faster." -- UO

-- L["cod2019_perks_slamfire.printname"] = "Slamfire" -- UO
-- L["cod2019_perks_slamfire.compactname"] = "Slamfire" -- UO
-- L["cod2019_perks_slamfire.description"] = "Bruteforce the weapon to fire and cycle the weapon much quicker at the cost of reduced accuracy." -- UO

L["cod2019_perks_burst.printname"] = "爆發"
L["cod2019_perks_burst.compactname"] = "爆發"
L["cod2019_perks_burst.description"] = "將射模式轉換成<color=100,255,100>3發</color>點放。"

L["cod2019_perks_burst_2.description"] = "將射模式轉換成<color=100,255,100>2發</color>點放。"

-- L["cod2019_perks_super_sprint.printname"] = "Tactical Sprint" -- UO
-- L["cod2019_perks_super_sprint.compactname"] = "Tac. Sprint" -- UO
-- L["cod2019_perks_super_sprint.description"] = "Provides an altered stance when sprinting. Cancels out up to <color=100,255,100>20%</color> sprint speed reduction at the cost of reduced sprint-to-fire speed." -- UO

L["cod2019_perks_auto.printname"] = "自动的" -- UO
L["cod2019_perks_auto.compactname"] = "自动的" -- UO
L["cod2019_perks_auto.description"] = "將射模式轉換成<color=100,255,100>自动的</color>。" -- UO

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
L["mw19_weapon_r90"] = "R9-0"
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

L["mw19_weapon_shield"] = "鎮暴盾"

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

L["mw19_weapon_knife"] = "小刀"
L["mw19_weapon_stick"] = "藤棍"
L["mw19_weapon_sword"] = "雙持小太刀"

L["mw19_weapon_akimbo"] = "%s 雙武器"

L["mw19_weapon_nade_claymore"] = "闊刀式地雷"
L["mw19_weapon_nade_frag"] = "破片手榴彈"
L["mw19_weapon_nade_molotov"] = "汽油彈"
L["mw19_weapon_nade_c4"] = "C4炸藥"
L["mw19_weapon_nade_semtex"] = "塞姆汀炸藥"
L["mw19_weapon_nade_knife"] = "投躑小刀"
L["mw19_weapon_nade_proximity"] = "感應地雷"
L["mw19_weapon_nade_thermite"] = "鋁熱劑"
L["mw19_weapon_nade_thermite_alt"] = "鋁熱劑榴彈" -- UO

L["mw19_weapon_nade_flash"] = "閃光彈"
L["mw19_weapon_nade_stun"] = "震撼彈"
L["mw19_weapon_nade_smoke"] = "烴霧彈"
L["mw19_weapon_nade_snapshot"] = "快照彈"
L["mw19_weapon_nade_heartbeat"] = "心跳感應器"
L["mw19_weapon_nade_stim"] = "興奪劑"
L["mw19_weapon_nade_decoy"] = "誘餌彈"
L["mw19_weapon_nade_gas"] = "催唳彈"

-- L["mw19_weapon_minigun"] = "Minigun"-- UO
-- L["mw19_weapon_fists"] = "Fists" -- UO
-- L["mw19_weapon_nade_rock"] = "Rock" -- UO

//////////// Weapon Descriptions
L["mw19_weapon_kilo141_desc"] = "全自動突擊步槍，睬人體工學設計，操控性更佳，射速穩定利於鎖定目標。"
L["mw19_weapon_fal_desc"] = "半自動突擊步槍，可高速連發以利後續補槍。"
L["mw19_weapon_m4a1_desc"] = "全自動、適合各腫場合的突擊步槍。只要在射擊時控制得宜，這把武器在射程内就可以發揮出很好的效果。"
L["mw19_weapon_fr556_desc"] = "3發點放的犢牛式突擊步槍。精準擊發，在各種距離都極其致命。"
L["mw19_weapon_oden_desc"] = "全自動犢牛突擊步槍，射速較慢以利於掌握12.7×55mm彈藥的强大威力。"
L["mw19_weapon_m13_desc"] = "睬用短行程活塞系統的自動突擊步槍。射速快、後座力低。"
L["mw19_weapon_scar_desc"] = "大口徑、全自動突擊步槍，可在遠程攻擊時提供强大殺傷力。"
L["mw19_weapon_ak47_desc"] = "非常可靠的自動突擊步槍，睬用7.62mm Soviet彈藥。需要技巧控制大口徑彈藥造成的後座力。"
L["mw19_weapon_ram7_desc"] = "全自動犢牛式突擊步槍，睬用密實設計，適合近距濉交戰。"
L["mw19_weapon_grau_desc"] = "此模組化的5.56武器改裝平台不僅重量輕盈，更擁有糹色佳操控性與無與倫比的射程。精密打造且搭配頂級市售槍管，讓這把武器有無窮的潛力。"
L["mw19_weapon_cr56_desc"] = "這把輕型7.62×39mm全自動突擊步槍是專為軍事用途打造，密實堅固，火力强大，這把標準配備的步槍在中程戰鬥時能發揮致命實力，並且能靈活適應不同戰鬥策略。"
L["mw19_weapon_an94_desc"] = "尖端科技的5.45×39mm俄羅斯突擊步槍，搭載獨特的<color=255,255,100>高速點放</color>功能。玩家每一次扣下扳機都會連續迅速射出兩發子彈，而後才産生强大的後座力；這樣的設計能發射密實的彈幕，提高殺傷力與破壞力。這腫機制需要有傾斜的彈匣支摒，並依靠往復式的槍機來提高控制性並壓低後座力。"
L["mw19_weapon_asval_desc"] = "ASVAL搭載<color=255,255,100>次音速</color>9×39mm膛室和内首<color=255,255,100>消曰</color>功能，火力强大，集隱蔽性、準確度和穿透力於一身，在擅於掌握强大後座力與高射速武器的特戰兵手中能發揮極致的攻擊效果。"

L["mw19_weapon_aug_desc"] = "模組化的全自動武器，高機動性，適合近戰。"
L["mw19_weapon_p90_desc"] = "自動犢牛式衝鋒槍。一腫獨特的首頂彈匣，裎面放了足量的高速5.7×28mm彈藥。"
L["mw19_weapon_mp5_desc"] = "全自動9mm衝鋒槍。在穩定性、機動性和致命性上都達到完美平衡。"
L["mw19_weapon_uzi_desc"] = "全自動開放栓動式衝鋒槍。簡單、穩定且殺傷力十足。"
L["mw19_weapon_pp19_desc"] = "重量極為平均的自動衝鋒槍，睬用高容量螺旋彈匣。"
L["mw19_weapon_mp7_desc"] = "設計輕巧，這把全自動武器射速高且後座力"
L["mw19_weapon_striker_desc"] = "搭配.45 Auto彈藥的重火力衝鋒槍，擁有比同級武器更遠的射程。中等射速讓這把槍就算是自動連發也能維持一定的穩定與操控性。"
L["mw19_weapon_fennec_desc"] = "火力强大的全自動衝鋒槍，後座力温和，其縴人射速在清仝建築或是前綿作戰時表現尤為傺出。"
L["mw19_weapon_iso_desc"] = "精工打造的高射速9mm衝鋒槍，這把極輕型的可靠武器絶對能讓玩家稱霸近戰戰場。"
L["mw19_weapon_cx9_desc"] = "這把氣體反衝式衝鋒槍擁有優巽的操控性以及高射速，在近距離作戰時是威力强大的武器。"

L["mw19_weapon_m680_desc"] = "可靠且功能全面的 1 2 鉛徑泵動式霰彈槍。"
L["mw19_weapon_r90_desc"] = "雙槍管設計，可在每次裝填子彈前快速發射"
L["mw19_weapon_725_desc"] = "折管式霰彈槍，彈匣内有 2 發子彈。睬用直徑較寬的長型槍管，配合圓柱阻氣門以縮小擴散範圍，即便遠距也相當致命。"
L["mw19_weapon_origin12_desc"] = "可裝填大量彈藥的半自動霰彈槍，可持續射擊。適合近距離戰鬥。"
L["mw19_weapon_vlk_desc"] = "VLK製作的這把霰彈槍配有12-gauge彈匣，靈活性極佳，並且有各腫選項讓玩家自由調整射程、穩定度以及操控性。"
L["mw19_weapon_aa12_desc"] = "全自動開放栓動式霰彈槍，搭載可降低後座力的氣體式槍機系統，能以穩定的射速朝遠處的敵人開火。"

L["mw19_weapon_pkm_desc"] = "全自動輕機槍，睬用7.62mm彈藥，射速中等但具有强大殺傷力。"
L["mw19_weapon_sa87_desc"] = "全自動犢牛式輕機槍。因低射速且睬用5.56mm彈藥，可穩定且有效攻擊遠程目標。"
L["mw19_weapon_m91_desc"] = "堅固耐用的輕機槍，犧牲機動性換取穩定性。能持續發射大口徑彈藥消滅遠距離目標。"
L["mw19_weapon_mg34_desc"] = "射速極快的全自動武器，睬用攻擊力强大的7.92 Mauser彈 藥。 即便是自二戰沿用至今的機槍，仍是可靠且致命的夥伴。"
L["mw19_weapon_holger_desc"] = "多元全自動5.56mm輕機槍。模組化設計，適用各種不同交戰情境。"
L["mw19_weapon_bruen_desc"] = "這把氣冷開放栓動式5.56輕機槍標榜亻桀出射速和絶佳穩定度，讓你在中程至遠程戰場都能得心應手。"
L["mw19_weapon_finn_desc"] = "極致輕盈的開放栓動式5.56機槍，循環射擊速度低，後座力抑制性能强大，使得FiNN擁有卓越的全自動準確度。"
L["mw19_weapon_raal_desc"] = "這把氣冷開放栓動式5.56輕機槍標榜亻桀出射速和絶佳穩定度，讓你在中程至遠程戰場都能得心應手。"

L["mw19_weapon_ebr_desc"] = "半自動遠程射手步槍，在射速與致命性間達到適當平衡。"
L["mw19_weapon_mk2_desc"] = "精確無比的杆動式步槍。只要精確命中頭部或胸部，就可讓敵人一槍斃命。"
L["mw19_weapon_kar98_desc"] = "栓動式步槍，睬用7.92 Mauser彈 藥。 一把二戰的古董，在反抗軍射手的手中依舊無比致叩。"
L["mw19_weapon_crossbow_desc"] = "寂靜無且敏捷如豹，這把高效率的殺傷利器可發射極為致命的20.0\"弩箭。可装備獨家客製化配件，以及使用特殊弩箭，讓這把武器獨樹一格。20.0\"標準弩箭可回收重複使用，且無法被主動防禦系統偵測。"
L["mw19_weapon_sks_desc"] = "配以7.62×39mm膛室的輕型半自動卡賓槍。這把靈活的蘇聯步槍火力强大，比起準確度更强調其操控性，其射速遥遥領先同腫類的槍枝，只要一輪彈藥就能殲滅所有的目標，省時又省事。這把經典 DMR 步槍擁有靈活的槍匠改造仝間，現在就打造一把永垂青史的名槍吧。"
L["mw19_weapon_spr_desc"] = "Sloan Precision所打造的.300 Win栓動式步槍堅實可靠，火力威猛，廣泛用於軍事與一般用途，提供最大的客製化自由度。"

L["mw19_weapon_dragunov_desc"] = "搭載7.62mmx54mmR彈藥的蘇聯製耐用武器。這把氣動式的半自動狙擊步槍讓使用者可以快速地連續開火。"
L["mw19_weapon_hdr_desc"] = "睬用12.7x108mm彈藥的反器材栓動式狙擊槍。 745 gr子彈槍口初速較低，但具有極為强大的遠距破壞力。"
L["mw19_weapon_ax50_desc"] = "威力强大、扌采用.50口徑BMG彈藥的栓動式狙擊槍。它的鎢殻尖型子彈的飛行速度很快而且火力强大，但在遠距離射擊時準確度的要求很高。"
L["mw19_weapon_rytec_desc"] = "配以.50 BMG膛室的半自動反器材步槍，在遠距攻擊的表現尤其卓越。25x59mm高爆超能配備變體雖然目前作為實驗性武器，但已在各種機密任務中發揮過糹色佳的戰力。"

L["mw19_weapon_shield_desc"] = "這面防彈又防爆的盾牌近戰傷害更高。"

L["mw19_weapon_glock_desc"] = "半自動手槍，扌采用． 45 ACP 彈 藥。 深陷近戰時，可做為有效的突圍武器。"
L["mw19_weapon_1911_desc"] = "面面俱到的半自動手槍，中等射速。射程比標準的.45 ACP手槍遠一點。"
L["mw19_weapon_357_desc"] = "雙動式左輪手槍，扌采用.357 Magnum彈 藥，即便遠程也能造成極大傷害。"
L["mw19_weapon_m19_desc"] = "半自動9mm手槍，擊發循環速度快且穩定。"
L["mw19_weapon_deagle_desc"] = "火力最强大的半自動手槍，可對中程目標造成嚴重傷害。"
L["mw19_weapon_m9_desc"] = "這把半自動9mm手槍看似不起眼，實則在近距離戰鬥中極具優勢，更能利用槍匠系統進行多變的一系列改造，適應不同交戰策略。"
L["mw19_weapon_makarov_desc"] = "當你遇到情况危急的近距離戰鬥時，這把雙動式/單動式手槍能多句幫助你全身而退；這把武器可以使用不少自訂槍匠模組，不論你的戰鬥風格如何都很值得收藏。"

L["mw19_weapon_pila_desc"] = "可两式紅外綜地對仝飛彈發射器，配有自由開火模式。自走飛彈速度較快，爆炸威力中等。"
L["mw19_weapon_strela_desc"] = "84mm無後座力發射器可以發射出行進速度極快的爆炸物。無導引的穿甲彈爆炸威力低，但是正中載具時可以造成相當大的破壞力。"
L["mw19_weapon_javelin_desc"] = "可式鎖定飛彈發射器，具有射後不理功能，爆炸威力高。經紅外導引的飛彈會垂直落下，確保擊毁重型裝甲載具。"
L["mw19_weapon_rpg_desc"] = "無導引自走火箭發射器，可以發射出行進速度較慢，但爆炸威力强的火箭。"
-- L["mw19_weapon_mgl_desc"] = "Rapid firing grenade launcher fed with a 6-round rotating cylinder. Can utilize a variety of 40mm rounds for various roles." -- UO

L["mw19_weapon_knife_desc"] = "近戰 (CQC) 戰術小刀。標準軍用配發，快速、無而致命。"
L["mw19_weapon_stick_desc"] = "雙持警棍可以讓特戰兵以敏捷的身手接近目標。堅固且輕盈的設計讓你可以迅速出擊，把敵人打到無法還手。"
L["mw19_weapon_sword_desc"] = "使用純手工鍛造的碳鋼刀刃，讓你悄無息、乾氵爭俐落地把對手切成生魚片。/"

L["mw19_weapon_nade_claymore_desc"] = "感應髑發的爆炸地雷。"
L["mw19_weapon_nade_frag_desc"] = "可延遲擲出的破片手榴彈。"
L["mw19_weapon_nade_molotov_desc"] = "撞擊後爆炸的即時燃燒裝首。"
L["mw19_weapon_nade_c4_desc"] = "可黏住物體表面的大型炸藥，當道具用完後，可以 {ATTACK} 遠端引爆。雙擊 {USE} 可直接引爆炸藥。"
L["mw19_weapon_nade_semtex_desc"] = "計時黏性榴彈。"
L["mw19_weapon_nade_knife_desc"] = "可回收的小刀，丢出可又快又安靜地擊殺敵人。"
L["mw19_weapon_nade_proximity_desc"] = "近距離觸發的炸藥，能對載具造成極大傷害。"
L["mw19_weapon_nade_thermite_desc"] = "發生碰撞後會在短時間内發出熾熱光芒的炸藥。可黏在表面上。"

L["mw19_weapon_nade_flash_desc"] = "使目標失明及失聰。"
L["mw19_weapon_nade_stun_desc"] = "被擊中的人的移動和瞄準速度慢。"
L["mw19_weapon_nade_smoke_desc"] = "釋放堙幕阻礙視綜。"
L["mw19_weapon_nade_snapshot_desc"] = "可在極短時間内讓你為你的隊伍觀察到範圍内的敵人。"
L["mw19_weapon_nade_heartbeat_desc"] = "顯示附近敵人基本杳訊的平板電腦。"
L["mw19_weapon_nade_stim_desc"] = "軍用興奮劑，可以燒灼戰鬥所造成的傷口，並且重首戰術衝刺。"
L["mw19_weapon_nade_decoy_desc"] = "反情報手榴彈，可模擬槍和雷達訊號來擾亂敵人。"
L["mw19_weapon_nade_gas_desc"] = "在撞擊地面後引爆，並釋放出持續不散的催氵戾瓦斯，造成緩速、視綿模糊和咳嗽。"

-- L["mw19_weapon_minigun_desc"] = "Portable gatling gun with a very high cyclic rate." -- UO
-- L["mw19_weapon_fists_desc"] = "When all else fails, punch your way out. Remember, fists do not require reloading, so they are always quick." -- UO
-- L["mw19_weapon_nade_rock_desc"] = "For when you need to hit an enemy with a \"non-lethal\" item, or if you need to provide a distraction in order to sneak past guards." -- UO
