local ATT = {}
-----------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW19 Attachments"
ATT.PrintName = "ZLR J-3600 Torrent"
ATT.CompactName = "ZLR J-3600"
ATT.Description = [[Extra-long barrel tightens pellets spread and extends range. Additional weight and length stabilize shots but hinders mobility.]]

ATT.Icon = Material("entities/attachs/sh/jak12/cod2019_sh_jak12_barlong.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/jak12/attachment_vm_sh_aalpha12_barlong.mdl"

ATT.MuzzleDevice = true -- set to true if you want to use this to emit particles
ATT.MuzzleDevice_Priority = 2

ATT.SpreadMult = 0.8
ATT.RangeMaxMult = 1.2
ATT.RangeMinMult = 1.2

ATT.AimDownSightsTimeMult = 1.15
ATT.SprintToFireTimeMult = 1.15

ATT.SortOrder = 0
ATT.Category = "cod2019_jak12_barrel"
ATT.ActivateElements = {"barrel_none","barrel_long"}

ATT.Element = {
    AttPosMods = {
        [2] = { -- slot of the weapon's attachment
            Pos = Vector(8, 0, 0),
            Ang = Angle(0,0,0),
        }
    }
}

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["muzzle"] then
        model:SetBodygroup(1,1)
    end
end

ARC9.LoadAttachment(ATT, "cod2019_jak12_barrel_long")
-----------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW19 Attachments"
ATT.PrintName = "JAK Urban King"
ATT.CompactName = "Urban King"
ATT.Description = [[Ultra light barrel retracted into the shroud for rapid close range strikes.]]

ATT.Icon = Material("entities/attachs/sh/jak12/cod2019_sh_jak12_barshort.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/jak12/attachment_vm_sh_aalpha12_barshort.mdl"

ATT.SpreadMult = 1.15
ATT.RangeMaxMult = 0.9
ATT.RangeMinMult = 0.9

ATT.AimDownSightsTimeMult = 0.9
ATT.SprintToFireTimeMult = 0.9

ATT.SortOrder = 0
ATT.Category = "cod2019_jak12_barrel"
ATT.ActivateElements = {"barrel_none"}

ATT.Element = {
    AttPosMods = {
        [2] = { -- slot of the weapon's attachment
            Pos = Vector(-1.1, 0, 0),
            Ang = Angle(0,0,0),
        }
    }
}

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["muzzle"] then
        model:SetBodygroup(1,1)
    end
end

ARC9.LoadAttachment(ATT, "cod2019_jak12_barrel_short")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "32 Round Drum Mag"
ATT.CompactName = "32-Round"
ATT.Description = [[High capacity magazines hold 32 rounds with a heavy weight increase.]]

ATT.Icon = Material("entities/attachs/sh/jak12/cod2019_sh_jak12_drummag.png", "mips smooth")

ATT.ClipSizeOverride = 32
ATT.ReloadTimeMult = 1.15
ATT.SprintToFireTimeMult = 1.1
ATT.AimDownSightsTimeMult = 1.1

ATT.SortOrder = 0
ATT.Category = {"cod2019_jak12_mag"}
ATT.ActivateElements = {"mag_none","mag_drum"}

ATT.Model = "models/weapons/cod2019/attachs/weapons/jak12/attachment_vm_sh_aalpha12_drummag.mdl"
ATT.DropMagazineModel = "models/weapons/cod2019/attachs/weapons/jak12/attachment_vm_sh_aalpha12_drummag.mdl"
ATT.BoneMerge = true

ATT.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_01.ogg", 
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_02.ogg", 
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_03.ogg",
}

ARC9.LoadAttachment(ATT, "cod2019_jak12_mag_drum")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "FSS Power Wrap"
ATT.CompactName = "FSS Power Wrap"
ATT.Description = [[Lead lined weighted wrap balances center mass for stability while aiming.]]

ATT.Icon = Material("entities/attachs/sh/jak12/cod2019_sh_jak12_stocks.png", "mips smooth")

ATT.SprintToFireTimeMult = 0.9
ATT.AimDownSightsTimeMult = 0.9
ATT.DeployTimeMult = 1.1
ATT.RecoilMult = 1.1

ATT.SortOrder = 0
ATT.Category = {"cod2019_jak12_stock"}
ATT.ActivateElements = {"stock_stable"}

ATT.Model = "models/weapons/cod2019/attachs/weapons/jak12/attachment_vm_sh_aalpha12_stocks.mdl"
ATT.BoneMerge = true

ARC9.LoadAttachment(ATT, "cod2019_jak12_stock_stable")