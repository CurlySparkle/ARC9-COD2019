local ATT = {}
------------------------------------------ M32 Ammo Types
---------------------
ATT = {}

ATT.PrintName = "Rock Nade"
ATT.CompactName = "Rock"
ATT.Description = [[Changes the nade type to fire a singular but yet "powerful" rock
(Quite a stoner, if you ask me).]]
ATT.SortOrder = 0

ATT.Icon = Material("entities/attachs/cod2019_ammo_gl_rock.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.AutoStats = true

ATT.ActivateElements = {"nades_rock"}

ATT.Free = true

ATT.ShootEnt = "arc9_cod2019_thrownrock"

ATT.Category = {"cod2019_ammo_gl"}

ARC9.LoadAttachment(ATT, "cod2019_ammo_gl_rock")
------------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Flash Nade"
ATT.CompactName = "Flash"
ATT.Description = [[Changes the nade type to fire a flashing type nade
(Better watch your eyes with this one).]]
ATT.SortOrder = 0.5

ATT.Icon = Material("entities/attachs/cod2019_ammo_gl_flash.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.AutoStats = true

ATT.Free = true

ATT.ShootEnt = "arc9_cod2019_proj_40mm_flash"

ATT.Category = {"cod2019_ammo_gl"}

ARC9.LoadAttachment(ATT, "cod2019_ammo_gl_flash")
------------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Napalm Nade"
ATT.CompactName = "Napalm"
ATT.Description = [[Changes the nade type to a fire type napalm nade that creates an AoE on impact.]]
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/cod2019_ammo_gl_fire.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.AutoStats = true

ATT.Free = true

ATT.ShootEnt = "arc9_cod2019_proj_40mm_inc"

ATT.Category = {"cod2019_ammo_gl"}

ARC9.LoadAttachment(ATT, "cod2019_ammo_gl_inc")
------------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Smoke Nade"
ATT.CompactName = "Smoke"
ATT.Description = [[Changes the nade type to fire a smoking type nade.]]
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/cod2019_ammo_gl_smoke.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.AutoStats = true

ATT.Free = true

ATT.ShootEnt = "arc9_cod2019_proj_40mm_smoke"

ATT.Category = {"cod2019_ammo_gl"}

ARC9.LoadAttachment(ATT, "cod2019_ammo_gl_smoke")
------------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Gas Nade"
ATT.CompactName = "Gas"
ATT.Description = [[Changes the nade type to fire a gas type nade that can cover a section of an area.]]
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/cod2019_ammo_gl_gas.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.AutoStats = true

ATT.Free = true

ATT.ShootEnt = "arc9_cod2019_proj_40mm_gas"

ATT.Category = {"cod2019_ammo_gl"}

ARC9.LoadAttachment(ATT, "cod2019_ammo_gl_gas")
------------------------------------------ PILA Ammo Types
---------------------
ATT = {}

ATT.PrintName = "Guided Rocket"
ATT.CompactName = "Guided"
ATT.Description = [[Changes the rocket type with a guiding mechanic.]]
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/cod2019_ammo_launcher_guide.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.AutoStats = true
ATT.Free = true

ATT.ShootEnt = "arc9_cod2019_proj_jokr_saclos"

ATT.Category = {"cod2019_pila_ammo"}

ATT.Firemodes = {
    {
        Mode = 1,
        PrintName = ARC9:GetPhrase("mw19_firemode_guided"),
        TopAttack = false
    },
}

ARC9.LoadAttachment(ATT, "cod2019_pila_ammo_guided")
------------------------------------------ JOKR Ammo Types
---------------------
ATT = {}

ATT.PrintName = "Guided Rocket"
ATT.CompactName = "Guided"
ATT.Description = [[Changes the rocket type with a guiding mechanic.]]
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/cod2019_ammo_launcher_guide.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.AutoStats = true
ATT.Free = true

ATT.ShootEnt = "arc9_cod2019_proj_jokr_saclos"

ATT.Category = {"cod2019_jokr_ammo"}

ATT.Firemodes = {
    {
        Mode = 1,
        PrintName = ARC9:GetPhrase("mw19_firemode_guided"),
        TopAttack = false
    },
}

ARC9.LoadAttachment(ATT, "cod2019_jokr_ammo_guided")
---------------------------------------------------------------------