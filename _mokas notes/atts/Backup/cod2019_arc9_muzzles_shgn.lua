local ATT = {}

local stats_flash = {
    CustomPros = { 
	[ARC9:GetPhrase("mw19_muzzle_stat_muzzleflash")] = ""
	},
    AimDownSightsTimeAdd = 0.005,
}

local stats_breach = {
    BashDamageAdd = 45,
    AimDownSightsTimeAdd = 0.011,
}

local stats_choke = {
    AimDownSightsTimeAdd = 0.010,
	VisualRecoilMult = 1.1,
	RecoilMult = 1.1,
	SpreadMultSights = 0.9,
	SpreadMult = 0.9,
    RangeMinMult = 0.96,
    RangeMaxMult = 0.96,
}

local stats_comp = {
    AimDownSightsTimeAdd = 0.011,
	VisualRecoilMult = 0.75,
	RecoilMult = 0.75,
}

local stats_brake = {
    AimDownSightsTimeAdd = 0.011,
	VisualRecoilMult = 0.88,
	RecoilMult = 0.88,
}

local stats_tac = {
    CustomPros = { 
	[ARC9:GetPhrase("mw19_muzzle_stat_sound")] = ""
	},
    AimDownSightsTimeAdd = 0.015,
	VisualRecoilMult = 0.97,
	RecoilMult = 0.97,
}

local stats_forge = {
    CustomPros = { 
	[ARC9:GetPhrase("mw19_muzzle_stat_sound")] = ""
	},
    RangeMinMult = 0.75,
    RangeMaxMult = 0.75,
	VisualRecoilMult = 0.93,
	RecoilMult = 0.93,
	SpreadMultSights = 0.65,
	SpeedMult = 0.9,
	SpeedMultSights = 0.97,
}

local stats_mono = {
    CustomPros = { 
	[ARC9:GetPhrase("mw19_muzzle_stat_sound")] = ""
	},
	AimDownSightsTimeAdd = 0.048,
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

ATT.SortOrder = 3
ATT.AutoStats = true
ATT.Category = "cod2019_muzzle_shot"
ATT.Folder = ARC9:GetPhrase("mw19_folder_muzzle")
ATT.ActivateElements = {"muzzle"}

ATT.Model = "models/weapons/cod2019/attachs/muzzles/attachment_vm_muzzlebrake_shgn01.mdl"

table.Merge(ATT, stats_brake)

ATT.MuzzleParticleOverride = "muzzleflash_M3"
ATT.MuzzleDevice_Priority = 5
ATT.MuzzleDevice = true

ARC9.LoadAttachment(ATT, "cod2019_attach_muzzlebrake_shgn01")
-------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = [[Choke]]
ATT.CompactName = [[Choke]]
ATT.Description = [[Device used to narrow the spread of shotgun pellets.]]
ATT.Icon = Material("entities/attachs/cod2019_muzzle_romeo870_choke.png", "mips smooth")

ATT.SortOrder = 5
ATT.AutoStats = true
ATT.Category = "cod2019_muzzle_shot"
ATT.Folder = ARC9:GetPhrase("mw19_folder_muzzle")
ATT.ActivateElements = {"muzzle"}

ATT.Model = "models/weapons/cod2019/attachs/muzzles/attachment_vm_sh_romeo870_choke.mdl"

table.Merge(ATT, stats_choke)

ATT.MuzzleParticleOverride = "muzzleflash_M3"
ATT.MuzzleDevice_Priority = 5
ATT.MuzzleDevice = true

ARC9.LoadAttachment(ATT, "cod2019_attach_romeo870_choke")
-------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = [[Compensator]]
ATT.CompactName = [[Compensator]]
ATT.Description = [[Expels gases upward to aggressively fight muzzle climb.]]
ATT.Icon = Material("entities/attachs/cod2019_muzzle_compensator_shgn01.png", "mips smooth")

ATT.SortOrder = 4
ATT.AutoStats = true
ATT.Category = "cod2019_muzzle_shot"
ATT.Folder = ARC9:GetPhrase("mw19_folder_muzzle")
ATT.ActivateElements = {"muzzle"}

ATT.Model = "models/weapons/cod2019/attachs/muzzles/attachment_vm_compensator_shgn01.mdl"

table.Merge(ATT, stats_comp)

ATT.MuzzleParticleOverride = "muzzleflash_slug"
ATT.MuzzleDevice_Priority = 5
ATT.MuzzleDevice = true

ARC9.LoadAttachment(ATT, "cod2019_attach_compensator_shgn01")
-------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = [[Breacher Device]]
ATT.CompactName = [[Breacher Device]]
ATT.Description = [[Muzzle attachment that increases melee damage.]]
ATT.Icon = Material("entities/attachs/cod2019_muzzle_muzzlemelee_shgn01.png", "mips smooth")

ATT.SortOrder = 1
ATT.AutoStats = true
ATT.Category = "cod2019_muzzle_shot"
ATT.Folder = ARC9:GetPhrase("mw19_folder_muzzle")
ATT.ActivateElements = {"muzzle"}

ATT.Model = "models/weapons/cod2019/attachs/muzzles/attachment_vm_muzzlemelee_shgn01.mdl"

table.Merge(ATT, stats_breach)

ATT.MuzzleDevice_Priority = 5
ATT.MuzzleDevice = true

ARC9.LoadAttachment(ATT, "cod2019_attach_muzzlemelee_shgn01")
-------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = [[Flash Guard]]
ATT.CompactName = [[Flash Guard]]
ATT.Description = [[Suppress the flash of your weapon to help keep your target visible, and your position concealed. Slightly lowers muzzle velocity.]]
ATT.Icon = Material("entities/attachs/cod2019_muzzle_flashhider_shtgn01.png", "mips smooth")

ATT.SortOrder = 2
ATT.AutoStats = true
ATT.Category = "cod2019_muzzle_shot"
ATT.Folder = ARC9:GetPhrase("mw19_folder_muzzle")
ATT.ActivateElements = {"muzzle"}

ATT.Model = "models/weapons/cod2019/attachs/muzzles/attachment_vm_flashhider_shtgn01.mdl"

table.Merge(ATT, stats_flash)

ATT.MuzzleParticleOverride = "muzzleflash_suppressed"
ATT.MuzzleDevice_Priority = 5
ATT.MuzzleDevice = true

ARC9.LoadAttachment(ATT, "cod2019_attach_flashhider_shtgn01")
------------------------------------------------------------------------------- SHOTGUN SILENCERS
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = [[Monolithic Suppressor]]
ATT.CompactName = [[Monolithig]]
ATT.Description = "DESC"
ATT.Icon = Material("entities/attachs/cod2019_muzzle_suppressor_model680.png", "mips smooth")

ATT.SortOrder = 3
ATT.AutoStats = true
ATT.Category = "cod2019_muzzle_shot"
ATT.Folder = ARC9:GetPhrase("mw19_folder_suppressor")
ATT.ActivateElements = {"muzzle"}

ATT.Model = "models/weapons/cod2019/attachs/silencers/attachment_vm_sh_romeo870_shtgnsilencer.mdl"

table.Merge(ATT, stats_mono)

ATT.Silencer = true
ATT.MuzzleParticleOverride = "AC_muzzle_shotgun_suppressed"
ATT.MuzzleDevice_Priority = 5
ATT.MuzzleDevice = true

ARC9.LoadAttachment(ATT, "cod2019_attach_muzzle_silencer_shotgun_01")
-------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = [[Tactical Suppressor]]
ATT.CompactName = [[Tactical]]
ATT.Description = "DESC"
ATT.Icon = Material("entities/attachs/cod2019_muzzle_shgn01.png", "mips smooth")

ATT.SortOrder = 1
ATT.AutoStats = true
ATT.Category = "cod2019_muzzle_shot"
ATT.Folder = ARC9:GetPhrase("mw19_folder_suppressor")
ATT.ActivateElements = {"muzzle"}

ATT.Model = "models/weapons/cod2019/attachs/silencers/attachment_vm_sh_oscar12_silencer02.mdl"

table.Merge(ATT, stats_tac)

ATT.Silencer = true
ATT.MuzzleParticleOverride = "AC_muzzle_shotgun_suppressed"
ATT.MuzzleDevice_Priority = 5
ATT.MuzzleDevice = true

ARC9.LoadAttachment(ATT, "cod2019_attach_muzzle_silencer_shotgun_02")
-------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = [[FORGE TAC Marauder]]
ATT.CompactName = [[FORGE TAC]]
ATT.Description = "DESC"
ATT.Icon = Material("entities/attachs/cod2019_muzzle_suppressor_origin12.png", "mips smooth")

ATT.SortOrder = 2
ATT.AutoStats = true
ATT.Category = "cod2019_muzzle_shot"
ATT.Folder = ARC9:GetPhrase("mw19_folder_suppressor")
ATT.ActivateElements = {"muzzle"}

ATT.Model = "models/weapons/cod2019/attachs/silencers/attachment_vm_sh_oscar12_silencer03.mdl"

table.Merge(ATT, stats_forge)

ATT.Silencer = true
ATT.MuzzleParticleOverride = "AC_muzzle_shotgun_suppressed"
ATT.MuzzleDevice_Priority = 5
ATT.MuzzleDevice = true

ARC9.LoadAttachment(ATT, "cod2019_attach_muzzle_silencer_shotgun_03")
-------------------------------------------------------------------------------
-- 725 Muzzle Attachs Below
-------------------------------------------------------------------------------