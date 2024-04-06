local ATT = {}

local stats_tac = {
    CustomPros = { 
	[ARC9:GetPhrase("mw19_muzzle_stat_sound")] = ""
	},
    AimDownSightsTimeAdd = 0.013,
	VisualRecoilMult = 0.97,
	RecoilMult = 0.97,
}

local stats_light = {
    CustomPros = { 
	[ARC9:GetPhrase("mw19_muzzle_stat_sound")] = ""
	},
    PhysBulletMuzzleVelocityAdd = -153 / ARC9.HUToM,
    RangeMinMult = 0.75,
    RangeMaxMult = 0.75,
	VisualRecoilMult = 0.98,
	RecoilMult = 0.98,
}

local stats_mono = {
    CustomPros = { 
	[ARC9:GetPhrase("mw19_muzzle_stat_sound")] = ""
	},
    PhysBulletMuzzleVelocityAdd = 170 / ARC9.HUToM,
	AimDownSightsTimeAdd = 0.024,
    RangeMinMult = 1.1,
    RangeMaxMult = 1.1,
	VisualRecoilMult = 0.95,
	RecoilMult = 0.95,
}

local stats_mono_pist = {
    CustomPros = { 
	[ARC9:GetPhrase("mw19_muzzle_stat_sound")] = ""
	},
    PhysBulletMuzzleVelocityAdd = 75 / ARC9.HUToM,
	AimDownSightsTimeAdd = 0.015,
    RangeMinMult = 1.1,
    RangeMaxMult = 1.1,
	VisualRecoilMult = 0.95,
	RecoilMult = 0.95,
}

local stats_light_pist = {
    CustomPros = { 
	[ARC9:GetPhrase("mw19_muzzle_stat_sound")] = ""
	},
    PhysBulletMuzzleVelocityAdd = -67 / ARC9.HUToM,
    RangeMinMult = 0.75,
    RangeMaxMult = 0.75,
	VisualRecoilMult = 0.98,
	RecoilMult = 0.98,
}

-------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = [[Tactical Suppressor]]
ATT.CompactName = [[Tactical]]
ATT.Description = "DESC"
ATT.Icon = Material("entities/attachs/cod2019_muzzle_silencer04.png", "mips smooth")

ATT.SortOrder = 1
ATT.AutoStats = true
ATT.Category = "cod2019_muzzle"
ATT.Folder = ARC9:GetPhrase("mw19_folder_suppressor")
ATT.ActivateElements = {"muzzle"}

ATT.Model = "models/weapons/cod2019/attachs/silencers/attachment_vm_silencer04.mdl"

table.Merge(ATT, stats_tac)

ATT.Silencer = true
ATT.MuzzleParticleOverride = "muzzleflash_suppressed"
ATT.MuzzleDevice_Priority = 5
ATT.MuzzleDevice = true

ARC9.LoadAttachment(ATT, "cod2019_attach_muzzle_silencer04")
-------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = [[Lightweight Suppressor]]
ATT.CompactName = [[Lightweight]]
ATT.Description = "DESC"
ATT.Icon = Material("entities/attachs/cod2019_muzzle_silencer03.png", "mips smooth")

ATT.SortOrder = 2
ATT.AutoStats = true
ATT.Category = "cod2019_muzzle"
ATT.Folder = ARC9:GetPhrase("mw19_folder_suppressor")
ATT.ActivateElements = {"muzzle"}

ATT.Model = "models/weapons/cod2019/attachs/silencers/attachment_vm_silencer03.mdl"

table.Merge(ATT, stats_light)

ATT.Silencer = true
ATT.MuzzleParticleOverride = "muzzleflash_suppressed"
ATT.MuzzleDevice_Priority = 5
ATT.MuzzleDevice = true

ARC9.LoadAttachment(ATT, "cod2019_attach_muzzle_silencer03")
-------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = [[Lightweight Suppressor]]
ATT.CompactName = [[Lightweight]]
ATT.Description = [[Lightweight aluminum suppressor sacrifices range for stealth and agility.]]
ATT.Icon = Material("entities/attachs/cod2019_muzzle_silencer_east01.png", "mips smooth")

ATT.SortOrder = 2
ATT.AutoStats = true
ATT.Category = "cod2019_muzzle"
ATT.Folder = ARC9:GetPhrase("mw19_folder_suppressor")
ATT.ActivateElements = {"muzzle"}

ATT.Model = "models/weapons/cod2019/attachs/silencers/attachment_vm_silencer_east01.mdl"

table.Merge(ATT, stats_light)

ATT.Silencer = true
ATT.MuzzleParticleOverride = "muzzleflash_suppressed"
ATT.MuzzleDevice_Priority = 5
ATT.MuzzleDevice = true

ARC9.LoadAttachment(ATT, "cod2019_attach_muzzle_silencer_east01")
-------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = [[Lightweight Suppressor]]
ATT.CompactName = [[Lightweight]]
ATT.Description = "DESC"
ATT.Icon = Material("entities/attachs/cod2019_muzzle_silencer_east03.png", "mips smooth")

ATT.SortOrder = 2
ATT.AutoStats = true
ATT.Category = "cod2019_muzzle"
ATT.Folder = ARC9:GetPhrase("mw19_folder_suppressor")
ATT.ActivateElements = {"muzzle"}

ATT.Model = "models/weapons/cod2019/attachs/silencers/attachment_vm_silencer_east03.mdl"

table.Merge(ATT, stats_light)

ATT.Silencer = true
ATT.MuzzleParticleOverride = "muzzleflash_suppressed"
ATT.MuzzleDevice_Priority = 5
ATT.MuzzleDevice = true

ARC9.LoadAttachment(ATT, "cod2019_attach_muzzle_silencer_east03")
-------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = [[Monolithic Suppressor]]
ATT.CompactName = [[Monolithic]]
ATT.Description = "DESC"
ATT.Icon = Material("entities/attachs/cod2019_muzzle_silencer02.png", "mips smooth")

ATT.SortOrder = 3
ATT.AutoStats = true
ATT.Category = "cod2019_muzzle"
ATT.Folder = ARC9:GetPhrase("mw19_folder_suppressor")
ATT.ActivateElements = {"muzzle"}

ATT.Model = "models/weapons/cod2019/attachs/silencers/attachment_vm_silencer02.mdl"

table.Merge(ATT, stats_mono)

ATT.Silencer = true
ATT.MuzzleParticleOverride = "muzzleflash_suppressed"
ATT.MuzzleDevice_Priority = 5
ATT.MuzzleDevice = true

ARC9.LoadAttachment(ATT, "cod2019_attach_muzzle_silencer02")
-------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = [[Monolithic Suppressor]]
ATT.CompactName = [[Monolithic]]
ATT.Description = "DESC"
ATT.Icon = Material("entities/attachs/cod2019_muzzle_silencer_east02.png", "mips smooth")

ATT.SortOrder = 3
ATT.AutoStats = true
ATT.Category = "cod2019_muzzle"
ATT.Folder = ARC9:GetPhrase("mw19_folder_suppressor")
ATT.ActivateElements = {"muzzle"}

ATT.Model = "models/weapons/cod2019/attachs/silencers/attachment_vm_silencer_east02.mdl"

table.Merge(ATT, stats_mono)

ATT.Silencer = true
ATT.MuzzleParticleOverride = "muzzleflash_suppressed"
ATT.MuzzleDevice_Priority = 5
ATT.MuzzleDevice = true

ARC9.LoadAttachment(ATT, "cod2019_attach_muzzle_silencer_east02")
------------------------------------------------------------------------------- PISTOLS
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = [[Monolithic Suppressor]]
ATT.CompactName = [[Monolithic]]
ATT.Description = [[Monolithic core provides superior sound suppression and increased range. Moderate weight increase affects agility.]]
ATT.Icon = Material("entities/attachs/cod2019_muzzle_silencer_pstl_03.png", "mips smooth")

ATT.SortOrder = 1
ATT.AutoStats = true
ATT.Category = "cod2019_muzzle_pistols"
ATT.Folder = ARC9:GetPhrase("mw19_folder_suppressor")
ATT.ActivateElements = {"muzzle"}

ATT.Model = "models/weapons/cod2019/attachs/silencers/attachment_vm_silencer_pstl_03.mdl"

table.Merge(ATT, stats_mono_pist)

ATT.Silencer = true
ATT.MuzzleParticleOverride = "muzzleflash_suppressed"
ATT.MuzzleDevice_Priority = 5
ATT.MuzzleDevice = true

ARC9.LoadAttachment(ATT, "cod2019_attach_muzzle_silencer_pstl_03")
-------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = [[Lightweight Suppressor]]
ATT.CompactName = [[Lightweight]]
ATT.Description = [[Lightweight aluminum suppressor sacrifices range for stealth and agility.]]
ATT.Icon = Material("entities/attachs/cod2019_muzzle_silencer_pstl_01.png", "mips smooth")

ATT.SortOrder = 2
ATT.AutoStats = true
ATT.Category = "cod2019_muzzle_pistols"
ATT.Folder = ARC9:GetPhrase("mw19_folder_suppressor")
ATT.ActivateElements = {"muzzle"}

ATT.Model = "models/weapons/cod2019/attachs/silencers/attachment_vm_silencer_pstl_01.mdl"

table.Merge(ATT, stats_light_pist)

ATT.Silencer = true
ATT.MuzzleParticleOverride = "muzzleflash_suppressed"
ATT.MuzzleDevice_Priority = 5
ATT.MuzzleDevice = true

ARC9.LoadAttachment(ATT, "cod2019_attach_muzzle_silencer_pstl_01")
-------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = [[Tactical Suppressor]]
ATT.CompactName = [[Tactical]]
ATT.Description = [[Titanium can with stainless steel baffles. Silences weapon with very little additional weight.]]
ATT.Icon = Material("entities/attachs/cod2019_muzzle_silencer_pstl_02.png", "mips smooth")

ATT.SortOrder = 3
ATT.AutoStats = true
ATT.Category = "cod2019_muzzle_pistols"
ATT.Folder = ARC9:GetPhrase("mw19_folder_suppressor")
ATT.ActivateElements = {"muzzle"}

ATT.Model = "models/weapons/cod2019/attachs/silencers/attachment_vm_silencer_pstl_02.mdl"

table.Merge(ATT, stats_mono_pist)

ATT.Silencer = true
ATT.MuzzleParticleOverride = "muzzleflash_suppressed"
ATT.MuzzleDevice_Priority = 5
ATT.MuzzleDevice = true

ARC9.LoadAttachment(ATT, "cod2019_attach_muzzle_silencer_pstl_02")