local ATT = {}

local stats_flash = {
    CustomPros = { 
	[ARC9:GetPhrase("mw19_muzzle_stat_muzzleflash")] = ""
	},
    AimDownSightsTimeAdd = 0.006,
}

local stats_breach = {
    BashDamageAdd = 45,
    AimDownSightsTimeAdd = 0.016,
}

local stats_choke = {
    AimDownSightsTimeAdd = 0.011,
	VisualRecoilMult = 1.1,
	RecoilMult = 1.1,
	SpreadMultSights = 0.7,
	SpreadMult = 0.9,
    RangeMinMult = 0.96,
    RangeMaxMult = 0.96,
}

local stats_comp = {
    AimDownSightsTimeAdd = 0.012,
	VisualRecoilMult = 0.75,
	RecoilMult = 0.75,
}

local stats_brake = {
    AimDownSightsTimeAdd = 0.012,
	VisualRecoilMult = 0.88,
	RecoilMult = 0.88,
}

local stats_tac = {
    CustomPros = { 
	[ARC9:GetPhrase("mw19_muzzle_stat_sound")] = ""
	},
    AimDownSightsTimeAdd = 0.02,
	VisualRecoilMult = 0.97,
	RecoilMult = 0.97,
}

local stats_light = {
    CustomPros = { 
	[ARC9:GetPhrase("mw19_muzzle_stat_sound")] = ""
	},
    RangeMinMult = 0.75,
    RangeMaxMult = 0.75,
	VisualRecoilMult = 0.98,
	RecoilMult = 0.98,
}

local stats_mono = {
    CustomPros = { 
	[ARC9:GetPhrase("mw19_muzzle_stat_sound")] = ""
	},
	AimDownSightsTimeAdd = 0.051,
    RangeMinMult = 1.03,
    RangeMaxMult = 1.03,
	VisualRecoilMult = 0.95,
	RecoilMult = 0.95,
}

-------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = [[Muzzle Brake]]
ATT.CompactName = [[Muzzle Brake]]
ATT.Description = [[Redirects gases outward to stabilize the weapon for better control of sustained fire.]]
ATT.Icon = Material("entities/attachs/cod2019_muzzle_muzzlebrake_shgn01.png", "mips smooth")

ATT.SortOrder = 0
ATT.AutoStats = true
ATT.Category = "cod2019_muzzle_shot_db"
ATT.Folder = ARC9:GetPhrase("mw19_folder_muzzle")
ATT.ActivateElements = {"muzzle"}

ATT.Model = "models/weapons/cod2019/attachs/muzzles/db/attachment_vm_sh_charlie725_muzzlebrake.mdl"

table.Merge(ATT, stats_brake)

--ATT.Silencer = true
ATT.MuzzleParticleOverride = "muzzleflash_M3"
ATT.MuzzleDevice_Priority = 5
ATT.MuzzleDevice = true

ARC9.LoadAttachment(ATT, "cod2019_attach_muzzle_db_brake")
-------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = [[Choke]]
ATT.CompactName = [[Choke]]
ATT.Description = [[Device used to narrow the spread of shotgun pellets.]]
ATT.Icon = Material("entities/attachs/cod2019_muzzle_romeo870_choke.png", "mips smooth")

ATT.SortOrder = 0.1
ATT.AutoStats = true
ATT.Category = "cod2019_muzzle_shot_db"
ATT.Folder = ARC9:GetPhrase("mw19_folder_muzzle")
ATT.ActivateElements = {"muzzle"}

ATT.Model = "models/weapons/cod2019/attachs/muzzles/db/attachment_vm_sh_charlie725_choke.mdl"

table.Merge(ATT, stats_choke)

--ATT.Silencer = true
ATT.MuzzleParticleOverride = "muzzleflash_M3"
ATT.MuzzleDevice_Priority = 5
ATT.MuzzleDevice = true

ARC9.LoadAttachment(ATT, "cod2019_attach_muzzle_db_choke")
-------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = [[Compensator]]
ATT.CompactName = [[Compensator]]
ATT.Description = [[Expels gases upward to aggressively fight muzzle climb.]]
ATT.Icon = Material("entities/attachs/cod2019_muzzle_compensator_shgn01.png", "mips smooth")

ATT.SortOrder = 0.15
ATT.AutoStats = true
ATT.Category = "cod2019_muzzle_shot_db"
ATT.Folder = ARC9:GetPhrase("mw19_folder_muzzle")
ATT.ActivateElements = {"muzzle"}

ATT.Model = "models/weapons/cod2019/attachs/muzzles/db/attachment_vm_sh_charlie725_comp.mdl"

table.Merge(ATT, stats_comp)

--ATT.Silencer = true
ATT.MuzzleParticleOverride = "muzzleflash_slug"
ATT.MuzzleDevice_Priority = 5
ATT.MuzzleDevice = true

ARC9.LoadAttachment(ATT, "cod2019_attach_muzzle_db_comp")
-------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = [[Breacher Device]]
ATT.CompactName = [[Breacher Device]]
ATT.Description = [[Muzzle attachment that increases melee damage.]]
ATT.Icon = Material("entities/attachs/cod2019_muzzle_muzzlemelee_shgn01.png", "mips smooth")

ATT.SortOrder = 0.2
ATT.AutoStats = true
ATT.Category = "cod2019_muzzle_shot_db"
ATT.Folder = ARC9:GetPhrase("mw19_folder_muzzle")
ATT.ActivateElements = {"muzzle"}

ATT.Model = "models/weapons/cod2019/attachs/muzzles/db/attachment_vm_sh_charlie725_muzzlemelee.mdl"

table.Merge(ATT, stats_breach)

--ATT.Silencer = true
--ATT.MuzzleParticleOverride = "muzzleflash_suppressed"
ATT.MuzzleDevice_Priority = 5
ATT.MuzzleDevice = true

ARC9.LoadAttachment(ATT, "cod2019_attach_muzzle_db_melee")
-------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = [[Flash Guard]]
ATT.CompactName = [[Flash Guard]]
ATT.Description = [[Suppress the flash of your weapon to help keep your target visible, and your position concealed. Slightly lowers muzzle velocity.]]
ATT.Icon = Material("entities/attachs/cod2019_muzzle_flashhider_shtgn01.png", "mips smooth")

ATT.SortOrder = 0.3
ATT.AutoStats = true
ATT.Category = "cod2019_muzzle_shot_db"
ATT.Folder = ARC9:GetPhrase("mw19_folder_muzzle")
ATT.ActivateElements = {"muzzle"}

ATT.Model = "models/weapons/cod2019/attachs/muzzles/db/attachment_vm_sh_charlie725_flashhider.mdl"

table.Merge(ATT, stats_flash)

ATT.MuzzleParticleOverride = "muzzleflash_suppressed"
ATT.MuzzleDevice_Priority = 5
ATT.MuzzleDevice = true

ARC9.LoadAttachment(ATT, "cod2019_attach_muzzle_db_hider")
------------------------------------------------------------------------------- SHOTGUN SILENCERS
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = [[Lightweight Suppressor]]
ATT.CompactName = [[Lightweight]]
ATT.Description = [[Lightweight aluminum suppressor sacrifices range for stealth and agility.]]
ATT.Icon = Material("entities/attachs/cod2019_muzzle_silencer_725_silencer01.png", "mips smooth")

ATT.SortOrder = 1
ATT.AutoStats = true
ATT.Category = "cod2019_muzzle_shot_db"
ATT.Folder = ARC9:GetPhrase("mw19_folder_suppressor")
ATT.ActivateElements = {"muzzle"}

ATT.Model = "models/weapons/cod2019/attachs/muzzles/db/attachment_vm_sh_charlie725_silencer01.mdl"

table.Merge(ATT, stats_light)

ATT.Silencer = true
ATT.MuzzleParticleOverride = "AC_muzzle_shotgun_suppressed"
ATT.MuzzleDevice_Priority = 5
ATT.MuzzleDevice = true

ARC9.LoadAttachment(ATT, "cod2019_attach_muzzle_sil_01")
-------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = [[Tactical Suppressor]]
ATT.CompactName = [[Tactical]]
ATT.Description = [[Titanium can with stainless steel baffles. Silences weapon with very little additional weight.]]
ATT.Icon = Material("entities/attachs/cod2019_muzzle_silencer_725_silencer02.png", "mips smooth")

ATT.SortOrder = 1
ATT.AutoStats = true
ATT.Category = "cod2019_muzzle_shot_db"
ATT.Folder = ARC9:GetPhrase("mw19_folder_suppressor")
ATT.ActivateElements = {"muzzle"}

ATT.Model = "models/weapons/cod2019/attachs/muzzles/db/attachment_vm_sh_charlie725_silencer03.mdl"

table.Merge(ATT, stats_tac)

ATT.Silencer = true
ATT.MuzzleParticleOverride = "AC_muzzle_shotgun_suppressed"
ATT.MuzzleDevice_Priority = 5
ATT.MuzzleDevice = true

ARC9.LoadAttachment(ATT, "cod2019_attach_muzzle_sil_02")
-------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = [[Monolithic Suppressor]]
ATT.CompactName = [[Monolithic]]
ATT.Description = [[Monolithic core provides superior sound suppression and increased range. Moderate weight increase affects agility.]]
ATT.Icon = Material("entities/attachs/cod2019_muzzle_silencer_725_silencer03.png", "mips smooth")

ATT.SortOrder = 1
ATT.AutoStats = true
ATT.Category = "cod2019_muzzle_shot_db"
ATT.Folder = ARC9:GetPhrase("mw19_folder_suppressor")
ATT.ActivateElements = {"muzzle"}

ATT.Model = "models/weapons/cod2019/attachs/muzzles/db/attachment_vm_sh_charlie725_silencer02.mdl"

table.Merge(ATT, stats_mono)

ATT.Silencer = true
ATT.MuzzleParticleOverride = "AC_muzzle_shotgun_suppressed"
ATT.MuzzleDevice_Priority = 5
ATT.MuzzleDevice = true

ARC9.LoadAttachment(ATT, "cod2019_attach_muzzle_sil_03")
