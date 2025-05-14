local ATT = {}
-----------------------------------------      cod2019_eft_grips
ATT = {}

ATT.PrintName = "Escape from Tarkov Grips"
ATT.CompactName = "EFTG"
ATT.Description = "Enables the ability to equip grips from the EFT packs.\n\nNote: Do remember that there are glitches/bugs/clipping."

ATT.Free = true
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
-----------------------------------------      cod2019_eft_muzzle
ATT = {}

ATT.PrintName = "Escape from Tarkov Muzzles"
ATT.CompactName = "EFTM"
ATT.Description = "Enables the ability to equip muzzles from the EFT packs.\n\nNote: Do remember that there are glitches/bugs/clipping."

ATT.Free = true
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
-----------------------------------------      cod2019_eft_scopes
ATT = {}

ATT.PrintName = "Escape from Tarkov Scopes"
ATT.CompactName = "EFTS"
ATT.Description = "Enables the ability to equip scopes from the EFT packs.\n\nNote: Do remember that there are glitches/bugs/clipping."

ATT.Free = true
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
-----------------------------------------      cod2019_eft_scopes_pistol
ATT = {}

ATT.PrintName = "Escape from Tarkov Scopes"
ATT.CompactName = "EFTS"
ATT.Description = "Enables the ability to equip scopes from the EFT packs.\n\nNote: Do remember that there are glitches/bugs/clipping."

ATT.Free = true
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
-----------------------------------------      cod2019_eft_stocks
ATT = {}

ATT.PrintName = "Escape from Tarkov Stocks"
ATT.CompactName = "EFTS"
ATT.Description = "Enables the ability to equip stocks from the EFT packs.\n\nNote: Do remember that there are glitches/bugs/clipping."

ATT.Free = true
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
