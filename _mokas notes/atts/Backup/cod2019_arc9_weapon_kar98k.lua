local ATT = {}
---------------------------------------------------------------------------------------
ATT.PrintName = "Sniper Scope"
ATT.CompactName = [[Sniper]]
ATT.Icon = Material("entities/attachs/mm/kar98k/cod2019_mm_kar98k_scope.png", "mips smooth")
ATT.Description = [[Long-range classic combat scope. Provides an improved precision at longer ranges.]]

ATT.CustomPros = {
    [ ARC9:GetPhrase("mw19_optic_stat_zoom") ] = "4.4x"
}

ATT.SortOrder = 4
ATT.Free = false
ATT.Folder = ARC9:GetPhrase("mw19_folder_scope")

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_optic_kar98k"}
ATT.ActivateElements = {"scope_kar98k"}
ATT.Folder = ARC9:GetPhrase("mw19_folder_scope")

ATT.Model = "models/weapons/cod2019/attachs/scopes/scope_kar98k.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(0, 0, 0)
ATT.ModelAngleOffset = Angle(0, 0, 0)

ATT.AimDownSightsTimeAdd = 0.08
-- ATT.VisualRecoilMult = 0.99
ATT.RecoilMult = 0.99

-- ATT.ShotgunReload = true
ATT.BoneMerge = true

ATT.Sights = {
    {
        Pos = Vector(0, 15, -0.825),
        Ang = Angle(0, 0, 0),
        ViewModelFOV = 36,
        Magnification = 1.15,
        IgnoreExtra = true,
    },
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 2
ATT.RTScopeFOV = 36 / 4.4
ATT.RTScopeAdjustable = false
-- ATT.RTScopeAdjustmentLevels = 3
-- ATT.RTScopeFOVMin = 8
-- ATT.RTScopeFOVMax = 25
ATT.RTScopeRes = 512
ATT.RTScopeReticle = Material("hud/arc9_cod2019/overlays/mosin_crosshair.png", "mips smooth")
ATT.RTScopeReticleScale = 1.18
ATT.RTScopeShadowIntensity = 1.5
ATT.RTScopeNoPP = false
ATT.RTScopeColorable = false

ARC9.LoadAttachment(ATT, "cod2019_kar98k_scope")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "Singuard Custom 27.6\""
ATT.CompactName = "Singuard Custom 27.6\""
ATT.Description = [[Custom 27.6" heavyweight barrel with polygonal rifling increases muzzle velocity to the max. Additional weight hinders mobility.]]
ATT.Icon = Material("entities/attachs/mm/kar98k/cod2019_mm_kar98k_barlong.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/kar98k/attachment_vm_sn_kilo98_barlong.mdl"
ATT.BoneMerge = false

ATT.SortOrder = 0
ATT.Category = "cod2019_kar98k_barrel"
ATT.ActivateElements = {"barrel_none","sight_front_none"}

ATT.MuzzleDevice = true -- set to true if you want to use this to emit particles
ATT.MuzzleDevice_Priority = 2

ATT.SprintToFireTimeMult = 1.08
ATT.AimDownSightsTimeMult = 1.08
ATT.DeployTimeMult = 1.16
ATT.RecoilMult = 1.1

ATT.RangeMaxMult = 1.11
ATT.RangeMinMult = 1.11

ATT.Element = {
    AttPosMods = {
        [2] = { -- slot of the weapon's attachment
            Pos = Vector(2, 0, 0),
            Ang = Angle(0,0,0),
        }
    }
}

ARC9.LoadAttachment(ATT, "cod2019_kar98k_barrel_long")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "Singuard Custom 21.2\""
ATT.CompactName = "Singuard Custom 21.2\""
ATT.Description = [[Custom 21.2" heavyweight barrel with polygonal rifling slightly increases muzzle velocity and extends range with little additional weight.]]
ATT.Icon = Material("entities/attachs/mm/kar98k/cod2019_mm_kar98k_barshort.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/kar98k/attachment_vm_sn_kilo98_barshort.mdl"
ATT.BoneMerge = false

ATT.SortOrder = 0
ATT.Category = "cod2019_kar98k_barrel"
ATT.ActivateElements = {"barrel_none","sight_front_none"}

ATT.MuzzleDevice = true -- set to true if you want to use this to emit particles
ATT.MuzzleDevice_Priority = 2

ATT.SprintToFireTimeMult = 0.95
ATT.AimDownSightsTimeMult = 0.95
ATT.DeployTimeMult = 0.9

ATT.RangeMaxMult = 0.92
ATT.RangeMinMult = 0.92

ATT.Element = {
    AttPosMods = {
        [2] = { -- slot of the weapon's attachment
            Pos = Vector(-1, 0, 0),
            Ang = Angle(0,0,0),
        },
        [4] = { -- slot of the weapon's attachment
            Pos = Vector(-1, -1.34, 0),
            Ang = Angle(0,0,0),
        }
    }
}

ARC9.LoadAttachment(ATT, "cod2019_kar98k_barrel_short")