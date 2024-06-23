AddCSLuaFile()

if CLIENT then
    killicon.Add( "arc9_cod2019_proj_40mm_hel", "VGUI/killicons/cod2019_nade_he", Color(251, 85, 25, 255))
end

ENT.Base                     = "arc9_cod2019_proj_base"
ENT.PrintName                = "40mm Energy"
ENT.Spawnable                = false

ENT.Model                    = "models/weapons/cod2019/m32_nade.mdl"

ENT.IsRocket = false // projectile has a booster and will not drop.
ENT.InstantFuse = false // projectile is armed immediately after firing.
ENT.RemoteFuse = false // allow this projectile to be triggered by remote detonator.
ENT.ImpactFuse = true // projectile explodes on impact.

ENT.ExplodeOnDamage = false // projectile explodes when it takes damage.
ENT.ExplodeUnderwater = true
ENT.SmokeTrail = true

ENT.Delay = 0
ENT.SafetyFuse = 0.02
ENT.FlareColor = Color(230, 113, 30)
ENT.Radius = 200
ENT.AudioLoop = ""

local BLUR_DURATION = 3 -- Duration of the blur effect in seconds

local customInputs = {
    ["npc_turret_floor"] = function(npc) npc:Fire("SelfDestruct") end,
    ["npc_rollermine"] = function(npc) npc:Fire("PowerDown") end,
    ["npc_cscanner"] = function(npc) npc:SetHealth(0) npc:ClearSchedule() end,
    ["npc_clawscanner"] = function(npc) npc:SetHealth(0) npc:ClearSchedule() end,
    ["npc_manhack"] = function(npc) npc:MoveStop() npc:SetHealth(0) npc:MoveStart() end,
    ["npc_turret_ceiling"] = function(npc) npc:SetHealth(0) npc:TakeDamage(1000, npc, npc) end,
    ["npc_combine_camera"] = function(npc) npc:SetHealth(0) npc:TakeDamage(1000, npc, npc) end,
    ["npc_dog"] = function(npc) npc:TakeDamage(10000, npc, npc) end,
    ["npc_hunter"] = function(npc) npc:Fire("Dodge") end,
    ["combine_mine"] = function(npc) npc:SetSaveValue("m_iMineState", "3") npc:Fire("Disarm") npc:EmitSound("npc/roller/mine/rmine_tossed1.wav", 75, math.random(95, 105), 1, CHAN_BODY) end,
    ["item_healthcharger"] = function(npc) npc:SetSaveValue("m_iJuice", "0") npc:Use(Entity(1)) npc:EmitSound("items/medshotno1.wav", 75, math.random(95, 105), 1, CHAN_BODY) end,
    ["item_suitcharger"] = function(npc) npc:SetSaveValue("m_iJuice", "0") npc:Use(Entity(1)) npc:EmitSound("items/suitchargeno1.wav", 75, math.random(95, 105), 1, CHAN_BODY) end,
    ["prop_thumper"] = function(npc) npc:Fire("Disable") end,
    ["grenade_helicopter"] = function(npc) npc:SetSaveValue("m_flLifeTime", "10000000") Entity(1):SimulateGravGunPickup(npc) 
    end,
    ["item_battery"] = function(npc) npc:AddFlags(FL_DONTTOUCH) end,
    ["weapon_striderbuster"] = function(npc) npc:Fire("Break") end,
    ["npc_grenade_frag"] = function(npc) 
        for _, c in pairs(npc:GetChildren()) do
            c:Fire("Disable")
        end
        npc:Fire("SetTimer", "9999") 
        npc:SetSaveValue("m_flNextBlipTime", "9999") end
}


function ENT:Impact(data, collider)
    if self.SpawnTime + self.SafetyFuse > CurTime() and !self.NPCDamage then
        local attacker = self.Attacker or self:GetOwner()
        local ang = data.OurOldVelocity:Angle()
        local fx = EffectData()
        fx:SetOrigin(data.HitPos)
        fx:SetNormal(-ang:Forward())
        fx:SetAngles(-ang)
        util.Effect("ManhackSparks", fx)

        if IsValid(data.HitEntity) then
            local dmginfo = DamageInfo()
            dmginfo:SetAttacker(attacker)
            dmginfo:SetInflictor(self)
            dmginfo:SetDamageType(DMG_CRUSH + DMG_CLUB)
            dmginfo:SetDamage(27)
            dmginfo:SetDamageForce(data.OurOldVelocity * 25)
            dmginfo:SetDamagePosition(data.HitPos)
            data.HitEntity:TakeDamageInfo(dmginfo)
        end

        self:EmitSound("weapons/rpg/shotdown.wav", 80)

        for i = 1, 1 do
            local prop = ents.Create("prop_physics")
            prop:SetPos(self:GetPos())
            prop:SetAngles(self:GetAngles())
            prop:SetModel("models/weapons/cod2019/m32_nade.mdl")
            prop:Spawn()
            prop:GetPhysicsObject():SetVelocityInstantaneous(data.OurNewVelocity * 0.5 + VectorRand() * 75)
            prop:SetCollisionGroup(COLLISION_GROUP_DEBRIS)

            SafeRemoveEntityDelayed(prop, 3)
        end

        self:Remove()
        return true
    end
end

function ENT:Detonate()
    local attacker = self.Attacker or self:GetOwner()
    local dir = self:GetForward()
    local src = self:GetPos() - dir * 64

    local dmg = DamageInfo()
    dmg:SetAttacker(attacker)
    dmg:SetDamageType(DMG_DISSOLVE + DMG_AIRBOAT + DMG_SNIPER)
    dmg:SetInflictor(self)
    dmg:SetDamageForce(self:GetVelocity() * 100)
    dmg:SetDamagePosition(src)
    dmg:SetDamage(125)
    util.BlastDamageInfo(dmg, self:GetPos(), self.Radius)
	
    for _, e in pairs(ents.FindInSphere(self:GetPos(), self.Radius)) do
        if (e:IsPlayer()) then
            e:SetNWFloat("MW19_EnergyEffect", CurTime() + 4)
            e:SetArmor(0)
            continue
        end

        if (customInputs[e:GetClass()] != nil) then
            timer.Simple(math.Rand(0, 0.2), function()
                if (!IsValid(e)) then
                    return
                end
                customInputs[e:GetClass()](e)
            end)

            local ef = EffectData()
            ef:SetEntity(e)
            ef:SetMagnitude(30)
            ef:SetScale(20)
            util.Effect("TeslaHitboxes", ef)
        end
    end
    for _, ply in pairs(ents.FindInSphere(self:GetPos(), self.Radius)) do
        if (ply:IsPlayer()) then
            self:ApplyBlurEffect(ply)
        end
    end

    local fx = EffectData()
    fx:SetOrigin(self:GetPos())

    if self:WaterLevel() > 0 then
        util.Effect("WaterSurfaceExplosion", fx)
    else
        ParticleEffect("Generic_explo_emp", self:GetPos(), Angle(-90, 0, 0))
    end

    util.Decal("Scorch", self:WorldSpaceCenter(), self:WorldSpaceCenter() + self:GetUp() * -100, {self})
	self:EmitSound("^weapons/cod2019/shared/emp_expl.ogg",75, 100, 1, CHAN_AUTO)
	util.ScreenShake(self:GetPos(), 25, 4, 0.75, self.Radius * 4)
	
     if CLIENT then
		local dlight = DynamicLight(self:EntIndex())
		if (dlight) then
			dlight.pos = self:GetPos()
			dlight.r = 0
			dlight.g = 75
			dlight.b = 255
			dlight.brightness = 5
			dlight.Decay = 2000
			dlight.Size = 512
			dlight.DieTime = CurTime() + 4
		end
	 end
	
    self:Remove()
end

function ENT:ApplyBlurEffect(ply)
    if SERVER then
        net.Start("BlurEffect")
        net.WriteFloat(BLUR_DURATION)
        net.Send(ply)
    end
end

if CLIENT then

    local colorModify = {
        ["$pp_colour_addr"] = 0,
        ["$pp_colour_addg"] = 0,
        ["$pp_colour_addb"] = 0,
        ["$pp_colour_brightness"] = 0,
        ["$pp_colour_contrast"] = 1,
        ["$pp_colour_colour"] = 1,
        ["$pp_colour_mulr"] = 0,
        ["$pp_colour_mulg"] = 0,
        ["$pp_colour_mulb"] = 0.5
    }

    net.Receive("BlurEffect", function()
        local duration = net.ReadFloat()
        local endTime = CurTime() + duration
        
        hook.Add("RenderScreenspaceEffects", "BlurEffect", function()
            local timeLeft = endTime - CurTime()
            if timeLeft <= 0 then
                hook.Remove("RenderScreenspaceEffects", "BlurEffect")
                return
            end
            
            local fraction = timeLeft / duration
            DrawMotionBlur(0.4, fraction, 0.05)
            -- Apply color modify
            local colorFraction = fraction * 0.5 -- Adjust this multiplier to control color intensity
            colorModify["$pp_colour_addb"] = colorFraction
            colorModify["$pp_colour_mulb"] = 0.5 * fraction
            DrawColorModify(colorModify)
        end)
    end)
end

if SERVER then
    util.AddNetworkString("BlurEffect")
end

function ENT:OnRemove()
	if (self:WaterLevel() <= 0) then
     if CLIENT then
		local dlight = DynamicLight(self:EntIndex())
		if (dlight) then
			dlight.pos = self:GetPos()
			dlight.r = 0
			dlight.g = 75
			dlight.b = 255
			dlight.brightness = 5
			dlight.Decay = 2000
			dlight.Size = 512
			dlight.DieTime = CurTime() + 4
		end
	 end
	end
	self:StopParticles()
end

hook.Add("HUDShouldDraw", "MW19_HUDShouldDraw_Energy", function(name)
    if (IsValid(GetViewEntity())) then
        if (CurTime() < GetViewEntity():GetNWFloat("MW19_EnergyEffect", CurTime())) then
            return name != "CHudAmmo" && name != "CHudBattery" && name != "CHudHealth" && name != "CHudSecondaryAmmo"
        end
    end
end)