local ATT = {}
------------------------------------------------------------------
ATT = {}

ATT.PrintName = [[Extended Rounds]]
ATT.CompactName = [[Ext Rnds]]
ATT.Icon = Material("entities/attachs/cod2019_etc_extended_ammo.png")
ATT.Description = [[Increased rounds capacity by 50%, at the cost of increased reload time.]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 5
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Free = false

ATT.Category = {"cod2019_mag"}
ATT.ClipSizeMult = 1.5
ATT.ReloadTimeMult = 1.1

ATT.ActivateElements = {"ammo_extend","mag"}

ARC9.LoadAttachment(ATT, "cod2019_etc_ammo_extend")
------------------------------------------------------------------ TACTICALS
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = [[GSR Tacticals]]
ATT.CompactName = [[GSR Tac]]
ATT.Description = [[Lets you use tactical attachments from GSR.]]
--ATT.Icon = Material("entities/attachs/cod2019_origin12_suppressor.png", "mips smooth")

ATT.SortOrder = 1
ATT.AutoStats = true
ATT.Category = "cod2019_tac_pistols"
--ATT.Folder = "Suppresors"

--ATT.Model = "models/weapons/cod2019/attachs/silencers/attachment_vm_sh_oscar12_silencer03.mdl"

ATT.Attachments = {
    {
        PrintName = "Tactical",
        Pos = Vector(-0.5, 0, -0.2),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
        Category = "csgo_tac_pistols",
		Scale = 1
    }
}

ARC9.LoadAttachment(ATT, "cod2019_attach_custom_laser_pstl")
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
        PrintName = "Grip",
        Pos = Vector(-0.2, 0, 0.05),
        Ang = Angle(0, 0, 180),
        Icon_Offset = Vector(0, 0, 0),
        Category = "cod2019_grip",
		Scale = 1,
		RejectAttachments = { 
		["csgo_cod2019_angled"] = true,
		["csgo_cod2019_angled_tactical"] = true 
		},
    }
}

ARC9.LoadAttachment(ATT, "cod2019_attach_grip_support")
------------------------------------------------------------------ OPTICS
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = [[GSR Optics]]
ATT.CompactName = [[GSR Optics]]
ATT.Description = [[Lets you use optic attachments from GSR.]]
--ATT.Icon = Material("entities/attachs/cod2019_origin12_suppressor.png", "mips smooth")

ATT.SortOrder = 1
ATT.AutoStats = true
ATT.Category = "cod2019_optic"
--ATT.Folder = "Suppresors"

--ATT.Model = "models/weapons/cod2019/attachs/silencers/attachment_vm_sh_oscar12_silencer03.mdl"

ATT.Attachments = {
    {
        PrintName = "Optics",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
        Category = "csgo_optic",
		Scale = 1
    }
}

ARC9.LoadAttachment(ATT, "cod2019_attach_custom_optics")
------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = [[GSR Optics]]
ATT.CompactName = [[GSR Optics]]
ATT.Description = [[Lets you use pistol optics from GSR.]]
--ATT.Icon = Material("entities/attachs/cod2019_origin12_suppressor.png", "mips smooth")

ATT.SortOrder = 1
ATT.AutoStats = true
ATT.Category = "cod2019_optics_pistols_alt"
--ATT.Folder = "Suppresors"

--ATT.Model = "models/weapons/cod2019/attachs/silencers/attachment_vm_sh_oscar12_silencer03.mdl"

ATT.Attachments = {
    {
        PrintName = "Optics",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
        Category = "csgo_optics_pistols",
		Scale = 1
    }
}

ARC9.LoadAttachment(ATT, "cod2019_attach_custom_optics_pistols")
------------------------------------------------------------------ MUZZLES
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = [[GSR Muzzles]]
ATT.CompactName = [[GSR Muzz]]
ATT.Description = [[Lets you use muzzles from GSR.]]
--ATT.Icon = Material("entities/attachs/cod2019_origin12_suppressor.png", "mips smooth")

ATT.SortOrder = 1
ATT.AutoStats = true
ATT.Category = "cod2019_muzzle_shot"
--ATT.Folder = "Suppresors"

--ATT.Model = "models/weapons/cod2019/attachs/silencers/attachment_vm_sh_oscar12_silencer03.mdl"

ATT.Attachments = {
    {
        PrintName = "Muzzle",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
        Category = {"muzzle_shotgun","muzzle"},
		Scale = 1
    }
}

ARC9.LoadAttachment(ATT, "cod2019_attach_custom_muzzles")
------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = [[GSR Muzzles]]
ATT.CompactName = [[GSR Muzz]]
ATT.Description = [[Lets you use muzzles from GSR.]]
--ATT.Icon = Material("entities/attachs/cod2019_origin12_suppressor.png", "mips smooth")

ATT.SortOrder = 1
ATT.AutoStats = true
ATT.Category = "cod2019_muzzle_pistols"
--ATT.Folder = "Suppresors"

--ATT.Model = "models/weapons/cod2019/attachs/silencers/attachment_vm_sh_oscar12_silencer03.mdl"

ATT.Attachments = {
    {
        PrintName = "Muzzle",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
        Category = {"muzzle_pistols","muzzle"},
		Scale = 1
    }
}

ATT.Scale = 0.8

ARC9.LoadAttachment(ATT, "cod2019_attach_custom_muzzles_pistols")
------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = [[GSR Muzzles]]
ATT.CompactName = [[GSR Muzz]]
ATT.Description = [[Lets you use muzzles from GSR.]]
--ATT.Icon = Material("entities/attachs/cod2019_origin12_suppressor.png", "mips smooth")

ATT.SortOrder = 1
ATT.AutoStats = true
ATT.Category = "cod2019_muzzle"
--ATT.Folder = "Suppresors"

--ATT.Model = "models/weapons/cod2019/attachs/silencers/attachment_vm_sh_oscar12_silencer03.mdl"

ATT.Attachments = {
    {
        PrintName = "Muzzle",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
        Category = {"muzzle"},
		Scale = 1
    }
}

ARC9.LoadAttachment(ATT, "cod2019_attach_custom_muzzles_alt")
------------------------------------------------------------------