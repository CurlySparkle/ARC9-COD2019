ARC9.COD2019 = {}

ARC9.COD2019.BlendEmpty = function(wep)
    local vm = wep:GetOwner():GetViewModel()
    vm:SetPoseParameter("bullets",30-wep:Clip1())
end

ARC9.COD2019.BlendEmptyP90 = function(wep)
    local vm = wep:GetOwner():GetViewModel()
    vm:SetPoseParameter("bullets_p90",50-wep:Clip1())
end

ARC9.COD2019.BlendEmpty2 = function(wep)
    local vm = wep:GetOwner():GetViewModel()
    if wep:Clip1() == 0 then
        vm:SetPoseParameter("empty", 1)
    else
        vm:SetPoseParameter("empty", 0)
    end
end

ARC9.COD2019.BlendEmptyElite = function(wep)
    local vm = wep:GetOwner():GetViewModel()
    if wep:Clip1() == 1 then
        vm:SetPoseParameter("empty", 1)
    elseif wep:Clip1() == 0 then
        vm:SetPoseParameter("empty", 2)
    else
        vm:SetPoseParameter("empty", 0)
    end
end

ARC9.COD2019.BlendSights = function(wep)
    local vm = wep:GetOwner():GetViewModel()
    local delta = wep:GetSightDelta()
    local coolilove = math.cos(delta * (math.pi / 2))
    vm:SetPoseParameter( "aim_blend", Lerp(coolilove, 0, 1) )
end

ARC9.COD2019.BlendSights2 = function(wep)
    local vm = wep:GetOwner():GetViewModel()
    local delta = wep:GetSightDelta()
	--delta = 1 - delta
    local coolilove = math.cos(delta * (math.pi / 2))
    vm:SetPoseParameter( "aim_blend", Lerp(coolilove, 1, 0) )
	--print("blag")
end

cod2019_flashtime = 5
cod2019_flashfade = 2
cod2019_flashdistance = 1280
cod2019_flashdistancefade = 1280 - 512

local tab = {
	["$pp_colour_addr"] = 0,
	["$pp_colour_addg"] = 0,
	["$pp_colour_addb"] = 0,
	["$pp_colour_brightness"] = 0.0,
	["$pp_colour_contrast"] = 1.0,
	["$pp_colour_colour"] = 1.0,
	["$pp_colour_mulr"] = 0,
	["$pp_colour_mulg"] = 0,
	["$pp_colour_mulb"] = 0
}

function ARC9_Cod2019_FlashIntensity(ply)
	local flashtime = ply:GetNWFloat("ARC9_Cod2019_LastFlash", -999)
	local flashdistance = ply:GetNWFloat("ARC9_Cod2019_FlashDistance", 0)
	local flashfac = ply:GetNWFloat("ARC9_Cod2019_FlashFactor", 1)
	local distancefac = 1 - math.Clamp((flashdistance - cod2019_flashdistance + cod2019_flashdistancefade) / cod2019_flashdistancefade, 0, 1)
	local intensity = 1 - math.Clamp(((CurTime() - flashtime) / distancefac - cod2019_flashtime + cod2019_flashfade) / cod2019_flashfade, 0, 1)
	intensity = intensity * distancefac
	intensity = intensity * math.Clamp(flashfac + 0.1, 0.35, 1)

	return intensity
end

if CLIENT then
	hook.Add("RenderScreenspaceEffects", "ARC9_Cod2019_FLASHBANG", function()
		local ply = LocalPlayer()
		if not IsValid(ply) then return end
		local intensity = ARC9_Cod2019_FlashIntensity(ply)

		if intensity > 0.01 then
			tab["$pp_colour_brightness"] = math.pow(intensity, 3)
			tab["$pp_colour_colour"] = 1 - intensity * 0.33
			DrawColorModify(tab) --Draws Color Modify effect
			DrawMotionBlur(0.2, intensity, 0.03)
		end
	end)
end

game.AddAmmoType({name = "arc9_cod2019_c4"})
game.AddAmmoType({name = "arc9_cod2019_knife"})
