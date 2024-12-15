function EFFECT:Init(data)
    self.Weapon = data:GetEntity()
    self.Owner = self.Weapon:GetOwner()
    
    if IsValid(self.Owner) and self.Owner:IsPlayer() then
        self.ViewModel = self.Owner:GetViewModel()
        
        if IsValid(self.ViewModel) then
            ParticleEffectAttach("weapon_molotov_fp", PATTACH_POINT_FOLLOW, self.ViewModel, 2)
        end
    end
end

function EFFECT:Think()
    if not IsValid(self.Weapon) or not IsValid(self.Owner) or not IsValid(self.ViewModel) then 
        return false 
    end
    return true
end

function EFFECT:Render()
end