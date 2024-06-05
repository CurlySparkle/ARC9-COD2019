local ATT = {}
//////////////////////////////////////////////// -- Ammo Types
/////////////////////////// -- Shared
local warzonestats = GetConVar("arc9_mw19_stats_warzone"):GetBool() -- Warzone Stat Variable

//////////////////////////////////////////////// -- Misc. Attachments
/////////////////////////// -- cod2019_etc_ammo_extend
ATT = {}

ATT.PrintName = "Lightweight Extended Mags"
ATT.CompactName = "L. Ext."
ATT.Icon = Material("entities/attachs/cod2019_etc_extended_ammo.png")
ATT.Description = "Increased rounds capacity by 33%, at the cost of increased reload time."

ATT.SortOrder = 5
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Free = false

ATT.Category = {"cod2019_mag"}

ATT.ClipSizeMult = 1.33
ATT.ReloadTimeMult = 1.1
ATT.RecoilMult = 1.1

ATT.ActivateElements = {"ammo_extend","mag","mag_extend"}

ARC9.LoadAttachment(ATT, "cod2019_etc_ammo_extend")

//////////////////////////////////////////////// -- Laser Mounts
/////////////////////////// -- cod2019_attach_laser_rail
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "Laser Attach"
ATT.CompactName = "Laser Attach"
ATT.Description = "Lets you attach laser types on your weapon."
ATT.Icon = Material("entities/attachs/cod2019_attach_laser_rail.png", "mips smooth")

ATT.SortOrder = 1
ATT.AutoStats = true
ATT.Category = "cod2019_tac_rail"
ATT.ModelOffset = Vector(0, 0, 0)

ATT.Model = "models/weapons/cod2019/attachs/attach_laser_rail.mdl"

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_laser"),
        Pos = Vector(0, 1.21, 0.43),
        Ang = Angle(0, 0, -90),
        Icon_Offset = Vector(0, 2, 0),
        Category = "cod2019_tac",
		Scale = 1,
    }
}

ARC9.LoadAttachment(ATT, "cod2019_attach_laser_rail")

/////////////////////////// -- cod2019_attach_laser_rail_2
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "Laser Attach C"
ATT.CompactName = "Laser Attach C"
ATT.Description = "Lets you attach laser cylinder types on your weapon."
ATT.Icon = Material("entities/attachs/cod2019_attach_laser_rail_2.png", "mips smooth")

ATT.SortOrder = 1
ATT.AutoStats = true
ATT.Category = "cod2019_tac_rail"
ATT.ModelOffset = Vector(0, 0, 0)

ATT.Model = "models/weapons/cod2019/attachs/attach_laser_rail_2.mdl"

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_laser"),
        Pos = Vector(-0.52, 1.5, 0.5),
        Ang = Angle(0, 0, -90),
        Icon_Offset = Vector(0, 2, 0),
        Category = "cod2019_tac_cylinde",
		Scale = 1,
    }
}

ARC9.LoadAttachment(ATT, "cod2019_attach_laser_rail_2")

/////////////////////////// -- cod2019_attach_laser_cylinder
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "Laser Attach"
ATT.CompactName = "Laser Attach"
ATT.Description = "Lets you attach laser types on your weapon."
ATT.Icon = Material("entities/attachs/cod2019_attach_laser_cylinder.png", "mips smooth")

ATT.SortOrder = 1
ATT.AutoStats = true
ATT.Category = "cod2019_tac_rail_cylinder"
ATT.ModelOffset = Vector(0, 0, 0)

ATT.Model = "models/weapons/cod2019/attachs/attach_laser_cylinder.mdl"

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_laser"),
        Pos = Vector(0, 1.17, 0),
        Ang = Angle(0, 0, -90),
        Icon_Offset = Vector(0, 2, 0),
        Category = "cod2019_tac",
		Scale = 1,
    }
}

ARC9.LoadAttachment(ATT, "cod2019_attach_laser_cylinder")

/////////////////////////// -- cod2019_attach_laser_cylinder_2
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "Laser Attach C"
ATT.CompactName = "Laser Attach C"
ATT.Description = "Lets you attach cylinder laser types on your weapon."
ATT.Icon = Material("entities/attachs/cod2019_attach_laser_cylinder_2.png", "mips smooth")

ATT.SortOrder = 1
ATT.AutoStats = true
ATT.Category = "cod2019_tac_rail_cylinder"
ATT.ModelOffset = Vector(0, 0, 0)

ATT.Model = "models/weapons/cod2019/attachs/attach_laser_cylinder_2.mdl"

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_laser"),
        Pos = Vector(-0.5, 1.37, 0),
        Ang = Angle(0, 0, -90),
        Icon_Offset = Vector(0, 2, 0),
        Category = "cod2019_tac_cylinde",
		Scale = 1,
    }
}

ARC9.LoadAttachment(ATT, "cod2019_attach_laser_cylinder_2")

/////////////////////////// -- cod2019_attach_laser_cylinder_alt
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "Laser Attach"
ATT.CompactName = "Laser Attach"
ATT.Description = "Lets you attach laser types on your weapon."
ATT.Icon = Material("entities/attachs/cod2019_attach_laser_cylinder_alt.png", "mips smooth")

ATT.SortOrder = 1
ATT.AutoStats = true
ATT.Category = "cod2019_tac_rail_alt"
ATT.ModelOffset = Vector(0, 0, 0)

ATT.Model = "models/weapons/cod2019/attachs/attach_laser_rail_alt_2.mdl"

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_laser"),
        Pos = Vector(-0.1, 0.24, -0.01),
        Ang = Angle(0, 0, -90),
        Icon_Offset = Vector(0, 2, 0),
        Category = "cod2019_tac",
		Scale = 1,
    }
}

ARC9.LoadAttachment(ATT, "cod2019_attach_laser_cylinder_alt")

/////////////////////////// -- cod2019_attach_laser_cylinder_2_alt
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "Laser Attach C"
ATT.CompactName = "Laser Attach C"
ATT.Description = "Lets you attach cylinder laser types on your weapon."
ATT.Icon = Material("entities/attachs/cod2019_attach_laser_cylinder_alt_2.png", "mips smooth")

ATT.SortOrder = 1
ATT.AutoStats = true
ATT.Category = "cod2019_tac_rail_alt"
ATT.ModelOffset = Vector(0, 0, 0)

ATT.Model = "models/weapons/cod2019/attachs/attach_laser_cylinder_alt.mdl"
ATT.ActivateElements = {"laser_rail"}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_laser"),
        Pos = Vector(-0.55, 0.78, -0.01),
        Ang = Angle(0, 0, -90),
        Icon_Offset = Vector(0, 2, 0),
        Category = "cod2019_tac_cylinde",
		Scale = 1,
    }
}

ARC9.LoadAttachment(ATT, "cod2019_attach_laser_cylinder_2_alt")

/////////////////////////// -- cod2019_famas_bipod
ATT = {}

ATT.PrintName = "Bipod (Functional)"
ATT.CompactName = "Famas Bipod"
ATT.Description = "Makes the famas bipod functional (Why is this a separate thing?, base limitations.)"
ATT.Icon = Material("entities/attachs/ar/famas/cod2019_ar_famas_bipod.png", "mips smooth")

ATT.Description = ""
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Category = "cod2019_famas_bipod"
ATT.ActivateElements = {"bipod_none"}
ATT.SortOrder = 10

ATT.Model = "models/weapons/cod2019/attachs/weapons/famas/attachment_vm_ar_falpha_bipod.mdl"
ATT.BoneMerge = true

ATT.Bipod = true
ATT.BipodPos = Vector(-1.5, -4, 0.7)
ATT.BipodAng = Angle(0, 0, 0)

ATT.DrawFunc = function(self, model, wm)
	if self:GetBipod() then
		model:SetBodygroup(0,1)
	else 
		model:SetBodygroup(0,0)
	end
end

if !warzonestats then -- Regular Stats
	ATT.AimDownSightsTimeAdd = 0.025
	ATT.VisualRecoilMult = 0.92
	ATT.RecoilMult = 0.94
	ATT.SpeedMult = 0.96
	ATT.SpeedSightsMult = 0.84
	ATT.SpreadBipod = -0.05
else -- Warzone Stats
	ATT.AimDownSightsTimeAdd = 0.019
	ATT.VisualRecoilMult = 0.8
	ATT.RecoilMult = 0.8
	ATT.SpeedMult = 0.96
	ATT.SpeedSightsMult = 0.84
	ATT.SpreadBipod = -0.05
end

ARC9.LoadAttachment(ATT, "cod2019_famas_bipod")

//////////////////////////////////////////////// -- Alt. Views
/////////////////////////// -- cod2019_view_alt_pistol
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "Alternative View"
ATT.CompactName = "Alt View"
ATT.Description = "Changes the view."

--ATT.Icon = Material("entities/attachs/go_g3_stock_collapsible.png", "mips smooth")

ATT.SortOrder = 0
ATT.Category = "cod2019_pistols_view"

ATT.ActivePos = Vector(2.5, -1.5, 1.7)
ATT.ActiveAng = Angle(0, 0, 10)

ATT.MovingPos = Vector(-1,-2,-1)
ATT.MovingAng = Angle(0,0,-8)

ATT.CrouchPos = Vector(-1.2, 0, -1)
ATT.CrouchAng = Angle(0, 0, -10)

ATT.ReloadPos = Vector(0,0,0)
ATT.ReloadAng = Angle(0,0,0)

ARC9.LoadAttachment(ATT, "cod2019_view_alt_pistol")