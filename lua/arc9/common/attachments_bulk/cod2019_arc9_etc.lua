local ATT = {}
------------------------------------------------------------------
ATT = {}

ATT.PrintName = [[Extended Rounds]]
ATT.CompactName = [[Ext Rnds]]
ATT.Icon = Material("entities/attachs/cod2019_etc_extended_ammo.png")
ATT.Description = [[Increased rounds capacity by 20%, at the cost of increased reload time.]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 5
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Free = false

ATT.Category = {"cod2019_mag"}

ATT.ClipSizeMult = 1.2
ATT.ReloadTimeMult = 1.1
ATT.RecoilMult = 1.1

ATT.ActivateElements = {"ammo_extend","mag","mag_extend"}

ARC9.LoadAttachment(ATT, "cod2019_etc_ammo_extend")
------------------------------------------------------------------ GRIPS
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = [[Grip]]
ATT.CompactName = [[Grip Support]]
ATT.Description = [[Lets you use grips on your pistols. (Why? i dunno but it looks cool???)]]
--ATT.Icon = Material("entities/attachs/cod2019_origin12_suppressor.png", "mips smooth")

ATT.SortOrder = 1
ATT.AutoStats = true
ATT.Category = "cod2019_grip_pistols"
ATT.Folder = "Grips"

--ATT.Model = "models/weapons/cod2019/attachs/silencers/attachment_vm_sh_oscar12_silencer03.mdl"

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_underbarrel") .. " (MW19)",
        Pos = Vector(-0.2, 0, 0.05),
        Ang = Angle(0, 0, 180),
        Icon_Offset = Vector(-0.2, 0, 1),
        Category = "cod2019_grip",
		Scale = 1,
		RejectAttachments = { 
		["csgo_cod2019_angled"] = true,
		["csgo_cod2019_angled_tactical"] = true 
		},
    }
}

ARC9.LoadAttachment(ATT, "cod2019_attach_grip_support")
------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "Alternative View"
ATT.CompactName = "Alt View"
ATT.Description = [[Changes the view.]]

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
------------------------------------------------------------------ Laser Attach Rail
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = [[Laser Attach]]
ATT.CompactName = [[Laser Attach]]
ATT.Description = [[Lets you attach laser types on your weapon.]]
ATT.Icon = Material("entities/attachs/cod2019_attach_laser_rail.png", "mips smooth")

ATT.SortOrder = 1
ATT.AutoStats = true
ATT.Category = "cod2019_tac_rail"
ATT.ModelOffset = Vector(0, 0, 0)
-- ATT.Folder = "Tactical"

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
------------------------------------------------------------------ Laser Attach Rail 2 (Cylinder)
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = [[Laser Attach C]]
ATT.CompactName = [[Laser Attach C]]
ATT.Description = [[Lets you attach laser cylinder types on your weapon.]]
ATT.Icon = Material("entities/attachs/cod2019_attach_laser_rail_2.png", "mips smooth")

ATT.SortOrder = 1
ATT.AutoStats = true
ATT.Category = "cod2019_tac_rail"
ATT.ModelOffset = Vector(0, 0, 0)
-- ATT.Folder = "Tactical"

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
------------------------------------------------------------------ Laser Attach Cylinder
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = [[Laser Attach]]
ATT.CompactName = [[Laser Attach]]
ATT.Description = [[Lets you attach laser types on your weapon.]]
ATT.Icon = Material("entities/attachs/cod2019_attach_laser_cylinder.png", "mips smooth")

ATT.SortOrder = 1
ATT.AutoStats = true
ATT.Category = "cod2019_tac_rail_cylinder"
ATT.ModelOffset = Vector(0, 0, 0)
-- ATT.Folder = "Tactical"

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
------------------------------------------------------------------ Laser Attach Cylinder 2
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = [[Laser Attach C]]
ATT.CompactName = [[Laser Attach C]]
ATT.Description = [[Lets you attach cylinder laser types on your weapon.]]
ATT.Icon = Material("entities/attachs/cod2019_attach_laser_cylinder_2.png", "mips smooth")

ATT.SortOrder = 1
ATT.AutoStats = true
ATT.Category = "cod2019_tac_rail_cylinder"
ATT.ModelOffset = Vector(0, 0, 0)
-- ATT.Folder = "Tactical"

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
------------------------------------------------------------------ Laser Attach Cylinder 3
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = [[Laser Attach]]
ATT.CompactName = [[Laser Attach]]
ATT.Description = [[Lets you attach laser types on your weapon.]]
ATT.Icon = Material("entities/attachs/cod2019_attach_laser_cylinder_alt.png", "mips smooth")

ATT.SortOrder = 1
ATT.AutoStats = true
ATT.Category = "cod2019_tac_rail_alt"
ATT.ModelOffset = Vector(0, 0, 0)
-- ATT.Folder = "Tactical"

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
------------------------------------------------------------------ Laser Attach Cylinder 4
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = [[Laser Attach C]]
ATT.CompactName = [[Laser Attach C]]
ATT.Description = [[Lets you attach cylinder laser types on your weapon.]]
ATT.Icon = Material("entities/attachs/cod2019_attach_laser_cylinder_alt_2.png", "mips smooth")

ATT.SortOrder = 1
ATT.AutoStats = true
ATT.Category = "cod2019_tac_rail_alt"
ATT.ModelOffset = Vector(0, 0, 0)
-- ATT.Folder = "Tactical"

ATT.Model = "models/weapons/cod2019/attachs/attach_laser_cylinder_alt.mdl"

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