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