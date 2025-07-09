AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

ENT.NextTick = 0

function ENT:Initialize()
    if SERVER then
        self:SetModel("models/weapons/cod2019/w_eq_drill_charge.mdl")
        self:SetMoveType(MOVETYPE_VPHYSICS)
        self:SetSolid(SOLID_VPHYSICS)
        self:PhysicsInit(SOLID_VPHYSICS)
        self:SetAngles(self:GetAngles() - Angle(90, 0, 0))
        ParticleEffectAttach("grenadetrail", PATTACH_ABSORIGIN_FOLLOW, self, 0)
        sound.EmitHint(SOUND_DANGER, self:GetPos(), 128 * 2, 1, nil)
        local phys = self:GetPhysicsObject()

        if IsValid(phys) then
            phys:Wake()
        end

        self.Armed = false
    end
end

function ENT:PhysicsCollide(colData, phys)
    self.GrenadeDir = colData.OurOldVelocity:GetNormalized()
    self.GrenadePos = colData.HitPos
    self.GrenadeNormal = colData.HitNormal
    local hitEntity = colData.HitEntity
    local attacker = self.Attacker or self:GetOwner()
    local ang = colData.OurOldVelocity:Angle()

    if not self.Armed then
        self.Armed = true

        timer.Simple(0, function()
            if not IsValid(self) then return end
            self:SetSolid(SOLID_NONE)
            self:SetMoveType(MOVETYPE_NONE)
            self:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
            self:SetPos(colData.HitPos)

            if IsValid(hitEntity) then
                self:SetParent(hitEntity)
                self.StuckEntity = true
            else
                local newAngle = colData.HitNormal:Angle()
                newAngle:RotateAroundAxis(newAngle:Right(), 90)
                self:SetAngles(newAngle)
            end

            self:FireBullets({
                Src = self:GetPos(),
                Dir = colData.HitNormal,
                Damage = 25,
                Attacker = attacker,
                Inflictor = self,
                Num = 1,
                Tracer = 0,
                HullSize = 4,
                Force = 0,
                Callback = function(a, btr, dmg)
                    dmg:SetDamageType(DMG_CLUB)
                end,
                Distance = 16,
            })

            sound.Play("^weapons/cod2019/throwables/drill_charge/eqp_bunkerbuster_drill_succeed.ogg", self:GetPos())
            sound.Play("weapons/cod2019/throwables/drill_charge/eqp_bunkerbuster_thermal_lance_start_01.ogg", self:GetPos())
            sound.Play("weapons/cod2019/shared/bullet_small_crossbow_bolt_swt_01.ogg", self:GetPos())
        end)

        ParticleEffect("small_smoke_effect3", self:GetPos(), self:GetAngles())
        ParticleEffectAttach("drillcharge_smoke", PATTACH_ABSORIGIN_FOLLOW, self, 0)

        timer.Simple(1.8, function()
            if IsValid(self) then
                self:EmitSound("^weapons/cod2019/throwables/drill_charge/eqp_bunkerbuster_round_inject.ogg")
                local tr = util.TraceLine({
                    start = self:GetPos() + colData.HitNormal * 2, --start inside
                    endpos = self:GetPos() + colData.HitNormal * 128, --go forward until we hit something
                    filter = {self},
                })
                if tr.Hit then
                    --ok now shoot backwards to find our exit point
                    tr = util.TraceLine({
                        start = tr.HitPos, --start where we hit
                        endpos = tr.StartPos, --go back to start
                        filter = {self},
                    })
                    util.Decal("FadingScorch", tr.StartPos, tr.HitPos - tr.HitNormal * 16)
                    ParticleEffect("muzzleflash_ar", tr.HitPos, tr.HitNormal:Angle())
                    ParticleEffect("small_smoke_effect3", tr.HitPos, -tr.HitNormal:Angle())
                    debugoverlay.Cross(tr.HitPos, 5, 5, Color(255, 0, 0), true)
                end
            end
        end)

        timer.Simple(1.9, function()
            if IsValid(self) then
                self:Detonate(colData)
            end
        end)
    end
end

function ENT:Think()
    if self.StuckEntity and (not IsValid(self:GetParent()) or ((self:GetParent():IsPlayer() or self:GetParent():IsNPC() or self:GetParent():IsNextBot()) and self:GetParent():Health() <= 0)) then
        self:Remove()
        return
    end

    if self.Armed and IsValid(self:GetParent()) and self.NextTick <= CurTime() then
        self.NextTick = CurTime() + 0.1
        self:FireBullets({
            Src = self:GetPos(),
            Dir = self.GrenadeNormal,
            Damage = 5,
            Attacker = IsValid(self:GetOwner()) and self:GetOwner() or self,
            Inflictor = self,
            Num = 1,
            Tracer = 0,
            HullSize = 4,
            Force = 0,
            Callback = function(a, btr, dmg)
                dmg:SetDamageType(DMG_CLUB)
            end,
            Distance = 16,
        })
    end
end

-- Ty 8z for this :)
function ENT:Detonate(colData)
    local dir = colData.OurOldVelocity
    local attacker = IsValid(self:GetOwner()) and self:GetOwner() or self

    --effects on our side
    self:EmitSound("physics/concrete/concrete_break2.wav", 100, 110)
    local effectdata = EffectData()
    effectdata:SetOrigin(self:GetPos())
    effectdata:SetMagnitude(2)
    effectdata:SetScale(1)
    effectdata:SetRadius(2)
    effectdata:SetNormal(colData.HitNormal)
    util.Effect("Sparks", effectdata)
    ParticleEffect("Generic_explo_tiny", self:GetPos(), colData.HitNormal:Angle() * -1, nil)

    if self:WaterLevel() >= 1 then
        util.Effect("WaterSurfaceExplosion", effectdata)
        self:EmitSound("weapons/underwater_explode3.wav", 125, 100, 1, CHAN_AUTO)
    end



    --effects on their side
    local tr = util.TraceLine({
        start = self:GetPos() + colData.HitNormal * 2, --start inside
        endpos = self:GetPos() + colData.HitNormal * 128, --go forward until we hit something
        filter = {self},
    })

    if IsValid(self:GetParent())  then
        local dmginfo = DamageInfo()
        dmginfo:SetAttacker(attacker)
        dmginfo:SetInflictor(self)
        dmginfo:SetDamageType(DMG_BLAST + DMG_SNIPER)
        dmginfo:SetDamage(300)
        dmginfo:SetDamageForce(colData.HitNormal * 50000)
        dmginfo:SetDamagePosition(self:GetPos())
        colData.HitEntity:DispatchTraceAttack(dmginfo, tr, colData.HitNormal)
    end

    debugoverlay.Line(self:GetPos(), self:GetPos() + colData.HitNormal * 128, 5, Color(0, 255, 0, 255), true)

    if tr.Hit then
        --ok now shoot backwards to find our exit point
        tr = util.TraceLine({
            start = tr.HitPos, --start where we hit
            endpos = tr.StartPos, --go back to start
            filter = {self},
        })

        sound.Play("^weapons/cod2019/throwables/drill_charge/eqp_bunkerbuster_explo_big_body.ogg", tr.HitPos + colData.HitNormal * 3)
        sound.Play("^weapons/cod2019/shared/rocket_expl_body_01.ogg", tr.HitPos + colData.HitNormal * 3)
        util.ScreenShake(tr.HitPos + colData.HitNormal * 48, 25, 4, .75, 128 * 4)
        util.BlastDamage(self, attacker, tr.HitPos + colData.HitNormal * 48, 256, 200)
        local a = tr.HitNormal:Angle()
        a:RotateAroundAxis(self:GetRight(), -90)
        ParticleEffect("Generic_explo_mid", tr.HitPos + colData.HitNormal * 48, a)
        debugoverlay.Sphere(tr.HitPos + colData.HitNormal * 48, 256, 3, Color(255, 255, 255, 0), true)
    end

    self.Armed = false
    self:Remove()
end

function ENT:PhysicsUpdate(phys)
    if not self.Armed and self:WaterLevel() <= 2 then
        local v = phys:GetVelocity()
        local a = v:Angle()
        a:RotateAroundAxis(a:Right(), 90)
        self:SetAngles(a)
        phys:SetVelocityInstantaneous(v)
    end
end