local ATT = {}

local stats_flash = {
    CustomPros = { 
	[ARC9:GetPhrase("mw19_muzzle_stat_muzzleflash")] = ""
	},
    PhysBulletMuzzleVelocityAdd = -51 / ARC9.HUToM,
    AimDownSightsTimeAdd = 0.04,
}

local stats_breach = {
    BashDamageAdd = 45,
    AimDownSightsTimeAdd = 0.1,
}

local stats_brake = {
    AimDownSightsTimeAdd = 0.07,
	VisualRecoilMult = 0.88,
	RecoilMult = 0.88,
}

-------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = [[Muzzle Brake]]
ATT.CompactName = [[Muzzle Brake]]
ATT.Description = [[Redirects gases outward to stabilize the weapon for better control of sustained fire.]]
ATT.Icon = Material("entities/attachs/cod2019_muzzle_muzzlebrake01.png", "mips smooth")

ATT.SortOrder = 3
ATT.AutoStats = true
ATT.Category = "cod2019_muzzle"
ATT.Folder = ARC9:GetPhrase("mw19_folder_muzzle")
ATT.ActivateElements = {"muzzle"}

ATT.Model = "models/weapons/cod2019/attachs/muzzles/attachment_vm_muzzlebrake01.mdl"

table.Merge(ATT, stats_brake)

ATT.MuzzleParticleOverride = "muzzleflash_3"
ATT.MuzzleDevice_Priority = 5
ATT.MuzzleDevice = true

ARC9.LoadAttachment(ATT, "cod2019_attach_muzzlebrake01")
-------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = [[Muzzle Brake]]
ATT.CompactName = [[Muzzle Brake]]
ATT.Description = [[Redirects gases outward to stabilize the weapon for better control of sustained fire.]]
ATT.Icon = Material("entities/attachs/cod2019_muzzle_muzzlebrake02.png", "mips smooth")

ATT.SortOrder = 3
ATT.AutoStats = true
ATT.Category = "cod2019_muzzle"
ATT.Folder = ARC9:GetPhrase("mw19_folder_muzzle")
ATT.ActivateElements = {"muzzle"}

ATT.Model = "models/weapons/cod2019/attachs/muzzles/attachment_vm_muzzlebrake02.mdl"

table.Merge(ATT, stats_brake)

ATT.MuzzleParticleOverride = "muzzleflash_4"
ATT.MuzzleDevice_Priority = 5
ATT.MuzzleDevice = true

ARC9.LoadAttachment(ATT, "cod2019_attach_muzzlebrake02")
-------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = [[Muzzle Brake]]
ATT.CompactName = [[Muzzle Brake]]
ATT.Description = [[Redirects gases outward to stabilize the weapon for better control of sustained fire.]]
ATT.Icon = Material("entities/attachs/cod2019_muzzle_muzzlebrake03.png", "mips smooth")

ATT.SortOrder = 3
ATT.AutoStats = true
ATT.Category = "cod2019_muzzle"
ATT.Folder = ARC9:GetPhrase("mw19_folder_muzzle")
ATT.ActivateElements = {"muzzle"}

ATT.Model = "models/weapons/cod2019/attachs/muzzles/attachment_vm_muzzlebrake03.mdl"

table.Merge(ATT, stats_brake)

ATT.MuzzleParticleOverride = "muzzleflash_FAMAS"
ATT.MuzzleDevice_Priority = 5
ATT.MuzzleDevice = true

ARC9.LoadAttachment(ATT, "cod2019_attach_muzzlebrake03")
-------------------------------------------------------------------------------
-- ATT = {}

-- ATT.MenuCategory = "ARC9 - MW2019 Attachments"
-- ATT.PrintName = [[Muzzle Brake]]
-- ATT.CompactName = [[Muzzle Brake]]
-- ATT.Description = [[Redirects gases outward to stabilize the weapon for better control of sustained fire.]]
-- ATT.Icon = Material("entities/attachs/cod2019_muzzle_muzzlebrake04.png", "mips smooth")

-- ATT.SortOrder = 3
-- ATT.AutoStats = true
-- ATT.Category = "cod2019_muzzle"
-- ATT.Folder = ARC9:GetPhrase("mw19_folder_muzzle")

-- ATT.Model = "models/weapons/cod2019/attachs/muzzles/attachment_vm_muzzlebrake04.mdl"

-- table.Merge(ATT, stats_brake)

-- ARC9.LoadAttachment(ATT, "cod2019_attach_muzzlebrake04")
-------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = [[Breacher Device]]
ATT.CompactName = [[Breacher]]
ATT.Description = [[Muzzle attachment that enables an increased damage on melee hits.]]
ATT.Icon = Material("entities/attachs/cod2019_muzzle_muzzlemelee01.png", "mips smooth")

ATT.SortOrder = 2
ATT.AutoStats = true
ATT.Category = "cod2019_muzzle"
ATT.Folder = ARC9:GetPhrase("mw19_folder_muzzle")
ATT.ActivateElements = {"muzzle"}

ATT.Model = "models/weapons/cod2019/attachs/muzzles/attachment_vm_muzzlemelee01.mdl"

table.Merge(ATT, stats_breach)
ATT.MuzzleDevice_Priority = 5
ATT.MuzzleDevice = true

ARC9.LoadAttachment(ATT, "cod2019_attach_muzzlemelee01")
-------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = [[Breacher Device]]
ATT.CompactName = [[Breacher]]
ATT.Description = [[Muzzle attachment that enables an increased damage on melee hits up to a 1 hit kill.]]
ATT.Icon = Material("entities/attachs/cod2019_muzzle_muzzlemelee02.png", "mips smooth")

ATT.SortOrder = 2
ATT.AutoStats = true
ATT.Category = "cod2019_muzzle"
ATT.Folder = ARC9:GetPhrase("mw19_folder_muzzle")
ATT.ActivateElements = {"muzzle"}

ATT.Model = "models/weapons/cod2019/attachs/muzzles/attachment_vm_muzzlemelee02.mdl"

table.Merge(ATT, stats_breach)
ATT.MuzzleDevice_Priority = 5
ATT.MuzzleDevice = true

ARC9.LoadAttachment(ATT, "cod2019_attach_muzzlemelee02")
-------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = [[Flash Guard]]
ATT.CompactName = [[Flash H]]
ATT.Description = [[Suppress the flash of your weapon to help keep your target visible, and your position concealed. Slightly lowers muzzle velocity.]]
ATT.Icon = Material("entities/attachs/cod2019_muzzle_flashhider01.png", "mips smooth")

ATT.SortOrder = 1
ATT.AutoStats = true
ATT.Category = "cod2019_muzzle"
ATT.Folder = ARC9:GetPhrase("mw19_folder_muzzle")
ATT.ActivateElements = {"muzzle"}

ATT.Model = "models/weapons/cod2019/attachs/muzzles/attachment_vm_flashhider01.mdl"

table.Merge(ATT, stats_flash)

--ATT.Silencer = true
ATT.MuzzleParticleOverride = "muzzleflash_suppressed"
ATT.MuzzleDevice_Priority = 5
ATT.MuzzleDevice = true
ATT.NoFlash = true

ARC9.LoadAttachment(ATT, "cod2019_attach_flashhider01")
-------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = [[Flash Guard]]
ATT.CompactName = [[Flash H]]
ATT.Description = [[Suppress the flash of your weapon to help keep your target visible, and your position concealed. Slightly lowers muzzle velocity.]]
ATT.Icon = Material("entities/attachs/cod2019_muzzle_flashhider02.png", "mips smooth")

ATT.SortOrder = 1
ATT.AutoStats = true
ATT.Category = "cod2019_muzzle"
ATT.Folder = ARC9:GetPhrase("mw19_folder_muzzle")

ATT.Model = "models/weapons/cod2019/attachs/muzzles/attachment_vm_flashhider02.mdl"

table.Merge(ATT, stats_flash)

--ATT.Silencer = true
ATT.MuzzleParticleOverride = "muzzleflash_suppressed"
ATT.MuzzleDevice_Priority = 5
ATT.MuzzleDevice = true
ATT.NoFlash = true

ARC9.LoadAttachment(ATT, "cod2019_attach_flashhider02")
-------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = [[Flash Guard]]
ATT.CompactName = [[Flash H]]
ATT.Description = [[Suppress the flash of your weapon to help keep your target visible, and your position concealed. Slightly lowers muzzle velocity.]]
ATT.Icon = Material("entities/attachs/cod2019_muzzle_flashhider03.png", "mips smooth")

ATT.SortOrder = 1
ATT.AutoStats = true
ATT.Category = "cod2019_muzzle"
ATT.Folder = ARC9:GetPhrase("mw19_folder_muzzle")
ATT.ActivateElements = {"muzzle"}

ATT.Model = "models/weapons/cod2019/attachs/muzzles/attachment_vm_flashhider03.mdl"

table.Merge(ATT, stats_flash)

--ATT.Silencer = true
ATT.MuzzleParticleOverride = "muzzleflash_suppressed"
ATT.MuzzleDevice_Priority = 5
ATT.MuzzleDevice = true
ATT.NoFlash = true

ARC9.LoadAttachment(ATT, "cod2019_attach_flashhider03")
-------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = [[Flash Guard]]
ATT.CompactName = [[Flash H]]
ATT.Description = [[Suppress the flash of your weapon to help keep your target visible, and your position concealed. Slightly lowers muzzle velocity.]]
ATT.Icon = Material("entities/attachs/cod2019_muzzle_flashhider05.png", "mips smooth")

ATT.SortOrder = 1
ATT.AutoStats = true
ATT.Category = "cod2019_muzzle"
ATT.Folder = ARC9:GetPhrase("mw19_folder_muzzle")
ATT.ActivateElements = {"muzzle"}

ATT.Model = "models/weapons/cod2019/attachs/muzzles/attachment_vm_flashhider04.mdl"

table.Merge(ATT, stats_flash)

--ATT.Silencer = true
ATT.MuzzleParticleOverride = "muzzleflash_suppressed"
ATT.MuzzleDevice_Priority = 5
ATT.MuzzleDevice = true
ATT.NoFlash = true

ARC9.LoadAttachment(ATT, "cod2019_attach_flashhider04")