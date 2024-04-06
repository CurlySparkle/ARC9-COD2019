local ATT = {}
----------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "26.9 Extended Barrel"
ATT.CompactName = "Barrel 26.9"
ATT.Description = [[Longer barrel increases muzzle velocity and extends range. Additional weight stabilizes shots, but hinders mobility.]]

ATT.Icon = Material("entities/attachs/lm/pkm/cod2019_lm_pkm_barrel_long.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/pkm/attachment_vm_lm_pkilo_barrel_long.mdl"
ATT.BoneMerge = false

ATT.SortOrder = 0
ATT.Category = "cod2019_pkm_barrel"
ATT.ActivateElements = {"barrel_none","muzzle_none","sight_front_none"}

ATT.MuzzleDevice = true -- set to true if you want to use this to emit particles
ATT.MuzzleDevice_Priority = 2

ATT.SprintToFireTimeMult = 1.15
ATT.AimDownSightsTimeMult = 1.15
ATT.RecoilMult = 0.9

ATT.RangeMaxMult = 1.25
ATT.RangeMinMult = 1.25

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["muzzle"] then
        model:SetBodygroup(1,1)
    end
    if swep:GetElements()["optic"] then
        model:SetBodygroup(2,1)
    end
end

ATT.Element = {
    AttPosMods = {
        [2] = { -- slot of the weapon's attachment
            Pos = Vector(3.1, 0, 0),
            Ang = Angle(0,0,0),
        }
    }
}

ARC9.LoadAttachment(ATT, "cod2019_pkm_barrel_long")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "18.2 Compact Barrel"
ATT.CompactName = "Barrel 18.2"
ATT.Description = [[Short, compact barrel sacrifices accuracy and range for speed and agility. Good for clearing out tight spaces.]]

ATT.Icon = Material("entities/attachs/lm/pkm/cod2019_lm_pkm_barrel_short.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/pkm/attachment_vm_lm_pkilo_barrel_short.mdl"
ATT.BoneMerge = false

ATT.SortOrder = 0
ATT.Category = "cod2019_pkm_barrel"
ATT.ActivateElements = {"barrel_none","muzzle_none","sight_front_none"}
ATT.ModelOffset = Vector(0, 0, 0)

ATT.MuzzleDevice = true -- set to true if you want to use this to emit particles
ATT.MuzzleDevice_Priority = 2

ATT.SprintToFireTimeMult = 0.85
ATT.AimDownSightsTimeMult = 0.85
ATT.RecoilMult = 1.15

ATT.RangeMaxMult = 0.85
ATT.RangeMinMult = 0.85

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["muzzle"] then
        model:SetBodygroup(1,1)
    end
    if swep:GetElements()["optic"] then
        model:SetBodygroup(2,1)
    end
end

ATT.Element = {
    AttPosMods = {
        [2] = { -- slot of the weapon's attachment
            Pos = Vector(-3, 0, 0),
            Ang = Angle(0,0,0),
        }
    }
}

ARC9.LoadAttachment(ATT, "cod2019_pkm_barrel_short")