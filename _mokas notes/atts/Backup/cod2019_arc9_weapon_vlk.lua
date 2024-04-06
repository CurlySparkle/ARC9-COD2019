local ATT = {}
----------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "VLK Czar"
ATT.CompactName = "Czar"
ATT.Description = [[Long-length heavy barrel. Offers superior handling at the cost of performance.]]
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/sh/vlk/cod2019_sh_vlk_barheavy.png", "mips smooth")
ATT.AutoStats = true

ATT.Free = false

ATT.Model = "models/weapons/cod2019/attachs/weapons/vlk/attachment_vm_sh_mike26_barheavy.mdl"
ATT.BoneMerge = true

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_vlk_barrel"}
ATT.ActivateElements = {"muzzle_none","barrel_none","barrel_vlk","vlk_barrel_heavy"}

--ATT.Silencer = true
--ATT.MuzzleParticleOverride = "weapon_muzzle_flash_assaultrifle_silenced2"
--ATT.MuzzleParticleOverride_Priority = 10
ATT.Override_MuzzleEffectAttachment = 1
ATT.Override_MuzzleEffectAttachmentPriority = 3
--ATT.MuzzleDevice = true

ATT.AimDownSightsTimeMult = 1.25
ATT.SprintToFireTimeMult = 1.25
ATT.RecoilMult = 0.85

ATT.RangeMaxMult = 1.25
ATT.RangeMinMult = 1.25
ATT.PhysBulletMuzzleVelocityMult = 1.25

-- ATT.Attachments = {
    -- {
        -- PrintName = ARC9:GetPhrase("mw19_category_muzzle2"),
        -- Pos = Vector(-7.5, 0, 0),
        -- Ang = Angle(0, 0, 0),
        -- Icon_Offset = Vector(0, 0, 0),
        -- Category = {"muzzle_shotgun","muzzle"},
		-- Scale = 1
    -- }
-- }

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["muzzle_none"] then
        model:SetBodygroup(1,1)
    end
end

ARC9.LoadAttachment(ATT, "cod2019_vlk_barrel_heavy")
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "12-R Mag"
ATT.CompactName = "12-R"
ATT.Description = [[Extended magazines hold 12 rounds with a slight weight increase.]]

ATT.Icon = Material("entities/attachs/sh/vlk/cod2019_sh_vlk_xmag.png", "mips smooth")

ATT.ClipSizeOverride = 12

ATT.SortOrder = 0
ATT.Category = "cod2019_vlk_mag"
ATT.ActivateElements = {"mag_none","mag_xmag"}

ATT.Model = "models/weapons/cod2019/attachs/weapons/vlk/attachment_vm_sh_mike26_xmag.mdl"
ATT.DropMagazineModel = "models/weapons/cod2019/attachs/weapons/vlk/attachment_vm_sh_mike26_xmag.mdl"
ATT.BoneMerge = true

ATT.BulletBones = {
    [1] = "j_shell01",
    [2] = "j_shell02",
    [3] = "j_shell03",
    [4] = "j_shell04",
    [5] = "j_shell05",
    [6] = "j_shell06",
    [7] = "j_shell07",
    [8] = "j_shell08",
}

ARC9.LoadAttachment(ATT, "cod2019_vlk_mag_xmag")