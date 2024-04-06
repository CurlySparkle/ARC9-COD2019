local ATT = {}
----------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "M91 Heavy"
ATT.CompactName = "M91 Heavy"
ATT.Description = [[Designed to better hold down positions, this longer barrel improves muzzle velocity, range, and accuracy. Additional weight hinders mobility.]]

ATT.Icon = Material("entities/attachs/lm/m91/cod2019_lm_m91_barrel_long.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/m91/attachment_vm_lm_kilo121_barrel_long.mdl"
ATT.BoneMerge = false

ATT.SortOrder = 0
ATT.Category = "cod2019_m91_barrel"
ATT.ActivateElements = {"barrel_none","muzzle_none","sight_front_none"}

ATT.MuzzleDevice = true -- set to true if you want to use this to emit particles
ATT.MuzzleDevice_Priority = 2

ATT.AimDownSightsTimeMult = 1.14
ATT.DeployTimeMult = 1.2
ATT.RecoilMult = 0.9
ATT.SpreadMult = 0.75

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
            Pos = Vector(2.6, 0, 0),
            Ang = Angle(0,0,0),
        }
    }
}

ARC9.LoadAttachment(ATT, "cod2019_m91_barrel_long")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "M91 Special Forces"
ATT.CompactName = "M91 Special Forces"
ATT.Description = [[Designed to improve muzzle velocity range with as little additional weight as possible.]]

ATT.Icon = Material("entities/attachs/lm/m91/cod2019_lm_m91_barrel_mid.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/m91/attachment_vm_lm_kilo121_barrel_mid.mdl"
ATT.BoneMerge = false

ATT.SortOrder = 0
ATT.Category = "cod2019_m91_barrel"
ATT.ActivateElements = {"barrel_none","muzzle_none","sight_front_none"}

ATT.MuzzleDevice = true -- set to true if you want to use this to emit particles
ATT.MuzzleDevice_Priority = 2

ATT.AimDownSightsTimeMult = 1.1
ATT.DeployTimeMult = 1.12
ATT.RecoilMult = 0.9
ATT.SpreadMult = 0.95

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["muzzle"] then
        model:SetBodygroup(1,1)
    end
end

ATT.Element = {
    AttPosMods = {
        [2] = { -- slot of the weapon's attachment
            Pos = Vector(-2.8, 0, 0),
            Ang = Angle(0,0,0),
        }
    }
}

ARC9.LoadAttachment(ATT, "cod2019_m91_barrel_mid")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "M91 Infantry"
ATT.CompactName = "M91 Infantry"
ATT.Description = [[Designed to improve mobility, this compact barrel sacrifices accuracy and range for speed and agility.]]

ATT.Icon = Material("entities/attachs/lm/m91/cod2019_lm_m91_barrel_short.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/m91/attachment_vm_lm_kilo121_barrel_short.mdl"
ATT.BoneMerge = false

ATT.SortOrder = 0
ATT.Category = "cod2019_m91_barrel"
ATT.ActivateElements = {"barrel_none","muzzle_none","sight_front_none"}

ATT.MuzzleDevice = true -- set to true if you want to use this to emit particles
ATT.MuzzleDevice_Priority = 2

ATT.AimDownSightsTimeMult = 0.91
ATT.DeployTimeMult = 0.89
ATT.SpreadMult = 1.2

ATT.RangeMaxMult = 0.9
ATT.RangeMinMult = 0.9

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["muzzle"] then
        model:SetBodygroup(1,1)
    end
end

ATT.Element = {
    AttPosMods = {
        [2] = { -- slot of the weapon's attachment
            Pos = Vector(-5.5, 0, 0),
            Ang = Angle(0,0,0),
        }
    }
}

ARC9.LoadAttachment(ATT, "cod2019_m91_barrel_short")