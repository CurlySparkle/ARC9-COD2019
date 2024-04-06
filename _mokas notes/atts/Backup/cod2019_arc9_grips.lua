local ATT = {}
------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Merc Foregrip"
ATT.CompactName = "Merc"
ATT.Description = [[Extended foregrip reduces vertical recoil and provides stability from the hip for fast paced guerilla tactics.]]

ATT.Icon = Material("entities/attachs/cod2019_attach_grip_stubby02.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/grips/grip_stubby_tall.mdl"

ATT.SortOrder = 2.1
ATT.Category = "cod2019_grip"
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.ActivateElements = {"grip"}

ATT.AimDownSightsTimeAdd = 0.15
ATT.DeployTimeAdd = 0.2
ATT.VisualRecoilMult = 0.8
ATT.RecoilMult = 0.8
ATT.SpreadMultHipFire = 0.947
ATT.RecoilRandomSideMult = 0.85

ATT.LHIK_Priority = 10
ATT.LHIK = true

ATT.ModelOffset = Vector(0, 0, 0.12)
ATT.ModelAngleOffset = Angle(0, 0, 180)

ATT.DrawFunc = function(swep, model, wm)
    model:SetPoseParameter("gripstyle", swep.CodStubbyTallGripPoseParam or 0)
end

ARC9.LoadAttachment(ATT, "cod2019_grips_merc")
------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Task Force Foregrip"
ATT.CompactName = "Task Force"
ATT.Description = [[Streamline foregrip provides superior control acquiring targets.]]

ATT.Icon = Material("entities/attachs/cod2019_attach_grip_vertgrip02.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/grips/grip_vert.mdl"

ATT.SortOrder = 2
ATT.Category = "cod2019_grip"
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.ActivateElements = {"grip"}

ATT.AimDownSightsTimeAdd = 0.07
ATT.VisualRecoilMult = 0.9
ATT.RecoilMult = 0.9
ATT.SpreadMultHipFire = 0.947
ATT.SpeedMult = 0.99
ATT.SpeedMultSights = 0.93
ATT.RecoilRandomSideMult = 0.9

ATT.LHIK_Priority = 10
ATT.LHIK = true

ATT.ModelOffset = Vector(0, 0, 0.12)
ATT.ModelAngleOffset = Angle(0, 0, 180)

ATT.DrawFunc = function(swep, model, wm)
    model:SetPoseParameter("gripstyle", swep.CodStubbyTallGripPoseParam or 0)
end

ARC9.LoadAttachment(ATT, "cod2019_grips_tactical")
------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Ranger Foregrip"
ATT.CompactName = "Ranger F"
ATT.Description = [[Standard foregrip improves vertical recoil and stabilizes weapon while aiming for improved long range combat.]]

ATT.Icon = Material("entities/attachs/cod2019_attach_grip_vertgrip03.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/grips/grip_vert03.mdl"

ATT.SortOrder = 2
ATT.Category = "cod2019_grip"
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.ActivateElements = {"grip"}

ATT.AimDownSightsTimeAdd = 0.021
ATT.VisualRecoilMult = 0.91
ATT.RecoilMult = 0.91
ATT.SpreadMultHipFire = 0.947
ATT.SpeedMult = 0.99
ATT.SpeedMultSights = 0.88
ATT.RecoilRandomSideMult = 0.93

ATT.LHIK_Priority = 10
ATT.LHIK = true

ATT.ModelOffset = Vector(0.15, 0, 0.45)
ATT.ModelAngleOffset = Angle(0, 0, 180)

ATT.DrawFunc = function(swep, model, wm)
    model:SetPoseParameter("gripstyle", swep.CodStubbyTallGripPoseParam or 0)
end

ARC9.LoadAttachment(ATT, "cod2019_grips_ranger")
------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Commando Foregrip"
ATT.CompactName = "Commando A"
ATT.Description = [[Heavy weight angled grip keeps the weapon steady while aiming, and helps maintain control during heavy fire.]]

ATT.Icon = Material("entities/attachs/cod2019_attach_grip_angledgrip.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/grips/grip_angled.mdl"

ATT.SortOrder = 1
ATT.Category = "cod2019_grip"
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.ActivateElements = {"grip_angled"}

ATT.AimDownSightsTimeAdd = 0.011
ATT.VisualRecoilMult = 0.91
ATT.RecoilMult = 0.91
ATT.SpreadMultHipFire = 0.947
ATT.SpeedMult = 0.98
ATT.SpeedMultSights = 0.85
ATT.RecoilRandomSideMult = 0.95

ATT.LHIK_Priority = 10
ATT.LHIK = true

ATT.ModelOffset = Vector(0.5, 0, 0)
ATT.ModelAngleOffset = Angle(0, 0, 180)

ATT.DrawFunc = function(swep, model, wm)
    model:SetPoseParameter("angled_gripstyle", swep.CodAngledGripPoseParam or 0)
end

ARC9.LoadAttachment(ATT, "cod2019_angled")
------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Tactical Foregrip"
ATT.CompactName = "Tactical A"
ATT.Description = [[Streamline foregrip provides superior control acquiring targets.]]

ATT.Icon = Material("entities/attachs/cod2019_attach_grip_angledgrip02.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/grips/grip_angled02.mdl"

ATT.SortOrder = 1
ATT.Category = "cod2019_grip"
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.ActivateElements = {"grip_angled"}

ATT.AimDownSightsTimeAdd = -0.07
ATT.VisualRecoilMult = 0.95
ATT.RecoilMult = 0.95
ATT.SpreadMultHipFire = 0.947
ATT.SpeedMult = 0.99
ATT.SpeedMultSights = 0.93
ATT.RecoilRandomSideMult = 0.97

ATT.LHIK_Priority = 10
ATT.LHIK = true

ATT.ModelOffset = Vector(0.5, 0, 0)
ATT.ModelAngleOffset = Angle(0, 0, 180)

ATT.DrawFunc = function(swep, model, wm)
    model:SetPoseParameter("angled_gripstyle", swep.CodAngledGripPoseParam or 0)
end

ARC9.LoadAttachment(ATT, "cod2019_angled_tactical")
------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Operator Foregrip"
ATT.CompactName = "Operator"
ATT.Description = [[No frills foregrip helps reload speed for faster action.]]

ATT.Icon = Material("entities/attachs/cod2019_attach_grip_stubby01.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/grips/grip_stubby.mdl"

ATT.SortOrder = 2
ATT.Category = "cod2019_grip"
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.ActivateElements = {"grip"}

ATT.AimDownSightsTimeAdd = 0.15
ATT.VisualRecoilMult = 0.94
ATT.RecoilMult = 0.94
ATT.SpreadMultHipFire = 0.947
ATT.SpeedMult = 0.99
ATT.SpeedMultSights = 0.98
ATT.RecoilRandomSideMult = 0.95

ATT.ReloadTimeMult = 0.85 -- Because Twilight asked for it

ATT.LHIK_Priority = 10
ATT.LHIK = true

ATT.ModelOffset = Vector(0, 0, 0.1)
ATT.ModelAngleOffset = Angle(0, 0, 180)

ATT.DrawFunc = function(swep, model, wm)
    model:SetPoseParameter("gripstyle", swep.CodStubbyGripPoseParam or 0)
end

ARC9.LoadAttachment(ATT, "cod2019_grips_operator")
------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Bipod Foregrip"
ATT.CompactName = "Bipod F"
ATT.Description = [[Mounted foregrip with bipod functionality.
Provides the most stable recoil control when crouched/mounted with a heavy penalty on handling.]]

ATT.Icon = Material("entities/attachs/cod2019_attach_grip_bipod_grip.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/grips/grip_bipod_grip.mdl"

ATT.SortOrder = 3
ATT.Category = "cod2019_grip"
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.ActivateElements = {"grip"}

ATT.LHIK_Priority = 10
ATT.LHIK = true

ATT.ModelOffset = Vector(0, 0, -0.45)
ATT.ModelAngleOffset = Angle(0, 0, 180)

ATT.Bipod = true

ATT.AimDownSightsTimeAdd = 0.019
ATT.VisualRecoilMult = 0.8
ATT.RecoilMult = 0.8
ATT.SpeedMult = 0.96
ATT.SpeedMultSights = 0.84
ATT.SpreadBipod = -0.05

ATT.DrawFunc = function(self, model, wm)
	if self:GetBipod() then
		model:SetBodygroup(1,1)
	else 
		model:SetBodygroup(1,0)
	end
	
    model:SetPoseParameter("gripstyle", self.CodStubbyTallGripPoseParam or 0)
end

ATT.BipodPos = Vector(-1.5, -4, 0.7)
ATT.BipodAng = Angle(0, 0, 0)

ARC9.LoadAttachment(ATT, "cod2019_grips_bipod")
------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Bipod"
ATT.CompactName = "Bipod"
ATT.Description = [[Stability legs to improve control while using the weapon from the ground.]]

ATT.Icon = Material("entities/attachs/cod2019_attach_grip_bipod_alt.png", "mips smooth")

ATT.Model = "models/weapons/cod2019/attachs/grips/attachment_vm_bipod.mdl"
--ATT.Bonemerge = true

ATT.SortOrder = 4
ATT.Category = "cod2019_grip"
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.ActivateElements = {"grip"}

ATT.ModelOffset = Vector(2, 0, 0.03)
ATT.ModelAngleOffset = Angle(0, 0, 180)

ATT.Bipod = true

ATT.AimDownSightsTimeAdd = 0.019
ATT.VisualRecoilMult = 0.8
ATT.RecoilMult = 0.8
ATT.SpeedMult = 0.96
ATT.SpeedMultSights = 0.84
ATT.SpreadBipod = -0.06

ATT.BipodPos = Vector(-1.5, -4, 0.7)
ATT.BipodAng = Angle(0, 0, 0)

ATT.DrawFunc = function(self, model, wm)
    model:SetPoseParameter("bipod_slide", self.BipodSlide or 0)
end

ARC9.LoadAttachment(ATT, "cod2019_grips_bipod_alt")