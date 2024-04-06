local ATT = {}

local stats_tac = {
	SpreadMult = 0.9,
	DeployTimeMult = 1.03,
	AimDownSightsTimeMult = 1.03,
	NoPeekCrosshair = true,
}

local stats_1mw = {
	SpreadMult = 0.80,
	DeployTimeMult = 1.1,
	AimDownSightsTimeMult = 1.1,
	NoPeekCrosshair = true,
}

local stats_5mw = {
	SpreadMult = 0.85,
	DeployTimeMult = 1.05,
	AimDownSightsTimeMult = 1.05,
	NoPeekCrosshair = true,
}

-------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Tac Laser"
ATT.CompactName = "Tac Laser"
ATT.Description = [[High power 5mW Tactical Green laser. Improves accuracy while aiming down sights. Exposes position when active.]]

ATT.Icon = Material("entities/attachs/cod2019_laser01.png", "mips smooth")

ATT.SortOrder = 0
ATT.Category = {"cod2019_tac"}
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Model = "models/weapons/cod2019/attachs/laser/attachment_vm_laser01.mdl"
-- ATT.Folder = "Lasers"

table.Merge(ATT, stats_tac)

ATT.ToggleOnF = false -- This attachment is toggleable with the flashlight key.
ATT.LaserColorPlayer = true -- Laser attachment uses the player's weapon color.
ATT.ToggleStats = {
    {
        PrintName = ARC9:GetPhrase("mw19_togglestat_on"),
        Laser = true,
        LaserStrength = 4,
        LaserColor = Color(0, 255, 0),
        LaserAttachment = 1,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_togglestat_off"),
    }
}

-- ATT.Sights = {
    -- {
        -- Pos = Vector(3, 15, -2),
        -- Ang = Angle(0, 0, -45),
        -- ViewModelFOV = 56,
        -- Magnification = 1.25,
        -- IgnoreExtra = false,
		-- KeepBaseIrons = true,
    -- },
-- }


ATT.Scale = 1

ATT.ModelOffset = Vector(-1.5, 0, 0.1)
ATT.ModelAngleOffset = Angle(0, 0, 180)

ARC9.LoadAttachment(ATT, "cod2019_laser_01")
---------------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "1mW Laser"
ATT.CompactName = "1mW Laser"
ATT.Description = [[Low power 1mW red laser improves hipfire accuracy while remaining undetected.]]

ATT.Icon = Material("entities/attachs/cod2019_laser03.png", "mips smooth")

ATT.SortOrder = 0.5
ATT.Category = {"cod2019_tac"}
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Model = "models/weapons/cod2019/attachs/laser/attachment_vm_laser03.mdl"
-- ATT.Folder = "Lasers"

table.Merge(ATT, stats_1mw)

ATT.ToggleOnF = false -- This attachment is toggleable with the flashlight key.
ATT.LaserColorPlayer = true -- Laser attachment uses the player's weapon color.
ATT.ToggleStats = {
    {
        PrintName = ARC9:GetPhrase("mw19_togglestat_on"),
        Laser = true,
        LaserStrength = 3,
        LaserColor = Color(255, 0, 0),
        LaserAttachment = 1,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_togglestat_off"),
    }
}

-- ATT.Sights = {
    -- {
        -- Pos = Vector(3, 15, -2),
        -- Ang = Angle(0, 0, -45),
        -- ViewModelFOV = 56,
        -- Magnification = 1.25,
        -- IgnoreExtra = false,
		-- KeepBaseIrons = true,
    -- },
-- }


ATT.Scale = 1

ATT.ModelOffset = Vector(-1.5, 0, 0.1)
ATT.ModelAngleOffset = Angle(0, 0, 180)

ARC9.LoadAttachment(ATT, "cod2019_laser_02")
---------------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "5mW Laser"
ATT.CompactName = "5mW Laser"
ATT.Description = [[Ultra bright 5mW green laser greatly improves hipfire accuracy. Only for aggressive operators who don't rely on concealment.]]

ATT.Icon = Material("entities/attachs/cod2019_laser02.png", "mips smooth")

ATT.SortOrder = 1
ATT.Category = {"cod2019_tac"}
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Model = "models/weapons/cod2019/attachs/laser/attachment_vm_laser02.mdl"
-- ATT.Folder = "Lasers"

table.Merge(ATT, stats_5mw)

ATT.ToggleOnF = false -- This attachment is toggleable with the flashlight key.
ATT.LaserColorPlayer = true -- Laser attachment uses the player's weapon color.
ATT.ToggleStats = {
    {
        PrintName = ARC9:GetPhrase("mw19_togglestat_on"),
        Laser = true,
        LaserStrength = 5,
        LaserColor = Color(0, 255, 0),
        LaserAttachment = 1,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_togglestat_off"),
    }
}

-- ATT.Sights = {
    -- {
        -- Pos = Vector(3, 15, -2),
        -- Ang = Angle(0, 0, -45),
        -- ViewModelFOV = 56,
        -- Magnification = 1.25,
        -- IgnoreExtra = false,
		-- KeepBaseIrons = true,
    -- },
-- }

ATT.Scale = 1

ATT.ModelOffset = Vector(-1.5, 0, 0.1)
ATT.ModelAngleOffset = Angle(0, 0, 180)

ARC9.LoadAttachment(ATT, "cod2019_laser_03")
-- --------------------------------------------------------------------------------------------- ALT LASERS
-- ATT = {}

-- ATT.PrintName = "Tac Laser"
-- ATT.CompactName = "Tac Laser"
-- ATT.Description = [[High power 5mW Tactical Green laser. Improves accuracy while aiming down sights. Exposes position when active.]]

-- ATT.Icon = Material("entities/attachs/cod2019_attach_laser_cylinder01.png", "mips smooth")

-- ATT.SortOrder = 0
-- ATT.Category = {"cod2019_tac_alt"}
-- ATT.MenuCategory = "ARC9 - MW2019 Attachments"
-- ATT.Model = "models/weapons/cod2019/attachs/laser/attachment_vm_laser_cylinder01.mdl"
-- -- ATT.Folder = "Lasers"

-- table.Merge(ATT, stats_tac)

-- ATT.ToggleOnF = false -- This attachment is toggleable with the flashlight key.
-- ATT.ToggleStats = {
    -- {
        -- PrintName = ARC9:GetPhrase("mw19_togglestat_on"),
        -- Laser = true,
        -- LaserStrength = 3,
        -- LaserColor = Color(0, 255, 0),
        -- LaserAttachment = 1,
    -- },
    -- {
        -- PrintName = ARC9:GetPhrase("mw19_togglestat_off"),
    -- }
-- }

-- -- ATT.Sights = {
    -- -- {
        -- -- Pos = Vector(-1.5, 15, -3),
        -- -- Ang = Angle(0, -0.8, 45),
        -- -- ViewModelFOV = 56,
        -- -- Magnification = 1.25,
        -- -- IgnoreExtra = false,
		-- -- KeepBaseIrons = true,
    -- -- },
-- -- }


-- ATT.Scale = 1

-- ATT.ModelOffset = Vector(0, 0, 0)
-- ATT.ModelAngleOffset = Angle(0, 0, 90)

-- ARC9.LoadAttachment(ATT, "cod2019_laser_cylinder_01")
-- ---------------------------------------------------------------------------------------------
-- ATT = {}

-- ATT.PrintName = "1mW Laser"
-- ATT.CompactName = "1mW Laser"
-- ATT.Description = [[Low power 1mW red laser improves hipfire accuracy while remaining undetected.]]

-- ATT.Icon = Material("entities/attachs/cod2019_attach_laser_cylinder02.png", "mips smooth")

-- ATT.SortOrder = 0.5
-- ATT.Category = {"cod2019_tac_alt"}
-- ATT.MenuCategory = "ARC9 - MW2019 Attachments"
-- ATT.Model = "models/weapons/cod2019/attachs/laser/attachment_vm_laser_cylinder02.mdl"
-- -- ATT.Folder = "Lasers"

-- table.Merge(ATT, stats_1mw)

-- ATT.ToggleOnF = false -- This attachment is toggleable with the flashlight key.
-- ATT.ToggleStats = {
    -- {
        -- PrintName = ARC9:GetPhrase("mw19_togglestat_on"),
        -- Laser = true,
        -- LaserStrength = 3,
        -- LaserColor = Color(255, 0, 0),
        -- LaserAttachment = 1,
    -- },
    -- {
        -- PrintName = ARC9:GetPhrase("mw19_togglestat_off"),
    -- }
-- }

-- -- ATT.Sights = {
    -- -- {
        -- -- Pos = Vector(-1.5, 15, -3),
        -- -- Ang = Angle(0, -0.8, 45),
        -- -- ViewModelFOV = 56,
        -- -- Magnification = 1.25,
        -- -- IgnoreExtra = false,
		-- -- KeepBaseIrons = true,
    -- -- },
-- -- }


-- ATT.Scale = 1

-- ATT.ModelOffset = Vector(0, 0, 0)
-- ATT.ModelAngleOffset = Angle(0, 0, 90)

-- ARC9.LoadAttachment(ATT, "cod2019_laser_cylinder_02")

-- ---------------------------------------------------------------------------------------------
-- ATT = {}

-- ATT.PrintName = "5mW Laser"
-- ATT.CompactName = "5mW Laser"
-- ATT.Description = [[Ultra bright 5mW green laser greatly improves hipfire accuracy. Only for aggressive operators who don't rely on concealment.]]

-- ATT.Icon = Material("entities/attachs/cod2019_attach_laser_cylinder03.png", "mips smooth")

-- ATT.SortOrder = 1
-- ATT.Category = {"cod2019_tac_alt"}
-- ATT.MenuCategory = "ARC9 - MW2019 Attachments"
-- ATT.Model = "models/weapons/cod2019/attachs/laser/attachment_vm_laser_cylinder03.mdl"
-- -- ATT.Folder = "Lasers"

-- table.Merge(ATT, stats_5mw)

-- ATT.ToggleOnF = false -- This attachment is toggleable with the flashlight key.
-- ATT.ToggleStats = {
    -- {
        -- PrintName = ARC9:GetPhrase("mw19_togglestat_on"),
        -- Laser = true,
        -- LaserStrength = 3,
        -- LaserColor = Color(0, 255, 0),
        -- LaserAttachment = 1,
    -- },
    -- {
        -- PrintName = ARC9:GetPhrase("mw19_togglestat_off"),
    -- }
-- }

-- -- ATT.Sights = {
    -- -- {
        -- -- Pos = Vector(-1.5, 15, -3),
        -- -- Ang = Angle(0, -0.8, 45),
        -- -- ViewModelFOV = 56,
        -- -- Magnification = 1.25,
        -- -- IgnoreExtra = false,
		-- -- KeepBaseIrons = true,
    -- -- },
-- -- }

-- ATT.Scale = 1

-- ATT.ModelOffset = Vector(0, 0, 0)
-- ATT.ModelAngleOffset = Angle(0, 0, 90)

-- ARC9.LoadAttachment(ATT, "cod2019_laser_cylinder_03")
--------------------------------------------------------------------------------------------- PISTOL LASERS
ATT = {}

ATT.PrintName = "Tac Laser"
ATT.CompactName = "Tac Laser"
ATT.Description = [[High power 5mW Tactical Green laser. Improves accuracy while aiming down sights. Exposes position when active.]]

ATT.Icon = Material("entities/attachs/cod2019_attach_laser_pstl.png", "mips smooth")

ATT.SortOrder = 0
ATT.Category = {"cod2019_tac_pistols"}
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Model = "models/weapons/cod2019/attachs/laser/attachment_vm_laser_pstl01.mdl"
-- ATT.Folder = "Lasers"

table.Merge(ATT, stats_tac)

ATT.ToggleOnF = false -- This attachment is toggleable with the flashlight key.
ATT.LaserColorPlayer = true -- Laser attachment uses the player's weapon color.
ATT.ToggleStats = {
    {
        PrintName = ARC9:GetPhrase("mw19_togglestat_on"),
        Laser = true,
        LaserStrength = 3,
        LaserColor = Color(0, 255, 0),
        LaserAttachment = 1,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_togglestat_off"),
    }
}

-- ATT.Sights = {
    -- {
        -- Pos = Vector(-1.5, 15, -3),
        -- Ang = Angle(0, 0, 45),
        -- ViewModelFOV = 56,
        -- Magnification = 1.25,
        -- IgnoreExtra = false,
		-- KeepBaseIrons = true,
    -- },
-- }

ATT.Scale = 1

ATT.ModelOffset = Vector(0, 0, 0)
ATT.ModelAngleOffset = Angle(0, 0, 0)

ARC9.LoadAttachment(ATT, "cod2019_laser_pstl_01")
-------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "1mW Laser"
ATT.CompactName = "1mW Laser"
ATT.Description = [[Low power 1mW red laser improves hipfire accuracy while remaining undetected.]]

ATT.Icon = Material("entities/attachs/cod2019_attach_laser_pstl02.png", "mips smooth")

ATT.SortOrder = 0.5
ATT.Category = {"cod2019_tac_pistols"}
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Model = "models/weapons/cod2019/attachs/laser/attachment_vm_laser_pstl02.mdl"
-- ATT.Folder = "Lasers"

table.Merge(ATT, stats_1mw)

ATT.ToggleOnF = false -- This attachment is toggleable with the flashlight key.
ATT.LaserColorPlayer = true -- Laser attachment uses the player's weapon color.
ATT.ToggleStats = {
    {
        PrintName = ARC9:GetPhrase("mw19_togglestat_on"),
        Laser = true,
        LaserStrength = 3,
        LaserColor = Color(255, 0, 0),
        LaserAttachment = 1,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_togglestat_off"),
    }
}

-- ATT.Sights = {
    -- {
        -- Pos = Vector(-1.5, 15, -3),
        -- Ang = Angle(0, 0, 45),
        -- ViewModelFOV = 56,
        -- Magnification = 1.25,
        -- IgnoreExtra = false,
		-- KeepBaseIrons = true,
    -- },
-- }


ATT.Scale = 1

ATT.ModelOffset = Vector(0, 0, 0)
ATT.ModelAngleOffset = Angle(0, 0, 0)

ARC9.LoadAttachment(ATT, "cod2019_laser_pstl_02")
---------------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "5mW Laser"
ATT.CompactName = "5mW Laser"
ATT.Description = [[Ultra bright 5mW green laser greatly improves hipfire accuracy. Only for aggressive operators who don't rely on concealment.]]

ATT.Icon = Material("entities/attachs/cod2019_attach_laser_pstl04.png", "mips smooth")

ATT.SortOrder = 1
ATT.Category = {"cod2019_tac_pistols"}
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Model = "models/weapons/cod2019/attachs/laser/attachment_vm_laser_pstl03.mdl"
-- ATT.Folder = "Lasers"

table.Merge(ATT, stats_5mw)

ATT.ToggleOnF = false -- This attachment is toggleable with the flashlight key.
ATT.LaserColorPlayer = true -- Laser attachment uses the player's weapon color.
ATT.ToggleStats = {
    {
        PrintName = ARC9:GetPhrase("mw19_togglestat_on"),
        Laser = true,
        LaserStrength = 3,
        LaserColor = Color(0, 255, 0),
        LaserAttachment = 1,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_togglestat_off"),
    }
}

-- ATT.Sights = {
    -- {
        -- Pos = Vector(-1.5, 15, -3),
        -- Ang = Angle(0, 0, 45),
        -- ViewModelFOV = 56,
        -- Magnification = 1.25,
        -- IgnoreExtra = false,
		-- KeepBaseIrons = true,
    -- },
-- }

ATT.Scale = 1

ATT.ModelOffset = Vector(0, 0, 0)
ATT.ModelAngleOffset = Angle(0, 0, 0)

ARC9.LoadAttachment(ATT, "cod2019_laser_pstl_03")
--------------------------------------------------------------------------------------------- CYLINDE LASERS
ATT = {}

ATT.PrintName = "Tac Laser"
ATT.CompactName = "Tac Laser"
ATT.Description = [[High power 5mW Tactical Green laser. Improves accuracy while aiming down sights. Exposes position when active.]]

ATT.Icon = Material("entities/attachs/cod2019_laser01.png", "mips smooth")

ATT.SortOrder = 0
ATT.Category = {"cod2019_tac_cylinde"}
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Model = "models/weapons/cod2019/attachs/laser/attachment_vm_laser_cylinder01_alt.mdl"
-- ATT.Folder = "Lasers"

table.Merge(ATT, stats_tac)

ATT.ToggleOnF = false -- This attachment is toggleable with the flashlight key.
ATT.LaserColorPlayer = true -- Laser attachment uses the player's weapon color.
ATT.ToggleStats = {
    {
        PrintName = ARC9:GetPhrase("mw19_togglestat_on"),
        Laser = true,
        LaserStrength = 4,
        LaserColor = Color(0, 255, 0),
        LaserAttachment = 1,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_togglestat_off"),
    }
}

-- ATT.Sights = {
    -- {
        -- Pos = Vector(-1, 15, -2),
        -- Ang = Angle(0, 0, 45),
        -- ViewModelFOV = 45,
        -- Magnification = 1.25,
        -- IgnoreExtra = false,
		-- KeepBaseIrons = true,
    -- },
-- }


ATT.Scale = 1

ATT.ModelOffset = Vector(0, 0, 0)
ATT.ModelAngleOffset = Angle(0, 0, 0)

ARC9.LoadAttachment(ATT, "cod2019_laser_01_cylinde_alt")
---------------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "1mW Laser"
ATT.CompactName = "1mW Laser"
ATT.Description = [[Low power 1mW red laser improves hipfire accuracy while remaining undetected.]]

ATT.Icon = Material("entities/attachs/cod2019_laser03.png", "mips smooth")

ATT.SortOrder = 0.5
ATT.Category = {"cod2019_tac_cylinde"}
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Model = "models/weapons/cod2019/attachs/laser/attachment_vm_laser_cylinder02_alt.mdl"
-- ATT.Folder = "Lasers"

table.Merge(ATT, stats_1mw)

ATT.ToggleOnF = false -- This attachment is toggleable with the flashlight key.
ATT.LaserColorPlayer = true -- Laser attachment uses the player's weapon color.
ATT.ToggleStats = {
    {
        PrintName = ARC9:GetPhrase("mw19_togglestat_on"),
        Laser = true,
        LaserStrength = 3,
        LaserColor = Color(255, 0, 0),
        LaserAttachment = 1,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_togglestat_off"),
    }
}

-- ATT.Sights = {
    -- {
        -- Pos = Vector(-1, 15, -2),
        -- Ang = Angle(0, 0, 45),
        -- ViewModelFOV = 45,
        -- Magnification = 1.25,
        -- IgnoreExtra = false,
		-- KeepBaseIrons = true,
    -- },
-- }


ATT.Scale = 1

ATT.ModelOffset = Vector(0, 0, 0)
ATT.ModelAngleOffset = Angle(0, 0, 0)

ARC9.LoadAttachment(ATT, "cod2019_laser_02_cylinde_alt")
---------------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "5mW Laser"
ATT.CompactName = "5mW Laser"
ATT.Description = [[Ultra bright 5mW green laser greatly improves hipfire accuracy. Only for aggressive operators who don't rely on concealment.]]

ATT.Icon = Material("entities/attachs/cod2019_laser03.png", "mips smooth")

ATT.SortOrder = 1
ATT.Category = {"cod2019_tac_cylinde"}
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Model = "models/weapons/cod2019/attachs/laser/attachment_vm_laser_cylinder03_alt.mdl"
-- ATT.Folder = "Lasers"

table.Merge(ATT, stats_5mw)

ATT.ToggleOnF = false -- This attachment is toggleable with the flashlight key.
ATT.LaserColorPlayer = true -- Laser attachment uses the player's weapon color.
ATT.ToggleStats = {
    {
        PrintName = ARC9:GetPhrase("mw19_togglestat_on"),
        Laser = true,
        LaserStrength = 5,
        LaserColor = Color(0, 255, 0),
        LaserAttachment = 1,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_togglestat_off"),
    }
}

-- ATT.Sights = {
    -- {
        -- Pos = Vector(-1, 15, -2),
        -- Ang = Angle(0, 0, 45),
        -- ViewModelFOV = 45,
        -- Magnification = 1.25,
        -- IgnoreExtra = false,
		-- KeepBaseIrons = true,
    -- },
-- }

ATT.Scale = 1

ATT.ModelOffset = Vector(0, 0, 0)
ATT.ModelAngleOffset = Angle(0, 0, 0)

ARC9.LoadAttachment(ATT, "cod2019_laser_03_cylinde_alt")