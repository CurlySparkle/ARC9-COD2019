AddCSLuaFile()

ENT.Base = "arc9_cod2019_proj_arrow_base"
ENT.PrintName = "Echo Locator Bolt"
ENT.Model = "models/weapons/cod2019/attachs/weapons/crossbow/attachment_vm_sn_crossbow_mag_expbolt_phys.mdl"

function ENT:SetupDataTables()
    self:NetworkVar("Float", 0, "LifeTime")
end

if CLIENT then
    killicon.Add( "arc9_cod2019_proj_crossbow_locator", "hud/killicons/default", Color( 255, 255, 255, 255 ) )
end

ENT.ImpactDamage = 25
ENT.CanPickup = false
ENT.ImpactScorch = false
ENT.ExplodeOnImpact = false

DEFINE_BASECLASS(ENT.Base)

function ENT:OnInitialize()
    self:SetLifeTime(0.75)
    self:AddFlags(FL_GRENADE)
    self:AddFlags(FL_ONFIRE)
    self.nextBeep = self:GetLifeTime()
end 

function ENT:Think()
if SERVER then
    if (IsValid(self:GetParent()) && self:GetParent():Health() <= 0 && self:GetParent():GetMaxHealth() > 1) then
        self:Explode()
        return
    end

    self:SetLifeTime(self:GetLifeTime() - FrameTime())

    if (self:GetLifeTime() > 0.1 && self:GetLifeTime() <= self.nextBeep) then
        sound.EmitHint(SOUND_DANGER, self:GetPos(), 512 * 2, 1, nil) --make shit run away (nil owner so even rebels run)
        self.nextBeep = self:GetLifeTime() * 0.75
        
        local effectData = EffectData()
        effectData:SetEntity(self)
        effectData:SetOrigin(self:GetPos())
        util.Effect("cod2019_effect_semtex", effectData)
    end

    if (self:GetLifeTime() <= 0) then
        self:Explode()
    end

    self:NextThink(CurTime())
	BaseClass.Think(self)
    return true
end
end

function ENT:Explode()
    local fx = EffectData()
    fx:SetOrigin(self:GetPos())
	fx:SetNormal(self:GetUp())
    util.Effect("ManhackSparks", fx)
		
	ParticleEffect("small_smoke_effect3", self:GetPos(), Angle(0, 0, 0))
	ParticleEffect("weapon_sensorgren_detonate", self:GetPos(), self:GetAngles())
	self:EmitSound("COD2019.Snapshot.Explode")
    
    local entities = ents.FindInSphere(self:GetPos(), 512)
    for _, ent in ipairs(entities) do
        if ent:IsPlayer() or ent:IsNPC() or ent:IsNextBot() then
            self:GlowEntity(ent)
        end
    end
	
    util.Decal("FadingScorch", self:GetPos(), self:GetPos() + self:GetUp() * -100, self:GetPos())
    self:Remove()
end

function ENT:GlowEntity(ent)
    if SERVER then
        net.Start("DetectorBombGlow")
        net.WriteEntity(ent)
        net.Broadcast()
    end
end

function ENT:OnRemove()
if CLIENT then
	local dlight = DynamicLight(self:EntIndex())
	if (dlight) then
		dlight.pos = self:GetPos()
		dlight.r = 255
		dlight.g = 0
		dlight.b = 0
		dlight.brightness = 5
		dlight.Decay = 500
		dlight.Size = 256
		dlight.DieTime = CurTime() + 4
	end
end
end

if CLIENT then
    net.Receive("DetectorBombGlow", function()
        local ent = net.ReadEntity()
        if IsValid(ent) then
            ent.GlowTime = CurTime() + 10
            
            hook.Add("PreDrawHalos", "DetectorBombGlow_" .. ent:EntIndex(), function()
                if IsValid(ent) and ent.GlowTime > CurTime() then
                    local timeLeft = ent.GlowTime - CurTime()
                    local alpha = math.Clamp(timeLeft / 10 * 255, 0, 255)
                    halo.Add({ent}, Color(255, 0, 0, alpha), 2, 2, 1, true, true)
                else
                    hook.Remove("PreDrawHalos", "DetectorBombGlow_" .. ent:EntIndex())
                end
            end)
        end
    end)
end

if SERVER then
    util.AddNetworkString("DetectorBombGlow")
end