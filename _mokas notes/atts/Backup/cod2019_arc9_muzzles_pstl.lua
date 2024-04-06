local ATT = {}

local stats_flash = {
    CustomPros = { 
	[ARC9:GetPhrase("mw19_muzzle_stat_muzzleflash")] = ""
	},
    PhysBulletMuzzleVelocityAdd = -22 / ARC9.HUToM,
    AimDownSightsTimeAdd = 0.002,
}

local stats_comp = {
    AimDownSightsTimeAdd = 0.005,
	VisualRecoilMult = 0.75,
	RecoilMult = 0.75,
}

local stats_brake = {
    AimDownSightsTimeAdd = 0.005,
	VisualRecoilMult = 0.88,
	RecoilMult = 0.88,
}

-------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = [[Compensator]]
ATT.CompactName = [[Compensator]]
ATT.Description = [[Expels gases upward to aggressively fight muzzle climb.]]
ATT.Icon = Material("entities/attachs/cod2019_muzzle_compensator_pstl01.png", "mips smooth")

ATT.SortOrder = 3
ATT.AutoStats = true
ATT.Category = "cod2019_muzzle_pistols"
ATT.Folder = ARC9:GetPhrase("mw19_folder_muzzle")
ATT.ActivateElements = {"muzzle","muzzle_comp"}

ATT.Model = "models/weapons/cod2019/attachs/muzzles/attachment_vm_compensator_pstl01.mdl"

table.Merge(ATT, stats_comp)

--ATT.Silencer = true
ATT.MuzzleParticleOverride = "muzzleflash_pistol"
ATT.MuzzleDevice_Priority = 5
ATT.MuzzleDevice = true

ARC9.LoadAttachment(ATT, "cod2019_attach_compensator_pstl01")
-------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = [[Muzzle Brake]]
ATT.CompactName = [[Muzzle Brake]]
ATT.Description = [[Redirects gases outward to stabilize the weapon for better control of sustained fire.]]
ATT.Icon = Material("entities/attachs/cod2019_muzzle_muzzlebrake_pstl01.png", "mips smooth")

ATT.SortOrder = 2
ATT.AutoStats = true
ATT.Category = "cod2019_muzzle_pistols"
ATT.Folder = ARC9:GetPhrase("mw19_folder_muzzle")
ATT.ActivateElements = {"muzzle","muzzle_comp"}

ATT.Model = "models/weapons/cod2019/attachs/muzzles/attachment_vm_muzzlebrake_pstl01.mdl"

table.Merge(ATT, stats_brake)

--ATT.Silencer = true
ATT.MuzzleParticleOverride = "muzzleflash_3"
ATT.MuzzleDevice_Priority = 5
ATT.MuzzleDevice = true

ARC9.LoadAttachment(ATT, "cod2019_attach_muzzlebrake_pstl01")
-------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = [[Flash Guard]]
ATT.CompactName = [[Flash Guard]]
ATT.Description = [[Suppress the flash of your weapon to help keep your target visible, and your position concealed. Slightly lowers muzzle velocity.]]
ATT.Icon = Material("entities/attachs/cod2019_muzzle_flashhider_pstl01.png", "mips smooth")

ATT.SortOrder = 1
ATT.AutoStats = true
ATT.Category = "cod2019_muzzle_pistols"
ATT.Folder = ARC9:GetPhrase("mw19_folder_muzzle")
ATT.ActivateElements = {"muzzle","muzzle_comp"}

ATT.Model = "models/weapons/cod2019/attachs/muzzles/attachment_vm_flashhider_psl01.mdl"

table.Merge(ATT, stats_flash)

--ATT.Silencer = true
ATT.MuzzleParticleOverride = "muzzleflash_suppressed"
ATT.MuzzleDevice_Priority = 5
ATT.MuzzleDevice = true

ARC9.LoadAttachment(ATT, "cod2019_attach_flashhider_psl01")