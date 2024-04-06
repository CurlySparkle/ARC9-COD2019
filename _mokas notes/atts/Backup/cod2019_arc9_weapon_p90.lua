local ATT = {}
----------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "FORGE TAC Retribution"
ATT.CompactName = "Retribution"
ATT.Description = [[Extended front shroud houses a 16" polygonal rifled barrel. Greatly increases muzzle velocity and extends range. Additional weight stabilizes shots, but hinders mobility.]]
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/sm/p90/cod2019_sm_p90_custombarrel.png", "mips smooth")
ATT.AutoStats = true

ATT.Free = false

ATT.Model = "models/weapons/cod2019/attachs/weapons/p90/attachment_vm_sm_papa90_custombarrel.mdl"
ATT.BoneMerge = true

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_p90_barrel"}
ATT.ActivateElements = {"muzzle_none","barrel_none","barrel_p90_custom"}

--ATT.Silencer = true
--ATT.MuzzleParticleOverride = "weapon_muzzle_flash_assaultrifle_silenced2"
--ATT.MuzzleParticleOverride_Priority = 10
ATT.MuzzleDevice_Priority = 3
ATT.MuzzleDevice = true

ATT.AimDownSightsTimeMult = 1.1
ATT.SprintToFireTimeMult = 1.1
ATT.RecoilMult = 0.95

ATT.RangeMaxMult = 1.1
ATT.RangeMinMult = 1.1
ATT.PhysBulletMuzzleVelocityMult = 1.1

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["muzzle"] then
        model:SetBodygroup(1,1)
    end
end

ATT.Element = {
    AttPosMods = {
        [2] = { -- slot of the weapon's attachment
            Pos = Vector(6.7, 0, 0),
            Ang = Angle(0,0,0),
        },
        [4] = { -- slot of the weapon's attachment
            Pos = Vector(6, -2.45, 0.03),
            Ang = Angle(0,0,0),
        },
    }
}

ARC9.LoadAttachment(ATT, "cod2019_p90_barrel_custom")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "Fly Strap"
ATT.CompactName = "Fly Strap"
ATT.Description = [[Clip on strap improves fast paced weapon handling.]]

ATT.Icon = Material("entities/attachs/sm/p90/cod2019_sm_p90_stockl.png", "mips smooth")

ATT.SortOrder = 0
ATT.Category = "cod2019_p90_stock"
ATT.ActivateElements = {"stock_sling"}

ATT.Model = "models/weapons/cod2019/attachs/weapons/p90/attachment_vm_sm_papa90_stockl.mdl"
ATT.BoneMerge = true

ATT.AimDownSightsTimeMult = 0.95
ATT.SprintToFireTimeMult = 0.95

ARC9.LoadAttachment(ATT, "cod2019_p90_stock_sling")