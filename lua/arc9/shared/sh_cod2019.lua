ARC9.COD2019 = {}

ARC9.COD2019.BlendEmpty = function(wep)
    local vm = wep:GetOwner():GetViewModel()
    vm:SetPoseParameter("bullets",30-wep:Clip1())
end

ARC9.COD2019.BlendEmpty2 = function(wep)
    local vm = wep:GetOwner():GetViewModel()
    if wep:Clip1() == 0 then
        vm:SetPoseParameter("empty", 1)
    else
        vm:SetPoseParameter("empty", 0)
    end
end
