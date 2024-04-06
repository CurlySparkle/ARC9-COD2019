local ATT = {}
---------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Force Sight"
ATT.CompactName = "Force Sight"
ATT.Description = [[Forces the default sight to be on.]]
ATT.SortOrder = 1

--ATT.Icon = Material("entities/attachs/cod2019_mpapa5_stock_fullstock.png", "mips smooth")
ATT.AutoStats = true
ATT.Free = false

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_mp5_alt"}
ATT.ActivateElements = {"sight_default"}

ARC9.LoadAttachment(ATT, "cod2019_mp5_sight_default_on")
---------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "10mm Auto 30-Round Mags"
ATT.CompactName = "10mm 30-Round"
ATT.Description = [[]]
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/sm/mp5/cod2019_sm_mp5_mag_xmag2.png", "mips smooth")
ATT.AutoStats = true

ATT.Free = false

ATT.Model = "models/weapons/cod2019/attachs/weapons/mp5/attachment_vm_sm_mpapa5_mag_xmag2.mdl"
ATT.BoneMerge = true

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_mag_mp5"}
ATT.ActivateElements = {"mag_none"}

-- Outside
ATT.LayerSound = "layer_AR.Outside"
ATT.DistanceSound = "distant_AR.Outside"
-- Inside
ATT.LayerSoundIndoor = "layer_AR.Inside"
ATT.DistanceSoundIndoor = "distant_AR.Inside"

ATT.RecoilMult = 1.15
ATT.RecoilkickMult = 1.20

ATT.DamageMaxMult = 1.19
ATT.DamageMinMult = 1.1
ATT.PhysBulletMuzzleVelocityMult = 1.15

ATT.DropMagazineModel = "models/weapons/cod2019/attachs/weapons/mp5/attachment_vm_sm_mpapa5_mag_xmag2.mdl"

ARC9.LoadAttachment(ATT, "cod2019_mp5_mag_9mm")
---------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Classic Straight-line Stock"
ATT.CompactName = "Straight-line"
ATT.Description = [[Solid body stock provides a more stable sight picture.]]
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/sm/mp5/cod2019_sm_mp5_stock_fullstock.png", "mips smooth")
ATT.AutoStats = true

ATT.Free = false

ATT.Model = "models/weapons/cod2019/attachs/weapons/mp5/attachment_vm_sm_mpapa5_stock_fullstock.mdl"
ATT.BoneMerge = true

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_mp5_stock"}
ATT.ActivateElements = {"stock_none","stock_main_hide"}

ATT.AimDownSightsTimeMult = 1.1
ATT.RecoilMult = 0.9
ATT.DrawTimeMult = 1.06
ATT.HolsterTimeMult = 1.06

ARC9.LoadAttachment(ATT, "cod2019_mp5_stock_fullstock")
---------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Subsonic Integral Suppressor "
ATT.CompactName = "Subsonic"
ATT.Description = [[Heavy duty monolithic core increases muzzle velocity while maintaining a low sound signature.]]
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/sm/mp5/cod2019_sm_mp5_barrel_suppressor_v4.png", "mips smooth")
ATT.AutoStats = true

ATT.Free = false

ATT.Model = "models/weapons/cod2019/attachs/weapons/mp5/attachment_vm_sm_mpapa5_barrel_suppressor.mdl"
ATT.BoneMerge = true

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_mp5_barrel"}
ATT.ActivateElements = {"barrel_none","barrel_supp","foregrip_none"}

ATT.AimDownSightsTimeMult = 1.05
ATT.SprintToFireTimeMult = 1.05
ATT.RecoilMult = 0.95

ATT.Silencer = true
ATT.MuzzleParticleOverride = "muzzleflash_suppressed"
ATT.MuzzleDevice_Priority = 5
ATT.MuzzleDevice = true

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["grip"] then
        model:SetBodygroup(1,1)
    end
    if swep:GetElements()["optic"] then
        model:SetBodygroup(2,1)
    end

    if swep:GetElements()["universal_camo"] then
        model:SetSkin(1)
    else
        model:SetSkin(0)
    end
end

ARC9.LoadAttachment(ATT, "cod2019_mp5_barrel_supp")
---------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "FSS Light"
ATT.CompactName = "FSS Light"
ATT.Description = [[Lightweight shroud and large bore barrel reduce weight for improved handling at the cost of muzzle velocity.]]
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/sm/mp5/cod2019_sm_mp5_railgrip.png", "mips smooth")
ATT.AutoStats = true

ATT.Free = false

ATT.Model = "models/weapons/cod2019/attachs/weapons/mp5/attachment_vm_sm_mpapa5_railgrip.mdl"
ATT.BoneMerge = true

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_mp5_barrel"}
ATT.ActivateElements = {"barrel_none","muzzle_none","foregrip_none"}

ATT.AimDownSightsTimeMult = 0.9
ATT.SprintToFireTimeMult = 0.9
ATT.RecoilMult = 0.9

ATT.RangeMaxMult = 0.9
ATT.RangeMinMult = 0.9

ATT.MuzzleDevice_Priority = 2
ATT.MuzzleDevice = true

-- ATT.DrawFunc = function(swep, model, wm)
    -- if swep:GetElements()["muzzle"] then
        -- model:SetBodygroup(1,1)
    -- end
-- end

ARC9.LoadAttachment(ATT, "cod2019_mp5_barrel_light")
---------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Default (No Flashight)"
ATT.CompactName = "Default Alt"
ATT.Description = [[Default foregrip with no flashlight.]]
ATT.SortOrder = 1

--ATT.Icon = Material("entities/attachs/cod2019_mpapa5_stock_fullstock.png", "mips smooth")
ATT.AutoStats = true

ATT.Free = false

--ATT.Model = "models/weapons/cod2019/attachs/weapons/mp5/attachment_vm_sm_mpapa5_barrel_suppressor.mdl"
--ATT.BoneMerge = true

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_mp5_barrel"}
ATT.ActivateElements = {"foregrip_tac2","barrel_tact"}

-- ATT.AimDownSightsTimeMult = 1.1
-- ATT.SprintToFireTimeMult = 1.1
-- ATT.RecoilMult = 0.9
-- ATT.SpreadMult = 1.1

ARC9.LoadAttachment(ATT, "cod2019_mp5_barrel_alt")