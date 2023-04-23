local ATT = {}
------------------------------------------------------------------
ATT = {}

ATT.PrintName = [[Sleight of Hand]]
ATT.Description = [[Training in reloading faster when under pressure.]]
ATT.Icon = Material("entities/attachs/cod2019_perks_soh.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.AutoStats = true

ATT.Free = true

ATT.Category = "cod2019_perks_soh"

--ATT.ReloadTimeMult = 0.80

ARC9.LoadAttachment(ATT, "cod2019_perks_soh")
------------------------------------------------------------------
ATT = {}

ATT.PrintName = [[Sleight of Hand]]
ATT.Description = [[Training in reloading faster when under pressure.]]
ATT.Icon = Material("entities/attachs/cod2019_perks_soh.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.AutoStats = true

ATT.Free = true

ATT.Category = "cod2019_perks_soh_2"

ATT.ReloadTimeMult = 0.80

ARC9.LoadAttachment(ATT, "cod2019_perks_soh_alt")
------------------------------------------------------------------
ATT = {}

ATT.PrintName = [[Speed Melee]]
ATT.Description = [[Training in executing melee maneuvers with great speed]]
ATT.Icon = Material("entities/attachs/cod2019_perks_fastmelee.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.AutoStats = true

ATT.Free = true

ATT.Category = "cod2019_perks"

ATT.PostBashTime = 0.1

ARC9.LoadAttachment(ATT, "cod2019_perks_speedmelee")
------------------------------------------------------------------
ATT = {}

ATT.PrintName = [[Heavy Hitter]]
ATT.Description = [[Melee produces greater stun/damage on targets.]]
ATT.Icon = Material("entities/attachs/cod2019_perks_heavyhitter.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.AutoStats = true

ATT.Free = true

ATT.Category = "cod2019_perks"

ATT.BashDamageMult = 1.2

ARC9.LoadAttachment(ATT, "cod2019_perks_heavyhitter")