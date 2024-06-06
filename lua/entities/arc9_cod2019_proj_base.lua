AddCSLuaFile()

ENT.Type                     = "anim"
ENT.Base                     = "base_entity"
ENT.RenderGroup              = RENDERGROUP_TRANSLUCENT

ENT.PrintName                = "Base Projectile"
ENT.Category                 = ""

ENT.Spawnable                = false
ENT.Model                    = ""

local smokeimages = {"particle/particle_smokegrenade"}
local function GetSmokeImage()
    return smokeimages[math.random(#smokeimages)]
end

game.AddParticles("particles/rocket_fx.pcf")
PrecacheParticleSystem("Rocket_Smoke")

ENT.Material = false -- custom material
ENT.IsRocket = false -- projectile has a booster and will not drop.
ENT.Sticky = false -- projectile sticks on impact

ENT.InstantFuse = true -- projectile is armed immediately after firing.
ENT.TimeFuse = false -- projectile will arm after this amount of time
ENT.RemoteFuse = false -- allow this projectile to be triggered by remote detonator.
ENT.ImpactFuse = false -- projectile explodes on impact.
ENT.StickyFuse = false -- projectile becomes timed after sticking.
ENT.NoBounce = false -- projectile doesn't bounce.
ENT.BounceWall = false -- projectile doesn't detonate until it hits the ground

ENT.RemoveOnImpact = false
ENT.ExplodeOnImpact = false
ENT.ExplodeOnDamage = false -- projectile explodes when it takes damage.
ENT.ExplodeUnderwater = false -- projectile explodes when it enters water

ENT.Defusable = false -- press E on the projectile to defuse it
ENT.DefuseOnDamage = false

ENT.LightFuse = false

ENT.ImpactDamage = 25
ENT.ImpactDamageSpeed = 1000

ENT.Delay = 5 -- after being triggered and this amount of time has passed, the projectile will explode.

ENT.Armed = false

ENT.RocketParticleTrace = "Rocket_Smoke"  -- name of the particle effect
ENT.RocketTrail = false -- leaves trail of a particle effct
ENT.SmokeTrail = false -- leaves trail of smoke
ENT.SmokeColor = Color(200, 200, 200)
ENT.Flare = true
ENT.FlareColor = nil
ENT.FlareSizeMin = 50
ENT.FlareSizeMax = 100

ENT.AudioLoop = nil
ENT.BounceSounds = nil
ENT.CollisionSphere = nil

ENT.GunshipWorkaround = true

function ENT:SetupDataTables()
    self:NetworkVar("Entity", 0, "Weapon")
end

function ENT:Initialize()
    if SERVER then
        self:SetModel(self.Model)
        self:SetMaterial(self.Material or "")
        if self.CollisionSphere then
            self:PhysicsInitSphere(self.CollisionSphere)
        else
            self:PhysicsInit(SOLID_VPHYSICS)
        end
        self:SetMoveType(MOVETYPE_VPHYSICS)
        self:SetSolid(SOLID_VPHYSICS)

        self:SetCollisionGroup(COLLISION_GROUP_PROJECTILE)
        if self.Defusable then
            self:SetUseType(SIMPLE_USE)
        end

        local phys = self:GetPhysicsObject()
        if !phys:IsValid() then
            self:Remove()
            return
        end

        phys:EnableDrag(false)
        phys:SetDragCoefficient(0)
        phys:SetBuoyancyRatio(0)
        phys:Wake()

        if self.IsRocket then
            phys:EnableGravity(false)
        end
    end

    self.SpawnTime = CurTime()

    self.NPCDamage = IsValid(self:GetOwner()) and self:GetOwner():IsNPC() and !TacRP.ConVars["npc_equality"]:GetBool()

    if self.AudioLoop then
        self.LoopSound = CreateSound(self, self.AudioLoop)
        self.LoopSound:Play()
    end

    if self.InstantFuse then
        self.ArmTime = CurTime()
        self.Armed = true
    end
	
	self.HitSkybox = false
    self:OnInitialize()
end

-- function ENT:OnRemove()
    -- if self.LoopSound then
        -- self.LoopSound:Stop()
    -- end
-- end

function ENT:OnRemove()
	if (self:WaterLevel() <= 0) then

    -- if CLIENT then
		-- local dlight = DynamicLight(self:EntIndex())
		-- if (dlight) then
			-- dlight.pos = self:GetPos()
			-- dlight.r = 255
			-- dlight.g = 75
			-- dlight.b = 0
			-- dlight.brightness = 5
			-- dlight.Decay = 2000
			-- dlight.Size = 1024
			-- dlight.DieTime = CurTime() + 5
		-- end
	  -- end
	end
	
    if self.LoopSound then
        self.LoopSound:Stop()
    end
	
	self:StopParticles()
end

function ENT:OnTakeDamage(dmg)
    if self.Detonated then return end

    -- self:TakePhysicsDamage(dmg)

    if self.ExplodeOnDamage then
        if IsValid(self:GetOwner()) and IsValid(dmg:GetAttacker()) then self:SetOwner(dmg:GetAttacker())
        else self.Attacker = dmg:GetAttacker() or self.Attacker end
        self:PreDetonate()
    elseif self.DefuseOnDamage and dmg:GetDamageType() != DMG_BLAST then
        self:EmitSound("physics/plastic/plastic_box_break" .. math.random(1, 2) .. ".wav", 70, math.Rand(95, 105))
        local fx = EffectData()
        fx:SetOrigin(self:GetPos())
        fx:SetNormal(self:GetAngles():Forward())
        fx:SetAngles(self:GetAngles())
        util.Effect("ManhackSparks", fx)
        self.Detonated = true
        self:Remove()
    end
end

function ENT:PhysicsCollide(data, collider, physobj)
    if IsValid(data.HitEntity) and data.HitEntity:GetClass() == "func_breakable_surf" then
        self:FireBullets({
            Attacker = self:GetOwner(),
            Inflictor = self,
            Damage = 0,
            Distance = 32,
            Tracer = 0,
            Src = self:GetPos(),
            Dir = data.OurOldVelocity:GetNormalized(),
	        })
        local pos, ang, vel = self:GetPos(), self:GetAngles(), data.OurOldVelocity
        self:SetAngles(ang)
        self:SetPos(pos)
        self:GetPhysicsObject():SetVelocityInstantaneous(vel * 0.5)
        return
    end
	
    -- local theirProps = util.GetSurfaceData(data.TheirSurfaceProps)
    -- if (theirProps != nil && theirProps.material == MAT_DEFAULT) then
    -- timer.Simple(0, function() self:Remove() end)
    -- return
    -- end
	
    if self.BounceWall then
        local ang = data.HitNormal:Angle()
        ang.p = math.abs( ang.p )
        ang.y = math.abs( ang.y )
        ang.r = math.abs( ang.r )
	
        if ang.p > 90 or ang.p < 60 then
        --self:EmitSound(Sound("GlassBottle.ImpactHard"))
		self:SetNWBool("HasDetonated",true)

        local impulse = (data.OurOldVelocity - 2 * data.OurOldVelocity:Dot(data.HitNormal) * data.HitNormal)*0.25
        collider:ApplyForceCenter(impulse)
        else
        self:Detonate()
        end
    end
	
    if self.ImpactFuse and !self.Armed then
        self.ArmTime = CurTime()
        self.Armed = true
		
        if self:Impact(data, collider) then
            return
        end

        if self.Delay == 0 or self.ExplodeOnImpact then
            self:PreDetonate()
        end
    elseif self.ImpactDamage > 0 and IsValid(data.HitEntity) and (engine.ActiveGamemode() != "terrortown" or !data.HitEntity:IsPlayer()) then
        local dmg = DamageInfo()
        dmg:SetAttacker(IsValid(self:GetOwner()) and self:GetOwner() or self.Attacker)
        dmg:SetInflictor(self)
        dmg:SetDamage(Lerp((data.OurOldVelocity:Length() - 0.6 * self.ImpactDamageSpeed) / 0.4 * self.ImpactDamageSpeed, self.ImpactDamage / 5, self.ImpactDamage))
        dmg:SetDamageType(DMG_CRUSH + DMG_CLUB)
        dmg:SetDamageForce(data.OurOldVelocity)
        dmg:SetDamagePosition(data.HitPos)
        data.HitEntity:TakeDamageInfo(dmg)
    elseif !self.ImpactFuse then
        self:Impact(data, collider)
    end

    if self.Sticky then
        --self:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
        self:SetPos(data.HitPos)

        self:SetAngles((-data.HitNormal):Angle())

        if data.HitEntity:IsWorld() or data.HitEntity:GetSolid() == SOLID_BSP then
            self:SetMoveType(MOVETYPE_NONE)
            self:SetPos(data.HitPos)
        else
            self:SetPos(data.HitPos)
            self:SetParent(data.HitEntity)
        end

        self:EmitSound("TacRP/weapons/plant_bomb.wav", 65)

        self.Attacker = self:GetOwner()
        self:SetOwner(NULL)

        if self.StickyFuse and !self.Armed then
            self.ArmTime = CurTime()
            self.Armed = true
        end

        self:Stuck()
    end
	
    if self.NoBounce then
       self:SetPos(self:GetPos())
	   self:GetPhysicsObject():SetVelocityInstantaneous(data.OurNewVelocity * 0.1)
    end

    if data.DeltaTime < 0.1 then return end
    if !self.BounceSounds then return end

    local s = table.Random(self.BounceSounds)

    self:EmitSound(s)
end

function ENT:OnThink()
end

function ENT:OnInitialize()
end

function ENT:DoSmokeTrail()
    if CLIENT and self.SmokeTrail then
        local emitter = ParticleEmitter(self:GetPos())

        local smoke = emitter:Add(GetSmokeImage(), self:GetPos())

        smoke:SetStartAlpha(50)
        smoke:SetEndAlpha(0)

        smoke:SetStartSize(10)
        smoke:SetEndSize(math.Rand(50, 75))

        smoke:SetRoll(math.Rand(-180, 180))
        smoke:SetRollDelta(math.Rand(-1, 1))

        smoke:SetPos(self:GetPos())
        smoke:SetVelocity(-self:GetAngles():Forward() * 400 + (VectorRand() * 10))

        smoke:SetColor(self.SmokeColor)
        smoke:SetLighting(true)

        smoke:SetDieTime(math.Rand(0.75, 1.25))

        smoke:SetGravity(Vector(0, 0, 0))

        emitter:Finish()
		
       if self:GetNWBool("HasDetonated") then
          self.SmokeTrail = false
       end
    end
end

function ENT:Think()
    if !IsValid(self) or self:GetNoDraw() then return end

    if !self.SpawnTime then
        self.SpawnTime = CurTime()
    end

    if !self.Armed and isnumber(self.TimeFuse) and self.SpawnTime + self.TimeFuse < CurTime() then
        self.ArmTime = CurTime()
        self.Armed = true
    end

    if self.Armed and self.ArmTime + self.Delay < CurTime() then
        self:PreDetonate()
    end

    if self.ExplodeUnderwater and self:WaterLevel() > 0 then
        self:PreDetonate()
    end

    local gunship = {
	["npc_combinegunship"] = true,
	["npc_helicopter"] = true,
	["npc_combinedropship"] = true
	}

    if SERVER and self.GunshipWorkaround and (self.GunshipCheck or 0 < CurTime()) then
            self.GunshipCheck = CurTime() + 0.33
            local tr = util.TraceLine({
                start = self:GetPos(),
                endpos = self:GetPos() + (self:GetVelocity() * 6 * engine.TickInterval()),
                filter = {self:GetOwner(), self},
                mask = MASK_SHOT_PORTAL,
                collisiongroup = COLLISION_GROUP_PROJECTILE,
            })
        if IsValid(tr.Entity) and gunship[tr.Entity:GetClass()] then
           self:SetPos(tr.HitPos)
           self:Detonate()
        end
		if (tr.HitSky) then
		self:Remove()
		return
		end
    end

    self:DoSmokeTrail()

    self:OnThink()
end

function ENT:Use(ply)
    if !self.Defusable then return end

    self:EmitSound("TacRP/weapons/rifle_jingle-1.wav")

    if self.PickupAmmo then
        ply:GiveAmmo(1, self.PickupAmmo, true)
    end

    self:Remove()
end

function ENT:RemoteDetonate()
    self:EmitSound("TacRP/weapons/c4/relay_switch-1.wav")

    self.ArmTime = CurTime()
    self.Armed = true
end

function ENT:PreDetonate()
    if CLIENT then return end

    if !self.Detonated then
        self.Detonated = true

        if !IsValid(self.Attacker) and !IsValid(self:GetOwner()) then self.Attacker = game.GetWorld() end

        self:Detonate()
		self:SetNWBool("HasDetonated",true)
    if self.Lightfuse then
     if CLIENT then
		local dlight = DynamicLight(self:EntIndex())
		 if (dlight) then
			dlight.pos = self:GetPos()
			dlight.r = 255
			dlight.g = 75
			dlight.b = 0
			dlight.brightness = 5
			dlight.Decay = 2000
			dlight.Size = 1024
			dlight.DieTime = CurTime() + 5
		 end
	  end
    end
  end
end

function ENT:Detonate()
    -- fill this in :)
end

function ENT:Impact()
end

function ENT:Stuck()

end

function ENT:DrawTranslucent()
    self:Draw()
end

local mat = Material("effects/ar2_altfire1b")

function ENT:Draw()
    self:DrawModel()
   if self.RocketTrail then
	  ParticleEffectAttach(self.RocketTrailParticle, PATTACH_ABSORIGIN_FOLLOW, self, 0)
	 if self:GetNWBool("HasDetonated") then
     StopParticles()
     end
   end
   if self.Flare then
    if self.FlareColor then
        render.SetMaterial(mat)
        render.DrawSprite(self:GetPos() + (self:GetAngles():Forward() * -27), math.Rand(self.FlareSizeMin, self.FlareSizeMax), math.Rand(self.FlareSizeMin, self.FlareSizeMax), self.FlareColor)
    end
	 if self:GetNWBool("HasDetonated") then
     self.Flare = false
     end
   end
end

hook.Add("EntityTakeDamage", "cod2019_proj_collision", function(ent, dmginfo)
    if IsValid(dmginfo:GetInflictor())
            and scripted_ents.IsBasedOn(dmginfo:GetInflictor():GetClass(), "arc9_cod2019_proj_base")
            and dmginfo:GetDamageType() == DMG_CRUSH then dmginfo:SetDamage(0) return true end
end)