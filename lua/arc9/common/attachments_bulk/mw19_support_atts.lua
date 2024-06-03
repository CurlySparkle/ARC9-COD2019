local ATT = {}
//////////////////////////////////////////////// -- Various Addon Support Attachments
///////////////////////////////////// -- Escape From Tarkov
/////////////////////////// -- cod2019_eft_scopes
ATT = {}

ATT.PrintName = "Escape from Tarkov Scopes"
ATT.CompactName = "EFTS"
ATT.Description = "Enables the ability to equip scopes from the EFT packs.\n\nNote: Do remember that there are glitches/bugs/clipping."

ATT.SortOrder = 10000
ATT.Category = "cod2019_optic"
ATT.Folder = ARC9:GetPhrase("mw19_folder_other2")
ATT.MenuCategory = "ARC9 - MW19 Attachments"
ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_optic") .. " (EFT)",
        Category = {"eft_optic_large", "eft_optic_medium", "eft_optic_small"},
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(1.5, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "cod2019_eft_scopes")

/////////////////////////// -- cod2019_eft_scopes_pistol
ATT = {}

ATT.PrintName = "Escape from Tarkov Scopes"
ATT.CompactName = "EFTS"
ATT.Description = "Enables the ability to equip scopes from the EFT packs.\n\nNote: Do remember that there are glitches/bugs/clipping."

ATT.SortOrder = 10000
ATT.Category = "cod2019_optics_pistols_alt"
ATT.Folder = ARC9:GetPhrase("mw19_folder_other2")
ATT.MenuCategory = "ARC9 - MW19 Attachments"
ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_optic") .. " (EFT)",
        Category = {"eft_optic_small"},
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(1.5, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "cod2019_eft_scopes_pistol")

/////////////////////////// -- cod2019_eft_grips
ATT = {}

ATT.PrintName = "Escape from Tarkov Grips"
ATT.CompactName = "EFTG"
ATT.Description = "Enables the ability to equip grips from the EFT packs.\n\nNote: Do remember that there are glitches/bugs/clipping."

ATT.SortOrder = 10000
ATT.Category = "cod2019_grip"
ATT.Folder = ARC9:GetPhrase("mw19_folder_other2")
ATT.MenuCategory = "ARC9 - MW19 Attachments"
ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_underbarrel") .. " (EFT)",
        Category = {"eft_foregrip_small", "eft_foregrip_large"},
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 180),
        Icon_Offset = Vector(1.5, 0, -1.75),
		RejectAttachments = {["eft_foregrip_sturm"] = true}
    },
}

ARC9.LoadAttachment(ATT, "cod2019_eft_grips")

/////////////////////////// -- cod2019_eft_muzzle
ATT = {}

ATT.PrintName = "Escape from Tarkov Muzzles"
ATT.CompactName = "EFTM"
ATT.Description = "Enables the ability to equip muzzles from the EFT packs.\n\nNote: Do remember that there are glitches/bugs/clipping."

ATT.SortOrder = 10000
ATT.Category = "cod2019_muzzle"
ATT.Folder = ARC9:GetPhrase("mw19_folder_other2")
ATT.MenuCategory = "ARC9 - MW19 Attachments"
ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_muzzle") .. " (EFT)",
        Category = {"eft_ar15_muzzle"},
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, -1.75),
    },
}

ARC9.LoadAttachment(ATT, "cod2019_eft_muzzle")

/////////////////////////// -- cod2019_eft_stocks
ATT = {}

ATT.PrintName = "Escape from Tarkov Stocks"
ATT.CompactName = "EFTS"
ATT.Description = "Enables the ability to equip stocks from the EFT packs.\n\nNote: Do remember that there are glitches/bugs/clipping."

ATT.SortOrder = 10000
ATT.Category = "cod2019_stocks"
ATT.Folder = ARC9:GetPhrase("mw19_folder_other2")
ATT.MenuCategory = "ARC9 - MW19 Attachments"
ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_stock") .. " (EFT)",
        Category = {"eft_ar_stock"},
        Pos = Vector(5, 0, 0.85),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(1.5, 0, 0.85),
    },
}

ARC9.LoadAttachment(ATT, "cod2019_eft_stocks")

/////////////////////////// -- cod2019_eft_tactical
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "Escape from Tarkov Tacticals"
ATT.CompactName = "EFTT"
ATT.Description = "Enables the ability to equip tacticals from the EFT packs.\n\nNote: Do remember that there are glitches/bugs/clipping."

ATT.SortOrder = 1000
ATT.AutoStats = true
ATT.Category = "cod2019_tac"
ATT.Folder = ARC9:GetPhrase("mw19_folder_other2")

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_laser") .. " (EFT)",
        Pos = Vector(0, 0, 0.05),
        Ang = Angle(0, 0, 180),
        Icon_Offset = Vector(-0.5, 0, -1.25),
        Category = "eft_tactical",
		Scale = 1
    }
}

ARC9.LoadAttachment(ATT, "cod2019_eft_tactical")

/////////////////////////// -- cod2019_eft_tactical_pistl
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "Escape from Tarkov Tacticals"
ATT.CompactName = "EFTT"
ATT.Description = "Enables the ability to equip tacticals from the EFT packs.\n\nNote: Do remember that there are glitches/bugs/clipping."

ATT.SortOrder = 1000
ATT.AutoStats = true
ATT.Category = "cod2019_tac_pistols"
ATT.Folder = ARC9:GetPhrase("mw19_folder_other2")

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_laser") .. " (EFT)",
        Pos = Vector(-0.8, 0, 0),
        Ang = Angle(0, 0, 180),
        Icon_Offset = Vector(-0.5, 0, -1.25),
        Category = "eft_tactical_pistol",
		Scale = 1
    }
}

ARC9.LoadAttachment(ATT, "cod2019_eft_tactical_pistl")


///////////////////////////////////// -- Gunsmith Reloaded
/////////////////////////// -- cod2019_attach_support_gsr_optics
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "GSR Optics"
ATT.CompactName = "GSRO"
ATT.Description = "Lets you use optic attachments from GSR."

ATT.SortOrder = 1000
ATT.AutoStats = true
ATT.Category = "cod2019_optic"
ATT.Folder = ARC9:GetPhrase("mw19_folder_other2")

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_optic") .. " (GSR)",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 1.5),
        Category = "csgo_optic",
		RejectAttachments = {
		["go_cod_scopes"] = true,
		["go_eft_scopes"] = true,
		["go_gas_scopes"] = true,
		},
		Scale = 1
    }
}

ARC9.LoadAttachment(ATT, "cod2019_attach_support_gsr_optics")

/////////////////////////// -- cod2019_attach_support_gsr_optics_pistols
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "GSR Optics"
ATT.CompactName = "GSRO"
ATT.Description = "Lets you use pistol optics from GSR."

ATT.SortOrder = 1000
ATT.AutoStats = true
ATT.Category = "cod2019_optics_pistols_alt"
ATT.Folder = ARC9:GetPhrase("mw19_folder_other2")

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_optic") .. " (GSR)",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 1.5),
        Category = "csgo_optics_pistols",
		RejectAttachments = {
		["go_cod_scopes_pistol"] = true,
		["go_eft_scopes_pistol"] = true,
		["go_gas_scopes_pistol"] = true,
		},
		Scale = 1
    }
}

ARC9.LoadAttachment(ATT, "cod2019_attach_support_gsr_optics_pistols")

/////////////////////////// -- cod2019_attach_support_gsr_muzzles
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "GSR Muzzles"
ATT.CompactName = "GSRM"
ATT.Description = "Lets you use muzzles from GSR."

ATT.SortOrder = 1000
ATT.AutoStats = true
ATT.Category = "cod2019_muzzle_shot"
ATT.Folder = ARC9:GetPhrase("mw19_folder_other2")

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_muzzle") .. " (GSR)",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
        Category = {"muzzle_shotgun","muzzle"},
		RejectAttachments = {
		["go_cod_muzzle"] = true,
		["go_eft_muzzle"] = true,
		["go_gas_muzzle"] = true,
		},
		Scale = 1
    }
}

ARC9.LoadAttachment(ATT, "cod2019_attach_support_gsr_muzzles")

/////////////////////////// -- cod2019_attach_support_gsr_muzzles_pistols
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "GSR Muzzles"
ATT.CompactName = "GSRM"
ATT.Description = "Lets you use muzzles from GSR."

ATT.SortOrder = 1000
ATT.AutoStats = true
ATT.Category = "cod2019_muzzle_pistols"
ATT.Folder = ARC9:GetPhrase("mw19_folder_other2")

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_muzzle") .. " (GSR)",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(1.5, 0, 0),
        Category = {"muzzle_pistols","muzzle"},
		RejectAttachments = {
		["go_cod_muzzle"] = true,
		["go_eft_muzzle"] = true,
		["go_gas_muzzle"] = true,
		},
		Scale = 1
    }
}

ATT.Scale = 0.8

ARC9.LoadAttachment(ATT, "cod2019_attach_support_gsr_muzzles_pistols")

/////////////////////////// -- cod2019_attach_support_gsr_muzzles_alt
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "GSR Muzzles"
ATT.CompactName = "GSRM"
ATT.Description = "Lets you use muzzles from GSR."

ATT.SortOrder = 1000
ATT.AutoStats = true
ATT.Category = "cod2019_muzzle"
ATT.Folder = ARC9:GetPhrase("mw19_folder_other2")

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_muzzle") .. " (GSR)",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(1.5, 0, 0),
		RejectAttachments = {
		["go_cod_muzzle"] = true,
		["go_eft_muzzle"] = true,
		["go_gas_muzzle"] = true,
		},
        Category = {"muzzle"},
		Scale = 1
    }
}

ARC9.LoadAttachment(ATT, "cod2019_attach_support_gsr_muzzles_alt")

/////////////////////////// -- cod2019_attach_support_gsr_grips
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "GSR Grips"
ATT.CompactName = "GSRG"
ATT.Description = "Lets you use grips from GSR."

ATT.SortOrder = 1000
ATT.AutoStats = true
ATT.Category = "cod2019_grip"
ATT.Folder = ARC9:GetPhrase("mw19_folder_other2")

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_underbarrel") .. " (GSR)",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 1.5),
        Category = {"grip"},
		RejectAttachments = {
		["go_cod_grips"] = true,
		["go_eft_grips"] = true,
		["go_ubgl_m203"] = true,
		["go_ubgl_mass26"] = true,
		["go_ubgl_xm1014"] = true,
		},
		Scale = 1,
    }
}

ARC9.LoadAttachment(ATT, "cod2019_attach_support_gsr_grips")

/////////////////////////// -- cod2019_attach_support_gsr_laser_pstl
ATT = {}

ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.PrintName = "GSR Tacticals"
ATT.CompactName = "GSRT"
ATT.Description = "Lets you use tactical attachments from GSR."

ATT.SortOrder = 1000
ATT.AutoStats = true
ATT.Category = "cod2019_tac_pistols"
ATT.Folder = ARC9:GetPhrase("mw19_folder_other2")

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_laser") .. " (GSR)",
        Pos = Vector(-0.5, 0, -0.2),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(-0.5, 0, -1.25),
        Category = "csgo_tac_pistols",
		Scale = 1
    }
}

ARC9.LoadAttachment(ATT, "cod2019_attach_support_gsr_laser_pstl")
