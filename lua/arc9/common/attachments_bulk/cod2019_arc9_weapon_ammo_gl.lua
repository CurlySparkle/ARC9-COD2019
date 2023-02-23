local ATT = {}

ATT = {}

ATT.PrintName = "Rock Nade"
ATT.CompactName = "RN"
ATT.Description = [[Changes the nade type to fire a singular but yet "powerful" rock.
(Quite a stoner if you ask me...)]]
ATT.SortOrder = 0

ATT.Icon = Material("entities/attachs/cod2019_ammo_gl_rock.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.AutoStats = true

ATT.Free = true

ATT.ShootEnt = "arc9_gsr_thrownrock"

ATT.Category = {"go_ammo_gl"}

ARC9.LoadAttachment(ATT, "csgo_ammo_gl_rock")
------------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Flash Nade"
ATT.CompactName = "FN"
ATT.Description = [[Changes the nade type to fire a flashing type nade. (better watch your eyes with this one.)]]
ATT.SortOrder = 0.5

ATT.Icon = Material("entities/attachs/cod2019_ammo_gl_flash.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.AutoStats = true

ATT.Free = true

ATT.ShootEnt = "arc9_cod2019_proj_40mm_flash"

ATT.Category = {"go_ammo_gl"}

ARC9.LoadAttachment(ATT, "csgo_ammo_gl_flash")
------------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Incendiary Nade"
ATT.CompactName = "ICN"
ATT.Description = [[Changes the nade type to fire an incendiary type nade.]]
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/cod2019_ammo_gl_inc.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.AutoStats = true

ATT.Free = true

ATT.ShootEnt = "arc9_cod2019_proj_40mm_inc"

ATT.Category = {"go_ammo_gl"}

ARC9.LoadAttachment(ATT, "csgo_ammo_gl_inc")
------------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Smoke Nade"
ATT.CompactName = "SN"
ATT.Description = [[Changes the nade type to fire an smoking type nade.]]
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/cod2019_ammo_gl_smoke.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.AutoStats = true

ATT.Free = true

ATT.ShootEnt = "arc9_cod2019_proj_40mm_smoke"

ATT.Category = {"go_ammo_gl"}

ARC9.LoadAttachment(ATT, "csgo_ammo_gl_smoke")