EFFECT.TracerName = "mw2019_tracer"
EFFECT.Color = Color(255, 255, 255)

function EFFECT:Init(data)
    self.WeaponEnt = data:GetEntity()
    --print(self.ParticleName)
    if not IsValid(self.WeaponEnt) then return end
    self.Attachment = data:GetAttachment() or 1
    self.Position = self:GetTracerShootPos(data:GetStart(), self.WeaponEnt, self.Attachment)

    if IsValid(self.WeaponEnt.Owner) then
        if self.WeaponEnt.Owner == LocalPlayer() then
            if not self.WeaponEnt.Owner:GetViewEntity() then
                ang = self.WeaponEnt.Owner:EyeAngles()
                ang:Normalize()
                --ang.p = math.max(math.min(ang.p,55),-55)
                self.Forward = ang:Forward()
            else
                self.WeaponEnt = self.WeaponEnt.Owner:GetViewModel()
            end
            --ang.p = math.max(math.min(ang.p,55),-55)
        else
            ang = self.WeaponEnt.Owner:EyeAngles()
            ang:Normalize()
            self.Forward = ang:Forward()
        end
    end

    self.EndPos = data:GetOrigin()
    -- util.ParticleTracerEx(self.ParticleName, self.StartPos, self.EndPos, false, self:EntIndex(), self.Attachment)
    local pcf = CreateParticleSystem(self.WeaponEnt, self.TracerName, PATTACH_POINT, self.Attachment)
    if IsValid(pcf) then
        pcf:SetControlPoint(0,self.Position)
        pcf:SetControlPoint(1,self.EndPos)
        -- if self.GetProcessedValue then
		-- local color = self.WeaponEnt:GetProcessedValue("TracerColor")
		-- pcf:SetControlPoint(2, Vector(color.r, color.g, color.b))
        -- end
        pcf:StartEmission()
    end
    timer.Simple(1.5, function()
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