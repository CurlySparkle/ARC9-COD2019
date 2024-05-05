L = {} -- Korean, UO by ??

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
L["mw19_caliber_762soviet"] = "7.62 소비에트"
L["mw19_caliber_762mmr"] = "7.62×54mmR"
L["mw19_caliber_762mauser"] = "7.62 마우저"
L["mw19_caliber_545"] = "5.45×39mm"
L["mw19_caliber_127x55"] = "12.7×55mm"
L["mw19_caliber_127x108"] = "12.7×108mm"
L["mw19_caliber_939"] = "9×39mm"
L["mw19_caliber_919"] = "9mm 파라블럼"
L["mw19_caliber_57x28"] = "5.7×28mm"
L["mw19_caliber_918"] = "9mm 마카로프"
L["mw19_caliber_46x30"] = "4.6×30mm"
L["mw19_caliber_45acp"] = ".45 ACP"
L["mw19_caliber_12gauge"] = "12게이지"
L["mw19_caliber_338"] = ".338 노마 매그넘"
L["mw19_caliber_45-70"] = ".45-70 거버던트"
L["mw19_caliber_bolt"] = "20.0\" 볼드"
L["mw19_caliber_300"] = ".300 윈체스터 매그넘"
L["mw19_caliber_50bmg"] = ".50 BMG"
L["mw19_caliber_357"] = ".357 매그넘"
L["mw19_caliber_50p"] = ".50 권총"

/////////// Country of Origin -- UO
-- L["mw19_country"] = "Country of Origin1"

L["mw19_country_austria"] = "오스트리아"
L["mw19_country_belgium"] = "벨기에"
L["mw19_country_czechrepublic"] = "체코공화국"
L["mw19_country_france"] = "프랑스"
L["mw19_country_germany"] = "독일"
L["mw19_country_israel"] = "이스라엘"
L["mw19_country_italy"] = "이탈리아"
L["mw19_country_russia"] = "러시아"
L["mw19_country_southafrica"] = "남아프리카공화국"
L["mw19_country_sovietunion"] = "소련"
L["mw19_country_sweden"] = "스웨덴"
L["mw19_country_switzerland"] = "스위스"
L["mw19_country_uk"] = "영국"
L["mw19_country_usa"] = "미국"
L["mw19_country_japan"] = "일본"

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
L["mw19_category_weapon_ar"] = "AR"
L["mw19_category_weapon_smg"] = "SMG"
L["mw19_category_weapon_shotgun"] = "샷건"
L["mw19_category_weapon_lmg"] = "LMG"
L["mw19_category_weapon_marksman"] = "DMR"
L["mw19_category_weapon_sniper"] = "SR"
L["mw19_category_weapon_melee"] = "백병전"
L["mw19_category_weapon_throwable"] = "살상 장비와 전술 장비"

L["mw19_category_weapon_handgun"] = "핸드건"
L["mw19_category_weapon_handgun_akimbo"] = "핸드건 (아킴보)"
L["mw19_category_weapon_launcher"] = "로켓 런처"

/////////// Weapon Classes
L["mw19_class_weapon_ar"] = "AR"
L["mw19_class_weapon_smg"] = "SMG"
L["mw19_class_weapon_shotgun"] = "샷건"
L["mw19_class_weapon_lmg"] = "LMG"
L["mw19_class_weapon_marksman"] = "DMR"
L["mw19_class_weapon_sniper"] = "SR"
L["mw19_class_weapon_melee"] = "백병전"
L["mw19_class_weapon_lethal"] = "살상 장비"
L["mw19_class_weapon_tactical"] = "전술 장비"
L["mw19_class_weapon_grenade"] = "수류탄" -- UO

L["mw19_class_weapon_handgun"] = "핸드건"
L["mw19_class_weapon_launcher"] = "발사기"

//////////////////////////////////////////////////////////////////////
///////////////////////////// Attachments
//////////////////// Customize
L["mw19_category_camouflage"] = "위장"
L["mw19_category_reticle"] = "조준선"
L["mw19_category_charm"] = "장식"
L["mw19_category_sticker"] = "스티커"

//////////////////// Attachment Categories
L["mw19_category_muzzle"] = "총구"
L["mw19_category_barrel"] = "총열"
L["mw19_category_laser"] = "레이저"
L["mw19_category_optic"] = "조준경"
L["mw19_category_stock"] = "개머리판"
L["mw19_category_underbarrel"] = "하부총열"
L["mw19_category_magazine"] = "탄창"
L["mw19_category_reargrip"] = "후방 손잡이"
L["mw19_category_perk"] = "특저"

-- Specific to Handguns
L["mw19_category_triggeraction"] = "방아쇠"

-- Specific to the R9-0 Shotgun
L["mw19_category_pumps"] = "펌프"

-- Specific to the 725 Shotgun
L["mw19_category_guard"] = "덮개"

-- Specific to the VLK Rogue Shotgun
L["mw19_category_pumpgrip"] = "펌프 손잡이"

-- Specific to the Crossbow Marksman Rifle
L["mw19_category_cable"] = "케이블"
L["mw19_category_arms"] = "암즈"
L["mw19_category_bolt"] = "볼트"

-- Specific to the SP-R 208 Marksman Rifle
L["mw19_category_boltassembly"] = "노리쇠 뭉치"

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
L["mw19_optic_stat_zoom2"] = "조준 배율" -- Most scopes
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
L["cod2019_perks_soh.printname"] = "빠른 손재주"
L["cod2019_perks_soh.compactname"] = "빠른 손재주"
L["cod2019_perks_soh.description"] = "훈련을 통해 더 빠르게 장전합니다."

L["cod2019_perks_speedmelee.printname"] = "빠른 백병전"
L["cod2019_perks_speedmelee.compactname"] = "빠른 백병전"
L["cod2019_perks_speedmelee.description"] = "백병전에서 더 빠르게 대처합니다."

L["cod2019_perks_heavyhitter.printname"] = "강한 일격"
L["cod2019_perks_heavyhitter.compactname"] = "강한 일격"
L["cod2019_perks_heavyhitter.description"] = "백병전 공격 시 적이 더 오래 기절합니다."

-- L["cod2019_perks_enforcer.printname"] = "Enforcer" -- UO
-- L["cod2019_perks_enforcer.compactname"] = "Enforcer" -- UO
-- L["cod2019_perks_enforcer.description"] = "Grants the user 30% resistance to all damage." -- UO

-- L["cod2019_perks_bolt.printname"] = "Deft Hands" -- UO
-- L["cod2019_perks_bolt.compactname"] = "Deft" -- UO
-- L["cod2019_perks_bolt.description"] = "Training with your weapon allows you to cycle the weapon faster." -- UO

-- L["cod2019_perks_slamfire.printname"] = "Slamfire" -- UO
-- L["cod2019_perks_slamfire.compactname"] = "Slamfire" -- UO
-- L["cod2019_perks_slamfire.description"] = "Bruteforce the weapon to fire and cycle the weapon much quicker at the cost of reduced accuracy." -- UO

L["cod2019_perks_burst.printname"] = "3점사"
L["cod2019_perks_burst.compactname"] = "Burst"
L["cod2019_perks_burst.description"] = "사격 모드를 <color=100,255,100>3점사</color>로 전환합니다."

L["cod2019_perks_burst_2.printname"] = "2점사"
L["cod2019_perks_burst_2.description"] = "사격 모드를 <color=100,255,100>2점사</color>로 전환합니다."

-- L["cod2019_perks_super_sprint.printname"] = "Tactical Sprint" -- UO
-- L["cod2019_perks_super_sprint.compactname"] = "Tac. Sprint" -- UO
-- L["cod2019_perks_super_sprint.description"] = "Provides an altered stance when sprinting. Cancels out up to <color=100,255,100>20%</color> sprint speed reduction at the cost of reduced sprint-to-fire speed." -- UO

-- L["cod2019_perks_auto.printname"] = "Full Auto" -- UO
-- L["cod2019_perks_auto.compactname"] = "Auto" -- UO
-- L["cod2019_perks_auto.description"] = "Changes fire mode to <color=100,255,100>fully automatic</color>." -- UO

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
L["mw19_weapon_oden"] = "오든"
L["mw19_weapon_m13"] = "M13"
L["mw19_weapon_scar"] = "FN Scar 17"
L["mw19_weapon_ak47"] = "AK-47"
L["mw19_weapon_ram7"] = "RAM-7"
L["mw19_weapon_grau"] = "그라우 5 56"
L["mw19_weapon_cr56"] = "CR-56 AMAX"
L["mw19_weapon_an94"] = "AN-94"
L["mw19_weapon_asval"] = "AS VAL"

L["mw19_weapon_aug"] = "AUG"
L["mw19_weapon_p90"] = "P90"
L["mw19_weapon_mp5"] = "MP5"
L["mw19_weapon_uzi"] = "우지"
L["mw19_weapon_pp19"] = "PP19 비존"
L["mw19_weapon_mp7"] = "MP7"
L["mw19_weapon_striker"] = "스트라이커 45"
L["mw19_weapon_fennec"] = "페넥"
L["mw19_weapon_iso"] = "ISO"
L["mw19_weapon_cx9"] = "CX-9"

L["mw19_weapon_m680"] = "모델 680"
L["mw19_weapon_r90"] = "R9-0"
L["mw19_weapon_725"] = "725"
L["mw19_weapon_origin12"] = "오리진 12 샷건"
L["mw19_weapon_vlk"] = "VLK 로그"
L["mw19_weapon_aa12"] = "JAK-12"

L["mw19_weapon_pkm"] = "PKM"
L["mw19_weapon_sa87"] = "SA87"
L["mw19_weapon_m91"] = "M91"
L["mw19_weapon_mg34"] = "MG34"
L["mw19_weapon_holger"] = "Holger-26"
L["mw19_weapon_bruen"] = "보루엔 Mk9"
L["mw19_weapon_finn"] = "FiNN LMG"
L["mw19_weapon_raal"] = "RAAL MG"

L["mw19_weapon_ebr"] = "EBR-14"
L["mw19_weapon_mk2"] = "MK2 카빈"
L["mw19_weapon_kar98"] = "Kar98k"
L["mw19_weapon_crossbow"] = "크로스보우"
L["mw19_weapon_sks"] = "SKS"
L["mw19_weapon_spr"] = "SP-R 208"

L["mw19_weapon_dragunov"] = "드라구노프"
L["mw19_weapon_hdr"] = "HDR"
L["mw19_weapon_ax50"] = "AX-50"
L["mw19_weapon_rytec"] = "라이텍 AMR"

L["mw19_weapon_shield"] = "진압 방패"

L["mw19_weapon_glock"] = "X16"
L["mw19_weapon_1911"] = "1911"
L["mw19_weapon_357"] = ".357"
L["mw19_weapon_m19"] = "M19"
L["mw19_weapon_deagle"] = ".50 GS"
L["mw19_weapon_m9"] = "레네티"
L["mw19_weapon_makarov"] = "시코프"

L["mw19_weapon_pila"] = "PILA"
L["mw19_weapon_strela"] = "스트렐라-P"
L["mw19_weapon_javelin"] = "JOKR"
L["mw19_weapon_rpg"] = "RPG-7"
L["mw19_weapon_mgl"] = "MGL-32"

L["mw19_weapon_knife"] = "단검"
L["mw19_weapon_stick"] = "칼리 스틱"
L["mw19_weapon_sword"] = "이도류 코다치"

L["mw19_weapon_akimbo"] = "%s 아킴보"

L["mw19_weapon_nade_claymore"] = "클레이모어"
L["mw19_weapon_nade_frag"] = "세열 수류탄"
L["mw19_weapon_nade_molotov"] = "화염병"
L["mw19_weapon_nade_c4"] = "C4"
L["mw19_weapon_nade_semtex"] = "셈텍스 수류탄"
L["mw19_weapon_nade_knife"] = "투척 단검"
L["mw19_weapon_nade_proximity"] = "근접 신관 지뢰"
L["mw19_weapon_nade_thermite"] = "테르밋"
L["mw19_weapon_nade_thermite_alt"] = "테르밋 수류탄" -- UO

L["mw19_weapon_nade_flash"] = "섬광 수류탄"
L["mw19_weapon_nade_stun"] = "기절 수류탄"
L["mw19_weapon_nade_smoke"] = "연막 수류탄"
L["mw19_weapon_nade_snapshot"] = "탐지 수류탄"
L["mw19_weapon_nade_heartbeat"] = "심박탐지기"
L["mw19_weapon_nade_stim"] = "자극제"
L["mw19_weapon_nade_decoy"] = "교란 수류탄"
L["mw19_weapon_nade_gas"] = "가스 수류탄"

-- L["mw19_weapon_minigun"] = "Minigun" -- UO
-- L["mw19_weapon_fists"] = "Fists" -- UO
-- L["mw19_weapon_nade_rock"] = "Rock" -- UO

//////////// Weapon Descriptions
L["mw19_weapon_kilo141_desc"] = "인체공학적으로 설계된 전자동 소총입니다. 조작성이 뛰어나 안정적으로 사격할 수 있습니다."
L["mw19_weapon_fal_desc"] = "연사 속도가 빨라 신속히 후속 사격을 할 수 있는 반자동 AR입 니다."
L["mw19_weapon_m4a1_desc"] = "전자동 다목적 AR입니다. 원거리에서도 조준 사격 효율이 매우 좋습니다."
L["mw19_weapon_fr556_desc"] = "3점사 불펍 AR입니다. 점사를 활용하면 장거리에서도 엄청난 살상력을 발휘합니다."
L["mw19_weapon_oden_desc"] = "불펍 전자동 AR입니다. 강력한 12.7 x 55mm탄을 발사하는 대신 사격 속도가 느립니다."
L["mw19_weapon_m13_desc"] = "쇼트 스트로크 방식으로 사격 속도가 빠르고 반동이 적은 소종입 니다."
L["mw19_weapon_scar_desc"] = "대구경 탄을 쓰는 전자동 소총입 니다. 장거리에서도 살상력이 뛰어납니다."
L["mw19_weapon_ak47_desc"] = "성능이 뛰어난 소련제 7.62mm 소총입니다. 구경이 큰 만큼 반동 제어가 까다롭습니다."
L["mw19_weapon_ram7_desc"] = "근접전에 유리한 컴팩트 디자인의 전자동 불펍 AR입니다."
L["mw19_weapon_grau_desc"] = "모듈식 5.56 총기로 가볍고 조작성이 뛰어나며 탁월한 유효 사거리를 자랑합니다. 정밀 공학, 그리고 애프터 마켓!에서 조달한 최고급 총열로 무기 의 잠재력을 최대한 끌어냈습니다."
L["mw19_weapon_cr56_desc"] = "7.62 x 39mm탄을 쓰는 강력한 경량 전자동 AR입 니다. 군용 보급형 소총으로 중거리 교전에 적합하며 다양한 전술에 맞게 커스터마이즈할 수 있습니다."
L["mw19_weapon_an94_desc"] = "뛰어난 기술을 자랑하는 러시아제 5.45x39mm AR로 <color=255,255,100>하이퍼버스트</color> 기능이 특징입니다. 방아쇠를 당길 때마다 초단 발사 후 두 번째 후속탄이 거의 반동 없이 발사되어 탄착군이 좁고 큰 피해를 줍니다. 사선으로 삽입 되는 탄창과 왕복 리시버로 반동을 잡았습니 다."
L["mw19_weapon_asval_desc"] = "AS VAL은 <color=255,255,100>아음속</color> 9x39mm탄을 쓰며 소음기가 달려있어 은밀하고 정확하게 적을 관통할 수 있습니다. 고속 사격의 반동을 제어하면 엄청난 위력을 발휘합니다."

L["mw19_weapon_aug_desc"] = "기동력과 근접전 성능이 뛰어난 모듈식 전자동 SMG입 니 다."
L["mw19_weapon_p90_desc"] = "불펍 전자동 SMG입 니다. 상단 탄창을 사용해 대량의 5.7 x 28mm 고속탄을 장전할 수 있습니다."
L["mw19_weapon_mp5_desc"] = "9mm 전자동 SMG입니다. 안정성, 기동력, 파괴력이 완벽한 균형을 이루고 있습니다."
L["mw19_weapon_uzi_desc"] = "오픈 볼트 전자동 SMG입 니다. 간단한 구조로 만들어 안정성이 뛰어납니다."
L["mw19_weapon_pp19_desc"] = "대용량 나선 탄창을 사용하는 균형 잡힌 전자동 SMG입 니다."
L["mw19_weapon_mp7_desc"] = "경량 설계 덕분에 사격 속도가 빠르고 반동이 적은 전자동 SMG입니다."
L["mw19_weapon_striker_desc"] = ".45 오토 탄을 사용하여 동종 무기 중 가장 장거리 교전에 탁월합니다. 적당한 발사 속도로 전자동 모드에서도 반동 제어가 쉽습니다."
L["mw19_weapon_fennec_desc"] = "저돌적인 전자동 SMG로 작은 반동과 엄청나게 빠른 사격 속도를 자랑하며, 전술적 우위를 점하거나 적의 전선을 돌파할 때 안성맞춤입 니다."
L["mw19_weapon_iso_desc"] = "빠른 사격 속도를 자랑하는 9mm 프리시전 SMG입니다. 접근전에 유리 하게 설계된 믿음직스러운 경량 무기입니다."
L["mw19_weapon_cx9_desc"] = "탁월한 조작성과 빠른 사격 속도를 자랑하는 블로우백 방식의 SMG로, 근접전에서 뛰어난 위력을 발휘합니다."

L["mw19_weapon_m680_desc"] = "성능이 뛰어나고 균형 잡힌 12게이지 펌프 액션 샷건입니다."
L["mw19_weapon_r90_desc"] = "이중 총열이 있어 장전하지 않고도 빠르게 두 발을 쏠 수 있습니다."
L["mw19_weapon_725_desc"] = "탄환을 2발 장전할 수 있는 브레이크 액션 샷건입니다. 백보어드 총열과 원통형 초크를 사용해 탄착군이 좁고 살상반경이 넓습니다."
L["mw19_weapon_origin12_desc"] = "탄창 용량이 커서 지속 사격에 유리한 반자동 샷건입 니다. 근접전에서 유용합니다."
L["mw19_weapon_vlk_desc"] = "가벼운 VLK제 12 게이지 샷건으로 사거리, 안정성, 조작성을 폭넓게 개조할 수 있습니다."
L["mw19_weapon_aa12_desc"] = "전자동 오픈 볼트 샷건입니다. 일정한 속도로 많은 양의 탄환을 발사하는 전투 샷건으로 반동이 작아 안정적으로 사격할 수 있습니다."

L["mw19_weapon_pkm_desc"] = "7.62mm탄을 사용하는 전자동 LMG입 니다. 평균적인 사격 속도로 큰 피해를 줍니다."
L["mw19_weapon_sa87_desc"] = "전자동 불펍 LMG로 사격 속도가 느립니다. 5.56mm탄을 사용해 장거리에서도 안정적으로 목표를 제압합니다."
L["mw19_weapon_m91_desc"] = "기동성은 떨어지지만 안정적인 LMG입니다. 장거리 교전 시에도 효과적으로 화력을 투사할 수 있습니다."
L["mw19_weapon_mg34_desc"] = "위력적인 7.92 마우저탄을 사용하는 전자동 LMG로 연사 속도가 빠릅니다. 2차 세계대전 시대의 무기지만, 여전히 신뢰할 만하며 살상력이 뛰어납니다."
L["mw19_weapon_holger_desc"] = "다양한 기능을 갖춘 전자동 5.56mm LMG입니다. 모듈식 디자인으로 다양한 교전에 사용할 수 있습니다."
L["mw19_weapon_bruen_desc"] = "탁월한 발사 속도와 뛰어난 안정성으로 중장거리 전장을 지배하는 공랭식 오픈 볼트 5.56 LMG입니다."
L["mw19_weapon_finn_desc"] = "초경량 오픈 볼트 5.56 머신 건으로, 사격 속도를 조정하고 첨단 반동 제어 테크닉을 탑재했습니다. 전자동 모드에서도 뛰어난 정확도를 자랑하는 핀을 만나보십시오."
L["mw19_weapon_raal_desc"] = "정찰용 보조 어썰트 LMG로 낮은 발사 속도와 왕복 배럴을 사용하여, 강력한 .338 노마 매그넘탄의 반동을 잡았습니다. 첨단 티타늄 구조로 경량화했습니다."

L["mw19_weapon_ebr_desc"] = "사격 속도와 살상력이 뛰어난 반자동 DMR입니다."
L["mw19_weapon_mk2_desc"] = "정확도가 뛰어난 레버 액션 소총입니다. 머리나 상체에 제대로 맞히면 적을 바로 제압할 수 있습니다."
L["mw19_weapon_kar98_desc"] = "7.92 마우저 탄을 쓰는 볼트 액션 소총입니다. 2차 세계대전 당시 물건이지만 제대로 사용하면 여전히 치명적입니다."
L["mw19_weapon_crossbow_desc"] = "은밀하며 민첩한 고성능 크로스보우로 강력한 20.0\" 볼트를 발사합니다. 뛰에난 기능을 갖춘 커스터마이즈 무기로 누구나 탐낼 걸작입니다. 20.0\" 일반 볼트는 회수할 수 있으며 트로피 시스템에 탐지되지 않습니다."
L["mw19_weapon_sks_desc"] = "7.62x39mm탄을 사용하는 소련제 경량 반자동 카빈 종으로, 정확도를 희생하는 대신 다용도로 활용할 수 있습니다. 비슷한 유형 의 무기보다 사격 속도가 빨라서 적을 제지하는 데 효과적입 니다. 수많은 전장을 겪은 DMR을 최고의 커스텀 세팅으로 만나보십시오."
L["mw19_weapon_spr_desc"] = "슬로안 프리시전의 신뢰성이 뛰어나고 파괴력이 큰 .300 윈체스터 볼트 액션 소종입 니다. 군용으로도 민수용으로도 다양하게 개조해서 쓸 수 있습니다."

L["mw19_weapon_dragunov_desc"] = "7.62mm x 54mm탄을 사용하는 러시아제 반자동 SR입 니다. 사격 속도가 빠릅니다."
L["mw19_weapon_hdr_desc"] = "12.7x108mm 탄을 쓰는 볼트 액션 대물 SR입니다. 745그레인 탄은 느리지만 초장거리에서도 위력적입니다."
L["mw19_weapon_ax50_desc"] = "50구경 BMG 탄을 사용해 저지력이 탁월한 볼트 액션 SR입니다. 텅스텐 탄은 빠르고 위력적이지만 장거리에서 신중히 쏴야 합니다."
L["mw19_weapon_rytec_desc"] = ".50 BMGäh을 사용하여 장거리 저지력이 탁월한 반자동 대물 SR입 니다. 또한, 변형으로 25)(59mm 고폭탄을 발사할 수 있으며 이 고폭탄은 아직 시험 단계이지만 다수의 작전에서 탁월한 성능을 발휘했습니다."

L["mw19_weapon_shield_desc"] = "총알과 폭탄을 효과적으로 방어하는 방패입니다. 백병전 피해도 증가합니다."

L["mw19_weapon_glock_desc"] = ".45구경 ACP 탄환을 사용하는 반자동 권총입니다. 근접전 상황에 유용합니다."
L["mw19_weapon_1911_desc"] = "발사 속도가 적당한 균형 잡힌 반자동 보조 무기입 니다. 45구경 ACP 권총보다 사거리가 조금 더 깁니다."
L["mw19_weapon_357_desc"] = "357구경 매그넘 탄을 사용해 사거리가 긴 강력한 더블 액션 리볼버입니다."
L["mw19_weapon_m19_desc"] = "9mm 반자동 권총으로 사격 속도가 빠르고 안정적입니다."
L["mw19_weapon_deagle_desc"] = "중거리까지 상당한 피해를 줄 수 있는 가장 강력한 반자동 핸드건입니다."
L["mw19_weapon_m9_desc"] = "깔끔한 외관과 더불어 근거리 교전에 적합한 반자동 9mm 권총입니다. 다양한 교전 전략을 위해 폭넓게 개조할 수 있습니다."
L["mw19_weapon_makarov_desc"] = "근거리 전에 유용한 더블 액션/싱글 액션 보조 무기. 몇 가지 커스텀 총기 개조 모드가 함께 제공되어 어떤 무기고에든 탁월한 추가 기능을 제공합니다."

L["mw19_weapon_pila_desc"] = "자유 발사가 가능한 휴대용 적외선 지대공 미사일입니다. 고속 비행이 가능한 자체 추진 미사일을 사용하며, 폭발 반경은 보통입니다."
L["mw19_weapon_strela_desc"] = "84mm 초고속 폭발탄을 발사하는 로켓 런처입니다. 폭발 반경이 좁고 반동이 적은 비유도 철갑탄을 사용하지만 차량 파괴에 매우 효과적입 니다."
L["mw19_weapon_javelin_desc"] = "넓은 지역을 타격하는 자동 유도 방식의 휴대용 미사일 런처입니다. 적외선으로 목표를 추적하여 전차의 상단부를 노릴 수도 있습니다."
L["mw19_weapon_rpg_desc"] = "탄속은 느리지만 폭발 반경이 넓은 비유도 방식 로켓! 런처입니다."
-- L["mw19_weapon_mgl_desc"] = "Rapid firing grenade launcher fed with a 6-round rotating cylinder. Can utilize a variety of 40mm rounds for various roles." -- UO

L["mw19_weapon_knife_desc"] = "근접전을 위한 일반 군용 전술 단검입니다. 빠르고 조용하며 치명적인 공격이 가능합니다."
L["mw19_weapon_stick_desc"] = "기동력이 매우 뛰어나며 양손에 쥘 수 있는 배턴입니다. 가볍고 튼튼해서 적을 빠르게 제압할 수 있습니다."
L["mw19_weapon_sword_desc"] = "면도날보다도 예리한 수제 탄소강 단검입 니다. 쥐도 새도 모르게 적을 처치하기에 안성맞줌입니다."

L["mw19_weapon_nade_claymore_desc"] = "전방에 적이 접근하면 폭발하는 대인 지뢰입니다."
L["mw19_weapon_nade_frag_desc"] = "지연 투척할 수 있는 세열 수류탄입 니다."
L["mw19_weapon_nade_molotov_desc"] = "충돌하면 폭발하는 급조한 화염 병입 니다."
L["mw19_weapon_nade_c4_desc"] = "Large explosive that sticks to surfaces and can be detonated remotely with {ATTACK} when the equipment is depleted.\n\nDouble-tapping {USE} always detonates the explosives."
L["mw19_weapon_nade_c4_desc"] = "표면에 부착할 수 있느 대형 폭발물입니다. 장비가 떨어졌을 때 {ATTACK} 사용하면 원격으로 폭파할 수 있습니다.\n\n{USE} 더블탭으로 폭발물 격발"
L["mw19_weapon_nade_semtex_desc"] = "점착성 시한 수류탄입 니다."
L["mw19_weapon_nade_knife_desc"] = "빠르고 조용하게 적을 제거하기 위해 던질 수 있는 회수 가능한 칼입니다."
L["mw19_weapon_nade_proximity_desc"] = "적이 접근하면 폭발하는 근접 지뢰로 차량에 큰 피해를 줍니다."
L["mw19_weapon_nade_thermite_desc"] = "충돌 후 짧은 시간 동안 맹렬하게 타오릅니다. 표면에 달라붙습니다."

L["mw19_weapon_nade_flash_desc"] = "목표의 시각과 청각을 마비시킵니다."
L["mw19_weapon_nade_stun_desc"] = "목표의 이동속도와 조준속도를 둔화시킵니다."
L["mw19_weapon_nade_smoke_desc"] = "적의 시야를 차단하는 연막을 생성합니다."
L["mw19_weapon_nade_snapshot_desc"] = "스쿠니드를 위해 폭발 반경 내의 적을 잠시 나타냅니다."
L["mw19_weapon_nade_heartbeat_desc"] = "근처 적의 심박을 감지하여 대략적인 위치를 표시하는 탐지기입니다."
L["mw19_weapon_nade_stim_desc"] = "부상을 지지고 전력 질주 대기시간을 초기 화하는 군용 자극제입 니 다."
L["mw19_weapon_nade_decoy_desc"] = "거짓 신호나 사격음을 발산하여 적을 교란하는 수류탄입 니 다."
L["mw19_weapon_nade_gas_desc"] = "폭발 시 최루성 기체를 내뿜어 적의 이동 속도를 늦추고 시야를 호리며 기침을 유 발하는 수류탄입니다."

-- L["mw19_weapon_minigun_desc"] = "Portable gatling gun with a very high cyclic rate." -- UO
-- L["mw19_weapon_fists_desc"] = "When all else fails, punch your way out. Remember, fists do not require reloading, so they are always quick." -- UO
-- L["mw19_weapon_nade_rock_desc"] = "For when you need to hit an enemy with a \"non-lethal\" item, or if you need to provide a distraction in order to sneak past guards." -- UO
