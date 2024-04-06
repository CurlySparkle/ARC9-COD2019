local ATT = {}
----------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "Singuard Arms Whisper"
ATT.CompactName = "Whisper"
ATT.Description = [[Heavy duty integrated suppressor with a monolithic core increases muzzle velocity while maintaining a low sound signature.]]

ATT.Icon = Material("entities/attachs/ar/kilo141/cod2019_ar_kilo141_barsil.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/kilo141/attachment_vm_ar_kilo433_barsil.mdl"
ATT.BoneMerge = false

ATT.SortOrder = 0
ATT.Category = "cod2019_kilo141_barrel"
ATT.ActivateElements = {"barrel_none","muzzle_none","barrel_suppressed"}

ATT.Silencer = true
ATT.MuzzleParticleOverride = "muzzleflash_suppressed"
ATT.MuzzleDevice_Priority = 5
ATT.MuzzleDevice = true

ATT.SprintToFireTimeMult = 0.95
ATT.AimDownSightsTimeMult = 0.95
ATT.RecoilMult = 1.1

ATT.RangeMaxMult = 0.95
ATT.RangeMinMult = 0.95

ARC9.LoadAttachment(ATT, "cod2019_kilo141_barrel_supp")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "Singuard Arms 19.8\" Prowler"
ATT.CompactName = "Prowler"
ATT.Description = [[Stainless steel polygonal rifled barrel with guard extension greatly increases muzzle velocity and extends range. Additional weight stabilizes shots, but hinders mobility.]]

ATT.Icon = Material("entities/attachs/ar/kilo141/cod2019_ar_kilo141_long_barrel.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/kilo141/attachment_vm_ar_kilo433_long_barrel.mdl"
ATT.BoneMerge = false

ATT.SortOrder = 0
ATT.Category = "cod2019_kilo141_barrel"
ATT.ActivateElements = {"barrel_none","muzzle_none","barrel_long"}

ATT.MuzzleDevice_Priority = 2
ATT.MuzzleDevice = true

ATT.SprintToFireTimeMult = 1.15
ATT.AimDownSightsTimeMult = 1.15
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
            Pos = Vector(3.4, 0, 0),
            Ang = Angle(0,0,0),
        },
        -- [4] = { -- slot of the weapon's attachment
            -- Pos = Vector(4, 0, -0.1),
            -- Ang = Angle(0,0,180),
        -- }
    }
}

ARC9.LoadAttachment(ATT, "cod2019_kilo141_barrel_long")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "100 Round 9mm Drum"
ATT.CompactName = "100-Round"
ATT.Description = [[Extended magazines hold 100 rounds with a weight increase.]]

ATT.Icon = Material("entities/attachs/ar/kilo141/cod2019_ar_kilo141_drum_mag.png", "mips smooth")

ATT.ClipSizeOverride = 100
ATT.SprintToFireTimeMult = 1.15
ATT.AimDownSightsTimeMult = 1.15
ATT.DrawTimeMult = 1.2
ATT.HolsterTimeMult = 1.2

ATT.SortOrder = 0
ATT.Category = {"cod2019_kilo141_mag"}
ATT.ActivateElements = {"mag_none","mag_drum"}

ATT.Model = "models/weapons/cod2019/attachs/weapons/kilo141/attachment_vm_ar_kilo433_drum_mag.mdl"
ATT.DropMagazineModel = "models/weapons/cod2019/attachs/weapons/kilo141/attachment_vm_ar_kilo433_drum_mag.mdl"
ATT.BoneMerge = true

ATT.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_01.ogg", 
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_02.ogg", 
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_03.ogg",
}

local bulletbones = {
    [1] = "j_drum_bullet1",
    [2] = "j_drum_bullet2",
	[3] = "j_drum_bullet3",
}

local v0 = Vector(0, 0, 0)
local v1 = Vector(1, 1, 1)

ATT.DrawFunc = function(wep, model, wm)
    local clip = wep:GetLoadedRounds()

    local draw = 3 - clip + 1

    for i = 1, 3 do
        local boneid = model:LookupBone(bulletbones[i])
        if i >= draw then
            model:ManipulateBoneScale(boneid, v1)
        else
            model:ManipulateBoneScale(boneid, v0)
        end
    end
end

ARC9.LoadAttachment(ATT, "cod2019_kilo141_mag_drum")
----------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "Oden Ultralight Hollow"
ATT.CompactName = "Oden Ultralight Hollow"
ATT.Description = [[]]
ATT.Icon = Material("entities/attachs/ar/kilo141/cod2019_ar_kilo141_stock_heavy.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/kilo141/attachment_vm_ar_kilo433_stock_heavy.mdl"
ATT.BoneMerge = true

ATT.SortOrder = 0
ATT.Category = "cod2019_kilo141_stock"
ATT.ActivateElements = {"stock_none"}

ATT.RecoilUpMult = 0.92
ATT.RecoilRandomSideMult = 1.08

ARC9.LoadAttachment(ATT, "cod2019_kilo141_stock_heavy")
----------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "FSS Close Quarters Stock"
ATT.CompactName = "FSS Close Quarters Stock"
ATT.Description = [[Tactical stock streamlined for close quarters combat. Gets you on target faster.]]
ATT.Icon = Material("entities/attachs/ar/kilo141/cod2019_ar_kilo141_stock_v2.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/kilo141/attachment_vm_ar_kilo433_stock_v2.mdl"
ATT.BoneMerge = true

ATT.SortOrder = 0
ATT.Category = "cod2019_kilo141_stock"
ATT.ActivateElements = {"stock_none"}

ATT.RecoilMult = 1.13
ATT.AimDownSightsTimeMult = 0.92
ATT.DeployTimeMult = 0.92

ARC9.LoadAttachment(ATT, "cod2019_kilo141_stock_light")