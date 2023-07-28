local ATT = {}
------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Scout Foregrip"
ATT.CompactName = "Scout F"
ATT.Description = [[Extended foregrip reduces vertical recoil and provides stability from the hip for fast paced guerilla tactics.]]

ATT.Icon = Material("entities/attachs/cod2019_grip_stubby02.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/grips/grip_stubby_tall.mdl"

ATT.SortOrder = 1
ATT.Category = "cod2019_grip"
ATT.MenuCategory = "ARC9 - MW2019 Attachments"

ATT.RecoilAutoControlMult = 1.2
ATT.RecoilMult = 0.8

ATT.AimDownSightsTimeMult = 1.1
ATT.SprintToFireTimeMult = 1.1

ATT.LHIK_Priority = 10
ATT.LHIK = true

ATT.ModelOffset = Vector(0, 0, 0.12)
ATT.ModelAngleOffset = Angle(0, 0, 180)

ATT.DrawFunc = function(swep, model, wm)
    model:SetPoseParameter("gripstyle", swep.CodStubbyTallGripPoseParam or 0)
end

ARC9.LoadAttachment(ATT, "csgo_cod2019_grips_merc")
------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Foregrip"
ATT.CompactName = "Foregrip"
ATT.Description = [[Streamline foregrip provides superior control acquiring targets.]]

ATT.Icon = Material("entities/attachs/cod2019_grip_vertgrip02.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/grips/grip_vert.mdl"

ATT.SortOrder = 2
ATT.Category = "cod2019_grip"
ATT.MenuCategory = "ARC9 - MW2019 Attachments"

ATT.RecoilAutoControlMult = 1.1
ATT.RecoilMult = 0.9

ATT.AimDownSightsTimeMult = 1.05
ATT.SprintToFireTimeMult = 1.05

ATT.LHIK_Priority = 10
ATT.LHIK = true

ATT.ModelOffset = Vector(0, 0, 0.12)
ATT.ModelAngleOffset = Angle(0, 0, 180)

ATT.DrawFunc = function(swep, model, wm)
    model:SetPoseParameter("gripstyle", swep.CodStubbyTallGripPoseParam or 0)
end

ARC9.LoadAttachment(ATT, "csgo_cod2019_grips_tactical")
------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Ranger Foregrip"
ATT.CompactName = "Ranger F"
ATT.Description = [[Standard foregrip improves vertical recoil and stabilizes weapon while aiming for improved long range combat.]]

ATT.Icon = Material("entities/attachs/cod2019_grip_vertgrip03.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/grips/grip_vert03.mdl"

ATT.SortOrder = 2.2
ATT.Category = "cod2019_grip"
ATT.MenuCategory = "ARC9 - MW2019 Attachments"

ATT.RecoilAutoControlMult = 1.1
ATT.RecoilMult = 0.92

ATT.AimDownSightsTimeMult = 1.02
ATT.SprintToFireTimeMult = 1.02

ATT.LHIK_Priority = 10
ATT.LHIK = true

ATT.ModelOffset = Vector(0.15, 0, 0.45)
ATT.ModelAngleOffset = Angle(0, 0, 180)

ATT.DrawFunc = function(swep, model, wm)
    model:SetPoseParameter("gripstyle", swep.CodStubbyTallGripPoseParam or 0)
end

ARC9.LoadAttachment(ATT, "csgo_cod2019_grips_ranger")
------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Commando Foregrip"
ATT.CompactName = "Commando A"
ATT.Description = [[Heavy weight angled grip keeps the weapon steady while aiming, and helps maintain control during heavy fire.]]

ATT.Icon = Material("entities/attachs/cod2019_grip_angledgrip.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/grips/grip_angled.mdl"

ATT.SortOrder = 0
ATT.Category = "cod2019_grip"
ATT.MenuCategory = "ARC9 - MW2019 Attachments"

ATT.RecoilPatternDriftMult = 1.1
ATT.RecoilAutoControlMult = 0.9

ATT.AimDownSightsTimeMult = 0.8
ATT.SprintToFireTimeMult = 0.9

ATT.LHIK_Priority = 10
ATT.LHIK = true

ATT.ModelOffset = Vector(0.5, 0, 0)
ATT.ModelAngleOffset = Angle(0, 0, 180)

ATT.DrawFunc = function(swep, model, wm)
    model:SetPoseParameter("angled_gripstyle", swep.CodAngledGripPoseParam or 0)
end

ARC9.LoadAttachment(ATT, "csgo_cod2019_angled")
------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Tactical Foregrip"
ATT.CompactName = "Tactical A"
ATT.Description = [[Streamline foregrip provides superior control acquiring targets.]]

ATT.Icon = Material("entities/attachs/cod2019_grip_angledgrip02.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/grips/grip_angled02.mdl"

ATT.SortOrder = 0.3
ATT.Category = "cod2019_grip"
ATT.MenuCategory = "ARC9 - MW2019 Attachments"

ATT.RecoilPatternDriftMult = 1.1
ATT.RecoilAutoControlMult = 0.9
ATT.RecoilMult = 1.2

ATT.AimDownSightsTimeMult = 0.75
ATT.SprintToFireTimeMult = 0.75

ATT.LHIK_Priority = 10
ATT.LHIK = true

ATT.ModelOffset = Vector(0.5, 0, 0)
ATT.ModelAngleOffset = Angle(0, 0, 180)

ATT.DrawFunc = function(swep, model, wm)
    model:SetPoseParameter("angled_gripstyle", swep.CodAngledGripPoseParam or 0)
end

ARC9.LoadAttachment(ATT, "csgo_cod2019_angled_tactical")
------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Merc Foregrip"
ATT.CompactName = "Merc F"
ATT.Description = [[No frills foregrip helps reload speed for faster action.]]

ATT.Icon = Material("entities/attachs/cod2019_grip_stubby01.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/grips/grip_stubby.mdl"

ATT.SortOrder = 1.5
ATT.Category = "cod2019_grip"
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
------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Bipod Foregrip"
ATT.CompactName = "Bipod F"
ATT.Description = [[Mounted foregrip with bipod functionality.
Provides the most stable recoil control when crouched/mounted with a heavy penalty on handling.]]

ATT.Icon = Material("entities/attachs/cod2019_grip_bipod_grip.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/grips/grip_bipod_grip.mdl"

ATT.SortOrder = 2
ATT.Category = "cod2019_grip"
ATT.MenuCategory = "ARC9 - MW2019 Attachments"

ATT.RecoilMult = 0.9

ATT.AimDownSightsTimeMult = 1.15
ATT.SprintToFireTimeMult = 1.15

ATT.LHIK_Priority = 10
ATT.LHIK = true

ATT.ModelOffset = Vector(0, 0, -0.45)
ATT.ModelAngleOffset = Angle(0, 0, 180)

ATT.Bipod = true

ATT.DrawFunc = function(self, model, wm)
	if self:GetBipod() then
		model:SetBodygroup(1,1)
	else 
		model:SetBodygroup(1,0)
	end
	
    model:SetPoseParameter("gripstyle", self.CodStubbyTallGripPoseParam or 0)
end

ATT.BipodPos = Vector(-3, 0, 0)
ATT.BipodAng = Angle(0, 0, 0)

ARC9.LoadAttachment(ATT, "csgo_cod2019_grips_bipod")
------------------------------------------------------------------ SIDE GRIPS
ATT = {}

ATT.PrintName = "Foregrip"
ATT.CompactName = "Foregrip"
ATT.Description = [[Extended foregrip reduces vertical recoil and provides stability from the hip for fast paced guerilla tactics.]]

ATT.Icon = Material("entities/attachs/cod2019_attach_grip_origin.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/grips/grip_origin12.mdl"

ATT.SortOrder = 1
ATT.Category = "cod2019_grips_side"
ATT.MenuCategory = "ARC9 - MW2019 Attachments"

ATT.RecoilAutoControlMult = 1.1
ATT.RecoilMult = 0.9

ATT.AimDownSightsTimeMult = 1.05
ATT.SprintToFireTimeMult = 1.05

ATT.LHIK_Priority = 10
ATT.LHIK = true

ATT.ModelOffset = Vector(0, 0, 0)
ATT.ModelAngleOffset = Angle(0, 0, 180)

ARC9.LoadAttachment(ATT, "cod2019_attach_grip_foregrip_side")
------------------------------------------------------------------ GRIP NONE
ATT = {}

ATT.PrintName = "Alt Hold"
ATT.CompactName = "Alt Hold"
ATT.Description = [[Changes the holding style of the weapon.]]

ATT.Icon = Material("entities/attachs/cod2019_grip_none.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/grips/grip_none.mdl"

ATT.SortOrder = 0
ATT.Category = "cod2019_grip_none"

ATT.LHIK_Priority = 5
ATT.LHIK = true

ATT.ModelOffset = Vector(0, 0, 0)
ATT.ModelAngleOffset = Angle(0, 0, 180)

ARC9.LoadAttachment(ATT, "cod2019_grips_none")
------------------------------------------------------------------ 
ATT = {}

ATT.PrintName = "C-Clamp Holding"
ATT.CompactName = "C-Clamp"
ATT.Description = [[Changes the holding style of the weapon to a more "tactical" and larping experience aka, the C-clamp.]]

ATT.Icon = Material("entities/attachs/cod2019_grip_none.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/grips/grip_cclamp.mdl"

ATT.SortOrder = 0
ATT.Category = "cod2019_grip_cclamp"

ATT.LHIK_Priority = 5
ATT.LHIK = true

ATT.ModelOffset = Vector(0, 0, 0)
ATT.ModelAngleOffset = Angle(0, 0, 180)

ARC9.LoadAttachment(ATT, "cod2019_grips_alt_cclamp")
------------------------------------------------------------------ 
ATT = {}

ATT.PrintName = "Kill the C-Clamp"
ATT.CompactName = "No C"
ATT.Description = [[Kills the c-clamp :D]]

ATT.Icon = Material("entities/attachs/cod2019_grip_none.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/grips/grip_noclamp.mdl"

ATT.SortOrder = 0
ATT.Category = "cod2019_grip_noclamp"

ATT.LHIK_Priority = 5
ATT.LHIK = true

ATT.ModelOffset = Vector(0, 0, 0)
ATT.ModelAngleOffset = Angle(0, 0, 180)

ARC9.LoadAttachment(ATT, "cod2019_grips_alt_nocclamp")