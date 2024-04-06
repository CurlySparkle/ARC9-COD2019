local ATT = {}
---------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Solozero SP-R 28mm"
ATT.CompactName = [[SP-R 28mm]]
ATT.Icon = Material("entities/attachs/mm/spr208/cod2019_mm_spr208_scope.png", "mips smooth")
ATT.Description = [[Long-range combat scope. Provides an improved precision at longer ranges.]]

ATT.CustomPros = {
    [ ARC9:GetPhrase("mw19_optic_stat_zoom") ] = "4.4x"
}

ATT.SortOrder = 4
ATT.Free = false
ATT.Folder = ARC9:GetPhrase("mw19_folder_scope")

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_optic_spr208","cod2019_scope_snipers"}
ATT.ActivateElements = {"scope_spr208"}

ATT.Model = "models/weapons/cod2019/attachs/scopes/scope_spr208.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(-1.5, 0, 0)
ATT.ModelAngleOffset = Angle(0, 0, 0)

ATT.AimDownSightsTimeAdd = 0.08
-- ATT.VisualRecoilMult = 0.99
ATT.RecoilMult = 0.99

ATT.Sights = {
    {
        Pos = Vector(0.015, 8, -1.277),
        Ang = Angle(0, 0, 0),
        ViewModelFOV = 36,
        Magnification = 1.15,
        IgnoreExtra = true,
    },
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 1
ATT.RTScopeAdjustable = false
ATT.RTScopeFOV = 36 / 4.4
-- ATT.RTScopeAdjustmentLevels = 3
-- ATT.RTScopeFOVMin = 7
-- ATT.RTScopeFOVMax = 26
ATT.RTScopeRes = 1024
ATT.RTScopeReticle = Material("hud/arc9_cod2019/overlays/spr208_crosshair")
ATT.RTScopeReticleScale = 1
ATT.RTScopeShadowIntensity = 2
ATT.RTScopeNoPP = false
ATT.RTScopeColorable = false

ARC9.LoadAttachment(ATT, "cod2019_optic_scope_spr208")
---------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "SP-R 26\""
ATT.CompactName = "SP-R 26\""
ATT.Description = [[Sloan Precision's contoured 26 inch barrel improves muzzle velocity and extends the weapon's lethal range.]]
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/mm/spr208/cod2019_mm_spr208_barlong.png", "mips smooth")
ATT.AutoStats = true
ATT.Free = false

ATT.Model = "models/weapons/cod2019/attachs/weapons/spr208/attachment_vm_sn_romeo700_barlong.mdl"
ATT.BoneMerge = false

ATT.MuzzleDevice_Priority = 2
ATT.MuzzleDevice = true

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_spr208_barrel"}
ATT.ActivateElements = {"barrel_none","muzzle_none"}

ATT.AimDownSightsTimeMult = 1.12
ATT.SprintToFireTimeMult = 1.12
ATT.DeployTimeMult = 1.12

ATT.RangeMaxMult = 1.1
ATT.RangeMinMult = 1.1
ATT.PhysBulletMuzzleVelocityMult = 1.1

ATT.Element = {
    AttPosMods = {
        [2] = { -- slot of the weapon's attachment
            Pos = Vector(3.9, 0, 0),
            Ang = Angle(0,0,0),
        },
    }
}

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["muzzle"] then
        model:SetBodygroup(1,1)
    end
end

ARC9.LoadAttachment(ATT, "cod2019_spr208_barrel_long")
---------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "ZLR Asp"
ATT.CompactName = "ZLR Asp"
ATT.Description = [[Ultra light carbon fiber 16.5" barrel from ZLR for rapid close range strikes.]]
ATT.SortOrder = 0

ATT.Icon = Material("entities/attachs/mm/spr208/cod2019_mm_spr208_barshort.png", "mips smooth")
ATT.AutoStats = true
ATT.Free = false

ATT.Model = "models/weapons/cod2019/attachs/weapons/spr208/attachment_vm_sn_romeo700_barshort.mdl"
ATT.BoneMerge = false

ATT.MuzzleDevice_Priority = 2
ATT.MuzzleDevice = true

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_spr208_barrel"}
ATT.ActivateElements = {"barrel_none","muzzle_none"}

ATT.AimDownSightsTimeMult = 0.85
ATT.SprintToFireTimeMult = 0.85
ATT.DeployTimeMult = 0.83

ATT.RangeMaxMult = 0.5
ATT.RangeMinMult = 0.5
ATT.PhysBulletMuzzleVelocityMult = 0.5

ATT.Element = {
    AttPosMods = {
        [2] = { -- slot of the weapon's attachment
            Pos = Vector(-6, 0, 0),
            Ang = Angle(0,0,0),
        },
    }
}

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["muzzle"] then
        model:SetBodygroup(1,1)
    end
end

ARC9.LoadAttachment(ATT, "cod2019_spr208_barrel_short")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "10 Round Mags"
ATT.CompactName = "10-Round"
ATT.Description = [[Extended magazines hold 10 rounds of .300 with a slight weight increase]]

ATT.Icon = Material("entities/attachs/mm/spr208/cod2019_mm_spr208_xmags.png", "mips smooth")

ATT.ClipSizeOverride = 10
--ATT.ReloadTimeMult = 1.15
ATT.AimDownSightsTimeMult = 1.1
ATT.SprintToFireTimeMult = 1.1

ATT.SortOrder = 0
ATT.Category = "cod2019_spr208_mag"
ATT.ActivateElements = {"mag_none","mag_xmag"}

ATT.Model = "models/weapons/cod2019/attachs/weapons/spr208/attachment_vm_sn_romeo700_xmags.mdl"
ATT.DropMagazineModel = "models/weapons/cod2019/attachs/weapons/spr208/attachment_vm_sn_romeo700_xmags.mdl"
ATT.BoneMerge = true

ATT.BulletBones = {
    [1] = "j_bullet01",
	[2] = "j_bullet02",
	[3] = "j_bullet03",
}

ARC9.LoadAttachment(ATT, "cod2019_spr208_mag_10")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "FORGE TAC MAG ROUNDER"
ATT.CompactName = "FTAC MAG"
ATT.Description = [[Special mag designed for special ammo types such as explosiv/thermite, 
Reduces the total mag use to 5 rounds.]]

ATT.Icon = Material("entities/attachs/mm/spr208/cod2019_mm_spr208_magcalcust1.png", "mips smooth")

ATT.ClipSizeOverride = 5
ATT.AimDownSightsTimeMult = 1.1
ATT.SprintToFireTimeMult = 1.1

ATT.SortOrder = 0
ATT.Category = "cod2019_spr208_mag"
ATT.ActivateElements = {"mag_none","mag_ftac"}

ATT.Model = "models/weapons/cod2019/attachs/weapons/spr208/attachment_vm_sn_romeo700_xmags_alt.mdl"
ATT.DropMagazineModel = "models/weapons/cod2019/attachs/weapons/spr208/attachment_vm_sn_romeo700_xmags_alt.mdl"
ATT.BoneMerge = true

ATT.BulletBones = {
    [1] = "j_bullet01",
	[2] = "j_bullet02",
	[3] = "j_bullet03",
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

ARC9.LoadAttachment(ATT, "cod2019_spr208_mag_xmag_alt")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "XRK SP-LITE 208 Blitz"
ATT.CompactName = "SP-LITE"
ATT.Description = [[XRK's after-market chassis offers the ultimate in mobility with this rugged and durable ultra-light sniper rifle system.]]

ATT.Icon = Material("entities/attachs/mm/spr208/cod2019_mm_spr208_stockskel.png", "mips smooth")

ATT.AimDownSightsTimeMult = 0.91
ATT.SprintToFireTimeMult = 0.91
ATT.DeployTimeMult = 0.84
ATT.RecoilMult = 1.12
ATT.CycleTimeMult = 1.1

ATT.SortOrder = 0
ATT.Category = "cod2019_spr208_stock"
ATT.ActivateElements = {"stock_none"}

ATT.Model = "models/weapons/cod2019/attachs/weapons/spr208/attachment_vm_sn_romeo700_stockskel.mdl"
ATT.RHIK_Priority = 5
ATT.RHIK = true
--ATT.BoneMerge = true

ARC9.LoadAttachment(ATT, "cod2019_spr208_stock_skel")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "ZLR SP-R Overseer"
ATT.CompactName = "ZLR SP-R"
ATT.Description = [[Perfectly balanced weight distribution allows the highest stability and recoil control available.]]

ATT.Icon = Material("entities/attachs/mm/spr208/cod2019_mm_spr208_stockhvy.png", "mips smooth")

ATT.AimDownSightsTimeMult = 0.9
ATT.RecoilMult = 1.1

ATT.SortOrder = 0
ATT.Category = "cod2019_spr208_stock"
ATT.ActivateElements = {"stock_none"}

ATT.Model = "models/weapons/cod2019/attachs/weapons/spr208/attachment_vm_sn_romeo700_stockhvy.mdl"
ATT.RHIK_Priority = 5
ATT.RHIK = true
--ATT.BoneMerge = true

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["stock_adapter"] then
        model:SetBodygroup(1,1)
    end
end


ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_stock2") .. " II",
        Pos = Vector(5.85, 0, -0.05),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
        Category = {"cod2019_tube"},
		Scale = 1
    }
}

ARC9.LoadAttachment(ATT, "cod2019_spr208_stock_heavy")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "FSS Virtuoso Pro"
ATT.CompactName = "FSS Virt"
ATT.Description = [[FSS all-aluminium chassis and fully adjustable stock provides the precision and and strength required for fast moving shot-over-shot accuracy.]]

ATT.Icon = Material("entities/attachs/mm/spr208/cod2019_mm_spr208_stocktac.png", "mips smooth")

ATT.AimDownSightsTimeMult = 0.83
ATT.DeployTimeMult = 0.95
ATT.CycleTimeMult = 1.1
ATT.RecoilKickMult = 0.92

ATT.SortOrder = 0
ATT.Category = "cod2019_spr208_stock"
ATT.ActivateElements = {"stock_none"}

ATT.Model = "models/weapons/cod2019/attachs/weapons/spr208/attachment_vm_sn_romeo700_stocktac.mdl"
ATT.RHIK_Priority = 5
ATT.RHIK = true
--ATT.BoneMerge = true

ARC9.LoadAttachment(ATT, "cod2019_spr208_stock_tac")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "Sloan KR-600 Feather"
ATT.CompactName = "Sloan KR-600"
ATT.Description = [[Titanium shrouded aluminum core and a skeletalized handle make this bolt assembly lightning fast.]]

ATT.Icon = Material("entities/attachs/mm/spr208/cod2019_mm_spr208_boltl.png", "mips smooth")

ATT.SortOrder = 0
ATT.Category = "cod2019_spr208_bolt"
ATT.ActivateElements = {"bolt_none","bolt_light"}

ATT.Model = "models/weapons/cod2019/attachs/weapons/spr208/attachment_vm_sn_romeo700_boltl.mdl"
ATT.BoneMerge = true

ARC9.LoadAttachment(ATT, "cod2019_spr208_bolt_light")