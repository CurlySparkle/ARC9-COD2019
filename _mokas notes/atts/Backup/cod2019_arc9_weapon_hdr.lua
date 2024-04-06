local ATT = {}
----------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "HDR Scope"
ATT.CompactName = [[HDR Scope]]
ATT.Icon = Material("entities/attachs/sn/hdr/cod2019_sn_hdr_scope.png", "mips smooth")
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
ATT.Category = {"cod2019_optic_hdr","cod2019_scope_snipers"}
ATT.ActivateElements = {"scope_hdr"}

ATT.Model = "models/weapons/cod2019/attachs/scopes/scope_hdr.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(-0.3, 0, 0)
ATT.ModelAngleOffset = Angle(0, 0, 0)

ATT.AimDownSightsTimeMult = 1.25

ATT.Sights = {
    {
        Pos = Vector(0, 16, -1.95),
        Ang = Angle(0, 0, 0),
        ViewModelFOV = 15,
        Magnification = 2,
        IgnoreExtra = true
    },
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 1
ATT.RTScopeAdjustable = true
ATT.RTScopeAdjustmentLevels = 3
ATT.RTScopeFOVMin = 7
ATT.RTScopeFOVMax = 36
ATT.RTScopeRes = 1024
ATT.RTScopeReticle = Material("hud/arc9_cod2019/overlays/ax50_crosshair")
ATT.RTScopeReticleScale = 1
ATT.RTScopeShadowIntensity = 2
ATT.RTScopeNoPP = false
ATT.RTScopeColorable = false

ARC9.LoadAttachment(ATT, "cod2019_optic_scope_hdr")
----------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "17.2\" Bull"
ATT.CompactName = "17.2\" Bull"
ATT.Description = [[Heavy duty reinforced cylindrical barrel lightens recoil and stabilizes shots at the cost of bullet velocity and mobility.]]
ATT.SortOrder = 0

ATT.Icon = Material("entities/attachs/sn/hdr/cod2019_sn_hdr_barrel_short.png", "mips smooth")
ATT.AutoStats = true
ATT.Free = false

ATT.Model = "models/weapons/cod2019/attachs/weapons/hdr/attachment_vm_sn_hdromeo_barrel_short.mdl"
ATT.BoneMerge = false

ATT.MuzzleDevice_Priority = 2
ATT.MuzzleDevice = true

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_hdr_barrel"}
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
            Pos = Vector(-0.1, 0, 0),
            Ang = Angle(0,0,0),
        },
    }
}

ARC9.LoadAttachment(ATT, "cod2019_hdr_barrel_short")
----------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "26.9\" HDR Pro"
ATT.CompactName = "26.9\" Pro"
ATT.Description = [[Longer barrel increases muzzle velocity and extends range. Additional weight helps to stabilize shots at the cost of agility.]]
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/sn/hdr/cod2019_sn_hdr_barrel_long.png", "mips smooth")
ATT.AutoStats = true
ATT.Free = false

ATT.Model = "models/weapons/cod2019/attachs/weapons/hdr/attachment_vm_sn_hdromeo_barrel_long.mdl"
ATT.BoneMerge = false

ATT.MuzzleDevice_Priority = 2
ATT.MuzzleDevice = true

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_hdr_barrel"}
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
            Pos = Vector(2.5, 0, 0),
            Ang = Angle(0,0,0),
        },
    }
}

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["muzzle"] then
        model:SetBodygroup(1,1)
    end
end

ARC9.LoadAttachment(ATT, "cod2019_hdr_barrel_long")
----------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "FORGE TAC MAG ROUNDER"
ATT.CompactName = "FTAC MAG"
ATT.Description = [[Special mag designed for special ammo types such as explosiv/thermite, 
Reduces the total mag use to 5 rounds.]]

ATT.Icon = Material("entities/attachs/sn/hdr/cod2019_sn_hdr_xmag2.png", "mips smooth")

ATT.SortOrder = 0
ATT.Category = "cod2019_hdr_mag"
ATT.MenuCategory = "ARC9 - MW2019 Attachments"

ATT.Model = "models/weapons/cod2019/attachs/weapons/hdr/attachment_vm_sn_hdromeo_xmag.mdl"
ATT.DropMagazineModel = "models/weapons/cod2019/attachs/weapons/hdr/attachment_vm_sn_hdromeo_xmag.mdl"
ATT.BoneMerge = true
ATT.ActivateElements = {"mag_none","mag_ftac","mag_xmag"}

ATT.ClipSizeOverride = 5

ATT.BulletBones = {
    [1] = "j_bullet1",
    [2] = "j_bullet2",
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

ARC9.LoadAttachment(ATT, "cod2019_hdr_mag_special")