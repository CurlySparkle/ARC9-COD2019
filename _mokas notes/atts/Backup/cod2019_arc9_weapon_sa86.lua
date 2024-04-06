local ATT = {}
----------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "SA87 18.2 Factory"
ATT.CompactName = "Barrel 18.2"
ATT.Description = [[Shorter barrel improves agility at a slight cost to bullet velocity and range.]]

ATT.Icon = Material("entities/attachs/lm/sa86/cod2019_lm_sa86_barrel_mid.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/sa86/attachment_vm_lm_lima86_barrel_mid.mdl"
ATT.BoneMerge = true

ATT.SortOrder = 0
ATT.Category = "cod2019_sa86_barrel"
ATT.ActivateElements = {"barrel_none","muzzle_none"}

ATT.MuzzleDevice = true -- set to true if you want to use this to emit particles
ATT.MuzzleDevice_Priority = 3

ATT.SprintToFireTimeMult = 0.95
ATT.AimDownSightsTimeMult = 0.95
ATT.RecoilMult = 1.05

ATT.RangeMaxMult = 0.95
ATT.RangeMinMult = 0.95

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["muzzle"] then
        model:SetBodygroup(1,1)
    end
end

ATT.Element = {
    AttPosMods = {
        [2] = { -- slot of the weapon's attachment
            Pos = Vector(-4.8, 0, 0),
            Ang = Angle(0,0,0),
        }
    }
}

ARC9.LoadAttachment(ATT, "cod2019_sa86_barrel_mid")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "SA87 12.4 Factory"
ATT.CompactName = "Barrel 12.4"
ATT.Description = [[Shortest barrel available sacrifices accuracy and range for speed and agility.]]

ATT.Icon = Material("entities/attachs/lm/sa86/cod2019_lm_sa86_barrel_short.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/sa86/attachment_vm_lm_lima86_barrel_short.mdl"
ATT.BoneMerge = true

ATT.SortOrder = 0
ATT.Category = "cod2019_sa86_barrel"
ATT.ActivateElements = {"barrel_none","muzzle_none"}

ATT.MuzzleDevice = true -- set to true if you want to use this to emit particles
ATT.MuzzleDevice_Priority = 3

ATT.SprintToFireTimeMult = 0.85
ATT.AimDownSightsTimeMult = 0.85
ATT.RecoilMult = 1.15

ATT.RangeMaxMult = 0.85
ATT.RangeMinMult = 0.85

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["muzzle"] then
        model:SetBodygroup(1,1)
    end
end

ATT.Element = {
    AttPosMods = {
        [2] = { -- slot of the weapon's attachment
            Pos = Vector(-8.3, 0, 0),
            Ang = Angle(0,0,0),
        }
    }
}

ARC9.LoadAttachment(ATT, "cod2019_sa86_barrel_short")
----------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "FORGE TAC Reciever"
ATT.CompactName = "FTAC R"
ATT.Description = [[]]

ATT.Icon = Material("entities/attachs/lm/sa86/cod2019_lm_sa86_reciever_v2.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/sa86/attachment_vm_lm_lima86_v2_receiver_v5.mdl"
ATT.BoneMerge = true

ATT.SortOrder = 0
ATT.Category = "cod2019_sa86_reciever"
ATT.ActivateElements = {"body_none","foregrip_none","sight_none"}

ATT.AimDownSightsTimeMult = 0.9
ATT.TriggerDelayTime = 0.04

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["optic"] then
        model:SetBodygroup(1,1)
    end
    if swep:GetElements()["optic_scope"] then
        model:SetBodygroup(1,1)
    end
end

-- ATT.Element = {
    -- AttPosMods = {
        -- [2] = { -- slot of the weapon's attachment
            -- Pos = Vector(2.5, 0, 0),
            -- Ang = Angle(0,0,0),
        -- }
    -- }
-- }

ARC9.LoadAttachment(ATT, "cod2019_sa86_reciever_v5")
---------------------------------------------------------------------------------------