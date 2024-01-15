local ATT = {}

ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = [[GSR Tacticals]]
ATT.CompactName = [[GSRT]]
ATT.Description = [[Lets you use tactical attachments from GSR.]]
--ATT.Icon = Material("entities/attachs/cod2019_origin12_suppressor.png", "mips smooth")

ATT.SortOrder = 1000
ATT.AutoStats = true
ATT.Category = "cod2019_tac_pistols"
ATT.Folder = ARC9:GetPhrase("mw19_folder_other2")
--ATT.Folder = "Suppresors"

--ATT.Model = "models/weapons/cod2019/attachs/silencers/attachment_vm_sh_oscar12_silencer03.mdl"

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_laser") .. " (GSR)",
        Pos = Vector(-0.5, 0, -0.2),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
        Category = "csgo_tac_pistols",
		Scale = 1
    }
}

ARC9.LoadAttachment(ATT, "cod2019_attach_support_gsr_laser_pstl")
------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = [[GSR Optics]]
ATT.CompactName = [[GSRO]]
ATT.Description = [[Lets you use optic attachments from GSR.]]
--ATT.Icon = Material("entities/attachs/cod2019_origin12_suppressor.png", "mips smooth")

ATT.SortOrder = 1000
ATT.AutoStats = true
ATT.Category = "cod2019_optic"
ATT.Folder = ARC9:GetPhrase("mw19_folder_other2")
--ATT.Folder = "Suppresors"

--ATT.Model = "models/weapons/cod2019/attachs/silencers/attachment_vm_sh_oscar12_silencer03.mdl"

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_optic") .. " (GSR)",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
        Category = "csgo_optic",
		Scale = 1
    }
}

ARC9.LoadAttachment(ATT, "cod2019_attach_support_gsr_optics")
------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = [[GSR Optics]]
ATT.CompactName = [[GSRO]]
ATT.Description = [[Lets you use pistol optics from GSR.]]
--ATT.Icon = Material("entities/attachs/cod2019_origin12_suppressor.png", "mips smooth")

ATT.SortOrder = 1000
ATT.AutoStats = true
ATT.Category = "cod2019_optics_pistols_alt"
ATT.Folder = ARC9:GetPhrase("mw19_folder_other2")
--ATT.Folder = "Suppresors"

--ATT.Model = "models/weapons/cod2019/attachs/silencers/attachment_vm_sh_oscar12_silencer03.mdl"

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_optic") .. " (GSR)",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
        Category = "csgo_optics_pistols",
		Scale = 1
    }
}

ARC9.LoadAttachment(ATT, "cod2019_attach_support_gsr_optics_pistols")
------------------------------------------------------------------ MUZZLES
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = [[GSR Muzzles]]
ATT.CompactName = [[GSRM]]
ATT.Description = [[Lets you use muzzles from GSR.]]
--ATT.Icon = Material("entities/attachs/cod2019_origin12_suppressor.png", "mips smooth")

ATT.SortOrder = 1000
ATT.AutoStats = true
ATT.Category = "cod2019_muzzle_shot"
ATT.Folder = ARC9:GetPhrase("mw19_folder_other2")
--ATT.Folder = "Suppresors"

--ATT.Model = "models/weapons/cod2019/attachs/silencers/attachment_vm_sh_oscar12_silencer03.mdl"

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_muzzle") .. " (GSR)",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
        Category = {"muzzle_shotgun","muzzle"},
		Scale = 1
    }
}

ARC9.LoadAttachment(ATT, "cod2019_attach_support_gsr_muzzles")
------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = [[GSR Muzzles]]
ATT.CompactName = [[GSRM]]
ATT.Description = [[Lets you use muzzles from GSR.]]
--ATT.Icon = Material("entities/attachs/cod2019_origin12_suppressor.png", "mips smooth")

ATT.SortOrder = 1000
ATT.AutoStats = true
ATT.Category = "cod2019_muzzle_pistols"
ATT.Folder = ARC9:GetPhrase("mw19_folder_other2")
--ATT.Folder = "Suppresors"

--ATT.Model = "models/weapons/cod2019/attachs/silencers/attachment_vm_sh_oscar12_silencer03.mdl"

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_muzzle") .. " (GSR)",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
        Category = {"muzzle_pistols","muzzle"},
		Scale = 1
    }
}

ATT.Scale = 0.8

ARC9.LoadAttachment(ATT, "cod2019_attach_support_gsr_muzzles_pistols")
------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = [[GSR Muzzles]]
ATT.CompactName = [[GSRM]]
ATT.Description = [[Lets you use muzzles from GSR.]]
--ATT.Icon = Material("entities/attachs/cod2019_origin12_suppressor.png", "mips smooth")

ATT.SortOrder = 1000
ATT.AutoStats = true
ATT.Category = "cod2019_muzzle"
ATT.Folder = ARC9:GetPhrase("mw19_folder_other2")
--ATT.Folder = "Suppresors"

--ATT.Model = "models/weapons/cod2019/attachs/silencers/attachment_vm_sh_oscar12_silencer03.mdl"

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_muzzle") .. " (GSR)",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
        Category = {"muzzle"},
		Scale = 1
    }
}

ARC9.LoadAttachment(ATT, "cod2019_attach_support_gsr_muzzles_alt")
------------------------------------------------------------------
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = [[GSR Grips]]
ATT.CompactName = [[GSRG]]
ATT.Description = [[Lets you use grips from GSR.]]
--ATT.Icon = Material("entities/attachs/cod2019_origin12_suppressor.png", "mips smooth")

ATT.SortOrder = 1000
ATT.AutoStats = true
ATT.Category = "cod2019_grip"
ATT.Folder = ARC9:GetPhrase("mw19_folder_other2")
--ATT.Folder = "Suppresors"

--ATT.Model = "models/weapons/cod2019/attachs/silencers/attachment_vm_sh_oscar12_silencer03.mdl"

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_muzzle") .. " (GSR)",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
        Category = {"grip"},
		Scale = 1
    }
}

ARC9.LoadAttachment(ATT, "cod2019_attach_support_gsr_grips")