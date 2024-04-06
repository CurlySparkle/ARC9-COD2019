local ATT = {}
---------------------------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "30 Round Mags"
ATT.CompactName = "30-R Mag"
ATT.Description = [[]]
ATT.Icon = Material("entities/attachs/lm/holger36/cod2019_lm_holger_armag.png", "mips smooth")

ATT.SortOrder = 0
ATT.Category = "cod2019_holger_mag"
ATT.ActivateElements = {"mag_none","mag_armag"}

ATT.Model = "models/weapons/cod2019/attachs/mag/holger_armag.mdl"
ATT.DropMagazineModel = "models/weapons/cod2019/attachs/mag/holger_armag.mdl"
ATT.BoneMerge = true

ATT.ClipSizeOverride = 30
ATT.AimDownSightsTimeMult = 0.85
ATT.DeployTimeMult = 0.85

ATT.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_poly_concrete_01.ogg", 
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_poly_concrete_02.ogg", 
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_poly_concrete_03.ogg", 
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_poly_concrete_04.ogg", 
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_poly_concrete_05.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_poly_concrete_06.ogg", 
}

-- Non-Silenced
ATT.LayerSound = "Layer_AR.Outside"
ATT.DistantShootSound = "Distant_AR3.Outside"
-- Inside
ATT.LayerSoundIndoor = "Layer_AR.Inside"
ATT.DistantShootSoundIndoor = "Distant_AR.Inside"

-- ATT.Hook_TranslateAnimation = function(wep, anim)
    -- return anim .. "_ar"
-- end

ARC9.LoadAttachment(ATT, "cod2019_holger_armag_30")
---------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "FTAC 8.98 Spitfire"
ATT.CompactName = "Spitfire"
ATT.Description = [[Medium, compact barrel sacrifices accuracy and range for speed and agility. Good for clearing out tight spaces.]]
ATT.SortOrder = 1

ATT.Icon = Material("entities/attachs/lm/holger36/cod2019_lm_holger36_barrel_med.png", "mips smooth")
ATT.AutoStats = true

ATT.Free = false

ATT.Model = "models/weapons/cod2019/attachs/weapons/holger36/attachment_vm_lm_mgolf36_barrel_med.mdl"
ATT.BoneMerge = true

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = {"cod2019_holger_barrel"}
ATT.ActivateElements = {"barrel_none","muzzle_none"}

ATT.AimDownSightsTimeMult = 0.95
ATT.DeployTimeMult = 0.95
ATT.RangeMaxMult = 0.95
ATT.SpreadMult = 1.05

-- ATT.Attachments = {
    -- {
        -- PrintName = ARC9:GetPhrase("mw19_category_muzzle2"),
        -- Pos = Vector(-10.5, 0, 0.35),
        -- Ang = Angle(0, 0, 0),
        -- Icon_Offset = Vector(0, 0, 0),
        -- Category = "cod2019_muzzle",
		-- Scale = 1,
    -- },
    -- {
        -- PrintName = ARC9:GetPhrase("mw19_category_laser2"),
        -- Pos = Vector(-7, 1.2, 0.3),
        -- Ang = Angle(0, 0, -90),
        -- Icon_Offset = Vector(0, 0, 0),
        -- Category = "cod2019_tac",
		-- Scale = 1
    -- },
    -- {
        -- PrintName = ARC9:GetPhrase("mw19_category_underbarrel2"),
        -- Pos = Vector(-6.5, 0, 1.77),
        -- Ang = Angle(0, 0, 180),
        -- Icon_Offset = Vector(0, 0, 0),
        -- Category = "cod2019_grip",
		-- Scale = 1
    -- }
-- }

ATT.Element = {
    AttPosMods = {
        [2] = { -- slot of the weapon's attachment
            Pos = Vector(-4, 0, 0),
            Ang = Angle(0,0,0),
        }
    }
}

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["muzzle"] then
        model:SetBodygroup(1,1)
    end
end

ARC9.LoadAttachment(ATT, "cod2019_holger_barrel_spitfire")