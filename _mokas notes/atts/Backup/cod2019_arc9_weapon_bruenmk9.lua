local ATT = {}
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "60 Round Mags"
ATT.CompactName = "60-Round"
ATT.Description = [[Conversion kit to use 60 round 5.56 NATO magazines for increased stopping power. Slightly lower cycle rate to help control recoil.]]
ATT.Icon = Material("entities/attachs/lm/bruenn/cod2019_lm_bruenn_smags.png", "mips smooth")


ATT.ShellModel = "models/weapons/cod2019/shared/shell_762_hr.mdl"
ATT.ShellScale = 0.07

ATT.ClipSizeOverride = 60
ATT.AimDownSightsTimeAdd = -0.25
ATT.SprintToFireTimeAdd = -0.20
ATT.ReloadInSights = true

ATT.SortOrder = 0
ATT.Category = "cod2019_bruenmk9_mag"
ATT.ActivateElements = {"mag_none","mag_smag"}

-- ATT.Hook_TranslateAnimation = function(wep, anim)
    -- return anim .. "_smag"
-- end

ATT.Model = "models/weapons/cod2019/attachs/weapons/bruenmk9/attachment_vm_lm_mkilo3_smags.mdl"
ATT.DropMagazineModel = "models/weapons/cod2019/attachs/weapons/bruenmk9/attachment_vm_lm_mkilo3_smags.mdl"
ATT.BoneMerge = true
ATT.DropMagazineQCA = 5

ARC9.LoadAttachment(ATT, "cod2019_bruenmk9_mag_60")
----------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Bipod"
ATT.CompactName = "Bipod"
ATT.Description = [[Deploys the bipod for better recoil and accuracy.]]

ATT.Icon = Material("entities/attachs/lm/bruenn/cod2019_lm_bruenn_bipod.png", "mips smooth")

ATT.SortOrder = 0
ATT.Category = "cod2019_bruenmk9_bipod"
ATT.MenuCategory = "ARC9 - MW2019 Attachments"

ATT.Model = "models/weapons/cod2019/attachs/weapons/bruenmk9/attachment_vm_lm_mkilo3_bipod.mdl"
ATT.BoneMerge = true
ATT.ActivateElements = {"bipod_none"}

ATT.Bipod = true

ATT.AimDownSightsTimeAdd = 0.19
ATT.VisualRecoilMult = 0.8
ATT.RecoilMult = 0.8
ATT.SpeedMult = 0.96
ATT.SpeedMultSights = 0.84
ATT.SpreadBipod = -0.05

ATT.BipodPos = Vector(-1.5, -4, 1)
ATT.BipodAng = Angle(0, 0, 0)

ARC9.LoadAttachment(ATT, "cod2019_bruenmk9_grip_bipod")
----------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "XRK Horizon 23.0\""
ATT.CompactName = "Horizon"
ATT.Description = [[Designed to improve muzzle velocity range with as little additional weight as possible.]]

ATT.Icon = Material("entities/attachs/lm/bruenn/cod2019_lm_bruenn_barhvy.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/bruenmk9/attachment_vm_lm_mkilo3_barhvy.mdl"
ATT.BoneMerge = false

ATT.SortOrder = 0
ATT.Category = "cod2019_bruenmk9_barrel"
ATT.ActivateElements = {"barrel_none","muzzle_none"}

ATT.MuzzleDevice = true -- set to true if you want to use this to emit particles
ATT.MuzzleDevice_Priority = 2

ATT.DeployTimeMult = 1.1
ATT.AimDownSightsTimeMult = 1.07
ATT.RecoilMult = 0.82
ATT.SpreadMult = 0.95

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["muzzle"] then
        model:SetBodygroup(1,1)
    end
end

-- ATT.Element = {
    -- AttPosMods = {
        -- [2] = { -- slot of the weapon's attachment
            -- Pos = Vector(2.2, 0, 0),
            -- Ang = Angle(0,0,0),
        -- }
    -- }
-- }

ARC9.LoadAttachment(ATT, "cod2019_bruenmk9_barrel_heavy")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "Bruen 18.0\" Para"
ATT.CompactName = "Bruen 18.0"
ATT.Description = [[Short, compact barrel sacrifices accuracy and range for speed and agility. Good for clearing out tight spaces.]]

ATT.Icon = Material("entities/attachs/lm/bruenn/cod2019_lm_bruenn_barshort.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/bruenmk9/attachment_vm_lm_mkilo3_barshort.mdl"
ATT.BoneMerge = false

ATT.SortOrder = 0
ATT.Category = "cod2019_bruenmk9_barrel"
ATT.ActivateElements = {"barrel_none","muzzle_none"}
ATT.ModelOffset = Vector(0, 0, 0)

ATT.MuzzleDevice = true -- set to true if you want to use this to emit particles
ATT.MuzzleDevice_Priority = 2

ATT.DeployTimeMult = 0.89
ATT.AimDownSightsTimeMult = 0.92
ATT.SpreadMult = 1.2

ATT.RangeMaxMult = 0.95
ATT.RangeMinMult = 0.95

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["muzzle"] then
        model:SetBodygroup(2,1)
    end
end

ATT.Element = {
    AttPosMods = {
        [2] = { -- slot of the weapon's attachment
            Pos = Vector(-3.7, 0, 0),
            Ang = Angle(0,0,0),
        }
    }
}

ARC9.LoadAttachment(ATT, "cod2019_bruenmk9_barrel_short")