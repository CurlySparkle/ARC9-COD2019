EFFECT.TracerName = "mw2019_tracer_small"

function EFFECT:Init(data)
    self.WeaponEnt = data:GetEntity()
    if not IsValid(self.WeaponEnt) then return end
    local hit = data:GetOrigin()
    local wep = data:GetEntity()
    if !IsValid(wep) then return end
	local start = (wep.GetTracerOrigin and wep:GetTracerOrigin()) or data:GetStart()
    self.Attachment = data:GetAttachment() or 1

    if IsValid(self.WeaponEnt.Owner) then
        if self.WeaponEnt.Owner == LocalPlayer() then
            if not self.WeaponEnt.Owner:GetViewEntity() then
                ang = self.WeaponEnt.Owner:EyeAngles()
                ang:Normalize()
                self.Forward = ang:Forward()
            else
                self.WeaponEnt = self.WeaponEnt.Owner:GetViewModel()
            end
        else
            ang = self.WeaponEnt.Owner:EyeAngles()
            ang:Normalize()
            self.Forward = ang:Forward()
        end
    end

    self.StartPos = start
    self.EndPos = hit
    local pcf = CreateParticleSystem(self.WeaponEnt, self.TracerName, PATTACH_ABSORIGIN, self.Attachment)
    if IsValid(pcf) then
        pcf:SetControlPoint(0,self.StartPos)
        pcf:SetControlPoint(1,self.EndPos)
        pcf:StartEmission()
    end
    timer.Simple(1.2, function()
        if IsValid(pcf) then
            pcf:StopEmissionAndDestroyImmediately()
        end
    end)
end

function EFFECT:Think()
    return false
end

function EFFECT:Render()
    if self.InValid then return false end
end