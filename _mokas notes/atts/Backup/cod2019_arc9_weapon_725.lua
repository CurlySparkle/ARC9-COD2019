local ATT = {}
----------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Tempus SlimGrip"
ATT.CompactName = "SlimGrip"
ATT.Description = [[Ultralight forend grips allows greater control while preforming high-speed maneuvers.]]
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/sh/725/cod2019_sh_725_foreendlight.png", "mips smooth")
ATT.AutoStats = true

ATT.Free = false

ATT.Model = "models/weapons/cod2019/attachs/weapons/725/attachment_vm_sh_charlie725_foreendlight.mdl"
ATT.BoneMerge = true

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_725_foregrip"}
ATT.ActivateElements = {"foregrip_none","rail_grip_none"}

-- ATT.AimDownSightsTimeMult = 1.25
-- ATT.SprintToFireTimeMult = 1.25
-- ATT.RecoilMult = 0.85

-- ATT.RangeMaxMult = 1.25
-- ATT.RangeMinMult = 1.25
-- ATT.PhysBulletMuzzleVelocityMult = 1.25

ARC9.LoadAttachment(ATT, "cod2019_725_foregrip_light")
---------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Cronen Equilibrium"
ATT.CompactName = "Equilibrium"
ATT.Description = [[Competition stock with adjustable comb and buttplate provide exceptional precision while aiming.]]
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/sh/725/cod2019_sh_725_stocktactical.png", "mips smooth")
ATT.AutoStats = true

ATT.Free = false

ATT.Model = "models/weapons/cod2019/attachs/weapons/725/attachment_vm_sh_charlie725_stockstable.mdl"
ATT.BoneMerge = true

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_725_stock"}
ATT.ActivateElements = {"stock_none"}

-- ATT.AimDownSightsTimeMult = 1.25
-- ATT.SprintToFireTimeMult = 1.25
-- ATT.RecoilMult = 0.85

-- ATT.RangeMaxMult = 1.25
-- ATT.RangeMinMult = 1.25
-- ATT.PhysBulletMuzzleVelocityMult = 1.25

ARC9.LoadAttachment(ATT, "cod2019_725_stock_stable")
---------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Tempus Smooth Bore"
ATT.CompactName = "Smooth Bore"
ATT.Description = [[Lightweight smooth bore barrel widens pellet spread and improves agility with only a minor decrease to range.]]
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/sh/725/cod2019_sh_725_barrel_mid.png", "mips smooth")
ATT.AutoStats = true
ATT.Free = false

ATT.Model = "models/weapons/cod2019/attachs/weapons/725/attachment_vm_sh_charlie725_barrel_mid.mdl"
ATT.BoneMerge = true

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_725_barrel"}
ATT.ActivateElements = {"barrel_none","rail_none"}

-- ATT.AimDownSightsTimeMult = 1.25
-- ATT.SprintToFireTimeMult = 1.25
-- ATT.RecoilMult = 0.85
ATT.SpreadMult = 1.15

ATT.RangeMaxMult = 0.95
ATT.RangeMinMult = 0.95
ATT.PhysBulletMuzzleVelocityMult = 0.95

ATT.MuzzleDevice = true -- set to true if you want to use this to emit particles
ATT.MuzzleDevice_Priority = 3

ATT.DrawFunc = function(swep, model, wm)	
    if swep:GetElements()["cod2019_optic"] then
        model:SetBodygroup(1,1)
    end
    if swep:GetElements()["optic_scope"] then
        model:SetBodygroup(1,1)
    end
end

ATT.Element = {
    AttPosMods = {
        [2] = { -- slot of the weapon's attachment
            Pos = Vector(-3.1, 0, 0),
            Ang = Angle(0,0,0),
        }
    }
}

ARC9.LoadAttachment(ATT, "cod2019_725_barrel_mid")