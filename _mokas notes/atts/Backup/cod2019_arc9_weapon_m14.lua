local ATT = {}
----------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "FORGE TAC Precision 22.0\""
ATT.CompactName = "Precision 22.0\""
ATT.Description = [[Longest barrel available increases muzzle velocity and extends range to the max. Added weight stabilizes shots but hinders mobility.]]

ATT.Icon = Material("entities/attachs/mm/m14/cod2019_mm_m14_barlong2_v2.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/m14/attachment_vm_sn_mike14_barlong2.mdl"
ATT.BoneMerge = false

ATT.SortOrder = 0
ATT.Category = "cod2019_m14_barrel"
ATT.ActivateElements = {"barrel_none","muzzle_none"}

ATT.MuzzleDevice = true -- set to true if you want to use this to emit particles
ATT.MuzzleDevice_Priority = 2

ATT.AimDownSightsTimeMult = 1.15
ATT.DeployTimeMult = 1.1
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
        [3] = { -- slot of the weapon's attachment
            Pos = Vector(3.1, 0, 0),
            Ang = Angle(0,0,0),
        }
    }
}

ARC9.LoadAttachment(ATT, "cod2019_m14_barrel_long")
----------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "FORGE TAC Elite"
ATT.CompactName = "FTAC Elite"
ATT.Description = [[MilSpec steel, precision machined dimples, and a wider bore reduce weight for improved handling at the cost of muzzle velocity.]]

ATT.Icon = Material("entities/attachs/mm/m14/cod2019_mm_m14_barlight.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/m14/attachment_vm_sn_mike14_barlight.mdl"
ATT.BoneMerge = false

ATT.SortOrder = 0
ATT.Category = "cod2019_m14_barrel"
ATT.ActivateElements = {"barrel_none","muzzle_none"}

ATT.MuzzleDevice = true -- set to true if you want to use this to emit particles
ATT.MuzzleDevice_Priority = 2

ATT.AimDownSightsTimeMult = 0.9
ATT.RangeMaxMult = 0.9
ATT.RangeMinMult = 0.9

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["muzzle"] then
        model:SetBodygroup(1,1)
    end
end

ATT.Element = {
    AttPosMods = {
        [3] = { -- slot of the weapon's attachment
            Pos = Vector(-0.5, 0, 0),
            Ang = Angle(0,0,0),
        }
    }
}

ARC9.LoadAttachment(ATT, "cod2019_m14_barrel_short")
---------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "15-Rounds"
ATT.CompactName = "15-R"
ATT.Description = [[]]
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/mm/m14/cod2019_mm_m14_xmags.png", "mips smooth")
ATT.AutoStats = true

ATT.Free = false

ATT.Model = "models/weapons/cod2019/attachs/weapons/m14/attachment_vm_sn_mike14_xmags.mdl"
ATT.BoneMerge = true

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_mag_m14"}
ATT.ActivateElements = {"mag_none","mag_xmag"}

ATT.ClipSizeOverride = 15
ATT.ReloadTimeMult = 1.1

ATT.DropMagazineModel = "models/weapons/cod2019/attachs/weapons/m14/attachment_vm_sn_mike14_xmags.mdl"

ARC9.LoadAttachment(ATT, "cod2019_m14_mag_15")
---------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "20-Rounds"
ATT.CompactName = "20-R"
ATT.Description = [[]]
ATT.SortOrder = 2

ATT.Icon = Material("entities/attachs/mm/m14/cod2019_mm_m14_xmags2.png", "mips smooth")
ATT.AutoStats = true

ATT.Free = false

ATT.Model = "models/weapons/cod2019/attachs/weapons/m14/attachment_vm_sn_mike14_xmags2.mdl"
ATT.BoneMerge = true

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_mag_m14"}
ATT.ActivateElements = {"mag_none","mag_xmag2"}

ATT.ClipSizeOverride = 20
ATT.ReloadTimeMult = 1.15

ATT.DropMagazineModel = "models/weapons/cod2019/attachs/weapons/m14/attachment_vm_sn_mike14_xmags2.mdl"

ARC9.LoadAttachment(ATT, "cod2019_m14_mag_20")