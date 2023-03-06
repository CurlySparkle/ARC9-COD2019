AddCSLuaFile()
ENT.Type = "anim"
ENT.Base = "base_anim"
ENT.Spawnable = false

if CLIENT then
    killicon.Add( "arc9_cod2019_thrownfrag", "vgui/killicons/cod2019_frag", Color(251, 85, 25, 255))
end

function ENT:Draw()
	self:DrawModel()
end

function ENT:Initialize()
	if SERVER then
		self:SetModel( "models/weapons/w_eq_cod2019_frag.mdl" )
		self:SetMoveType( MOVETYPE_VPHYSICS )
		self:SetSolid( SOLID_VPHYSICS )
		self:PhysicsInit( SOLID_VPHYSICS )
		self:SetCollisionGroup( COLLISION_GROUP_NONE )
		self:DrawShadow( false )
	end
	self.ExplodeTimer = CurTime() + 1.5
end

function ENT:Think()
	if SERVER and self.ExplodeTimer <= CurTime() then
		self:Explode()
		self:Remove()
	end
end

function ENT:PhysicsCollide( data )
	if SERVER and data.Speed > 150 then
		self:EmitSound( "Cod2019.Frag.Bounce" )
	end
end

function ENT:OnRemove()
end

function ENT:Explode()
if SERVER then
    if self:WaterLevel() > 0 then
        local tr = util.TraceLine({
            start = self:GetPos(),
            endpos = self:GetPos() + Vector(0, 0, 1) * 1024,
            filter = self,
        })
        local tr2 = util.TraceLine({
            start = tr.HitPos,
            endpos = self:GetPos(),
            filter = self,
            mask = MASK_WATER
        })
        ParticleEffect("water_explosion", tr2.HitPos + Vector(0, 0, 8), Angle(0, 0, 0), nil)

        // Overpressure radius
        util.BlastDamage(self, IsValid(self:GetOwner()) and self:GetOwner() or self, self:GetPos(), 512, 300)

        self:EmitSound("weapons/underwater_explode3.wav", 100)
    else
        ParticleEffect("explosion_hegrenade_brief", self:GetPos(), Angle(0, 0, 0), nil)
        ParticleEffect("explosion_hegrenade_interior", self:GetPos(), Angle(0, 0, 0), nil)
        --ParticleEffect("bumpmine_detonate", self:GetPos(), Angle(0, 0, 0), nil)

        ParticleEffect("weapon_decoy_ground_effect_shot", self:GetPos(), Angle(0, 0, 0), nil)
        --ParticleEffect("smoke_plume_b", self:GetPos(), Angle(0, 0, 0), nil)
        ParticleEffect("smoke_plume", self:GetPos(), Angle(0, 0, 0), nil)
        ParticleEffect("HE_shockwave", self:GetPos(), Angle(0, 0, 0), nil)


        util.BlastDamage(self, IsValid(self:GetOwner()) and self:GetOwner() or self, self:GetPos(), 256, 200)
        util.BlastDamage(self, IsValid(self:GetOwner()) and self:GetOwner() or self, self:GetPos(), 328, 100)

        self:EmitSound("Cod2019.Frag.Explode")
    end
end
	--util.BlastDamage( self, self.Owner, self:GetPos(), 354, 98 )
	
	local spos = self:GetPos()
	local trs = util.TraceLine({start=spos + Vector(0,0,64), endpos=spos + Vector(0,0,-32), filter=self})
	util.Decal("Scorch", trs.HitPos + trs.HitNormal, trs.HitPos - trs.HitNormal)    
end

-- function ENT:Explode()
    -- if not self:IsValid() then return end
    -- if self.Defused then return end
    -- if self:WaterLevel() > 0 then
        -- local tr = util.TraceLine({
            -- start = self:GetPos(),
            -- endpos = self:GetPos() + Vector(0, 0, 1) * 1024,
            -- filter = self,
        -- })
        -- local tr2 = util.TraceLine({
            -- start = tr.HitPos,
            -- endpos = self:GetPos(),
            -- filter = self,
            -- mask = MASK_WATER
        -- })
        -- ParticleEffect("water_explosion", tr2.HitPos + Vector(0, 0, 8), Angle(0, 0, 0), nil)

        -- // Overpressure radius
        -- util.BlastDamage(self, IsValid(self:GetOwner()) and self:GetOwner() or self, self:GetPos(), 512, 300)

        -- self:EmitSound("weapons/underwater_explode3.wav", 100)
    -- else
        -- ParticleEffect("explosion_hegrenade_brief", self:GetPos(), Angle(0, 0, 0), nil)
        -- ParticleEffect("explosion_hegrenade_interior", self:GetPos(), Angle(0, 0, 0), nil)
        -- --ParticleEffect("bumpmine_detonate", self:GetPos(), Angle(0, 0, 0), nil)

        -- ParticleEffect("weapon_decoy_ground_effect_shot", self:GetPos(), Angle(0, 0, 0), nil)
        -- --ParticleEffect("smoke_plume_b", self:GetPos(), Angle(0, 0, 0), nil)
        -- ParticleEffect("smoke_plume", self:GetPos(), Angle(0, 0, 0), nil)
        -- ParticleEffect("HE_shockwave", self:GetPos(), Angle(0, 0, 0), nil)


        -- util.BlastDamage(self, IsValid(self:GetOwner()) and self:GetOwner() or self, self:GetPos(), 256, 200)
        -- util.BlastDamage(self, IsValid(self:GetOwner()) and self:GetOwner() or self, self:GetPos(), 328, 100)

        -- self:EmitSound("Cod2019.Frag.Explode")
    -- end

    -- if SERVER then
        -- local dir = self.HitVelocity or self:GetVelocity()

        -- if self.Boost <= 0 then
            -- dir = Vector(0, 0, -1)
        -- end

        -- self:FireBullets({
            -- Attacker = self,
            -- Damage = 0,
            -- Tracer = 0,
            -- Distance = 256,
            -- Dir = dir,
            -- Src = self:GetPos(),
            -- Callback = function(att, tr, dmg)
                -- if self.Scorch then
                    -- util.Decal("Scorch", tr.StartPos, tr.HitPos - (tr.HitNormal * 16), self)
                -- end
            -- end
        -- })
    -- end
    -- self.Defused = true

    -- SafeRemoveEntityDelayed(self, self.SmokeTrailTime)
    -- self:SetRenderMode(RENDERMODE_NONE)
    -- self:SetMoveType(MOVETYPE_NONE)
    -- self:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
-- end