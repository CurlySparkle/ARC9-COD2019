local ATT = {}
---------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "G.I. Mini Reflex"
ATT.CompactName = [[G.I.]]
ATT.Icon = Material("entities/attachs/cod2019_optic_minireddot.png", "mips smooth")
ATT.Description = [[G.I. Miniature reflex optic features a wide, thin frame for an unobstructed sight picture.]]

ATT.CustomPros = {
    [ ARC9:GetPhrase("mw19_optic_stat_precision") ] = ""
}

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Free = false
-- ATT.Folder = ARC9:GetPhrase("mw19_folder_rds")

ATT.Category = {"cod2019_optics_pistols_scope"}
ATT.ActivateElements = {"optic_small"}

ATT.Model = "models/weapons/cod2019/attachs/sights/minireddot_1.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(-1.5, 0, 0.05)
ATT.ModelAngleOffset = Angle(0, 0, 0)

-- ATT.AimDownSightsTimeMult = 1.15

-- ATT.CantPeek = true

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["optic_adapter"] then
        model:SetBodygroup(1,1)
    end
end

ATT.Sights = {
    {
        Pos = Vector(0, 3.5, -0.65),
        Ang = Angle(0, 0, 0),
        Magnification = 1.25,
        ViewModelFOV = 56,
        IgnoreExtra = false,
		CantPeek = true
    },
}

ATT.HoloSight = true
ATT.HoloSightReticle = Material("hud/arc9_cod2019/reticles/aimpoint_reticle")
ATT.HoloSightSize = 128
ATT.HoloSightColorable = false

ARC9.LoadAttachment(ATT, "cod2019_optic_minireddot1_scope")
------------------------------------------------------------------

ATT = {}

ATT.PrintName = "Cronen LP945 Mini Reflex"
ATT.CompactName = [[Cronen LP945]]
ATT.Icon = Material("entities/attachs/cod2019_optic_minireddot02.png", "mips smooth")
ATT.Description = [[Circular reflex frame from Cronen keeps the focus on the target.]]

ATT.CustomPros = {
    [ ARC9:GetPhrase("mw19_optic_stat_precision") ] = ""
}

ATT.SortOrder = 2
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Free = false
-- ATT.Folder = ARC9:GetPhrase("mw19_folder_rds")

ATT.Category = {"cod2019_optics_pistols_scope"}
ATT.ActivateElements = {"optic_small"}

ATT.Model = "models/weapons/cod2019/attachs/sights/minireddot_2.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(-1.5, 0, 0.05)
ATT.ModelAngleOffset = Angle(0, 0, 0)

-- ATT.AimDownSightsTimeMult = 1.15

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["optic_adapter"] then
        model:SetBodygroup(1,1)
    end
end

ATT.Sights = {
    {
        Pos = Vector(0, 3.5, -0.6),
        Ang = Angle(0, 0, 0),
        Magnification = 1.25,
        ViewModelFOV = 56,
        IgnoreExtra = false,
		CantPeek = true
    },
}

ATT.HoloSight = true
ATT.HoloSightReticle = Material("hud/arc9_cod2019/reticles/aimpoint_reticle")
ATT.HoloSightSize = 128
ATT.HoloSightColorable = false

ARC9.LoadAttachment(ATT, "cod2019_optic_minireddot2_scope")
------------------------------------------------------------------

ATT = {}

ATT.PrintName = "Solozero Optic Mini Reflex"
ATT.CompactName = [[Solozero]]
ATT.Icon = Material("entities/attachs/cod2019_optic_minireddot03.png", "mips smooth")
ATT.Description = [[Well rounded precision sight from Solozero Optics provides a balanced sight picture.]]

ATT.CustomPros = {
    [ ARC9:GetPhrase("mw19_optic_stat_precision") ] = ""
}

ATT.SortOrder = 2
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Free = false
-- ATT.Folder = ARC9:GetPhrase("mw19_folder_rds")

ATT.Category = {"cod2019_optics_pistols_scope"}
ATT.ActivateElements = {"optic_small"}

ATT.Model = "models/weapons/cod2019/attachs/sights/minireddot_3.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(-1.5, 0, 0.05)
ATT.ModelAngleOffset = Angle(0, 0, 0)

-- ATT.AimDownSightsTimeMult = 1.15

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["optic_adapter"] then
        model:SetBodygroup(1,1)
    end
end

ATT.Sights = {
    {
        Pos = Vector(0, 3.5, -0.6),
        Ang = Angle(0, 0, 0),
        Magnification = 1.25,
        ViewModelFOV = 56,
        IgnoreExtra = false,
		CantPeek = true
    },
}

ATT.HoloSight = true
ATT.HoloSightReticle = Material("hud/arc9_cod2019/reticles/aimpoint_reticle")
ATT.HoloSightSize = 128
ATT.HoloSightColorable = false

ARC9.LoadAttachment(ATT, "cod2019_optic_minireddot3_scope")
------------------------------------------------------------------ ETC
ATT = {}

ATT.PrintName = "Picatinny Rail Sight Mount"
ATT.CompactName = [[Picatinny]]
ATT.Icon = Material("entities/attachs/cod2019_optic_rail_picatinny.png", "mips smooth")
ATT.Description = [[Picatinny Adapter that is designed for mounting a second low profile sight.]]

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Free = false
ATT.Folder = ARC9:GetPhrase("mw19_folder_other")

ATT.Category = {"cod2019_optic"}
ATT.ActivateElements = {"no_optic_hybrid"}

ATT.Model = "models/weapons/cod2019/attachs/sights/attachment_vm_picatinny.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(-1, 0, 0.1)
ATT.ModelAngleOffset = Angle(0, 0, 0)

ATT.AimDownSightsTimeMult = 1.02

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_optic2"),
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(-2, 0, 1),
        Category = "cod2019_optic",
		Scale = 1,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_optic2") .. " II",
        Pos = Vector(0.5, 1.1, 0.13),
        Ang = Angle(0, 0, 45),
        Icon_Offset = Vector(2, -1.5, 0),
        Category = "cod2019_optics_pistols_scope",
		Scale = 1,
    },
}

ARC9.LoadAttachment(ATT, "cod2019_optic_picatinny")
------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Flat-Top Riser"
ATT.CompactName = [[Riser]]
ATT.Icon = Material("entities/attachs/cod2019_optic_rail_riser.png", "mips smooth")
ATT.Description = [[lat-Top Riser adapter that is designed for mounting a sight for more tall sighting.]]

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Free = false
ATT.Folder = ARC9:GetPhrase("mw19_folder_other")

ATT.Category = {"cod2019_optic"}
ATT.ActivateElements = {"no_optic_hybrid", "no_optic_large"}

ATT.Model = "models/weapons/cod2019/attachs/sights/attachment_vm_riser.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(-1.5, 0, 0.1)
ATT.ModelAngleOffset = Angle(0, 0, 0)

ATT.AimDownSightsTimeMult = 1.02

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_optic2"),
        Pos = Vector(-0.1, 0, -0.42),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 1),
        Category = "cod2019_optic",
		Scale = 1,
    },
}

ARC9.LoadAttachment(ATT, "cod2019_optic_riser")
------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Flat-Top Riser 2"
ATT.CompactName = [[Riser 2]]
ATT.Icon = Material("entities/attachs/cod2019_optic_rail_west03_riser.png", "mips smooth")
ATT.Description = [[lat-Top Riser adapter that is designed for mounting a sight for more tall sighting. (May not look pretty on larger sights)]]

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Free = false
ATT.Folder = ARC9:GetPhrase("mw19_folder_other")

ATT.Category = {"cod2019_optic"}
ATT.ActivateElements = {"no_optic_hybrid", "no_optic_large"}

ATT.Model = "models/weapons/cod2019/attachs/sights/attachment_vm_reflex_west03_riser.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(-1, 0, 0.1)
ATT.ModelAngleOffset = Angle(0, 0, 0)

ATT.AimDownSightsTimeMult = 1.02

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_optic2"),
        Pos = Vector(0, 0, -0.42),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 1),
        Category = "cod2019_optic",
		Scale = 1,
    },
}

ARC9.LoadAttachment(ATT, "cod2019_optic_riser2")