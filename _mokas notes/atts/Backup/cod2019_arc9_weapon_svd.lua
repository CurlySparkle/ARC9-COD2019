local ATT = {}
/////////////////////////// -- cod2019_optic_scope_svd
ATT = {}

ATT.PrintName = "Dragunov Scope"
ATT.Description = ""
ATT.Icon = Material("entities/attachs/cod2019_optic_scope_svd.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"

ATT.SortOrder = 5.5
ATT.Category = {"cod2019_optic_svd"}
ATT.Folder = ARC9:GetPhrase("mw19_folder_scope")
ATT.ActivateElements = {"scope_svd"}

ATT.Model = "models/weapons/cod2019/attachs/scopes/scope_svd.mdl"
ATT.ModelOffset = Vector(0.5, 0, -0.8)

ATT.Sights = {
    {
        Pos = Vector(0, 9, -1.945),
        Ang = Angle(0, 0, 0),
        ViewModelFOV = 36,
        Magnification = 1.15,
        IgnoreExtra = true
    },
}

ATT.CustomPros = {
   [ ARC9:GetPhrase("mw19_optic_stat_zoom") ] = "5.5x"
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 2
ATT.RTScopeFOV = 36 / 5.5
ATT.RTScopeRes = 512
ATT.RTScopeReticle = Material("hud/arc9_cod2019/overlays/svd_crosshair.png", "mips smooth")
ATT.RTScopeReticleScale = 1
ATT.RTScopeShadowIntensity = 5
ATT.RTScopeNoPP = false
ATT.RTScopeColorable = false

if !warzonestats then -- Regular Stats
	ATT.AimDownSightsTimeAdd = 0.08
	ATT.VisualRecoilMult = 0.99
	ATT.RecoilMult = 0.99
else -- Warzone Stats
	ATT.AimDownSightsTimeAdd = 0.08
	ATT.VisualRecoilMult = 0.99
	ATT.RecoilMult = 0.99
end

ARC9.LoadAttachment(ATT, "cod2019_optic_scope_svd")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "660mm Extended Barrel"
ATT.CompactName = "660mm"
ATT.Description = [[Extended barrel improves muzzle velocity and range. Additional weight stabilize shots but hinders mobility.]]

ATT.Icon = Material("entities/attachs/sn/svd/cod2019_sn_svd_barlong.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/svd/attachment_vm_sn_delta_barlong.mdl"
ATT.BoneMerge = false

ATT.SortOrder = 0
ATT.Category = "cod2019_svd_barrel"
ATT.ActivateElements = {"barrel_none","muzzle_none"}

ATT.MuzzleDevice = true -- set to true if you want to use this to emit particles
ATT.MuzzleDevice_Priority = 2

ATT.AimDownSightsTimeMult = 1.15
ATT.RecoilMult = 0.9

ATT.RangeMaxMult = 1.25
ATT.RangeMinMult = 1.25

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

ARC9.LoadAttachment(ATT, "cod2019_svd_barrel_long")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "510mm Compact Barrel"
ATT.CompactName = "510mm"
ATT.Description = [[Short, compact barrel sacrifices accuracy and range for speed and agility. Better for sniping on the move.]]

ATT.Icon = Material("entities/attachs/sn/svd/cod2019_sn_svd_barshort.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/svd/attachment_vm_sn_delta_barshort.mdl"
ATT.BoneMerge = false

ATT.SortOrder = 0
ATT.Category = "cod2019_svd_barrel"
ATT.ActivateElements = {"barrel_none","muzzle_none"}
ATT.ModelOffset = Vector(0, 0, 0)

ATT.MuzzleDevice = true -- set to true if you want to use this to emit particles
ATT.MuzzleDevice_Priority = 2

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
        [3] = { -- slot of the weapon's attachment
            Pos = Vector(-5, 0, 0),
            Ang = Angle(0,0,0),
        }
    }
}

ARC9.LoadAttachment(ATT, "cod2019_svd_barrel_short")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "15 Round Mag"
ATT.CompactName = "15-Round"
ATT.Description = [[Extended magazines hold 15 rounds of 7.62×54mmR with a slight weight increase.]]

--ATT.Icon = Material("entities/attachs/go_aug_ammo_9mm.png", "mips smooth")

ATT.ClipSizeOverride = 15
ATT.ReloadTimeMult = 1.1
ATT.AimDownSightsTimeMult = 1.1

ATT.SortOrder = 0
ATT.Category = "cod2019_svd_mag"
ATT.ActivateElements = {"mag_none","mag_xmag"}

ATT.Model = "models/weapons/cod2019/attachs/weapons/svd/attachment_vm_sn_delta_xmags.mdl"
ATT.DropMagazineModel = "models/weapons/cod2019/attachs/weapons/svd/attachment_vm_sn_delta_xmags.mdl"
ATT.BoneMerge = true

ARC9.LoadAttachment(ATT, "cod2019_svd_mag_30")
----------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Plague Sore"
ATT.CompactName = "Plague Sore"
ATT.Description = [[]]
ATT.SortOrder = 1

--ATT.Icon = Material("entities/attachs/cod2019_cx9_barrel_silenced.png", "mips smooth")
ATT.AutoStats = true

ATT.Free = false

ATT.Model = "models/weapons/cod2019/attachs/weapons/svd/attachment_vm_sn_delta_receiver_v2.mdl"
ATT.BoneMerge = true

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_svd_reciever"}
ATT.ActivateElements = {"body_none","foregrip_none"}

ATT.RecoilMult = 0.85
ATT.RangeMaxMult = 1.1
ATT.RangeMinMult = 1.1
ATT.PhysBulletMuzzleVelocityMult = 1.1

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_optic2"),
        Pos = Vector(-3.6, 0, -1.53),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
        Category = "cod2019_optic",
		Scale = 1
    }
}

ATT.Sights = {
    {
        Pos = Vector(0, 3, -1.7),
        Ang = Angle(0, 0, 0),
        Magnification = 1.15,
        IsIronSight = true,
        KeepBaseIrons = false
    }
}

ARC9.LoadAttachment(ATT, "cod2019_svd_reciever_v2")
----------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Plague Sore"
ATT.CompactName = "Plague Sore"
ATT.Description = [[]]
ATT.SortOrder = 1

--ATT.Icon = Material("entities/attachs/cod2019_cx9_barrel_silenced.png", "mips smooth")
ATT.AutoStats = true

ATT.Free = false

ATT.Model = "models/weapons/cod2019/attachs/weapons/svd/attachment_vm_sn_delta_stock_v2.mdl"
ATT.BoneMerge = true

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_svd_stock"}
ATT.ActivateElements = {"stock_none","stock_custom"}

ATT.RecoilMult = 0.85
ATT.RangeMaxMult = 1.1
ATT.RangeMinMult = 1.1
ATT.PhysBulletMuzzleVelocityMult = 1.1

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_stock"),
        Pos = Vector(0, 0, -0.5),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
        Category = "cod2019_tube",
		Scale = 1
    }
}

ARC9.LoadAttachment(ATT, "cod2019_svd_stock_v2")