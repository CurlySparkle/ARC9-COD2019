AddCSLuaFile()

ENT.Base                     = "arc9_cod2019_proj_40mm_hel"
ENT.PrintName                = "40mm Smoke"
ENT.Spawnable                = false
ENT.Model                    = "models/weapons/cod2019/m32_nade.mdl"

ENT.FlareColor = Color(55, 55, 55)
ENT.SafetyFuse = 0

function ENT:Detonate()
	local smoke = ents.Create("arc9_cod2019_smoke")
	smoke:SetPos(self:GetPos())
	smoke:SetOwner(self:GetOwner())
	smoke:Spawn()
    self:Remove()
end