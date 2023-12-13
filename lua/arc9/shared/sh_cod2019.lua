--list.Set("ContentCategoryIcons", "ARC9 - MW2019", "arc9/logo/logo_lowvis.png")

-- ARC9.COD2019 = {}

-- ARC9.COD2019.BlendEmpty = function(wep)
    -- local vm = wep:GetOwner():GetViewModel()
    -- vm:SetPoseParameter("bullets",30-wep:Clip1())
-- end

-- ARC9.COD2019.BlendEmptyP90 = function(wep)
    -- local vm = wep:GetOwner():GetViewModel()
    -- vm:SetPoseParameter("bullets_p90",50-wep:Clip1())
-- end

-- ARC9.COD2019.BlendEmpty2 = function(wep)
    -- local vm = wep:GetOwner():GetViewModel()
    -- if wep:Clip1() == 0 then
        -- vm:SetPoseParameter("empty", 1)
    -- else
        -- vm:SetPoseParameter("empty", 0)
    -- end
-- end

-- ARC9.COD2019.BlendEmptyElite = function(wep)
    -- local vm = wep:GetOwner():GetViewModel()
    -- if wep:Clip1() == 1 then
        -- vm:SetPoseParameter("empty", 1)
    -- elseif wep:Clip1() == 0 then
        -- vm:SetPoseParameter("empty", 2)
    -- else
        -- vm:SetPoseParameter("empty", 0)
    -- end
-- end

-- ARC9.COD2019.BlendSights = function(wep)
    -- local vm = wep:GetOwner():GetViewModel()
    -- local delta = wep:GetSightDelta()
    -- local coolilove = math.cos(delta * (math.pi / 2))
    -- vm:SetPoseParameter( "aim_blend", Lerp(coolilove, 0, 1) )
-- end

-- ARC9.COD2019.BlendSights2 = function(wep)
    -- local vm = wep:GetOwner():GetViewModel()
    -- local delta = wep:GetSightDelta()
    -- local coolilove = math.cos(delta * (math.pi / 2))
    -- vm:SetPoseParameter( "aim_blend", Lerp(coolilove, 1, 0) )
-- end

game.AddAmmoType({name = "arc9_cod2019_c4"})
game.AddAmmoType({name = "arc9_cod2019_knife"})