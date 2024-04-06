local ATT = {}
----------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "8.7\" Polygonal"
ATT.CompactName = "8.7\" Polygonal"
ATT.Description = [[Slight length increase and polygonal rifling improve muzzle velocity and range with little additional weight.]]

ATT.Icon = Material("entities/attachs/sm/bizon/cod2019_sm_bizon_barlong.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/bizon/attachment_vm_sm_beta_barlong.mdl"
ATT.BoneMerge = false

ATT.SortOrder = 0
ATT.Category = "cod2019_bizon_barrel"
ATT.ActivateElements = {"barrel_none","muzzle_none"}

ATT.MuzzleDevice = true -- set to true if you want to use this to emit particles
ATT.MuzzleDevice_Priority = 2

ATT.AimDownSightsTimeMult = 1.05
ATT.DeployTimeMult = 1.05

ATT.RangeMaxMult = 1.05
ATT.RangeMinMult = 1.05

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["muzzle"] then
        model:SetBodygroup(1,1)
    end
end

ATT.Element = {
    AttPosMods = {
        [2] = { -- slot of the weapon's attachment
            Pos = Vector(1, 0, 0),
            Ang = Angle(0,0,0),
        }
    }
}

ARC9.LoadAttachment(ATT, "cod2019_bizon_barrel_long")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "8.7\" Aluminum"
ATT.CompactName = "8.7\" Aluminum"
ATT.Description = [[Dimpled large bore barrel reduces weight for improved handling at the cost of muzzle velocity.]]

ATT.Icon = Material("entities/attachs/sm/bizon/cod2019_sm_bizon_barlong.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/weapons/bizon/attachment_vm_sm_beta_barshort.mdl"
ATT.BoneMerge = false

ATT.SortOrder = 0
ATT.Category = "cod2019_bizon_barrel"
ATT.ActivateElements = {"barrel_none","muzzle_none"}
ATT.ModelOffset = Vector(0, 0, 0)

ATT.MuzzleDevice = true -- set to true if you want to use this to emit particles
ATT.MuzzleDevice_Priority = 2

ATT.SprintToFireTimeMult = 0.85
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
        [2] = { -- slot of the weapon's attachment
            Pos = Vector(1, 0, 0),
            Ang = Angle(0,0,0),
        }
    }
}

ARC9.LoadAttachment(ATT, "cod2019_bizon_barrel_short")
---------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "84 Round Helical Mags"
ATT.CompactName = "84-Round"
ATT.Description = [[High capacity magazines hold 84 rounds of 9mm Makarov with a moderate weight increase.]]
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/sm/bizon/cod2019_sm_bizon_xmags.png", "mips smooth")
ATT.AutoStats = true

ATT.Free = false

ATT.Model = "models/weapons/cod2019/attachs/weapons/bizon/attachment_vm_sm_beta_xmags.mdl"
ATT.DropMagazineModel = "models/weapons/cod2019/attachs/weapons/bizon/attachment_vm_sm_beta_xmags.mdl"
ATT.BoneMerge = true

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_bizon_mag"}
ATT.ActivateElements = {"mag_none","mag_xmag"}

ATT.ClipSizeOverride = 84
ATT.ReloadTimeMult = 1.15

ATT.DeployTimeMult = 1.06
ATT.AimDownSightsTimeMult = 1.06

ATT.BulletBones = {
    [1] = "j_bullet1",
    [2] = "j_bullet2",
	[3] = "j_bullet3",
}

ARC9.LoadAttachment(ATT, "cod2019_bizon_mag_xmag")