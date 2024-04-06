local ATT = {}

---------------------------------------------------------------------------------------- BARRELS
ATT = {} -- Base Barrel, Adverse

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "Factory Adverse"
ATT.CompactName = "Factory Adverse"
ATT.Description = ""

ATT.Icon = Material("entities/attachs/lm/finn/cod2019_lm_finn_barrel.png", "mips smooth")

ATT.RPMAdd = 368
ATT.PhysBulletMuzzleVelocityAdd = -243 / ARC9.HUToM
ATT.DamageMinMult = 0.775
ATT.DamageMaxMult = 0.775

ATT.SortOrder = 0
ATT.Category = "cod2019_finn_barrel"
ATT.ActivateElements = {"ziptie"}

ARC9.LoadAttachment(ATT, "cod2019_finn_barrel_default_adv")
---------------------------------------------------------------------------------------- BARRELS
ATT = {} -- Long Barrel

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "XRK LongShot Advantage"
ATT.CompactName = "LongShot"
ATT.Description = ""

ATT.Icon = Material("entities/attachs/lm/finn/cod2019_lm_finn_barlong.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/finn/attachment_vm_lm_sierrax_barlong.mdl"
ATT.BoneMerge = false

ATT.SortOrder = 0
ATT.Category = "cod2019_finn_barrel"
ATT.ActivateElements = {"barrel_none","muzzle_none"}

ATT.MuzzleDevice = true -- set to true if you want to use this to emit particles
ATT.MuzzleDevice_Priority = 2

ATT.AimDownSightsTimeMult = 1.13
ATT.DeployTimeMult = 1.16
ATT.RangeMaxMult = 1.15
ATT.DamageMinMult = 1.06

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

ARC9.LoadAttachment(ATT, "cod2019_finn_barrel_long")
-----------------------------------
ATT = {} -- Long Barrel Adverse

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "XRK LongShot Adverse"
ATT.CompactName = "LongShot <A>"
ATT.Description = ""

ATT.Icon = Material("entities/attachs/lm/finn/cod2019_lm_finn_barlong.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/finn/attachment_vm_lm_sierrax_barlong.mdl"
ATT.BoneMerge = false

ATT.SortOrder = 0
ATT.Category = "cod2019_finn_barrel"
ATT.ActivateElements = {"barrel_none","muzzle_none", "ziptie"}

ATT.MuzzleDevice = true -- set to true if you want to use this to emit particles
ATT.MuzzleDevice_Priority = 2

ATT.AimDownSightsTimeMult = 1.13
ATT.DeployTimeMult = 1.16
ATT.RangeMaxMult = 1.15
ATT.DamageMinMult = 1.06

ATT.RPMAdd = 368
ATT.PhysBulletMuzzleVelocityAdd = -365 / ARC9.HUToM

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["muzzle"] then
        model:SetBodygroup(1,1)
    end
    if swep:GetElements()["ziptie"] then
        model:SetBodygroup(2,1)
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

ARC9.LoadAttachment(ATT, "cod2019_finn_barrel_long_adv")
----------------------------------------------------------------------------------------
ATT = {} -- Light Barrel

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "FTAC VC-8 Harrier"
ATT.CompactName = "Harrier"
ATT.Description = [[Ultra Light Forge Tac barrel with a milled aluminium shroud and large bore reduces weight for improved handling at the cost of muzzle velocity.]]

ATT.Icon = Material("entities/attachs/lm/finn/cod2019_lm_finn_barlight.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/finn/attachment_vm_lm_sierrax_barlight.mdl"
ATT.BoneMerge = false

ATT.SortOrder = 0
ATT.Category = "cod2019_finn_barrel"
ATT.ActivateElements = {"barrel_none","muzzle_none"}

ATT.MuzzleDevice = true -- set to true if you want to use this to emit particles
ATT.MuzzleDevice_Priority = 2

ATT.AimDownSightsTimeMult = 0.92
ATT.DeployTimeMult = 0.88

ATT.RangeMaxMult = 0.95
ATT.DamageMaxMult = 0.95
ATT.RangeMinMult = 0.95
ATT.SpreadMult = 1.20

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["muzzle"] then
        model:SetBodygroup(1,1)
    end
end

ATT.Element = {
    AttPosMods = {
        [3] = { -- slot of the weapon's attachment
            Pos = Vector(-2, 0, 0),
            Ang = Angle(0,0,0),
        }
    }
}

ARC9.LoadAttachment(ATT, "cod2019_finn_barrel_light")
-----------------------------------
ATT = {} -- Light Barrel Adverse

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "FTAC VC-8 Harrier Adverse"
ATT.CompactName = "Harrier Adverse"
ATT.Description = [[Ultra Light Forge Tac barrel with a milled aluminium shroud and large bore reduces weight for improved handling at the cost of muzzle velocity.]]

ATT.Icon = Material("entities/attachs/lm/finn/cod2019_lm_finn_barlight.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/finn/attachment_vm_lm_sierrax_barlight.mdl"
ATT.BoneMerge = false

ATT.SortOrder = 0
ATT.Category = "cod2019_finn_barrel"
ATT.ActivateElements = {"barrel_none","muzzle_none", "ziptie"}

ATT.MuzzleDevice = true -- set to true if you want to use this to emit particles
ATT.MuzzleDevice_Priority = 2

ATT.AimDownSightsTimeMult = 0.92
ATT.DeployTimeMult = 0.88

ATT.RangeMaxMult = 0.95
ATT.DamageMaxMult = 0.95
ATT.RangeMinMult = 0.95
ATT.SpreadMult = 1.20

ATT.RPMAdd = 368
ATT.PhysBulletMuzzleVelocityAdd = -328 / ARC9.HUToM

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["muzzle"] then
        model:SetBodygroup(1,1)
    end
    if swep:GetElements()["ziptie"] then
        model:SetBodygroup(2,1)
    end
end

ATT.Element = {
    AttPosMods = {
        [3] = { -- slot of the weapon's attachment
            Pos = Vector(-2, 0, 0),
            Ang = Angle(0,0,0),
        }
    }
}

ARC9.LoadAttachment(ATT, "cod2019_finn_barrel_light_adv")
---------------------------------------------------------------------------------------- STOCKS
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "XRK Citadel"
ATT.CompactName = "Citadel"
ATT.Description = [[Heavy duty stock keeps your aim steady for precision shots.]]

ATT.Icon = Material("entities/attachs/lm/finn/cod2019_lm_finn_stockh.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/finn/attachment_vm_lm_sierrax_stockh.mdl"
ATT.BoneMerge = false

ATT.SortOrder = 0
ATT.Category = "cod2019_finn_stock"
ATT.ActivateElements = {"stock_none"}

ATT.RecoilMult = 0.85
ATT.AimDownSightsTimeMult = 1.14
ATT.DeployTimeMult = 1.09

ARC9.LoadAttachment(ATT, "cod2019_finn_stock_heavy")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "XRK ChainSAW"
ATT.CompactName = "ChainSAW"
ATT.Description = [[Combination handled grips allow for highly maneuverable assaults. For operators who care less about where their shot lands and more about getting rounds down range fast.]]

ATT.Icon = Material("entities/attachs/lm/finn/cod2019_lm_finn_stocksaw.png", "mips smooth")

ATT.SortOrder = 0
ATT.Category = "cod2019_finn_stock"
ATT.ActivateElements = {"stock_none","pistol_grip_none","stock_saw"}

-- ATT.Hook_TranslateAnimation = function(wep, anim)
    -- return anim .. "_saw"
-- end

ATT.ActivePos = Vector(0, -3, -4)
ATT.ActiveAng = Angle(0, 0, -7)

ATT.MovingPos = Vector(-0.5, -1.5, -1)
ATT.MovingAng = Angle(0, 0, -7)

ATT.SprintPos = Vector(0, 0, -2)
ATT.SprintAng = Angle(0, 0, -7)

ATT.CrouchPos = Vector(-0.5, -1, -1)
ATT.CrouchAng = Angle(0, 0, -5)

ATT.VisualRecoilPunch = 2
ATT.VisualRecoilUp = 1

ATT.SpreadMultShooting = 0 
--ATT.RecoilModifierCap = 0

ATT.WorldModelOffset = {
    Pos = Vector(-12, 6, -7.5),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-3, 4, 8),
    TPIKAng = Angle(-9, 0, 175),
    Scale = 1
}

ATT.HasSights = false

ATT.Model = "models/weapons/cod2019/attachs/weapons/finn/attachment_vm_lm_sierrax_stocksaw.mdl"
ATT.BoneMerge = true

ARC9.LoadAttachment(ATT, "cod2019_finn_stock_saw")
--------------------------------------------------------------------------------------- MAGAZINES
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "5.56 NATO 100-Round Belts"
ATT.CompactName = "100R 5.56"
ATT.Description = [[Conversion kit to use 100 round 5.56 NATO for increased stopping power. Slightly lower cycle rate to help control recoil.]]

ATT.Icon = Material("entities/attachs/lm/finn/cod2019_lm_finn_magcalcust2.png", "mips smooth")

ATT.ShellModelOverride = "models/weapons/cod2019/shared/lmg_finn_556nato_shell.mdl"
ATT.ShellScale = 0.07

-- ATT.RPM = 995 
ATT.ClipSizeOverride = 100

ATT.DamageMaxMult = 0.75
ATT.DamageMinMult = 0.75
ATT.RecoilMult = 0.85
ATT.RecoilKickMult = 0.9
ATT.DeployTimeMult = 1.15
ATT.ReloadTimeMult = 1.05
ATT.AimDownSightsTimeMult = 1.1

ATT.SortOrder = 0
ATT.Category = "cod2019_finn_mag"
ATT.ActivateElements = {"mag_none","mag_xmag"}

ATT.Model = "models/weapons/cod2019/attachs/weapons/finn/attachment_vm_lm_sierrax_magcalcust2.mdl"
ATT.DropMagazineModel = "models/weapons/cod2019/attachs/weapons/finn/attachment_vm_lm_sierrax_magcalcust2_mag.mdl"
ATT.BoneMerge = true

ATT.BulletBones = {
    [1] = "j_bullet01",
    [2] = "j_bullet02",
	[3] = "j_bullet03",
	[4] = "j_bullet04",
	[5] = "j_bullet05",
	[6] = "j_bullet06",
	[7] = "j_bullet07",
	[8] = "j_bullet08",
	[9] = "j_bullet09",
	[10] = "j_bullet010",
	[11] = "j_bullet011",
}

ARC9.LoadAttachment(ATT, "cod2019_finn_mag_556_100")