AddCSLuaFile()

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

game.AddDecal( "scorch_medium",					"decals/scorch_medium" );
game.AddDecal( "scorch_big",					"decals/scorch_big" );

game.AddAmmoType({name = "arc9_cod2019_c4"})
game.AddAmmoType({name = "arc9_cod2019_knife"})


-- Make launchers ADS when holding LMB
local launchers = {
    arc9_cod2019_la_jokr = true,
    arc9_cod2019_la_pila = true,
    arc9_cod2019_la_rpg = true,
    arc9_cod2019_la_strela = true,
}
hook.Add("StartCommand", "ARC9_MW19_LauncherAim", function(ply, ucmd)
    local wep = ply:GetActiveWeapon()
    if !ply:Alive() or !IsValid(wep) or !launchers[wep:GetClass()] then return end
    if ucmd:KeyDown(IN_ATTACK) and !ucmd:KeyDown(IN_ATTACK2) and (!wep:ToggleADS() or !wep:GetInSights()) then
        ucmd:AddKey(IN_ATTACK2)
    end
end)