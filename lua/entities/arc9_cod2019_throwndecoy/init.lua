AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include('shared.lua')

if CLIENT then
    killicon.Add("arc9_cod2019_throwndecoy", "vgui/killicons/cod2019_frag", Color(251, 85, 25, 255))
end

function ENT:Initialize()
    self.VJExists = file.Exists("lua/autorun/vj_base_autorun.lua", "GAME") or false

    if self.VJExists then
        for _, x in ipairs(ents.FindInSphere(self:GetPos(), 4000)) do
            if x:IsNPC() and string.find(x:GetClass(), "npc_vj_l4d_com_") and x.Zombie_CanHearPipe == true then
                table.insert(x.VJ_AddCertainEntityAsEnemy, self)
                x:AddEntityRelationship(self, D_HT, 99)
                x.MyEnemy = self
                x:SetEnemy(self)
                table.insert(self.Zombies, x)
            end
        end
    end

    if SERVER then
        self:SetModel("models/weapons/cod2019/w_eq_decoy_thrown.mdl")
        self:SetMoveType(MOVETYPE_VPHYSICS)
        self:SetSolid(SOLID_VPHYSICS)
        self:PhysicsInit(SOLID_VPHYSICS)
        self:SetCollisionGroup(COLLISION_GROUP_NONE)
        self:DrawShadow(false)
    end

    self.particleCreated = false

    timer.Simple(15, function()
        if IsValid(self) then
            self.active = false
            self:Explode()
            self:Remove()
        end
    end)

    self.LastBurstStart = CurTime() + 1
    self.NextSound = CurTime() + 1
    self:Think()
    ParticleEffectAttach("grenadetrail", PATTACH_ABSORIGIN_FOLLOW, self, 0)
end

function ENT:OnThink()
    if self.VJExists then
        if self.HasShot ~= false then
            for _, v in ipairs(self.Zombies) do
                if IsValid(v) then
                    v:SetLastPosition(self:GetPos())
                    v:VJ_TASK_GOTO_LASTPOS()
                end
            end
        end
    else
        return false
    end
end

function ENT:Think()
    if not self.lasttick then
        self.lasttick = CurTime() - 0.1
    end

    if self:GetVelocity():Length() < 5 then
        self.active = true
        sound.EmitHint(SOUND_DANGER + SOUND_BULLET_IMPACT + SOUND_CONTEXT_GUNFIRE, self:GetPos(), 512, 5, self)

        if self.ParticleCreated ~= true then
            local ground = ents.Create("info_particle_system")
            ground:SetKeyValue("effect_name", "weapon_decoy_ground_effect")
            ground:SetOwner(self)
            ground:SetPos(self:GetAttachment(1).Pos)
            ground:SetParent(self)
            ground:Spawn()
            ground:Activate()
            ground:Fire("start", "", 0)
            ground:Fire("kill", "", 15)
            self.ParticleCreated = true
        end

        if self.NextSound < CurTime() and IsValid(self:GetOwner()) then
            local bul = {}
            bul.Attacker = self:GetOwner()
            bul.Inflictor = self
            bul.Damage = 0
            bul.Force = 0.1
            bul.Dir = Vector(0, 0, -1)
            bul.Tracer = 0
            bul.Spread = vector_origin
            bul.Src = self:GetPos()
            self:GetOwner():FireBullets(bul, true)
            local fsound = Sound("COD2019.AK47.Fire")
            local fdistance = Sound("Distant_AR.Outside")
            local flayer = Sound("Layer_AR.Outside")
            local delay = 0.1
            local volume = 140
            local magfactor = 1

            local tr = util.TraceLine({
                start = self:GetPos(),
                endpos = self:GetPos() + Vector(0, 0, 728),
                mask = 16513
            })
            local indoor = not tr.HitSky or tr.Fraction <= 0.5

            if self:GetOwner().GetActiveWeapon and IsValid(self:GetOwner():GetActiveWeapon()) then
                local wep = self:GetOwner():GetActiveWeapon()
                if wep.ShootSound then
                    fsound = indoor and wep.ShootSoundIndoor or wep.ShootSound
                end
                if istable(fsound) then fsound = table.Random(fsound) end
                if wep.LayerSound then
                    flayer = indoor and wep.LayerSoundIndoor or wep.LayerSound
                end
                if istable(flayer) then flayer = table.Random(flayer) end
                if wep.DistantShootSound then
                    fdistance = indoor and wep.DistantShootSoundIndoor or wep.DistantShootSound
                end
                if istable(fdistance) then fdistance = table.Random(fdistance) end
                if wep.ShootVolume then
                    volume = wep.ShootVolume
                end
                if wep.RPM then
                    delay = 60 / wep.RPM
                end
                if wep.ClipSize then
                    magfactor = Lerp(((wep.ClipSize - 10) / 60) ^ 0.5, 1, 0.05)
                end
            end

            if math.random(1, (CurTime() - self.LastBurstStart) * 30 * magfactor) == 1 then
                self.NextSound = CurTime() + delay
            else
                self.NextSound = CurTime() + delay + math.Rand(0.25, 1.5)
                self.LastBurstStart = self.NextSound
            end

            self:EmitSound(fsound, volume, 100, 1, ARC9.CHAN_WEAPON)
            self:EmitSound(fdistance, 140, 100, 1, ARC9.CHAN_DISTANT)
            self:EmitSound(flayer, volume, 100, 1, ARC9.CHAN_LAYER + 4)

            local shot = ents.Create("info_particle_system")
            shot:SetKeyValue("effect_name", "weapon_decoy_ground_effect_shot")
            shot:SetOwner(self)
            shot:SetPos(self:GetAttachment(1).Pos)
            shot:SetParent(self)
            shot:Spawn()
            shot:Activate()
            shot:Fire("start", "", 0)
            shot:Fire("kill", "", 0.001)
            self.HasShot = true
        end
    end

    self:OnThink()
    self.lasttick = CurTime()
    self:NextThink(CurTime())

    return true
end

function ENT:Explode()
    self:EmitSound("COD2019.Frag.Explode")
    util.BlastDamage(self, self:GetOwner(), self:GetPos(), 256, 75)
    util.ScreenShake(self:GetPos(), 25, 4, 0.75, self.Radius * 4)
    local spos = self:GetPos()

    local trs = util.TraceLine({
        start = spos + Vector(0, 0, 64),
        endpos = spos + Vector(0, 0, -32),
        filter = self
    })

    util.Decal("Scorch", self:GetPos(), self:GetPos() - Vector(0, 0, 50), self)
    ParticleEffect("explosion_grenade", self:GetPos(), Angle(0, 0, 0), nil)
end

-- function ENT:OnTakeDamage( dmginfo )
-- end
function ENT:OnTakeDamage(dmg)
    self:SetHealth(self:Health() - dmg:GetDamage())

    if self:Health() > 0 then
    else -- Hello
        self:Remove()
        self:EmitSound("weapons/rpg/shotdown.wav", 80)
        local fx = EffectData()
        fx:SetOrigin(self:GetPos())
        fx:SetNormal(self:GetUp())
        util.Effect("ManhackSparks", fx)
        util.Decal("Dark", self:GetPos(), self:GetPos() - Vector(0, 0, 50), self)
    end

    return dmg:GetDamage()
end

function ENT:Use(activator, caller, type, value)
end

function ENT:GetThrower()
    return self:GetOwner()
end

function ENT:StartTouch(otherent)
    local VJExists = file.Exists("lua/autorun/vj_base_autorun.lua", "GAME")

    if VJExists == true then
        if otherent:IsNPC() and string.find(otherent:GetClass(), "npc_vj_l4d_com_") then return false end
    end

    self:ResolveFlyCollisionCustom(self:GetTouchTrace(), self:GetVelocity())
end

function ENT:Touch(otherent)
    local VJExists = file.Exists("lua/autorun/vj_base_autorun.lua", "GAME")

    if VJExists == true then
        if otherent:IsNPC() and string.find(otherent:GetClass(), "npc_vj_l4d_com_") then
            return false
        else
            if otherent == self:GetThrower() then return end
            --self:BounceSound()
        end
    else
        if otherent == self:GetThrower() then return end
        --self:BounceSound()
    end
end

local function PhysicsClipVelocity(inv, normal, out, overbounce)
    local backoff
    local change = 0
    local angle
    local i
    local STOP_EPSILON = 0.1
    angle = normal.z
    backoff = inv:DotProduct(normal) * overbounce

    for i = 1, 3 do
        change = normal[i] * backoff
        out[i] = inv[i] - change

        if out[i] > -STOP_EPSILON and out[i] < STOP_EPSILON then
            out[i] = 0
        end
    end
end

local function PhysicsCheckSweep(pEntity, vecAbsStart, vecAbsDelta, pTrace)
    local mask = MASK_SOLID --Jvs: fuck, no binding for it pEntity->PhysicsSolidMaskForEntity()
    local vecAbsEnd = vecAbsStart + vecAbsDelta

    -- Set collision type
    --|| pEntity->IsSolidFlagSet( FSOLID_VOLUME_CONTENTS) )
    if not pEntity:IsSolid() then
        if IsValid(pEntity:GetMoveParent()) then
            pTrace.Fraction = 1
            pTrace.FractionLeftSolid = 0

            return
        end
    end
    --[[
    UTIL_TraceEntity( pBaseEntity, vecAbsStart, vecAbsEnd, mask, pTrace )
    ]]
end

function ENT:PhysicsPushEntity(push, pTrace)
    -- NOTE: absorigin and origin must be equal because there is no moveparent
    local prevOrigin = self:GetPos() * 1
    PhysicsCheckSweep(self, prevOrigin, push, pTrace)

    if pTrace.Fraction == 1 then
        self:SetPos(pTrace.HitPos)
        -- FIXME(ywb):  Should we try to enable this here
        -- WakeRestingObjects()
    end
end

local function IsStandable(ent)
    return ent:GetSolid() == SOLID_BSP or ent:GetSolid() == SOLID_VPHYSICS or ent:GetSolid() == SOLID_BBOX
end

function ENT:ResolveFlyCollisionCustom(trace, vecVelocity)
    --Assume all surfaces have the same elasticity
    local flSurfaceElasticity = 1

    --Don't bounce off of players with perfect elasticity
    if IsValid(trace.Entity) and trace.Entity:IsPlayer() then
        flSurfaceElasticity = 0.3
    end

    -- if its breakable glass and we kill it, don't bounce.
    -- give some damage to the glass, and if it breaks, pass
    -- through it.
    local breakthrough = false

    if IsValid(trace.Entity) and trace.Entity:GetClass() == "func_breakable" then
        breakthrough = true
    end

    if IsValid(trace.Entity) and trace.Entity:GetClass() == "func_breakable_surf" then
        breakthrough = true
    end

    --[[
    if breakthrough then
        local info = DamageInfo()
        info:SetAttacker( self )
        info:SetInflictor( self )
        info:SetDamageForce( vecVelocity )
        info:SetDamagePosition( self:GetPos() )
        info:SetDamageType( DMG_CLUB )
        info:SetDamage( 10 )
        trace.Entity:DispatchTraceAttack( info , trace , vecVelocity )

        if trace.Entity:Health() <= 0 then
            -- slow our flight a little bit
            local vel = vecVelocity
            vel = vel * 0.4
            self:SetVelocity( vel )
            return
        end
    end
    ]]
    local flTotalElasticity = self:GetElasticity() * flSurfaceElasticity
    flTotalElasticity = math.Clamp(flTotalElasticity, 0, 0.9)
    -- NOTE: A backoff of 2.0f is a reflection
    local vecAbsVelocity = Vector()
    PhysicsClipVelocity(vecVelocity, trace.Normal, vecAbsVelocity, 2.0)
    vecAbsVelocity = vecAbsVelocity * flTotalElasticity
    -- Get the total velocity (player + conveyors, etc.)
    --VectorAdd( vecAbsVelocity, GetBaseVelocity(), vecVelocity )
    local flSpeedSqr = vecVelocity:DotProduct(vecVelocity)

    -- Stop if on ground.
    -- Floor
    if trace.Normal.z > 0.7 then
        -- Verify that we have an entity.
        local pEntity = trace.Entity
        self:SetVelocity(vecAbsVelocity)

        if flSpeedSqr < (30 * 30) then
            if IsStandable(pEntity) then
                self:SetGroundEntity(pEntity)
            end

            -- Reset velocities.
            self:SetVelocity(vector_origin)
            self:SetLocalAngularVelocity(angle_zero)
            --align to the ground so we're not standing on end
            local angle = trace.Normal:Angle()
            -- rotate randomly in yaw
            angle[1] = math.random(0, 360)
            -- TODO: rotate around trace.plane.normal
            self:SetAngles(angle)
        else
            local vecDelta = vecVelocity - vecAbsVelocity
            local vecBaseDir = vecVelocity
            vecBaseDir:Normalize()
            local flScale = vecDelta:Dot(vecBaseDir)
            local ft = (1.0 - trace.Fraction) * FrameTime()
            vecVelocity = vecAbsVelocity * ft
            vecVelocity = vecVelocity + (vecDelta * flScale) * ft
            self:PhysicsPushEntity(vecVelocity, trace)
        end
    else
        -- If we get *too* slow, we'll stick without ever coming to rest because
        -- we'll get pushed down by gravity faster than we can escape from the wall.
        if flSpeedSqr < (30 * 30) then
            -- Reset velocities.
            self:SetVelocity(vector_origin)
            self:SetLocalAngularVelocity(angle_zero)
        else
            self:SetVelocity(vecAbsVelocity)
        end
    end
    --self:BounceSound()
end