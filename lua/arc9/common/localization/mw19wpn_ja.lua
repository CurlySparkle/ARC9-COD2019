L = {} -- Japanese, UO by ??

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
L["mw19_caliber_762mmr"] = "7.62×54mmR"
L["mw19_caliber_762mauser"] = "7.62 Mauser"
L["mw19_caliber_545"] = "5.45×39mm"
L["mw19_caliber_127x55"] = "12.7×55mm"
L["mw19_caliber_127x108"] = "12.7×108mm"
L["mw19_caliber_939"] = "9×39mm"
L["mw19_caliber_919"] = "9mm Parabellum"
L["mw19_caliber_57x28"] = "5.7×28mm"
L["mw19_caliber_918"] = "9mm Makarov"
L["mw19_caliber_46x30"] = "4.6×30mm"
L["mw19_caliber_45acp"] = ".45 ACP"
L["mw19_caliber_12gauge"] = "12 Gauge"
L["mw19_caliber_338"] = ".338ノルママグナム"
L["mw19_caliber_45-70"] = ".45-70 Government"
L["mw19_caliber_bolt"] = "20.0\" ボルト"
L["mw19_caliber_300"] = ".300 ウィンチェスター マグナム"
L["mw19_caliber_50bmg"] = ".50 BMG"
L["mw19_caliber_357"] = ".357 Magnum"
L["mw19_caliber_50p"] = ".50 pistol"

/////////// Country of Origin -- UO
-- L["mw19_country"] = "Country of Origin1"

L["mw19_country_austria"] = "オーストリア"
L["mw19_country_belgium"] = "ベルギー"
L["mw19_country_czechrepublic"] = "チェコ共和国"
L["mw19_country_france"] = "フランス"
L["mw19_country_germany"] = "ドイツ"
L["mw19_country_israel"] = "イスラエル"
L["mw19_country_italy"] = "イタリア"
L["mw19_country_russia"] = "ロシア"
L["mw19_country_southafrica"] = "南アフリカ"
L["mw19_country_sovietunion"] = "ソ連"
L["mw19_country_sweden"] = "スウェーデン"
L["mw19_country_switzerland"] = "スイス"
L["mw19_country_uk"] = "イギリス"
L["mw19_country_usa"] = "米国"
L["mw19_country_japan"] = "日本"

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
L["mw19_category_weapon_ar"] = "アサルトライフル"
L["mw19_category_weapon_smg"] = "サブマシンガン"
L["mw19_category_weapon_shotgun"] = "ショットガン"
L["mw19_category_weapon_lmg"] = "ライトマシンガン"
L["mw19_category_weapon_marksman"] = "マークスマンライフル"
L["mw19_category_weapon_sniper"] = "スナイパーライフル"
L["mw19_category_weapon_melee"] = "近接武器"
L["mw19_category_weapon_throwable"] = "リーサル、タクティカル"

L["mw19_category_weapon_handgun"] = "ハンドガン"
L["mw19_category_weapon_handgun_akimbo"] = "ハンドガン (デュアル)"
L["mw19_category_weapon_launcher"] = "ランチャー"

/////////// Weapon Classes
L["mw19_class_weapon_ar"] = "アサルトライフル"
L["mw19_class_weapon_smg"] = "サブマシンガン"
L["mw19_class_weapon_shotgun"] = "ショットガン"
L["mw19_class_weapon_lmg"] = "ライトマシンガン"
L["mw19_class_weapon_marksman"] = "マークスマンライフル"
L["mw19_class_weapon_sniper"] = "スナイパーライフル"
L["mw19_class_weapon_melee"] = "近接武器"
L["mw19_class_weapon_lethal"] = "リーサル"
L["mw19_class_weapon_tactical"] = "タクティカル"
L["mw19_class_weapon_grenade"] = "手榴弾" -- UO

L["mw19_class_weapon_handgun"] = "ハンドガン"
L["mw19_class_weapon_launcher"] = "ランチャー"

//////////////////////////////////////////////////////////////////////
///////////////////////////// Attachments
//////////////////// Customize
L["mw19_category_camouflage"] = "迷彩"
L["mw19_category_reticle"] = "レティクル"
L["mw19_category_charm"] = "チャーム"
L["mw19_category_sticker"] = "ステッカー"

//////////////////// Attachment Categories
L["mw19_category_muzzle"] = "マズル"
L["mw19_category_barrel"] = "バレル"
L["mw19_category_laser"] = "レーザー"
L["mw19_category_optic"] = "サイト"
L["mw19_category_stock"] = "ストック"
L["mw19_category_underbarrel"] = "アンダーバレル"
L["mw19_category_magazine"] = "マカジン"
L["mw19_category_reargrip"] = "リアグリップ"
L["mw19_category_perk"] = "PERK"

-- Specific to Handguns
L["mw19_category_triggeraction"] = "トリガーアクション"

-- Specific to the R9-0 Shotgun
L["mw19_category_pumps"] = "ポンプ"

-- Specific to the 725 Shotgun
L["mw19_category_guard"] = "ガード"

-- Specific to the VLK Rogue Shotgun
L["mw19_category_pumpgrip"] = "ポンプグリップ"

-- Specific to the Crossbow Marksman Rifle
L["mw19_category_cable"] = "ケーブル"
L["mw19_category_arms"] = "アーム"
L["mw19_category_bolt"] = "ボルト"

-- Specific to the SP-R 208 Marksman Rifle
L["mw19_category_boltassembly"] = "組立式ボルト"

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
L["mw19_optic_stat_zoom2"] = "ズーム倍率" -- Most scopes
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
L["cod2019_perks_soh.printname"] = "スライハンド"
L["cod2019_perks_soh.compactname"] = "スライハンド"
L["cod2019_perks_soh.description"] = "切迫した状況でのリロード速度を上げる"

L["cod2019_perks_speedmelee.printname"] = "高速近接"
L["cod2019_perks_speedmelee.compactname"] = "高速近接"
L["cod2019_perks_speedmelee.description"] = "素早くとどめの近接攻撃を繰り出す"

L["cod2019_perks_heavyhitter.printname"] = "ヘビーヒッター"
L["cod2019_perks_heavyhitter.compactname"] = "ヘビーヒッター"
L["cod2019_perks_heavyhitter.description"] = "近接攻撃によって敵をスタン"

-- L["cod2019_perks_enforcer.printname"] = "Enforcer" -- UO
-- L["cod2019_perks_enforcer.compactname"] = "Enforcer" -- UO
-- L["cod2019_perks_enforcer.description"] = "Grants the user 30% resistance to all damage." -- UO

-- L["cod2019_perks_bolt.printname"] = "Deft Hands" -- UO
-- L["cod2019_perks_bolt.compactname"] = "Deft" -- UO
-- L["cod2019_perks_bolt.description"] = "Training with your weapon allows you to cycle the weapon faster." -- UO

-- L["cod2019_perks_slamfire.printname"] = "Slamfire" -- UO
-- L["cod2019_perks_slamfire.compactname"] = "Slamfire" -- UO
-- L["cod2019_perks_slamfire.description"] = "Bruteforce the weapon to fire and cycle the weapon much quicker at the cost of reduced accuracy." -- UO

L["cod2019_perks_burst.printname"] = "バースト"
L["cod2019_perks_burst.compactname"] = "バースト"
L["cod2019_perks_burst.description"] = "<color=100,255,100>3点</color>バーストに切替"

L["cod2019_perks_burst_2.description"] = "<color=100,255,100>2点</color>バーストに切替"

-- L["cod2019_perks_super_sprint.printname"] = "Tactical Sprint" -- UO
-- L["cod2019_perks_super_sprint.compactname"] = "Tac. Sprint" -- UO
-- L["cod2019_perks_super_sprint.description"] = "Provides an altered stance when sprinting. Cancels out up to <color=100,255,100>20%</color> sprint speed reduction at the cost of reduced sprint-to-fire speed." -- UO

L["cod2019_perks_auto.printname"] = "Full Auto" -- UO
L["cod2019_perks_auto.compactname"] = "Auto" -- UO
L["cod2019_perks_auto.description"] = "Changes fire mode to <color=100,255,100>fully automatic</color>." -- UO

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

L["mw19_weapon_akimbo"] = "%s デュアル"

L["mw19_weapon_nade_claymore"] = "クレイモア"
L["mw19_weapon_nade_frag"] = "フラグ"
L["mw19_weapon_nade_molotov"] = "モロトフ"
L["mw19_weapon_nade_c4"] = "C4"
L["mw19_weapon_nade_semtex"] = "セムテックス"
L["mw19_weapon_nade_knife"] = "投げナイフ"
L["mw19_weapon_nade_proximity"] = "センサーマイン"
L["mw19_weapon_nade_thermite"] = "テルミット"
L["mw19_weapon_nade_thermite_alt"] = "テルミット手榴弾" -- UO

L["mw19_weapon_nade_flash"] = "フラッシュ"
L["mw19_weapon_nade_stun"] = "スタン"
L["mw19_weapon_nade_smoke"] = "スモーク"
L["mw19_weapon_nade_snapshot"] = "スナップショット"
L["mw19_weapon_nade_heartbeat"] = "心拍センサー"
L["mw19_weapon_nade_stim"] = "ステイム"
L["mw19_weapon_nade_decoy"] = "デコイ"
L["mw19_weapon_nade_gas"] = "ガス"

-- L["mw19_weapon_minigun"] = "Minigun" -- UO
-- L["mw19_weapon_fists"] = "Fists" -- UO
-- L["mw19_weapon_nade_rock"] = "Rock" -- UO

//////////// Weapon Descriptions
L["mw19_weapon_kilo141_desc"] = "人間工学に基づいて設計された全自動アサルトライフル。優れたハンドリングと連射速度で安定して標的を狙える"
L["mw19_weapon_fal_desc"] = "セミオートの戦闘用ライフル。連射速度が速く、狙いを外した後もすぐに追い撃ち可能"
L["mw19_weapon_m4a1_desc"] = "フルオートの多目的戦闘用ライフル。射撃を制御し、長距離で絶大な力を発揮する"
L["mw19_weapon_fr556_desc"] = "ブルパップ方式の3点バーストライフル。中距離戦で非常に高い威力を発揮"
L["mw19_weapon_oden_desc"] = "ブルパップ方式の全自動ライフル。連射速度は遅いが威力の高い12.7x55mm弾を使用"
L["mw19_weapon_m13_desc"] = "ショートストロークピストン式の全自動アサルトライフル。高い連射速度と低い反動を両立"
L["mw19_weapon_scar_desc"] = "大口径の全自動ライフル。長距離でも高威力を発揮"
L["mw19_weapon_ak47_desc"] = "7.62mm口径のソ連製自動アサルトライフル。大口径の弾薬は反動を制御するスキルが求められる"
L["mw19_weapon_ram7_desc"] = "フルオートのブルパップ式。コンパクトなデザインにより近距離戦に適応"
L["mw19_weapon_grau_desc"] = "射程距離が非常に長く、軽量で小回りの利くモジュール式5.56mm武器。精密工学とワールドクラスのアフターマーケット製バレルがこの武器の威力を最大限に引き出す"
L["mw19_weapon_cr56_desc"] = "コンパクトながら威力を備えた軽量の7.62 x 39mmフルオート。軍用に製造された標準的なライフル。中距離戦で威力を発揮し、様々な戦術を展開可能"
L["mw19_weapon_an94_desc"] = "ユニークな射撃機能を備えた最先端の5.45x39mmmロシア製アサルトライフル。トリガーを引いて強い反動を感じる前に即座に2連バーストを実行。弾を集束化させてダメージを増加させるこの仕組みは傾斜マガジンにより実現。またレシプロ式レシーバーにより反動を制御"
L["mw19_weapon_asval_desc"] = "9x39mm<color=255,255,100>サブソニック弾</color>を装弾する完全<color=255,255,100>消音</color>この銃は、ステルス性、命中率、貫通力にフォーカスして設計された。強い反動と高い連射速度を制御できるオペレーターが扱えば優れた武器となる"

L["mw19_weapon_aug_desc"] = "接近戦用に機動性を高めた全自動SMG"
L["mw19_weapon_p90_desc"] = "ブルパップ方式自動サブマシンガン。上部に搭載されたユニークなマガジンホールドにより高速の5.7x26mm弾を携行可能"
L["mw19_weapon_mp5_desc"] = "全自動9mm口径サブマシンガン。安定性、機動力、威力の全てをバランス良く整える"
L["mw19_weapon_uzi_desc"] = "全自動のオープンボルト方式SMG。シンプルで安定性が高く効果的"
L["mw19_weapon_pp19_desc"] = "大容量のヘリカルマガジンを搭載するバランスの取れた自動SMG"
L["mw19_weapon_mp7_desc"] = "コンパクトな設計の全自動SMG。連射速度が高く、反動は少ない"
L["mw19_weapon_striker_desc"] = ".45 オートを使用する高威力のサブマシンガン。クラス最高の射程距離を誇る。中程度の連射速度でフルオート時の制御性に優れる"
L["mw19_weapon_fennec_desc"] = "攻撃力の高いフルオートのサブマシンガン。反動を抑制し連射速度に優れる。屋内での敵掃討や前線を維持する際に活躍"
L["mw19_weapon_iso_desc"] = "高い連射速度を誇る9mm使用のサブマシンガン。軽量デザインにより接近戦で有用"
L["mw19_weapon_cx9_desc"] = "機動性と連射速度に優れるブローバック方式のSMG。接近戦で恐るべき性能を発揮"

L["mw19_weapon_m680_desc"] = "信頼性が高くバランスの取れた12ゲージのポンプアクションショットガン"
L["mw19_weapon_r90_desc"] = "ダブルバレルにより、再装填する前に素早く2連射可能"
L["mw19_weapon_725_desc"] = "中折式ショットガン。2発装填可能。長いバックボアの銃身とシリンダーチョークにより散弾がまとまり、比較的長距離でも威力を発揮"
L["mw19_weapon_origin12_desc"] = "装弾数が多く連射可能な半自動のショットガン。近距離で効果を発揮"
L["mw19_weapon_vlk_desc"] = "VLK社製の12ゲージショットガン。射程の調整が利き、安定性や小回りに優れる"
L["mw19_weapon_aa12_desc"] = "全自動のオープンボルト方式ショットガン。反動を抑えるガスブローバック方式で安定した射撃が可能。長距離でも安定した射撃が可能なため幅広い戦況で有用"

L["mw19_weapon_pkm_desc"] = "7.62mm弾使用の全自動LMG。中程度の連射速度と高い威力"
L["mw19_weapon_sa87_desc"] = "ブルパップ方式の全自動LMG。連射速度は遅いが、小口径の5.56mm弾を用いるため安定性が高く、遠距離で効果を発揮"
L["mw19_weapon_m91_desc"] = "機動性に劣るが優れた安定性を誇る頑丈なLMG。大口径弾で長距離の敵も無力化"
L["mw19_weapon_mg34_desc"] = "7.92口径モーゼル弾を素早く連射可能な高威力の全自動LMG。第二次世界大戦から蘇ったマシンガンは今もなお戦場で脅威となる"
L["mw19_weapon_holger_desc"] = "5.56mm使用のフルオート。モジュール式なので幅広い射程に対応するよう組立可能"
L["mw19_weapon_bruen_desc"] = "オープンボルト方式、5.56mm使用のライトマシンガン。優れた連射速度と安定性は中～長距離で本領を発揮"
L["mw19_weapon_finn_desc"] = "発射速度が遅く、高度な反動制御を備えた超軽量オープンボルト方式5.56マシンガン。FiNNに並外れたフルオートの命中率を付与"
L["mw19_weapon_raal_desc"] = "偵察にも使用される軽量タイプ。連射速度は低いが往復動バレルにより高威力の.338ノルママグナムを低反動で使用可能。最先端のチタン構造により扱いやすい重量を実現"

L["mw19_weapon_ebr_desc"] = "半自動の長距離用ライフル。威力と連射速度のバランスに優れる"
L["mw19_weapon_mk2_desc"] = "命中率の高いレバーアクション式ライフル。頭部から胸部に命中させれば1発で敵をキル可能"
L["mw19_weapon_kar98_desc"] = "7.62モーゼル弾のボルトアクションライフル。第二次世界大戦の遺物だが反抗心のあるマークスマンが握れば今でも非常に強力"
L["mw19_weapon_crossbow_desc"] = "素早く静かに高威力ボルトを撃ち出すクロスボウ。特別なカスタマイズに、他と一線を画す機能性、特殊なボルトの使用によってクラス内でも個性を放つ。標準の20インチボルトは回収可能、またトロフィーシステムに感知されない"
L["mw19_weapon_sks_desc"] = "7.62x39mmを用いる軽量のセミオートカービン。この強力で小回りの利くソ連製ライフルは、命中率よりも実用性を重視。同クラスの他の武器を凌駕する連射速度を誇る上に、追い撃ちの必要性がない程の威力を発揮。歴戦をくぐり抜けてきたこのクラシックなDMRは独特の構造を持ち、様々なガンスミスによる歴史が刻み込まれている"
L["mw19_weapon_spr_desc"] = "信頼性と高い威力を誇るSloan Precision社製の.300 ウィンチェスターボルトアクション。軍と民間で幅広く使用されており、豊富なカスタマイズが可能"

L["mw19_weapon_dragunov_desc"] = "7.62mmx54mm弾使用のガス圧作動方式セミオートスナイパーライフル。素早い追い撃ちが可能"
L["mw19_weapon_hdr_desc"] = "12.7x108mm弾を装填した対物ボルトアクション式スナイパーライフル。745グレイン弾は銃口初速度は遅いものの、超遠距離で絶大な威力を誇る"
L["mw19_weapon_ax50_desc"] = "威力の高い50口径弾を用いるボルトアクション式スナイパーライフル。タングステン製の貫通弾で速度と威力が増したが、長距離から狙うには精密なショットが必要"
L["mw19_weapon_rytec_desc"] = ".50 BMG弾を用いるセミオートの対物ライフル。長距離からの狙撃に最適。「試作品」として登録された25x59mm高性能爆弾薬のバリアントだが、これまで様々な機密任務でその威力を発揮"

L["mw19_weapon_shield_desc"] = "防弾耐性と爆発耐性を兼ね備える。近接攻撃ダメージも向上"

L["mw19_weapon_glock_desc"] = "45口径ACP弾を用いる半自動ハンドガン。接近戦で頼りになる"
L["mw19_weapon_1911_desc"] = "45口径ACP弾を用いる半自動ハンドガン。バランスがよく中程度の連射速度。平均よりわずかに射程距離が長い"
L["mw19_weapon_357_desc"] = ".357マグナム弾を使用するダブルアクションのリボルバー。比較的長距離でも高い威力を発揮"
L["mw19_weapon_m19_desc"] = "9mm口径弾を用いる半自動ハンドガン。安定性が非常に高く、優れた連射速度を誇る"
L["mw19_weapon_deagle_desc"] = "最も強力な半自動ハンドガン。近～中距離にかけて高い威力を発揮"
L["mw19_weapon_m9_desc"] = "セミオートの9mmハンドガン。近距離戦で確実な威力を発揮し、クラス内で最もバリエーション豊かなカスタマイズの選択肢により様々な使い方が出来る"
L["mw19_weapon_makarov_desc"] = "接近戦で頼りになるダブルアクション/シングルアクションサイドアーム。一部カスタムMODも使用可能でどんな装備にも優位に働く"

L["mw19_weapon_pila_desc"] = "無誘導オプションを備えた携帯式の赤外線地対空ミサイル。自走ミサイルは高速で中程度の爆発力を持つ"
L["mw19_weapon_strela_desc"] = "84mm無反動砲は超高速で爆発物を発射する。非誘導の徹甲弾の爆発力は小さい物の、直撃すれば車両に絶大な威力を発揮"
L["mw19_weapon_javelin_desc"] = "自動追尾型の携帯ミサイルランチャーで高い爆発力を誇る。弾道軌道を描く赤外線誘導ミサイルにより、重装甲車両を破壊可能"
L["mw19_weapon_rpg_desc"] = "非誘導型の自走式ロケットランチャー。低速で高い爆発力の爆弾を発射"
L["mw19_weapon_mgl_desc"] = "歩兵携行の回転式グレネードランチャー。着弾時に爆発する40mm弾を使用" -- UO --from mw3(2023)

L["mw19_weapon_knife_desc"] = "接近戦用のタクティカルナイフ。軍標準仕様で素早く静かに敵を仕留める"
L["mw19_weapon_stick_desc"] = "対象と素早く距離を詰められる1対の警棒。頑丈かつ軽量なデザインは敵に連打の応酬を与える"
L["mw19_weapon_sword_desc"] = "人の手により鍛え上げられた炭素鋼の刀。鋭利な刃が音を立てずに敵を切り裂く"

L["mw19_weapon_nade_claymore_desc"] = "敵が近づくと爆発する地雷"
L["mw19_weapon_nade_frag_desc"] = "爆破のタイミングが調整可能なグレネード"
L["mw19_weapon_nade_molotov_desc"] = "着弾時に爆発する強化焼夷弾"
L["mw19_weapon_nade_c4_desc"] = "対象の表面に張り付く大型爆薬。装備が枯渇した場合に{ATTACK}を使用して起爆させることができる。\n\n{USE}をダブルタップすると必ず起爆する"
L["mw19_weapon_nade_semtex_desc"] = "時限式の粘着グレネード"
L["mw19_weapon_nade_knife_desc"] = "殺傷能力が高く回収可能なナイフ"
L["mw19_weapon_nade_proximity_desc"] = "車両に大ダメージを与える感圧センサー付の爆発物"
L["mw19_weapon_nade_thermite_desc"] = "着弾後しばらくの間激しく燃焼。どんな表面にも付着"

L["mw19_weapon_nade_flash_desc"] = "ターゲットの視覚と聴覚を奪う"
L["mw19_weapon_nade_stun_desc"] = "敵の動きとエイム速度を減速"
L["mw19_weapon_nade_smoke_desc"] = "視界を遮り自動照準システムを妨げる煙幕を展開"
L["mw19_weapon_nade_snapshot_desc"] = "範囲内にいる敵の情報を一定時間取得"
L["mw19_weapon_nade_heartbeat_desc"] = "付近の敵の大まかな情報を表示するタブレット端末"
L["mw19_weapon_nade_stim_desc"] = "傷口を焼灼し、タクティカルダッシュを可能にする軍人用の興奮剤"
L["mw19_weapon_nade_decoy_desc"] = "発砲やレーダー信号を偽装して敵をかく乱する防諜装置"
L["mw19_weapon_nade_gas_desc"] = "着弾と同時に催涙ガスを放出。敵は咳込み、視界がぼやけ、移動速度が低下"

L["mw19_weapon_minigun_desc"] = "7.62 NATO弾を使用するガトリングガン" -- UO
-- L["mw19_weapon_fists_desc"] = "When all else fails, punch your way out. Remember, fists do not require reloading, so they are always quick." -- UO
-- L["mw19_weapon_nade_rock_desc"] = "For when you need to hit an enemy with a \"non-lethal\" item, or if you need to provide a distraction in order to sneak past guards." -- UO
