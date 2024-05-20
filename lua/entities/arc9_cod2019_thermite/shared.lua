if CLIENT then
    killicon.Add( "arc9_cod2019_thermite", "vgui/killicons/cod2019_fire.png", Color(251, 85, 25, 255))
end

ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "Fire Particle"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false
ENT.DrawModelExt = false

game.AddParticles("particles/sdrk_molotov.pcf")
PrecacheParticleSystem("arrow_thermite")
PrecacheParticleSystem("arrow_thermite_smokeleft")

ENT.ModelEnt = "models/weapons/cod2019/w_eq_thermite_thrown2.mdl"
ENT.FireTime = 7
ENT.Armed = false
ENT.NextDamageTick = 0
ENT.Ticks = 0
ENT.FireLength = 1
ENT.FireRadius = 10

AddCSLuaFile()

function ENT:Initialize() 
    self.SpawnTime = CurTime()
	
    if not self:GetNWBool("Children",false) then
        self:SetNWBool("Children",true)
    end
  
    if SERVER then
        self:SetModel( self.ModelEnt )
        self:SetMoveType( MOVETYPE_VPHYSICS )
        self:SetSolid( SOLID_VPHYSICS )
        local maxs = Vector(1, 1, 1)
        local mins = -maxs
        self:PhysicsInitBox(mins, maxs)
        self:DrawShadow( false )
		self:SetAngles(self:GetAngles())

        local phys = self:GetPhysicsObject()
        if phys:IsValid() then
            phys:Wake()
            phys:SetBuoyancyRatio(0)
			phys:EnableMotion(true)
        end

        self:Detonate()

        -- self.FireTime = self.FireTime * math.Rand(0.8, 1.2)
        -- self:SetNWFloat("FireTime", CurTime() + self.FireTime)

        self:SetCollisionGroup(COLLISION_GROUP_PROJECTILE)
        ParticleEffectAttach("arrow_thermite", PATTACH_ABSORIGIN_FOLLOW, self, 0)
    end
end

function ENT:PhysicsCollide(data, physobj)
    if SERVER then
        if data.HitEntity:GetClass() == "worldspawn" then
            self:SetAngles( data.OurOldVelocity:Angle() + Angle(0, 0, 0) )
            self:SetPos( data.HitPos - (data.HitNormal * 2) )
            self.dt = CurTime() + 15
            --self:UseTriggerBounds(true, 24)
        end
   end
end

function ENT:Think()
    if CLIENT then
        local d = Lerp((self.SpawnTime + self.FireTime - CurTime()) / 8, 1, 0.000001) ^ 2

        if !self.Light then
            self.Light = DynamicLight(self:EntIndex())
            if (self.Light) then
                self.Light.Pos = self:GetPos()
                self.Light.r = 255
                self.Light.g = 75
                self.Light.b = 0
                self.Light.Brightness = 5
                self.Light.Size = math.random(50, 64)
                self.Light.DieTime = CurTime() + self.FireTime
            end
        else
            self.Light.Pos = self:GetPos()
        end

        local emitter = ParticleEmitter(self:GetPos())

        if !self:IsValid() or self:WaterLevel() > 2 then return end
        if !IsValid(emitter) then return end
		
        if self.Ticks % math.ceil(1 + d * 6)  == 0 then
            local fire = emitter:Add("effects/spark", self:GetPos() + Vector(math.Rand(-32, 32), math.Rand(-32, 32), 0))
            fire:SetVelocity( VectorRand() * 512 )
            fire:SetGravity( Vector(math.Rand(-5, 5), math.Rand(-5, 5), -2000) )
            fire:SetDieTime( math.Rand(0.5, 1) )
            fire:SetStartAlpha( 55 )
            fire:SetEndAlpha( 0 )
            fire:SetStartSize( 2 )
            fire:SetEndSize( 0 )
            fire:SetRoll( math.Rand(-180, 180) )
            fire:SetRollDelta( math.Rand(-0.2,0.2) )
            fire:SetColor( 255, 75, 0 )
            fire:SetAirResistance( 50 )
            fire:SetPos( self:GetPos() )
            fire:SetLighting( false )
            fire:SetCollide(true)
            fire:SetBounce(0.2)
            fire.Ticks = 0
        end

        self.NextFlareTime = self.NextFlareTime or CurTime()

        if self.NextFlareTime <= CurTime() then
            self.NextFlareTime = CurTime() + math.Rand(0.1, 0.5)
            local fire = emitter:Add("sprites/orangeflare1", self:GetPos())
            fire:SetVelocity( VectorRand() * 256 )
            fire:SetGravity( Vector(math.Rand(-5, 5), math.Rand(-5, 5), -2000) )
            fire:SetDieTime( math.Rand(1, 2) )
            fire:SetStartAlpha( 55 )
            fire:SetEndAlpha( 0 )
            fire:SetStartSize( 5 )
            fire:SetEndSize( 0 )
            fire:SetRoll( math.Rand(-180, 180) )
            fire:SetRollDelta( math.Rand(-0.2,0.2) )
            fire:SetColor( 255, 255, 255 )
            fire:SetAirResistance( 50 )
            fire:SetPos( self:GetPos() )
            fire:SetLighting( false )
            fire:SetCollide(true)
            fire:SetBounce(0.5)
            fire.Ticks = 0
            fire:SetNextThink( CurTime() + FrameTime() )
            fire:SetThinkFunction( function(pa)
                if !pa then return end

                local aemitter = ParticleEmitter(pa:GetPos())

                local d = pa:GetLifeTime() / pa:GetDieTime()

                if !IsValid(aemitter) then return end

                if pa.Ticks % 5 == 0 then
                    local afire = aemitter:Add("particles/smokey", pa:GetPos())
                    afire:SetVelocity( VectorRand() * 5 )
                    afire:SetGravity( Vector(0, 0, 1500) )
                    afire:SetDieTime( math.Rand(0.25, 0.5) * d )
                    afire:SetStartAlpha( 55 )
                    afire:SetEndAlpha( 0 )
                    afire:SetStartSize( 5 * d )
                    afire:SetEndSize( 15 )
                    afire:SetRoll( math.Rand(-180, 180) )
                    afire:SetRollDelta( math.Rand(-0.2,0.2) )
                    afire:SetColor( 255, 255, 255 )
                    afire:SetAirResistance( 150 )
                    afire:SetPos( pa:GetPos() )
                    afire:SetLighting( false )
                    afire:SetCollide(true)
                    afire:SetBounce(0.9)
                    afire:SetNextThink( CurTime() + FrameTime() )
                    afire:SetThinkFunction( function(apa)
                        if !apa then return end
                        local col1 = Color(255, 135, 0)
                        local col2 = Color(255, 255, 255)

                        local col3 = col1
                        local d2 = apa:GetLifeTime() / apa:GetDieTime()
                        col3.r = Lerp(d2, col1.r, col2.r)
                        col3.g = Lerp(d2, col1.g, col2.g)
                        col3.b = Lerp(d2, col1.b, col2.b)

                        apa:SetColor(col3.r, col3.g, col3.b)
                        apa:SetNextThink( CurTime() + FrameTime() )
                    end )
                end

                aemitter:Finish()

                pa.Ticks = pa.Ticks + 1

                pa:SetNextThink( CurTime() + FrameTime() )
            end )
        end

        emitter:Finish()

        self.Ticks = self.Ticks + 1
    else

        if !self:GetOwner():IsValid() then self:Remove() return end

        if self:GetVelocity():LengthSqr() <= 32 then
            self:SetMoveType( MOVETYPE_NONE )
        end

        if self.NextDamageTick > CurTime() then return end

        if self:WaterLevel() > 2 then self:Remove() return end

        local dmg = DamageInfo()
        dmg:SetDamageType(DMG_BURN)
        dmg:SetDamage(Lerp((self.SpawnTime + self.FireTime - CurTime()) / self.FireTime, 35, 25))
        dmg:SetInflictor(self)
        dmg:SetAttacker(self:GetOwner())
        util.BlastDamageInfo(dmg, self:GetPos(), 84)

        self.NextDamageTick = CurTime() + 0.05
		
        for k, v in pairs(ents.FindInSphere(self:GetPos(), 84)) do 
            if v.ClassName != self.ClassName && !v:IsWorld() && v != self.NoIgnite then
            v:Ignite(self.FireLength, self.FireRadius) 
            --v:TakeDamage(5, self.Owner, self)
            end
        end

        if self.SpawnTime + self.FireTime <= CurTime() then self:Remove() return end
    end
end

function ENT:OnRemove()
    if self.Light then
        self.Light.dietime = CurTime() + 0.5
        self.Light.decay = 2000
    end
    if !self.FireSound then return end
    self.FireSound:Stop()
	self:EmitSound("weapons/cod2019/shared/weap_thermite_loop_end_01.ogg", 100)
	ParticleEffectAttach("arrow_thermite_smokeleft", PATTACH_ABSORIGIN_FOLLOW, self, 0)
end

function ENT:Detonate()
    if !self:IsValid() then return end

    self.Armed = true

    if self.Order and self.Order != 1 then return end

    --util.Decal("Scorch", self:GetPos(), self:GetPos() - Vector(0, 0, 50), self)
    -- self.FireSound = CreateSound(self, "tacrp_extras/grenades/fire_loop_1.wav")
    self.FireSound = CreateSound(self, "weapons/cod2019/shared/weap_thermite_loop.ogg")
    self.FireSound:Play()
    self.FireSound:ChangePitch(120)

    self.FireSound:ChangePitch(100, self.FireTime)
	
    -- self:FireBullets({
        -- Attacker = attacker,
        -- Damage = 200,
        -- Force = 5,
        -- Tracer = 0,
        -- Distance = 20000,
        -- Dir = self:GetVelocity(),
        -- Src = self:GetPos(),
        -- Callback = function(att, tr, dmg)
            -- util.Decal("Scorch", tr.StartPos, tr.HitPos - (tr.HitNormal * 16), self)
        -- end
    -- })

    timer.Simple(self.FireTime - 1, function()
        if !IsValid(self) then return end

        self.FireSound:ChangeVolume(0, 1)
    end)

    timer.Simple(self.FireTime, function()
        if !IsValid(self) then return end

        self:Remove()
    end)
end

function ENT:Draw()
    if self.DrawModelExt then
    self:DrawModel()
	end
end

local directfiredamage = {
    ["npc_zombie"] = true,
    ["npc_zombie_torso"] = true,
    ["npc_fastzombie"] = true,
    ["npc_fastzombie_torso"] = true,
    ["npc_poisonzombie"] = true,
    ["npc_zombine"] = true,
    ["npc_headcrab"] = true,
    ["npc_headcrab_fast"] = true,
    ["npc_headcrab_black"] = true,
    ["npc_headcrab_poison"] = true,
}

hook.Add("EntityTakeDamage", "arc9_cod2019_thermite", function(ent, dmginfo)
    if IsValid(dmginfo:GetInflictor()) and dmginfo:GetInflictor():GetClass() == "arc9_cod2019_thermite" and dmginfo:GetDamageType() == DMG_BURN then
        if ent:IsNPC() then
            if directfiredamage[ent:GetClass()] then
                dmginfo:SetDamageType(DMG_SLOWBURN) -- DMG_BURN does not hurt HL2 zombies and instead turns them black.
            end
        elseif !ent:IsNextBot() and !ent:IsPlayer() then
            if ent:GetClass() == "prop_physics" then
                dmginfo:SetDamageType(DMG_DIRECT) -- some props like to burn slowly against DMG_BURN or DMG_SLOWBURN. don't.
            end
            dmginfo:ScaleDamage(2) -- tremendous damage to props
        end
        dmginfo:SetDamageForce(Vector()) -- fire does not push things around. still applies to players, but that can't be helped.
    end
end)

hook.Add("PostEntityTakeDamage", "arc9_cod2019_thermite", function(ent, dmginfo, took)
    if took and IsValid(dmginfo:GetInflictor()) and dmginfo:GetInflictor():GetClass() == "arc9_cod2019_thermite" and !ent:IsPlayer() then
        ent:Ignite(math.Rand(3, 5))
    end
end)