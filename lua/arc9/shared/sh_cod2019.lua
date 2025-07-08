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

game.AddDecal( "molotovscorch",					"decals/molotovscorch" );
game.AddDecal( "mw19_knifecut",					"decals/mw19_knifecut" );
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

    local clip = wep:Clip1()
    if clip <= 0 then return end  -- Exit the function if the clip is empty

    if ucmd:KeyDown(IN_ATTACK) and !ucmd:KeyDown(IN_ATTACK2) and (!wep:ToggleADS() or !wep:GetInSights()) then
        ucmd:AddKey(IN_ATTACK2)
    end
end)

if CLIENT then
    hook.Add("Initialize", "arc9_cod2019_holohud2", function()
        if !HOLOHUD2 then return end

        HOLOHUD2.ammo.Register(
            "arc9_cod2019_nade_gas",
            surface.GetTextureID( "vgui/hud/arc9_cod2019_nade_gas" ),
            256, 128,
            128, 64,
            {
                icon_scale = 1,
                tray_margin_x = 0.6,
                tray_margin_y = 1,
                tray_scale_x = 1,
                tray_scale_y = 1,
                tray_angle_x = 30,
            }
        )

        HOLOHUD2.ammo.Register(
            "arc9_cod2019_nade_frag",
            surface.GetTextureID( "vgui/hud/arc9_cod2019_nade_frag" ),
            256, 128,
            128, 64,
            {
                icon_scale = 1,
                tray_margin_x = 0.8,
                tray_margin_y = 1,
                tray_scale_x = 0.8,
                tray_scale_y = 0.8,
                tray_angle_x = 30,
            }
        )

        HOLOHUD2.ammo.Register(
            "arc9_cod2019_nade_decoy",
            surface.GetTextureID( "vgui/hud/arc9_cod2019_nade_decoy" ),
            256, 128,
            128, 64,
            {
                icon_scale = 1,
                tray_margin_x = 0.8,
                tray_margin_y = 1,
                tray_scale_x = 0.8,
                tray_scale_y = 0.8,
                tray_angle_x = 30,
            }
        )

        HOLOHUD2.ammo.Register(
            "arc9_cod2019_nade_semtex",
            surface.GetTextureID( "vgui/hud/arc9_cod2019_nade_semtex" ),
            256, 128,
            128, 64,
            {
                icon_scale = 1,
                tray_margin_x = 0.8,
                tray_margin_y = 1,
                tray_scale_x = 0.8,
                tray_scale_y = 0.8,
                tray_angle_x = 30,
            }
        )

        HOLOHUD2.ammo.Register(
            "arc9_cod2019_nade_snapshot",
            surface.GetTextureID( "vgui/hud/arc9_cod2019_nade_snapshot" ),
            256, 128,
            128, 64,
            {
                icon_scale = 1,
                tray_margin_x = 0.75,
                tray_margin_y = 1,
                tray_scale_x = 0.85,
                tray_scale_y = 0.85,
                tray_angle_x = 30,
            }
        )

        HOLOHUD2.ammo.Register(
            "arc9_cod2019_nade_smoke",
            surface.GetTextureID( "vgui/hud/arc9_cod2019_nade_smoke" ),
            256, 128,
            128, 64,
            {
                icon_scale = 1,
                tray_margin_x = 0.6,
                tray_margin_y = 1,
                tray_scale_x = 1,
                tray_scale_y = 1,
                tray_angle_x = 30,
            }
        )

        HOLOHUD2.ammo.Register(
            "arc9_cod2019_nade_molotov",
            surface.GetTextureID( "vgui/hud/arc9_cod2019_nade_molotov" ),
            256, 128,
            128, 64,
            {
                icon_scale = 1,
                tray_margin_x = 0.5,
                tray_margin_y = 1,
                tray_scale_x = 1.1,
                tray_scale_y = 1.1,
                tray_angle_x = 30,
            }
        )

        HOLOHUD2.ammo.Register(
            "arc9_cod2019_nade_thermite",
            surface.GetTextureID( "vgui/hud/arc9_cod2019_nade_thermite" ),
            256, 128,
            128, 64,
            {
                icon_scale = 1,
                tray_margin_x = 0.6,
                tray_margin_y = 1,
                tray_scale_x = 1,
                tray_scale_y = 1,
                tray_angle_x = 30,
            }
        )

        HOLOHUD2.ammo.Register(
            "arc9_cod2019_nade_drillcharge",
            surface.GetTextureID( "vgui/hud/arc9_cod2019_nade_drillcharge" ),
            256, 128,
            128, 64,
            {
                icon_scale = 1,
                tray_margin_x = 0.6,
                tray_margin_y = 1,
                tray_scale_x = 1,
                tray_scale_y = 1,
                tray_angle_x = 30,
            }
        )

        HOLOHUD2.ammo.Register(
            "arc9_cod2019_nade_thermite_alt",
            surface.GetTextureID( "vgui/hud/arc9_cod2019_nade_smoke" ),
            256, 128,
            128, 64,
            {
                icon_scale = 1,
                tray_margin_x = 0.6,
                tray_margin_y = 1,
                tray_scale_x = 1,
                tray_scale_y = 1,
                tray_angle_x = 30,
            }
        )

        HOLOHUD2.ammo.Register(
            "arc9_cod2019_nade_flash",
            surface.GetTextureID( "vgui/hud/arc9_cod2019_nade_flash" ),
            256, 128,
            128, 64,
            {
                icon_scale = 1,
                tray_margin_x = 0.6,
                tray_margin_y = 1,
                tray_scale_x = 1,
                tray_scale_y = 1,
                tray_angle_x = 30,
            }
        )

        HOLOHUD2.ammo.Register(
            "arc9_cod2019_nade_stun",
            surface.GetTextureID( "vgui/hud/arc9_cod2019_nade_stun" ),
            256, 128,
            128, 64,
            {
                icon_scale = 1,
                tray_margin_x = 0.6,
                tray_margin_y = 1,
                tray_scale_x = 1,
                tray_scale_y = 1,
                tray_angle_x = 30,
            }
        )

        HOLOHUD2.ammo.Register(
            "arc9_cod2019_nade_landmines",
            surface.GetTextureID( "vgui/hud/arc9_cod2019_nade_landmines" ),
            256, 128,
            128, 64,
            {
                icon_scale = 1,
                tray_margin_x = 1.3,
                tray_margin_y = 1,
                tray_scale_x = 1,
                tray_scale_y = 1,
                tray_angle_x = 50,
            }
        )

        HOLOHUD2.ammo.Register(
            "arc9_cod2019_nade_claymores",
            surface.GetTextureID( "vgui/hud/arc9_cod2019_nade_claymore" ),
            256, 128,
            128, 64,
            {
                icon_scale = 1,
                tray_margin_x = 1.3,
                tray_margin_y = 1,
                tray_scale_x = 1,
                tray_scale_y = 1,
                tray_angle_x = 45,
            }
        )

        HOLOHUD2.ammo.Register(
            "arc9_cod2019_nade_c4",
            Material("entities/arc9_cod2019_nade_c4.png"),
            128, 128,
            128, 128,
            {
                icon_scale = 1,
                tray_margin_x = 1.3,
                tray_margin_y = 1,
                tray_scale_x = 1,
                tray_scale_y = 1,
                tray_angle_x = 0,
            }
        )

        HOLOHUD2.ammo.Register(
            "arc9_cod2019_nade_rock",
            surface.GetTextureID( "vgui/hud/arc9_cod2019_nade_rock" ),
            256, 128,
            256, 128,
            {
                icon_scale = 1,
                tray_margin_x = 0.45,
                tray_margin_y = 1,
                tray_scale_x = 1,
                tray_scale_y = 1,
                tray_angle_x = 0,
            }
        )

        HOLOHUD2.ammo.Register(
            "arc9_cod2019_knife",
            surface.GetTextureID( "vgui/hud/arc9_cod2019_nade_knife" ),
            256, 128,
            256, 128,
            {
                icon_scale = 1,
                tray_margin_x = 0.3,
                tray_margin_y = 1,
                tray_scale_x = 1.5,
                tray_scale_y = 1.5,
                tray_angle_x = -45,
            }
        )
    end)
end