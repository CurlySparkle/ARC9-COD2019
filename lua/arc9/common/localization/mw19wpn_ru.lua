L = {} -- Russian, UO by ??

local lineb = "\n"

local changeammo = { -- UO
pistol = lineb .. "Меняет тип боеприпасов на <color=255,255,100>Пистолетные</color>.",
["357"] = lineb .. "Меняет тип боеприпасов на <color=255,255,100>Магнум</color>.",
smg1 = lineb .. "Меняет тип боеприпасов на <color=255,255,100>Карабинные</color>.",
ar2 = lineb .. "Меняет тип боеприпасов на <color=255,255,100>Винтовочные</color>.",
buckshot = lineb .. "Меняет тип боеприпасов на <color=255,255,100>Картечь</color>.",
sniperpenetratedround = lineb .. "Меняет тип боеприпасов на <color=255,255,100>Снайперские</color>.",
smg1_grenade = lineb .. "Меняет тип боеприпасов на <color=255,255,100>Подствольные гранаты</color>.",
xbowbolt = lineb .. "Меняет тип боеприпасов на <color=255,255,100>Арбалетные болты</color>.",
}

//////////////////////////////////////////////////////////////////////
////////////////////////////////////////// Notes
-- 1) If "-- UO" is listed after the string, it is unofficial and its translation is not taken from MW19.
-- Therefore they will either remain untranslated (and remain in English) or require community contribution to fix.

-- 2) If a string uses "ARC9:GetPhrase" in it, then do not touch it. It uses another localization as its quick access.

///////////////////////////// Various Universal Information
//////////////////// Settings
L["settings.mw19"] = "Аддон - MW19" -- UO
-- L["settings.mw19.warzonestats"] = "Warzone Stats" -- UO
-- L["settings.mw19.warzonestats.title"] = "Enable Warzone Stats" -- UO
-- L["settings.mw19.warzonestats.desc"] = "Changes the stats on all* weapons and attachments to have stats more accurate to Modern Warfare 2019 / Warzone.\n\nThis is a server variable. Requires restart to take affect.\n\n\n*Some weapons and attachments will not behave differently." -- UO

//////////////////// Trivia
/////////// Caliber -- UO
L["mw19_caliber"] = "Калибр3"

L["mw19_caliber_556"] = "5,56 мм НАТО"
L["mw19_caliber_762"] = "7,62 мм НАТО"
L["mw19_caliber_762soviet"] = "7,62 мм СССР"
L["mw19_caliber_762mmr"] = "7,62×54 мм R"
L["mw19_caliber_762mauser"] = "7,62 мм \"Маузер\""
L["mw19_caliber_545"] = "5,45×39 мм"
L["mw19_caliber_127x55"] = "12,7×55 мм"
L["mw19_caliber_127x108"] = "12,7×108 мм"
L["mw19_caliber_939"] = "9×39 мм"
L["mw19_caliber_919"] = "9 мм \"Парабеллум\""
L["mw19_caliber_57x28"] = "5.7×28 мм"
L["mw19_caliber_918"] = "9 мм \"Макаров\""
L["mw19_caliber_46x30"] = "4.6×30 мм"
L["mw19_caliber_45acp"] = ".45 ACP"
L["mw19_caliber_12gauge"] = "12-й калибр"
L["mw19_caliber_338"] = ".338 Норма Магнум"
L["mw19_caliber_45-70"] = ".45-70 Government"
L["mw19_caliber_bolt"] = "20-дюймовый болт"
L["mw19_caliber_300"] = ".300 Винчестер Магнум"
L["mw19_caliber_50bmg"] = ".50 BMG"
L["mw19_caliber_357"] = ".357 \"Магнум\""
L["mw19_caliber_50p"] = "Пистолетный патрон калибра 50"

/////////// Country of Origin -- UO
L["mw19_country"] = "Реальное название1"

L["mw19_country_austria"] = "Австрия"
L["mw19_country_belgium"] = "Бельгия"
L["mw19_country_czechrepublic"] = "Чехия"
L["mw19_country_france"] = "Франция"
L["mw19_country_germany"] = "Германия"
L["mw19_country_israel"] = "Израиль"
L["mw19_country_italy"] = "Италия"
L["mw19_country_russia"] = "Россия"
L["mw19_country_southafrica"] = "Южная Африка"
L["mw19_country_sovietunion"] = "СССР"
L["mw19_country_sweden"] = "Швеция"
L["mw19_country_switzerland"] = "Швейцария"
L["mw19_country_uk"] = "Великобритания"
L["mw19_country_usa"] = "США"
L["mw19_country_japan"] = "Япония"

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

L["mw19_manufacturer_stvol"] = "Ствол Тактический"

/////////// Weight -- UO
L["mw19_weight"] = "Вес (с полным магазином)4"
L["mw19_weight_val"] = "%s кг / ~%s фунтов"

/////////// Projectile Weight -- UO
L["mw19_weight_projectile"] = "Вес пули5"
L["mw19_weight_projectile_val"] = "%s g"

/////////// Muzzle Energy -- UO
L["mw19_muzzle_energy"] = "Начальная энергия пули6"
L["mw19_muzzle_energy_val"] = "%s joules"

/////////// Muzzle Velocity -- UO
L["mw19_muzzle_velocity"] = "Начальная скорость пули7"
L["mw19_muzzle_velocity_val"] = "%s m/s | %s ft/s"

/////////// Authors -- UO
L["mw19_assets"] = "Материалы2"
L["mw19_author"] = "Авторы1"

/////////// Weapon Categories
L["mw19_category_weapon_ar"] = "Штурмовые винтовки"
L["mw19_category_weapon_smg"] = "Пистолеты-пулеметы"
L["mw19_category_weapon_shotgun"] = "Дробовики"
L["mw19_category_weapon_lmg"] = "Ручные пулеметы"
L["mw19_category_weapon_marksman"] = "Пехотные винтовки"
L["mw19_category_weapon_sniper"] = "Снайперские винтовки"
L["mw19_category_weapon_melee"] = "Ближний Бой"
L["mw19_category_weapon_throwable"] = "Боевое снаряжение и Тактическое"

L["mw19_category_weapon_handgun"] = "Пистолеты"
L["mw19_category_weapon_handgun_akimbo"] = "Пистолеты (Парное)"
L["mw19_category_weapon_launcher"] = "Пусковые установки"

/////////// Weapon Classes
L["mw19_class_weapon_ar"] = "Штурмовая винтовка"
L["mw19_class_weapon_smg"] = "Пистолет-пулемет"
L["mw19_class_weapon_shotgun"] = "Дробовик"
L["mw19_class_weapon_lmg"] = "Ручной пулемет"
L["mw19_class_weapon_marksman"] = "Пехотная винтовка"
L["mw19_class_weapon_sniper"] = "Снайперская винтовка"
L["mw19_class_weapon_melee"] = "Ближний бой"
L["mw19_class_weapon_lethal"] = "Боевое снаряжение"
L["mw19_class_weapon_tactical"] = "Тактическое"
L["mw19_class_weapon_grenade"] = "Граната" -- UO

L["mw19_class_weapon_handgun"] = "Пистолет"
L["mw19_class_weapon_launcher"] = "Гранатомет"

//////////////////////////////////////////////////////////////////////
///////////////////////////// Attachments
//////////////////// Customize
L["mw19_category_camouflage"] = "Камуфляж"
L["mw19_category_reticle"] = "Прицел"
L["mw19_category_charm"] = "Амулет"
L["mw19_category_sticker"] = "Наклейка"

//////////////////// Attachment Categories
L["mw19_category_muzzle"] = "Дуло"
L["mw19_category_barrel"] = "Ствол"
L["mw19_category_laser"] = "Лазер"
L["mw19_category_optic"] = "Оптика"
L["mw19_category_stock"] = "Приклад"
L["mw19_category_underbarrel"] = "Подств. планка"
L["mw19_category_magazine"] = "Магазин"
L["mw19_category_reargrip"] = "Задняя рукоять"
L["mw19_category_perk"] = "Перк"

-- Specific to Handguns
L["mw19_category_triggeraction"] = "Спусковой механизм"

-- Specific to the R9-0 Shotgun
L["mw19_category_pumps"] = "Помпы"

-- Specific to the 725 Shotgun
L["mw19_category_guard"] = "Спусковая скоба"

-- Specific to the VLK Rogue Shotgun
L["mw19_category_pumpgrip"] = "Помповая рукоять"

-- Specific to the Crossbow Marksman Rifle
L["mw19_category_cable"] = "Трос"
L["mw19_category_arms"] = "Плечи"
L["mw19_category_bolt"] = "Болт"

-- Specific to the SP-R 208 Marksman Rifle
L["mw19_category_boltassembly"] = "Затворный механизм"

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
L["cod2019_perks_soh.printname"] = "Ловкость рук"
L["cod2019_perks_soh.compactname"] = "ЛР"
L["cod2019_perks_soh.description"] = "Тренировка быстрой перезарядки оружия в стрессовых условиях."

L["cod2019_perks_speedmelee.printname"] = "Быстрая рукопашная"
L["cod2019_perks_speedmelee.compactname"] = "БР"
L["cod2019_perks_speedmelee.description"] = "Тренировка рукопашного боя, позволяющая наносить удары с повышенной скоростью."

L["cod2019_perks_heavyhitter.printname"] = "Тяжеловес"
L["cod2019_perks_heavyhitter.compactname"] = "Тяжеловес"
L["cod2019_perks_heavyhitter.description"] = "Удары в рукопашной сильнее оглушают противников."

-- L["cod2019_perks_enforcer.printname"] = "Enforcer" -- UO
-- L["cod2019_perks_enforcer.compactname"] = "Enforcer" -- UO
-- L["cod2019_perks_enforcer.description"] = "Grants the user 30% resistance to all damage." -- UO

-- L["cod2019_perks_bolt.printname"] = "Deft Hands" -- UO
-- L["cod2019_perks_bolt.compactname"] = "Deft" -- UO
-- L["cod2019_perks_bolt.description"] = "Training with your weapon allows you to cycle the weapon faster." -- UO

-- L["cod2019_perks_slamfire.printname"] = "Slamfire" -- UO
-- L["cod2019_perks_slamfire.compactname"] = "Slamfire" -- UO
-- L["cod2019_perks_slamfire.description"] = "Bruteforce the weapon to fire and cycle the weapon much quicker at the cost of reduced accuracy." -- UO

L["cod2019_perks_burst.printname"] = "Стрельба очередями"
L["cod2019_perks_burst.compactname"] = "Очереди"
L["cod2019_perks_burst.description"] = "Смена режима огня на очереди по <color=100,255,100>З выстрела</color>."

L["cod2019_perks_burst_2.description"] = "Смена режима огня на очереди по <color=100,255,100>З выстрела</color>."

-- L["cod2019_perks_super_sprint.printname"] = "Tactical Sprint" -- UO
-- L["cod2019_perks_super_sprint.compactname"] = "Tac. Sprint" -- UO
-- L["cod2019_perks_super_sprint.description"] = "Provides an altered stance when sprinting. Cancels out up to <color=100,255,100>20%</color> sprint speed reduction at the cost of reduced sprint-to-fire speed." -- UO

L["cod2019_perks_auto.printname"] = "Автоматический" -- UO
L["cod2019_perks_auto.compactname"] = "Авто." -- UO
L["cod2019_perks_auto.description"] = "Смена режима огня на <color=100,255,100>автоматический</color>." -- UO

////////////////////  Scopes
-- L["cod2019_model680_iron.printname"] = "Remove Sight Mount" -- UO
-- L["cod2019_model680_iron.compactname"] = "R. Sight M." -- UO
-- L["cod2019_model680_iron.description"] = "Removes the sight mount on the Model 680, making it sleeker." -- UO

////////////////////  Stocks
L["cod2019_stock_vlk.printname"] = "Приклад VLK ”Ренегат”" -- UO
L["cod2019_stock_vlk.compactname"] = "Ренегат" -- UO
L["cod2019_stock_vlk.description"] = "Этот приклад повышает ловкость в режиме прицеливания." -- mw19stockdesc.light

L["cod2019_stock_amax.printname"] = "Приклад CR-56 AMAX" -- UO
L["cod2019_stock_amax.compactname"] = "AMAX" -- UO
L["cod2019_stock_amax.description"] = "Пластиковый приклад с алюминиевым каркасом, улучшающий подвижность бойца при прицеливании." -- mw19stockdesc.vlight

L["cod2019_stock_slima.printname"] = "Приклад Пулемет RAAL" -- UO
L["cod2019_stock_slima.compactname"] = "Пул. RAAL" -- UO
L["cod2019_stock_slima.description"] = "Тактический приклад, разработанный специально для ближнего боя. Позволяет быстрее наводить оружие на цель." -- mw19stockdesc.medium

L["cod2019_stock_m4.printname"] = "Приклад M4A1" -- UO
L["cod2019_stock_m4.compactname"] = "M4A1" -- UO
L["cod2019_stock_m4.description"] = "Усиленный приклад, помогающий стабилизировать оружие для точной стрельбы." -- mw19stockdesc.heavy

L["cod2019_stock_origin12.printname"] = "Приклад ”Ориджин” 12" -- UO
L["cod2019_stock_origin12.compactname"] = "Ориджин" -- UO

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
L["mw19_weapon_oden"] = "Оден"
L["mw19_weapon_m13"] = "M13"
L["mw19_weapon_scar"] = "FN Scar 17"
L["mw19_weapon_ak47"] = "АК-47"
L["mw19_weapon_ram7"] = "RAM-7"
L["mw19_weapon_grau"] = "Грау 5.56"
L["mw19_weapon_cr56"] = "CR-56 AMAX"
L["mw19_weapon_an94"] = "АН-94"
L["mw19_weapon_asval"] = "АС \"Вал\""

L["mw19_weapon_aug"] = "AUG"
L["mw19_weapon_p90"] = "P90"
L["mw19_weapon_mp5"] = "MP5"
L["mw19_weapon_uzi"] = "”Узи”"
L["mw19_weapon_pp19"] = "ПП-19 ”Бизон”"
L["mw19_weapon_mp7"] = "MP7"
L["mw19_weapon_striker"] = "Страйкер-45"
L["mw19_weapon_fennec"] = "Фенек"
L["mw19_weapon_iso"] = "ISO"
L["mw19_weapon_cx9"] = "CX-9"

L["mw19_weapon_m680"] = "Модель-680"
L["mw19_weapon_r90"] = "Дробовик R9-0"
L["mw19_weapon_725"] = "725"
L["mw19_weapon_origin12"] = "”Ориджин” 12"
L["mw19_weapon_vlk"] = "VLK ”Ренегат”"
L["mw19_weapon_aa12"] = "JAK-12"

L["mw19_weapon_pkm"] = "ПКМ"
L["mw19_weapon_sa87"] = "SA87"
L["mw19_weapon_m91"] = "M91"
L["mw19_weapon_mg34"] = "MG34"
L["mw19_weapon_holger"] = "Холгер-26"
L["mw19_weapon_bruen"] = "Bruen Mk9"
L["mw19_weapon_finn"] = "РП ФИНН"
L["mw19_weapon_raal"] = "Пулемет RAAL"

L["mw19_weapon_ebr"] = "EBR-14"
L["mw19_weapon_mk2"] = "Карабин МК2"
L["mw19_weapon_kar98"] = "Kar.98k"
L["mw19_weapon_crossbow"] = "Арбалет"
L["mw19_weapon_sks"] = "СКС"
L["mw19_weapon_spr"] = "SP-R 208"

L["mw19_weapon_dragunov"] = "Драгунов"
L["mw19_weapon_hdr"] = "HDR"
L["mw19_weapon_ax50"] = "AX-50"
L["mw19_weapon_rytec"] = "AMR ”Райтек”"

L["mw19_weapon_shield"] = "Полицейский щит"

L["mw19_weapon_glock"] = "X16"
L["mw19_weapon_1911"] = "1911"
L["mw19_weapon_357"] = ".357"
L["mw19_weapon_m19"] = "M19"
L["mw19_weapon_deagle"] = ".50 GS"
L["mw19_weapon_m9"] = "Ренетти"
L["mw19_weapon_makarov"] = "”Сыков”"

L["mw19_weapon_pila"] = "ПИЛА"
L["mw19_weapon_strela"] = "Стрела-П"
L["mw19_weapon_javelin"] = "JOKR"
L["mw19_weapon_rpg"] = "РПГ-7"
L["mw19_weapon_mgl"] = "MGL-32"

L["mw19_weapon_knife"] = "Нож"
L["mw19_weapon_stick"] = "Дубинки Кали"
L["mw19_weapon_sword"] = "Парные кодати"

L["mw19_weapon_akimbo"] = "%s Парное оружие"

L["mw19_weapon_nade_claymore"] = "Мина “Клеймор“"
L["mw19_weapon_nade_frag"] = "Осколочная граната"
L["mw19_weapon_nade_molotov"] = "Коктейль Молотова"
L["mw19_weapon_nade_c4"] = "Заряд С4"
L["mw19_weapon_nade_semtex"] = "Семтекс"
L["mw19_weapon_nade_knife"] = "Метательный нож"
L["mw19_weapon_nade_proximity"] = "Контактная мина"
L["mw19_weapon_nade_thermite"] = "Термит"
L["mw19_weapon_nade_thermite_alt"] = "Граната Термит" -- UO

L["mw19_weapon_nade_flash"] = "Световая граната"
L["mw19_weapon_nade_stun"] = "Оглушающая граната"
L["mw19_weapon_nade_smoke"] = "Дымовая граната"
L["mw19_weapon_nade_snapshot"] = "Сканирующая граната"
L["mw19_weapon_nade_heartbeat"] = "Датчик сердцебиения"
L["mw19_weapon_nade_stim"] = "Стимулятор"
L["mw19_weapon_nade_decoy"] = "Отвлекающая граната"
L["mw19_weapon_nade_gas"] = "Газовая гранат"

-- L["mw19_weapon_minigun"] = "Minigun"-- UO
-- L["mw19_weapon_fists"] = "Fists" -- UO
-- L["mw19_weapon_nade_rock"] = "Rock" -- UO

//////////// Weapon Descriptions
L["mw19_weapon_kilo141_desc"] = "Автоматическая штурмовая винтовка с эргономичным дизайном и умеренной скорострельностью, облегчающей поражение целей длинными очередями."
L["mw19_weapon_fal_desc"] = "Полуавтоматическая штурмовая винтовка, демонстрирующая высокий темп стрельбы, требующийся при повторных выстрелах."
L["mw19_weapon_m4a1_desc"] = "Автоматическая штурмовая винтовка со сбалансированными характеристиками. В руках опытного стрелка очень эффективна на дальних дистанциях."
L["mw19_weapon_fr556_desc"] = "Укороченная винтовка с отсечками по три выстрела. Удачно посланная очередь может оказаться смертельной на определенной дистанции."
L["mw19_weapon_oden_desc"] = "Автоматическая боевая винтовка компоновки ”Булл-пап”, использующая мощный патрон калибра 12,7х55 мм. Темп стрельбы намеренно снижен в целях повышения эргономичности."
L["mw19_weapon_m13_desc"] = "Автоматическая штурмовая винтовка. Использование газового поршня с коротким ходом повышает скорострельность и ослабляет отдачу."
L["mw19_weapon_scar_desc"] = "Крупнокалиберная полностью автоматическая штурмовая винтовка, позволяющая наносить высокий урон на дальних дистанциях."
L["mw19_weapon_ak47_desc"] = "Крайне надежная автоматическая штурмовая винтовка, предназначенная для советских боеприпасов калибра 7,62 мм. Столь крупный калибр требует определенного навыка для контроля над отдачей."
L["mw19_weapon_ram7_desc"] = "Автоматическая штурмовая винтовка. Благодаря компактной компоновке ”Булл-пап” идеально подходит для ближнего боя."
L["mw19_weapon_grau_desc"] = "Это модульное оружие калибра 5,56 отличается малым весом, маневренностью и прекрасной дальнобойностью. Инженерная точность и доступность стволов мирового класса наделяют его исключительным потенциалом."
L["mw19_weapon_cr56_desc"] = "Эта легкая полностью автоматическая штурмовая винтовка под боеприпасы калибра 7,62 х 39 мм сочетает компактность и огневую мощь. Разработанная для применения в войсках, она эффективна на средних дистанциях и подходит для широкого диапазона штурмовых тактик."
L["mw19_weapon_an94_desc"] = "Современная российская штурмовая винтовка калибра 5,45х39 мм с уникальной функцией <color=255,255,100>гиперзалпа</color>. Первый выстрел выпускает залп из двух пуль еще до того, как вы почувствдете отдачд, создавая невероятный убойный потенциал. Заряжается скошенными магазинами, а откатный механизм позволяет контролировать отдачу."
L["mw19_weapon_asval_desc"] = "АС ”Вал”, обладающий интегральным <color=255,255,100>глушителем</color> и использующий <color=255,255,100>дозвуковые</color> боеприпасы калибра 9х39 мм, это идеальное оружие для тех, кто ценит скрытность, меткость и пробивную мощь. Исполнитель, который сумеет справиться с его мощной отдачей, несомненно оценит высокую скорострельность."

L["mw19_weapon_aug_desc"] = "Модульное полностью автоматическое оружие, предназначенное для маневренного боя на близком расстоянии."
L["mw19_weapon_p90_desc"] = "Компактный пистолет-пулемет компоновки ”Булл-пап”. Расположенный сверху магазин заполнен сверхзвуковыми патронами калибра 5,7 х 28 мм."
L["mw19_weapon_mp5_desc"] = "Полностью автоматический пистолет-пулемет калибра 9 мм. Идеальное соотношение стабильности, подвижности и убойности."
L["mw19_weapon_uzi_desc"] = "Автоматический пистолет-пулемет со свободным затвором. Простая, надежная и эффективная конструкция."
L["mw19_weapon_pp19_desc"] = "Хорошо сбалансированный автоматический пистолет-пулемет с магазином большой емкости."
L["mw19_weapon_mp7_desc"] = "Компактное полностью автоматическое оружие с высокой скорострельностью и низкой отдачей."
L["mw19_weapon_striker_desc"] = "Эффективный пистолет-пулемет калибра .45, превосходящий аналогичное оружие по дальности поражения. Умеренная скорострельность позволяет лучше контролировать прицел при автоматической стрельбе."
L["mw19_weapon_fennec_desc"] = "Эффективный полностью автоматический пистолет-пулемет с мягкой отдачей и впечатляющей скорострельностью, позволяющей моментально зачищать помещения и удерживать линию фронта."
L["mw19_weapon_iso_desc"] = "Изящный, скорострельный и полностью автоматический пистолет-пулемет калибра 9 мм. Это легкое и надежное оружие максимально эффективно на ближних дистанциях."
L["mw19_weapon_cx9_desc"] = "Этот пистолет-пулемет со свободным затвором отличается не только высокой скорострельностью, но и отличной эргономикой, позволяющей бойцу быстро маневрировать в условиях ближнего боя."

L["mw19_weapon_m680_desc"] = "Надежный помповый дробовик 12-го калибра."
L["mw19_weapon_r90_desc"] = "Двуствольное оружие, позволяющее сделать два выстрела междд перезарядками."
L["mw19_weapon_725_desc"] = "Двуствольный дробовик с переломным затвором. Большая длина стволов и дульные насадки типа ”цилиндр” обеспечивают малый разброс дроби и значительную для данного класса оружия дистанцию поражения."
L["mw19_weapon_origin12_desc"] = "Полуавтоматический дробовик с большой емкостью магазина, позволяющий вести непрерывный огонь. Оружие для ближних дистанций."
L["mw19_weapon_vlk_desc"] = "Этот ладный магазинный дробовик 12 калибра производства VLK имеет множество опций, позволяющих повысить дальнобойность, стабильность и маневренность."
L["mw19_weapon_aa12_desc"] = "Полностью автоматический дробовик со свободным затвором и газовой ситемой снижения отдачи. Способен поливать врага свинцом в хорошем темпе."

L["mw19_weapon_pkm_desc"] = "Ручной пулемет калибра 7,62 мм, сочетающий дмеренндю скорострельность и высокую огневую мощь."
L["mw19_weapon_sa87_desc"] = "Компактный ручной пулемет компоновки ”Булл-пап”. Сочетание умеренной скорострельности и боеприпасов калибра 5,56 мм позволяет стабильно поражать цели на дальних дистанциях."
L["mw19_weapon_m91_desc"] = "Конструкторы этого массивного ручного пулемета пожертвовали мобильностью ради устойчивости. Продолжительный огонь патронами большого калибра позволяет нейтрализовывать цели на дальних дистанциях."
L["mw19_weapon_mg34_desc"] = "Полностью автоматическое оружие с высоким темпом стрельбы и дбойными патронами калибра 7,92 ”Маузер” Оставшиеся со Второй мировой пулеметы все еще надежны и убийственны на поле боя."
L["mw19_weapon_holger_desc"] = "Универсальный ручной пулемет калибра 5,56 мм. Благодаря моддльномд дизайну может быть адаптирован для самых разных задач."
L["mw19_weapon_bruen_desc"] = "Этот рдчной пулемет калибра 5,56 мм с автоматикой на основе открытого затвора и воздушным охлаждением ствола обладает достойной скорострельностью и выдающейся стабильностью. Его характеристики идеально подходят для средних и дальних дистанций боя."
L["mw19_weapon_finn_desc"] = "Сверхлегкий пулемет калибра 5,56 мм с открытым затвором, медленным циклом работы и улучшенным контролем отдачи, благодаря которому ”ФИНН” обладает исключительной точностью."
L["mw19_weapon_raal_desc"] = "Ручной пулемет для разведывательных операций ведет огонь в низком темпе и использует откатный ствол для ослабления мощной отдачи от боеприпасов калибра .338 Норма Магндм. Особая титановая конструкция облегчает его массу."

L["mw19_weapon_ebr_desc"] = "Полуавтоматическая пехотная винтовка для дальних дистанций, обладающая оптимальным балансом скорострельности и огневой мощи."
L["mw19_weapon_mk2_desc"] = "Высокоточная винтовка рычажного действия. Позволяет убивать одним выстрелом при попадании в голову или грудь."
L["mw19_weapon_kar98_desc"] = "Винтовка калибра 7,92 мм ”Маузер” с продольно-скользящим затвором. Наследие Второй мировой, по-прежнему смертоносное в руках умелого стрелка."
L["mw19_weapon_crossbow_desc"] = "Бесшумный и смертоносный, этот превосходный арбалет стреляет 20-дюймовыми болтами с издмительной точностью. Данное оружие занимает особое место в иерархии благодаря возможностям доработки, фднкциональности и уникальны боеприпасам. Стандартные 20-дюймовые болты можно подобрать и использовать повторно; также они не обнаруживаются активной защитой."
L["mw19_weapon_sks_desc"] = "Компактный полуавтоматический карабин калибра 7,62х39 мм. Проектируя это мощное и ддобное оружие, советские инженеры ставили практичность выше точности. оно превосходит в скорострельности все известные аналоги, но при должной сноровке это вам не потребуется: для поражения цели достаточно одного удачного выстрела. Богатую и славную историю этой винтовки отражают разнообразные конфигурации, доступные д оружейника."
L["mw19_weapon_spr_desc"] = "Надежная и убойная винтовка калибра .300 Винчестер с продольно-скользящим затвором от Sloan Precision. Благодаря популярности в использовании как в гражданских так и военных целях, это оружие обладает множеством возможностей для модификаций."

L["mw19_weapon_dragunov_desc"] = "Советская ”рабочая лошадка” калибра 7,62х54 мм. Полуавтоматическая снайперская винтовка с газоотводным механизмом перезарядки, ускоряющим совершение повторных выстрелов."
L["mw19_weapon_hdr_desc"] = "Крупнокалиберная снайперская винтовка калибра 12,7х108 мм с продольно-скользящим затвором. Пули весом 745 гран обладают невысокой начальной скоростью, но наносят чудовищный урон даже при стрельбе с большой дистанции."
L["mw19_weapon_ax50_desc"] = "Снайперская винтовка калибра .50 BMG с продольно-скользящим затвором. Пдлис вольфрамовыми наконечниками летят быстро и обладают большой мощью, однако для стрельбы с большой дистанции требуется высокая точность."
L["mw19_weapon_rytec_desc"] = "Эта крупнокалиберная полуавтоматическая винтовка использует боеприпасы калибра .50 Браунинг для смертоносных дальнобойных атак. эта фугасная модификация 25х59 мм официально считается экспериментальной, но с большим успехом использовалась в нескольких засекреченных операциях."

L["mw19_weapon_shield_desc"] = "Пуленепробиваемый и устойчивый ко взрывам щит с повышенным уроном в рукопашной."

L["mw19_weapon_glock_desc"] = "Полуавтоматический пистолет калибра .45 АСР. Надежный запасной вариант для ближнего боя."
L["mw19_weapon_1911_desc"] = "Универсальный полуавтоматический пистолет со средней скорострельностью. По эффективной дальности немного превосходит типичное оружие под патрон .45 АСР."
L["mw19_weapon_357_desc"] = "Револьвер калибра .357 ”Магндм” со спусковым механизмом двойного действия, обладающий высокой огневой мощью на достаточно больших дистанциях для этого класса оружия."
L["mw19_weapon_m19_desc"] = "Полдавтоматический пистолет калибра 9 мм, сочетающий превосходную стабильность и быстрый темп стрельбы."
L["mw19_weapon_deagle_desc"] = "Самый мощный полдавтоматический пистолет, доступный на рынке. Наносит значительный урон на ближних и средних дистанциях."
L["mw19_weapon_m9_desc"] = "Сбалансированный полуавтоматический пистолет калибра 9 мм. это скромное дополнительное оружие прекрасно подходит для ближнего боя и обладает лучшими в классе возможностями модернизации д оружейника."
L["mw19_weapon_makarov_desc"] = "Надежный запасной вариант для сражений в закрытых помещениях, этот одно/двдхзарядный пистолет обладает несколькими особыми модификациями, которые делают его отличным пополнением любого арсенала."

L["mw19_weapon_pila_desc"] = "Портативный зенитно-ракетный комплекс с инфракрасным наведением и возможностью пдска в неуправляемом режиме. Ракеты обладают высокой скоростью полета и умеренным радиусом поражения."
L["mw19_weapon_strela_desc"] = "84-мм безоткатное орудие, стреляющее неуправляемыми бронебойными снарядами с очень высокой начальной скоростью. Такие снаряды обладают небольшим радиусом поражения, но крайне эффективны против транспорта."
L["mw19_weapon_javelin_desc"] = "Портативный ракетный комплекс с инфракрасной системой самонаведения. Ракеты с большим радидсом поражения летят по крутой навесной траектории, что облегчает уничтожение тяжелобронированной техники."
L["mw19_weapon_rpg_desc"] = "Пдсковая дстановка для неуправляемых ракет с низкой начальной скоростью и большим радиусом поражения."
-- L["mw19_weapon_mgl_desc"] = "Rapid firing grenade launcher fed with a 6-round rotating cylinder. Can utilize a variety of 40mm rounds for various roles." -- UO

L["mw19_weapon_knife_desc"] = "Стандартный тактический нож для рукопашного боя. Быстрый, бесшумный и смертоносный."
L["mw19_weapon_stick_desc"] = "Вооружившись этими парными дубинками, вы сможете демонстрировать в бою чудеса ловкости. Их легкая и надежная конструкции позволяет атаковать в стремительном темпе."
L["mw19_weapon_sword_desc"] = "эти клинки ручной работы из углепластика и стали - идеальное средство, чтобы незаметно перерезать глотки своим врагам."

L["mw19_weapon_nade_claymore_desc"] = "Мина, взрывающаяся при приближении противника."
L["mw19_weapon_nade_frag_desc"] = "Боевая осколочная граната."
L["mw19_weapon_nade_molotov_desc"] = "Самодельная зажигательная бомба."
L["mw19_weapon_nade_c4_desc"] = "Крупный заряд, прилипающий к поверхностям. Для дистанционного подрыва нажмите {ATTACK} после окончания срока действия нажмите снаряжения.\n\nДвойное нажатие {USE} позволяет подорвать заряд в любой момент."
L["mw19_weapon_nade_semtex_desc"] = "Граната-липдчка с таймером."
L["mw19_weapon_nade_knife_desc"] = "Многоразовый метательный нож, позволяющий быстро и бесшумно ликвидировать врагов."
L["mw19_weapon_nade_proximity_desc"] = "Взрывается при контакте и наносит значительный урон транспорту."
L["mw19_weapon_nade_thermite_desc"] = "Взрывное устройство, интенсивно горящее некоторое время после столкновения с преградой. Прилипает к различным поверхностям."

L["mw19_weapon_nade_flash_desc"] = "Ослепляет и оглушает цели."
L["mw19_weapon_nade_stun_desc"] = "Уменьшает скорость, с которой движется и целится жертва."
L["mw19_weapon_nade_smoke_desc"] = "Создает дымовую завесу, затрудняющую обзор."
L["mw19_weapon_nade_snapshot_desc"] = "Кратковременно показывает контуры противников в радиусе поражения."
L["mw19_weapon_nade_heartbeat_desc"] = "Планшет, показывающий примерное местоположение врагов неподалекд."
L["mw19_weapon_nade_stim_desc"] = "Армейский медицинский препарат, ускоряющий регенерацию ран и восстанавливающий силы для тактического бега."
L["mw19_weapon_nade_decoy_desc"] = "Граната, отвлекающая противника звуками перестрелки и фальшивыми радиолокационными сигнатурами."
L["mw19_weapon_nade_gas_desc"] = "Взрывается при столкновении с землей, испуская облако слезоточивого газа, который замедляет перемещение, ухудшает обзор и вызывает кашель в течение продолжительного времени."

-- L["mw19_weapon_minigun_desc"] = "Portable gatling gun with a very high cyclic rate." -- UO
-- L["mw19_weapon_fists_desc"] = "When all else fails, punch your way out. Remember, fists do not require reloading, so they are always quick." -- UO
-- L["mw19_weapon_nade_rock_desc"] = "For when you need to hit an enemy with a \"non-lethal\" item, or if you need to provide a distraction in order to sneak past guards." -- UO
