local ATT = {}
----------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "FORGE TAC Eclipse"
ATT.CompactName = "FTAC Eclipse"
ATT.Description = [[Lightweight extended front shroud houses a 16" polygonal rifled barrel, increasing both range and muzzle velocity.]]

ATT.Icon = Material("entities/attachs/ar/ram7/cod2019_ar_ram7_barrel_med.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/ram7/attachment_vm_ar_tango21_barrel_med.mdl"
ATT.BoneMerge = false

ATT.SortOrder = 0
ATT.Category = "cod2019_ram7_barrel"
ATT.ActivateElements = {"foregrip_none","barrel_none","muzzle_none"}

ATT.MuzzleDevice = true -- set to true if you want to use this to emit particles
ATT.MuzzleDevice_Priority = 2

ATT.SprintToFireTimeMult = 1.05
ATT.AimDownSightsTimeMult = 1.05
ATT.RecoilMult = 0.95

ATT.RangeMaxMult = 1.1
ATT.RangeMinMult = 1.1

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["muzzle"] then
        model:SetBodygroup(1,1)
    end
end

ATT.Element = {
    AttPosMods = {
        [2] = { -- slot of the weapon's attachment
            Pos = Vector(3.5, 0, 0),
            Ang = Angle(0,0,0),
        }
    }
}

ARC9.LoadAttachment(ATT, "cod2019_ram7_barrel_mid")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "FSS Ranger"
ATT.CompactName = "FSS Ranger"
ATT.Description = [[Fully enclosed 460mm barrel provides the ultimate range and accuracy for this weapon. Additional weight affects mobility.]]

ATT.Icon = Material("entities/attachs/ar/ram7/cod2019_ar_ram7_barrel_long.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/ram7/attachment_vm_ar_tango21_barrel_long.mdl"
ATT.BoneMerge = false

ATT.SortOrder = 0
ATT.Category = "cod2019_ram7_barrel"
ATT.ActivateElements = {"foregrip_none","barrel_none","muzzle_none"}
ATT.ModelOffset = Vector(0, 0, 0)

ATT.MuzzleDevice = true -- set to true if you want to use this to emit particles
ATT.MuzzleDevice_Priority = 2

ATT.SprintToFireTimeMult = 1.1
ATT.AimDownSightsTimeMult = 1.1
ATT.RecoilMult = 0.9

ATT.RangeMaxMult = 1.15
ATT.RangeMinMult = 1.15

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["muzzle"] then
        model:SetBodygroup(1,1)
    end
end

ATT.Element = {
    AttPosMods = {
        [2] = { -- slot of the weapon's attachment
            Pos = Vector(6.3, 0, 0),
            Ang = Angle(0,0,0),
        }
    }
}

ARC9.LoadAttachment(ATT, "cod2019_ram7_barrel_long")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "XRK Close Quarters Stock"
ATT.CompactName = "XRK CQ"
ATT.Description = [[Tactical stock streamlined for close quarters combat. Gets you on target faster.]]

ATT.Icon = Material("entities/attachs/ar/ram7/cod2019_ar_ram7_stock_tactical.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/ram7/attachment_vm_ar_tango21_stock_tactical.mdl"
ATT.BoneMerge = true

ATT.SortOrder = 0
ATT.Category = "cod2019_ram7_stock"
ATT.ActivateElements = {"stock_none","stock_tactical"}

ATT.SprintToFireTimeMult = 0.9
ATT.AimDownSightsTimeMult = 0.9
ATT.RecoilMult = 1.1

ARC9.LoadAttachment(ATT, "cod2019_ram7_stock_tactical")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "60 Round 9mm Drum"
ATT.CompactName = "60-Round"
ATT.Description = [[Extended magazines hold 60 rounds of 9mm conversion with a slight weight increase.]]

ATT.Icon = Material("entities/attachs/ar/ram7/cod2019_ar_ram7_drummag.png", "mips smooth")

ATT.ClipSizeOverride = 60
ATT.ReloadTimeMult = 1.1
ATT.SprintToFireTimeMult = 1.05
ATT.AimDownSightsTimeMult = 1.05

ATT.DamageMaxMult = 0.85
ATT.DamageMinMult = 0.85

ATT.RPM = 1000

ATT.SortOrder = 0
ATT.Category = {"cod2019_ram7_mag"}
ATT.ActivateElements = {"mag_none","mag_drum"}

ATT.ShellModel = "models/weapons/cod2019/shared/shell_9mm_hr.mdl"
ATT.ShellSounds = ARC9.COD2019_9mm_Table
ATT.ShellScale = 0.08

ATT.Model = "models/weapons/cod2019/attachs/weapons/ram7/attachment_vm_ar_tango21_drummag.mdl"
ATT.DropMagazineModel = "models/weapons/cod2019/attachs/weapons/ram7/attachment_vm_ar_tango21_drummag.mdl"
ATT.BoneMerge = true
--ATT.ModelOffset = Vector(1, 0, 1)

ATT.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_01.ogg", 
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_02.ogg", 
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_03.ogg",
}

ATT.BulletBones = {
    [1] = {"j_bullet1","j_ammo1"},
    [2] = {"j_bullet2","j_ammo2"},
	[3] = {"j_bullet3","j_ammo3"},
	[4] = {"j_bullet4","j_ammo4"},
}

ARC9.LoadAttachment(ATT, "cod2019_ram7_mag_drum_9mm")
