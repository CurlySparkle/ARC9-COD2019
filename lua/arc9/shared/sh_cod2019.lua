ARC9.COD2019 = {}

ARC9.COD2019.BlendEmpty = function(wep)
    local vm = wep:GetOwner():GetViewModel()
    vm:SetPoseParameter("bullets",30-wep:Clip1())
end
