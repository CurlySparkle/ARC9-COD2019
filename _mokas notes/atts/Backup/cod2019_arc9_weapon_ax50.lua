local ATT = {}
----------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "AX50 Scope"
ATT.CompactName = [[AX50 Scope]]
ATT.Icon = Material("entities/attachs/sn/ax50/cod2019_optic_scope_ax50.png", "mips smooth")
ATT.Description = [[Long-range combat scope. Provides an improved precision at longer ranges.]]
ATT.Pros = {
    "+ 8x Zoom",
    "+ Clearer sight picture"
}
ATT.Cons = {}
ATT.SortOrder = 4
ATT.Free = false
ATT.Folder = ARC9:GetPhrase("mw19_folder_scope")

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_optic_ax50","cod2019_scope_snipers"}
ATT.ActivateElements = {"scope_ax50"}

ATT.Model = "models/weapons/cod2019/attachs/scopes/scope_ax50.mdl"
ATT.BoneMerge = true
ATT.Scale = 1
ATT.ModelOffset = Vector(0, 0, 0)
ATT.ModelAngleOffset = Angle(0, 0, 0)

ATT.Sights = {
    {
        Pos = Vector(0, 9, -1.86),
        Ang = Angle(0, 0, 0),
        ViewModelFOV = 35,
        Magnification = 2,
        IgnoreExtra = true,
    },
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 1
ATT.RTScopeAdjustable = true
ATT.RTScopeAdjustmentLevels = 3
ATT.RTScopeFOVMin = 7
ATT.RTScopeFOVMax = 26
ATT.RTScopeRes = 512
ATT.RTScopeReticle = Material("hud/arc9_cod2019/overlays/ax50_crosshair")
ATT.RTScopeReticleScale = 1.05
ATT.RTScopeShadowIntensity = 1
ATT.RTScopeNoPP = false
ATT.RTScopeColorable = false

ARC9.LoadAttachment(ATT, "cod2019_optic_scope_ax50")
----------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "17.0\" Factory Barrel"
ATT.CompactName = "17.0\" Barrel"
ATT.Description = [[Short, compact barrel sacrifices accuracy and range for speed and agility. Better for sniping on the move.]]
ATT.SortOrder = 0

ATT.Icon = Material("entities/attachs/sn/ax50/cod2019_sn_ax50_barshort.png", "mips smooth")
ATT.AutoStats = true
ATT.Free = false

ATT.Model = "models/weapons/cod2019/attachs/weapons/ax50/attachment_vm_sn_alpha50_barshort.mdl"
ATT.BoneMerge = false

ATT.MuzzleDevice_Priority = 2
ATT.MuzzleDevice = true

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_ax50_barrel"}
ATT.ActivateElements = {"barrel_none","muzzle_none"}

ATT.AimDownSightsTimeMult = 0.85
ATT.SprintToFireTimeMult = 0.85
ATT.RecoilMult = 1.25

ATT.RangeMaxMult = 0.85
ATT.RangeMinMult = 0.85
ATT.PhysBulletMuzzleVelocityMult = 0.9

ATT.Element = {
    AttPosMods = {
        [2] = { -- slot of the weapon's attachment
            Pos = Vector(-6.7, 0, 0),
            Ang = Angle(0,0,0),
        },
    }
}

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["muzzle"] then
        model:SetBodygroup(1,1)
    end
end

ARC9.LoadAttachment(ATT, "cod2019_ax50_barrel_short")
----------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "32.0\" Factory Barrel"
ATT.CompactName = "32.0\" Barrel"
ATT.Description = [[Longer barrel increases muzzle velocity and extends range. Additional weight stabilize shots but hinders mobility.]]
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/sn/ax50/cod2019_sn_ax50_barlong.png", "mips smooth")
ATT.AutoStats = true
ATT.Free = false

ATT.Model = "models/weapons/cod2019/attachs/weapons/ax50/attachment_vm_sn_alpha50_barlong.mdl"
ATT.BoneMerge = false

ATT.MuzzleDevice_Priority = 2
ATT.MuzzleDevice = true

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_ax50_barrel"}
ATT.ActivateElements = {"barrel_none","muzzle_none"}

ATT.AimDownSightsTimeMult = 1.25
ATT.SprintToFireTimeMult = 1.25
ATT.RecoilMult = 0.85

ATT.RangeMaxMult = 1.25
ATT.RangeMinMult = 1.25
ATT.PhysBulletMuzzleVelocityMult = 1.25

ATT.Element = {
    AttPosMods = {
        [2] = { -- slot of the weapon's attachment
            Pos = Vector(3.5, 0, 0),
            Ang = Angle(0,0,0),
        },
    }
}

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["muzzle"] then
        model:SetBodygroup(1,1)
    end
end

ARC9.LoadAttachment(ATT, "cod2019_ax50_barrel_long")
----------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "FORGE TAC MAG ROUNDER"
ATT.CompactName = "FTAC MAG"
ATT.Description = [[Special mag designed for special ammo types such as explosiv/thermite, 
Reduces the total mag use to 5 rounds.]]

ATT.Icon = Material("entities/attachs/sn/ax50/cod2019_sn_ax50_mmags.png", "mips smooth")

ATT.SortOrder = 0
ATT.Category = "cod2019_ax50_mag"
ATT.MenuCategory = "ARC9 - MW2019 Attachments"

ATT.Model = "models/weapons/cod2019/attachs/weapons/ax50/attachment_vm_sn_alpha50_xmags_alt.mdl"
ATT.DropMagazineModel = "models/weapons/cod2019/attachs/weapons/ax50/attachment_vm_sn_alpha50_xmags_alt.mdl"
ATT.BoneMerge = true
ATT.ActivateElements = {"mag_none","mag_ftac"}

ATT.ClipSizeOverride = 5

ATT.BulletBones = {
    [1] = "j_bullet_01",
    [2] = "j_bullet_02",
}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_ammo2"),
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, -2),
        Category = "cod2019_ammo_special",
		Scale = 1
    }
}

ARC9.LoadAttachment(ATT, "cod2019_ax50_mag_special")
----------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Bipod"
ATT.CompactName = "Bipod"
ATT.Description = [[Installs the bipod for better recoil and accuracy.]]

ATT.Icon = Material("entities/attachs/sn/rytec/cod2019_sn_rytec_bipod.png", "mips smooth")

ATT.SortOrder = 0
ATT.Category = "cod2019_ax50_bipod"
ATT.MenuCategory = "ARC9 - MW2019 Attachments"

ATT.Model = "models/weapons/cod2019/attachs/weapons/ax50/attachment_vm_alpha50_bipod.mdl"
ATT.ModelAngleOffset = Angle(0, 0, 180)
ATT.BoneMerge = true
ATT.ActivateElements = {"bipod"}

ATT.Bipod = true

ATT.AimDownSightsTimeAdd = 0.19
ATT.VisualRecoilMult = 0.8
ATT.RecoilMult = 0.8
ATT.SpeedMult = 0.96
ATT.SpeedMultSights = 0.84
ATT.SpreadBipod = -0.07

ATT.BipodPos = Vector(-1.5, -4, 1)
ATT.BipodAng = Angle(0, 0, 0)

ARC9.LoadAttachment(ATT, "cod2019_ax50_bipod")
----------------------------------------------------------------------------------------