local ATT = {}

ATT = {}

ATT.PrintName = "Merc Foregrip"
ATT.CompactName = "Merc F"
ATT.Description = [[Extended foregrip reduces vertical recoil and provides stability from the hip for fast paced guerilla tactics.]]

--ATT.Icon = Material("entities/attachs/go_grip_vertical_stubby.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/grips/grip_stubby_tall.mdl"

ATT.SortOrder = 1
ATT.Category = "grip"
ATT.MenuCategory = "ARC9 - MW2019 Attachments"

ATT.RecoilAutoControlMult = 1.2
ATT.RecoilMult = 0.8

ATT.AimDownSightsTimeMult = 1.1
ATT.SprintToFireTimeMult = 1.1

ATT.LHIK_Priority = 10
ATT.LHIK = true

ATT.ModelOffset = Vector(0, 0, 0.12)
ATT.ModelAngleOffset = Angle(0, 0, 180)

ARC9.LoadAttachment(ATT, "csgo_cod2019_grips_merc")
------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Tactical Foregrip"
ATT.CompactName = "Tactical F"
ATT.Description = [[Streamline foregrip provides superior control acquiring targets.]]

--ATT.Icon = Material("entities/attachs/go_grip_vertical_stubby.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/grips/grip_vert.mdl"

ATT.SortOrder = 2
ATT.Category = "grip"
ATT.MenuCategory = "ARC9 - MW2019 Attachments"

ATT.RecoilAutoControlMult = 1.1
ATT.RecoilMult = 0.9

ATT.AimDownSightsTimeMult = 1.05
ATT.SprintToFireTimeMult = 1.05

ATT.LHIK_Priority = 10
ATT.LHIK = true

ATT.ModelOffset = Vector(0, 0, 0.1)
ATT.ModelAngleOffset = Angle(0, 0, 180)

ARC9.LoadAttachment(ATT, "csgo_cod2019_grips_tactical")
------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Commando Foregrip"
ATT.CompactName = "Commando F"
ATT.Description = [[Heavy weight angled grip keeps the weapon steady while aiming, and helps maintain control during heavy fire.]]

--ATT.Icon = Material("entities/attachs/go_grip_angled.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/grips/grip_angled.mdl"

ATT.SortOrder = 0
ATT.Category = "grip"
ATT.MenuCategory = "ARC9 - MW2019 Attachments"

ATT.RecoilPatternDriftMult = 0.9
ATT.RecoilAutoControlMult = 0.9

ATT.LHIK_Priority = 10
ATT.LHIK = true

ATT.ModelOffset = Vector(0.5, 0, 0)
ATT.ModelAngleOffset = Angle(0, 0, 180)

ATT.AimDownSightsTimeMult = 0.8
ATT.SprintToFireTimeMult = 0.9

ATT.DrawFunc = function(swep, model, wm)
    model:SetPoseParameter("angled_gripstyle", swep.CodAngledGripPoseParam or 0)
end

ARC9.LoadAttachment(ATT, "csgo_cod2019_grips_angled")
------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Operator Foregrip"
ATT.CompactName = "Operator F"
ATT.Description = [[No frills foregrip helps reload speed for faster action.]]

--ATT.Icon = Material("entities/attachs/go_grip_angled.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/grips/grip_stubby.mdl"

ATT.SortOrder = 1.5
ATT.Category = "grip"
ATT.MenuCategory = "ARC9 - MW2019 Attachments"

ATT.ReloadTimeMult = 0.8
ATT.RecoilMult = 0.95

ATT.AimDownSightsTimeMult = 1.05
ATT.SprintToFireTimeMult = 1.075

ATT.LHIK_Priority = 10
ATT.LHIK = true

ATT.ModelOffset = Vector(0, 0, 0.1)
ATT.ModelAngleOffset = Angle(0, 0, 180)

ATT.DrawFunc = function(swep, model, wm)
    model:SetPoseParameter("gripstyle", swep.CodStubbyGripPoseParam or 0)
end

ARC9.LoadAttachment(ATT, "csgo_cod2019_grips_operator")