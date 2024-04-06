local ATT = {}
-----------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW19 Attachments"
ATT.PrintName = "FORGE TAC Impaler"
ATT.CompactName = "Impaler"
ATT.Description = [[Extended barrel increases muzzle velocity and range. Additional weight and length stabilize shots but hinder mobility.]]

ATT.Icon = Material("entities/attachs/sh/origin12/cod2019_sh_origin12_barrellong.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/origin12/attachment_vm_sh_oscar12_barrellong.mdl"
ATT.BoneMerge = false

ATT.MuzzleDevice = true -- set to true if you want to use this to emit particles
ATT.MuzzleDevice_Priority = 3

ATT.SpreadMult = 0.8
ATT.RangeMaxMult = 1.2
ATT.RangeMinMult = 1.2
ATT.AimDownSightsTimeMult = 1.2

ATT.SortOrder = 0
ATT.Category = "cod2019_origin12_barrel"
ATT.ActivateElements = {"barrel_none"}

ATT.Element = {
    AttPosMods = {
        [3] = { -- slot of the weapon's attachment
            Pos = Vector(10, 0, 0),
            Ang = Angle(0,0,0),
        }
    }
}

ARC9.LoadAttachment(ATT, "cod2019_origin12_barrel_long")
-----------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW19 Attachments"
ATT.PrintName = "FORGE TAC Precision"
ATT.CompactName = "Precision"
ATT.Description = [[Heavy duty tapered barrel tightens pellet and slightly extends range with only a minor increase to weight.]]

ATT.Icon = Material("entities/attachs/sh/origin12/cod2019_sh_origin12_barrelmid.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/origin12/attachment_vm_sh_oscar12_barrelmid.mdl"
ATT.BoneMerge = false

ATT.MuzzleDevice = true -- set to true if you want to use this to emit particles
ATT.MuzzleDevice_Priority = 3

ATT.SpreadMult = 0.9
ATT.RangeMaxMult = 1.1
ATT.RangeMinMult = 1.1
ATT.AimDownSightsTimeMult = 1.1

ATT.SortOrder = 0
ATT.Category = "cod2019_origin12_barrel"
ATT.ActivateElements = {"barrel_none"}

ATT.Element = {
    AttPosMods = {
        [3] = { -- slot of the weapon's attachment
            Pos = Vector(2.67, 0, 0),
            Ang = Angle(0,0,0),
        }
    }
}

ARC9.LoadAttachment(ATT, "cod2019_origin12_barrel_mid")
-----------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW19 Attachments"
ATT.PrintName = "FORGE TAC Wideshot"
ATT.CompactName = "Wideshot"
ATT.Description = [[Lightweight smooth bore barrel widens pellet spread and improves agility with only a minor decrease to range.]]

ATT.Icon = Material("entities/attachs/sh/origin12/cod2019_sh_origin12_barrelshort.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/origin12/attachment_vm_sh_oscar12_barrelshort.mdl"
ATT.BoneMerge = false

ATT.MuzzleDevice = true -- set to true if you want to use this to emit particles
ATT.MuzzleDevice_Priority = 3

ATT.SpreadMult = 1.15
ATT.RangeMaxMult = 0.9
ATT.RangeMinMult = 0.9

ATT.AimDownSightsTimeMult = 0.9
ATT.SprintToFireTimeMult = 0.9

ATT.SortOrder = 0
ATT.Category = "cod2019_origin12_barrel"
ATT.ActivateElements = {"barrel_none"}

ATT.Element = {
    AttPosMods = {
        [3] = { -- slot of the weapon's attachment
            Pos = Vector(1.2, 0, 0),
            Ang = Angle(0,0,0),
        }
    }
}

ARC9.LoadAttachment(ATT, "cod2019_origin12_barrel_small")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "12 Round Mag"
ATT.CompactName = "12-Round"
ATT.Description = [[Better capacity magazines that hold 12 rounds with a weight increase.]]

ATT.Icon = Material("entities/attachs/sh/origin12/cod2019_sh_origin12_xmags.png", "mips smooth")

ATT.ClipSizeOverride = 12
ATT.ReloadTimeMult = 1.1
ATT.SprintToFireTimeMult = 1.1
ATT.AimDownSightsTimeMult = 1.1
ATT.DeployTimeMult = 1.05

ATT.SortOrder = 0
ATT.Category = {"cod2019_origin12_mag"}
ATT.ActivateElements = {"mag_none","mag_xmag"}

ATT.Model = "models/weapons/cod2019/attachs/weapons/origin12/attachment_vm_sh_oscar12_xmags.mdl"
ATT.DropMagazineModel = "models/weapons/cod2019/attachs/weapons/origin12/attachment_vm_sh_oscar12_xmags.mdl"
ATT.BoneMerge = true
--ATT.ModelOffset = Vector(1, 0, 1)

ARC9.LoadAttachment(ATT, "cod2019_origin12_mag_xmag")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "25 Round Drum"
ATT.CompactName = "25-Round"
ATT.Description = [[High capacity magazines hold 25 rounds with a heavy weight increase.]]

ATT.Icon = Material("entities/attachs/sh/origin12/cod2019_sh_origin12_drummag.png", "mips smooth")

ATT.ClipSizeOverride = 25
ATT.ReloadTimeMult = 1.2
ATT.SprintToFireTimeMult = 1.15
ATT.AimDownSightsTimeMult = 1.15
ATT.DeployTimeMult = 1.1

ATT.SortOrder = 0
ATT.Category = {"cod2019_origin12_mag"}
ATT.ActivateElements = {"mag_none","mag_drum"}

ATT.Model = "models/weapons/cod2019/attachs/weapons/origin12/attachment_vm_sh_oscar12_drummag.mdl"
ATT.DropMagazineModel = "models/weapons/cod2019/attachs/weapons/origin12/attachment_vm_sh_oscar12_drummag.mdl"
ATT.DropMagazineModelEmpty = "models/weapons/cod2019/attachs/weapons/origin12/attachment_vm_sh_oscar12_drummag_phys.mdl"
ATT.BoneMerge = true
--ATT.ModelOffset = Vector(1, 0, 1)

ATT.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_01.ogg", 
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_02.ogg", 
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_03.ogg",
}

ATT.HideBones  = {
    [1] = "j_mag2",
}

local bulletbones = {
    [25] = "j_shell1",
    [24] = "j_shell2",
    [23] = "j_shell3",
    [22] = "j_shell4",
    [21] = "j_drumshell5",
    [20] = "j_drumshell6",
    [19] = "j_drumshell7",
    [18] = "j_drumshell8",
    [17] = "j_drumshell9",
    [16] = "j_drumshell10",
    [15] = "j_drumshell11",
    [14] = "j_drumshell12",
    [13] = "j_drumshell13",
    [12] = "j_drumshell14",
    [11] = "j_drumshell15",
    [10] = "j_drumshell16",
    [9] = "j_drumshell17",
    [8] = "j_drumshell18",
    [7] = "j_drumshell19",
    [6] = "j_drumshell20",
    [5] = "j_drumshell21",
    [4] = "j_drumshell22",
    [3] = "j_drumshell23",
    [2] = "j_drumshell24",
    [1] = "j_drumshell25"
}

local v0 = Vector(0, 0, 0)
local v1 = Vector(1, 1, 1)

ATT.DrawFunc = function(wep, model, wm)
    local clip = wep:GetLoadedRounds()

    local draw = 25 - clip + 1

    for i = 1, 25 do
        local boneid = model:LookupBone(bulletbones[i])
        if i >= draw then
            model:ManipulateBoneScale(boneid, v1)
        else
            model:ManipulateBoneScale(boneid, v0)
        end
    end
end

ARC9.LoadAttachment(ATT, "cod2019_origin12_mag_drum")
---------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Commando Foregrip"
ATT.CompactName = "Commando"
ATT.Description = [[Heavy weight angled grip keeps the weapon steady while aiming, and helps maintain control during heavy fire.]]

ATT.Icon = Material("entities/attachs/sh/origin12/cod2019_sh_origin12_sidegripang.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/origin12/attachment_vm_sh_oscar12_sidegripang.mdl"

ATT.SortOrder = 1
ATT.Category = "cod2019_grips_side"
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Folder = ARC9:GetPhrase("mw19_folder_side")

ATT.AimDownSightsTimeMult = 0.9
ATT.RecoilMult = 1.11
ATT.DrawTimeMult = 1.13
ATT.HolsterTimeMult = 1.13

ATT.LHIK_Priority = 10
ATT.LHIK = true

ATT.ModelOffset = Vector(0, 0, 0)
ATT.ModelAngleOffset = Angle(0, 0, 180)

ARC9.LoadAttachment(ATT, "cod2019_origin12_grip_side_com")
---------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Merc Foregrip"
ATT.CompactName = "Merc"
ATT.Description = [[Extended foregrip reduces vertical recoil and provides stability from the hip for fast paced guerilla tactics.]]

ATT.Icon = Material("entities/attachs/sh/origin12/cod2019_sh_origin12_sidegrip_long.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/origin12/attachment_vm_sh_oscar12_sidegrip_long.mdl"

ATT.SortOrder = 1
ATT.Category = "cod2019_grips_side"
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Folder = ARC9:GetPhrase("mw19_folder_side")

ATT.AimDownSightsTimeMult = 1.07
ATT.RecoilMult = 0.9
ATT.DeployTimeMult = 1.07
ATT.HolsterTimeMult = 1.07

ATT.LHIK_Priority = 10
ATT.LHIK = true

ATT.ModelOffset = Vector(0, 0, 0)
ATT.ModelAngleOffset = Angle(0, 0, 180)

ARC9.LoadAttachment(ATT, "cod2019_origin12_grip_side_merc")
---------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Merc Foregrip"
ATT.CompactName = "Merc"
ATT.Description = [[Extended foregrip reduces vertical recoil and provides stability from the hip for fast paced guerilla tactics.]]

ATT.Icon = Material("entities/attachs/sh/origin12/cod2019_sh_origin12_sidegripang.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/origin12/attachment_vm_sh_oscar12_sidegrip_long_alt.mdl"

ATT.SortOrder = 2.5
ATT.Category = "cod2019_grip"
ATT.MenuCategory = "ARC9 - MW2019 Attachments"

ATT.AimDownSightsTimeMult = 1.07
ATT.RecoilMult = 0.9
ATT.DeployTimeMult = 1.07
ATT.HolsterTimeMult = 1.07

ATT.LHIK_Priority = 100
ATT.LHIK = true

ATT.ModelOffset = Vector(0, 0, 0)
ATT.ModelAngleOffset = Angle(0, 0, 180)

ARC9.LoadAttachment(ATT, "cod2019_origin12_grip_side_merc")
-------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = [[FSS Protector Suppressor]]
ATT.CompactName = [[Protector]]
ATT.Description = "Lightweight aluminum suppressor type FSS sacrifices range for stealth and agility."
ATT.Icon = Material("entities/attachs/sh/model680/cod2019_sh_model680_shtgnsilencer.png", "mips smooth")

ATT.SortOrder = 2
ATT.AutoStats = true
ATT.Category = "cod2019_muzzle_shot"
ATT.Folder = ARC9:GetPhrase("mw19_folder_suppressor")
ATT.ActivateElements = {"muzzle"}

ATT.Model = "models/weapons/cod2019/attachs/weapons/origin12/attachment_vm_sh_oscar12_suppressor.mdl"

ATT.AimDownSightsTimeMult = 0.95
ATT.RangeMaxMult = 1.1
ATT.SpreadMult = 0.95
ATT.RecoilKickMult = 1.1

ATT.Silencer = true
ATT.MuzzleParticleOverride = "AC_muzzle_shotgun_suppressed"
ATT.MuzzleDevice_Priority = 5
ATT.MuzzleDevice = true

ARC9.LoadAttachment(ATT, "cod2019_origin12_silencer")
------------------------------------------------------------------ GRIP NONE
ATT = {}

ATT.PrintName = "Alt Hold 2"
ATT.CompactName = "Alt Hold 2"
ATT.Description = [[Changes the holding style of the weapon.
(Based on the holding stance from MW23)]]
ATT.Icon = Material("entities/attachs/cod2019_grip_none.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/origin12/grip_none_origin12_alt.mdl"

ATT.SortOrder = 0
ATT.Category = "cod2019_origin12_grip"
ATT.Folder = ARC9:GetPhrase("mw19_folder_other2")

ATT.LHIK_Priority = 5
ATT.LHIK = true

ATT.ModelOffset = Vector(0, 0, 0)
ATT.ModelAngleOffset = Angle(0, 0, 180)

ARC9.LoadAttachment(ATT, "cod2019_origin12_grip_none2")