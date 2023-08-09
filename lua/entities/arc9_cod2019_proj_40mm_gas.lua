AddCSLuaFile()

ENT.Base = "arc9_cod2019_proj_40mm_base"
ENT.PrintName = "Fart Gas"
ENT.ExplosionEffect = false
ENT.Scorch = false

function ENT:DoDetonation()

    local effectdata = EffectData()
    effectdata:SetOrigin(self:GetPos())

    if self:WaterLevel() >= 1 then
        util.Effect("WaterSurfaceExplosion", effectdata)
        self:EmitSound("weapons/underwater_explode3.wav", 125, 100, 1, CHAN_AUTO)
    else
        effectdata:SetMagnitude(4)
        effectdata:SetScale(1)
        effectdata:SetRadius(4)
        effectdata:SetNormal(self:GetVelocity():GetNormalized())
        util.Effect("Sparks", effectdata)
        self:EmitSound("physics/metal/metal_box_break1.wav", 100, 200, 0.5)
    end
	
    --self:EmitSound("weapons/cod2019/throwables/smoke/smoke_expl_pop.ogg", 90, 100, 1, CHAN_AUTO)

    -- local cloud = ents.Create( "arc9_smoke" )

    -- if !IsValid(cloud) then return end

    -- cloud:SetPos(self:GetPos())
    -- cloud:Spawn()

	local gas = ents.Create("arc9_cod2019_gas")
	gas:SetPos(self:GetPos())
	gas:SetOwner(self:GetOwner())
	gas:Spawn()
	self:Remove()

end