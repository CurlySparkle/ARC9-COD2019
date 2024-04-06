local ATT = {}
----------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "Oden Factory 730mm"
ATT.CompactName = "Oden 730mm"
ATT.Description = [[Longer barrel increases muzzle velocity and extends range. Additional weight stabilize shots but slightly affects mobility.]]
ATT.Icon = Material("entities/attachs/ar/oden/cod2019_ar_oden_barlong.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/oden/attachment_vm_ar_asierra12_barlong.mdl"
ATT.BoneMerge = false

ATT.SortOrder = 0
ATT.Category = "cod2019_oden_barrel"
ATT.ActivateElements = {"barrel_none","muzzle_none"}

ATT.MuzzleDevice_Priority = 2
ATT.MuzzleDevice = true

ATT.DeployTimeMult = 1.05
ATT.AimDownSightsTimeMult = 1.07

ATT.RecoilMult = 0.95
ATT.RangeMaxMult = 1.07
ATT.SpreadMult = 0.95

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["muzzle"] then
        model:SetBodygroup(1,1)
    end
end

ATT.Element = {
    AttPosMods = {
        [2] = { -- slot of the weapon's attachment
            Pos = Vector(2.4, 0, 0),
            Ang = Angle(0,0,0),
        },
    }
}

ARC9.LoadAttachment(ATT, "cod2019_oden_barrel_long")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "Oden Factory 420mm"
ATT.CompactName = "Oden 420mm"
ATT.Description = [[Short, compact barrel sacrifices accuracy and range for speed and agility. When mobility matters more than precision.]]
ATT.Icon = Material("entities/attachs/ar/oden/cod2019_ar_oden_barshort.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/oden/attachment_vm_ar_asierra12_barshort.mdl"
ATT.BoneMerge = false

ATT.SortOrder = 0
ATT.Category = "cod2019_oden_barrel"
ATT.ActivateElements = {"barrel_none","muzzle_none"}

ATT.MuzzleDevice_Priority = 2
ATT.MuzzleDevice = true

ATT.AimDownSightsTimeMult = 0.92
ATT.DeployTimeMult = 0.90
ATT.RecoilMult = 1.05
ATT.RangeMaxMult = 0.93

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["muzzle"] then
        model:SetBodygroup(1,1)
    end
end

ATT.Element = {
    AttPosMods = {
        [2] = { -- slot of the weapon's attachment
            Pos = Vector(-1.5, 0, 0),
            Ang = Angle(0,0,0),
        },
    }
}

ARC9.LoadAttachment(ATT, "cod2019_oden_barrel_short")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "FORGE TAC Ballast Pack"
ATT.CompactName = "FTAC Ballast"
ATT.Description = [[Weighted packs provide stability while aiming.]]
ATT.Icon = Material("entities/attachs/ar/oden/cod2019_ar_oden_stockh.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/oden/attachment_vm_ar_asierra12_stockh_v2.mdl"
ATT.BoneMerge = true

ATT.SortOrder = 0
ATT.Category = "cod2019_oden_stock"
ATT.ActivateElements = {"stock_none"}

ATT.AimDownSightsTimeMult = 1.07
ATT.DeployTimeMult = 0.87

ARC9.LoadAttachment(ATT, "cod2019_oden_stock_heavy")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "30 Round Mags"
ATT.CompactName = "30-Round"
ATT.Description = [[]]
ATT.Icon = Material("entities/attachs/ar/oden/cod2019_ar_oden_xxmags.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/oden/attachment_vm_ar_asierra12_xxmags.mdl"
ATT.BoneMerge = true

ATT.SortOrder = 0
ATT.Category = "cod2019_oden_mag"
ATT.ActivateElements = {"mag_none"}

ATT.ClipSizeOverride = 30
ATT.AimDownSightsTimeMult = 1.07
ATT.DeployTimeMult = 1.1
ATT.ReloadTimeMult = 1.15

ARC9.LoadAttachment(ATT, "cod2019_oden_mag_30")