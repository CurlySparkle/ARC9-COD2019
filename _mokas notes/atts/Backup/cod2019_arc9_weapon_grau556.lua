local ATT = {}
----------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "Tempus 26.4\" Archangel"
ATT.CompactName = "Tempus 26.4"
ATT.Description = [[Partially shrouded 26.4" barrel from FSS provides the ultimate in range and accuracy. This heavy weight barrel is ideal for improving long range marksmanship.]]

ATT.Icon = Material("entities/attachs/ar/grau556/cod2019_ar_grau556_barxlong.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/grau556/attachment_vm_ar_sierra552_barxlong.mdl"
ATT.BoneMerge = false

ATT.LHIK_Priority = 2
ATT.LHIK = true

ATT.SortOrder = 0
ATT.Category = "cod2019_grau556_barrel"
ATT.ActivateElements = {"barrel_none","muzzle_none","sight_front_none","barrel_custom"}

ATT.MuzzleDevice_Priority = 5
ATT.MuzzleDevice = true

ATT.AimDownSightsTimeMult = 1.2
ATT.RangeMaxMult = 1.2
ATT.RangeMinMult = 1.2
ATT.SpreadMult = 0.9
ATT.DrawTimeMult = 1.2
ATT.HolsterTimeMult = 1.2

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["muzzle"] then
        model:SetBodygroup(1,1)
    end
    if swep:GetElements()["optic"] or swep:GetElements()["optic_scope"] then
        model:SetBodygroup(2,1)
    end
end

ATT.Element = {
    AttPosMods = {
        [2] = { -- slot of the weapon's attachment
            Pos = Vector(11.3, 0, 0),
            Ang = Angle(0,0,0),
        },
        [4] = { -- slot of the weapon's attachment
            Pos = Vector(0, -0.69, -0.025),
            Ang = Angle(0,0,0),
        },
    }
}

ARC9.LoadAttachment(ATT, "cod2019_grau556_barrel_barxlong")
----------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "FFS 20.8 Nexus"
ATT.CompactName = "FFS 20.8"
ATT.Description = [[Stainless steel 20.8" barrel increases muzzle velocity and extends range. Additional weight stabilizes shots but hinders mobility.]]

ATT.Icon = Material("entities/attachs/ar/grau556/cod2019_ar_grau556_barlong.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/grau556/attachment_vm_ar_sierra552_barlong.mdl"
ATT.BoneMerge = false

ATT.LHIK_Priority = 2
ATT.LHIK = true

ATT.SortOrder = 0
ATT.Category = "cod2019_grau556_barrel"
ATT.ActivateElements = {"barrel_none","muzzle_none","sight_front_none","barrel_custom"}

ATT.MuzzleDevice_Priority = 5
ATT.MuzzleDevice = true

ATT.AimDownSightsTimeMult = 1.1
ATT.RangeMaxMult = 1.1
ATT.RangeMinMult = 1.1
ATT.SpreadMult = 0.95
ATT.DrawTimeMult = 1.1
ATT.HolsterTimeMult = 1.1

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["muzzle"] then
        model:SetBodygroup(1,1)
    end
    if swep:GetElements()["optic"] or swep:GetElements()["optic_scope"] then
        model:SetBodygroup(2,1)
    end
end

ATT.Element = {
    AttPosMods = {
        [2] = { -- slot of the weapon's attachment
            Pos = Vector(5.3, 0, 0),
            Ang = Angle(0,0,0),
        },
        [4] = { -- slot of the weapon's attachment
            Pos = Vector(-0.6, -0.69, -0.025),
            Ang = Angle(0,0,0),
        },
    }
}

ARC9.LoadAttachment(ATT, "cod2019_grau556_barrel_long")
----------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "XRK CZEN mk2"
ATT.CompactName = "XRK CZEN"
ATT.Description = [[Aluminum alloy shroud and chrome-moly polygonal rifled barrel perfectly balance range with mobility.]]

ATT.Icon = Material("entities/attachs/ar/grau556/cod2019_ar_grau556_barh.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/grau556/attachment_vm_ar_sierra552_barh.mdl"
ATT.BoneMerge = false

ATT.LHIK_Priority = 2
ATT.LHIK = true

ATT.SortOrder = 0
ATT.Category = "cod2019_grau556_barrel"
ATT.ActivateElements = {"barrel_none","muzzle_none","sight_front_none","barrel_custom"}

ATT.MuzzleDevice_Priority = 5
ATT.MuzzleDevice = true

ATT.AimDownSightsTimeMult = 0.92
ATT.RecoilKickMult = 1.1
ATT.DrawTimeMult = 0.92
ATT.HolsterTimeMult = 0.92

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["muzzle"] then
        model:SetBodygroup(1,1)
    end
    if swep:GetElements()["optic"] or swep:GetElements()["optic_scope"] then
        model:SetBodygroup(2,1)
    end
end

ATT.Element = {
    AttPosMods = {
        [2] = { -- slot of the weapon's attachment
            Pos = Vector(0.6, 0, 0),
            Ang = Angle(0,0,0),
        },
        [4] = { -- slot of the weapon's attachment
            Pos = Vector(-0.6, -0.69, -0.025),
            Ang = Angle(0,0,0),
        },
    }
}

ARC9.LoadAttachment(ATT, "cod2019_grau556_barrel_heavy")
----------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "FSS Blackjack"
ATT.CompactName = "FSS Blackjack"
ATT.Description = [[Heavy duty fixed stock provides reliable stability while aiming.]]

ATT.Icon = Material("entities/attachs/ar/grau556/cod2019_ar_grau556_stockh.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/grau556/attachment_vm_ar_sierra552_stockh.mdl"
ATT.BoneMerge = true

ATT.SortOrder = 0
ATT.Category = "cod2019_grau556_stock"
ATT.ActivateElements = {"stock_none"}

ATT.AimDownSightsTimeMult = 1.25
ATT.RecoilMult = 0.9
ATT.DrawTimeMult = 1.25
ATT.HolsterTimeMult = 1.25

ARC9.LoadAttachment(ATT, "cod2019_grau556_stock_heavy")
----------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "No Stock"
ATT.CompactName = "No Stock"
ATT.Description = [[The ultimate run and gun modification when agility is more important than precision. Removing the stock greatly increases movement.]]

ATT.Icon = Material("entities/attachs/ar/grau556/cod2019_ar_grau556_stockno.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/grau556/attachment_vm_ar_sierra552_stockno.mdl"
ATT.BoneMerge = true

ATT.SortOrder = 0
ATT.Category = "cod2019_grau556_stock"
ATT.ActivateElements = {"stock_none2"}

ATT.AimDownSightsTimeMult = 0.85
ATT.RecoilKickMult = 1.25
ATT.DrawTimeMult = 0.85
ATT.HolsterTimeMult = 0.85

ARC9.LoadAttachment(ATT, "cod2019_grau556_stock_none")
----------------------------------------------------------------------------------------
-- ATT = {}

-- ATT.PrintName = [[.300 Blackout 30-Round Mags]]
-- ATT.CompactName = [[300-30-Round]]
-- ATT.Icon = Material("entities/attachs/ext_mag.png")
-- ATT.Description = [[Conversion kit to use .300 Blackout ammunition. Higher caliber with a lower muzzle velocity, these subsonic rounds pack more energy over greater distances.]]
-- ATT.Pros = {}
-- ATT.Cons = {}
-- ATT.SortOrder = 1
-- ATT.Free = false
-- ATT.BoneMerge = true

-- ATT.MenuCategory = "ARC9 - MW2019 Attachments"
-- ATT.Category = {"cod2019_grau556_mag"}

-- ATT.ActivateElements = {"mag_m13"}
-- --ATT.Model = "models/weapons/cod2019/attachs/mag/grau556_xmag.mdl"
-- ATT.DropMagazineModel = "models/weapons/cod2019/mags/w_rif_m13_mag.mdl"

-- ATT.ClipSizeOverride = 30
-- ATT.RecoilMult = 1.1

-- ATT.DamageMaxMult = 1.15
-- ATT.DamageMinMult = 1.15

-- ARC9.LoadAttachment(ATT, "cod2019_grau556_mag_m13")