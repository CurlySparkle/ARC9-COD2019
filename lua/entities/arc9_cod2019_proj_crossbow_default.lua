AddCSLuaFile()

ENT.Type = "anim"
ENT.Base = "base_anim"
ENT.PrintName = "Normal Bolt"

ENT.ImpactDamage = 150
ENT.Model = "models/weapons/cod2019/mags/w_eq_crossbow_bolt.mdl"

ENT.CollisionGroup = COLLISION_GROUP_PROJECTILE
ENT.CanPickup = true

if CLIENT then
    killicon.Add( "arc9_cod2019_proj_crossbow_default", "hud/killicons/default", Color( 255, 255, 255, 255 ) )
end

if SERVER then

    function ENT:Initialize()
        self:SetModel(self.Model)
        self:SetNoDraw(false)
        self:SetSolid(SOLID_VPHYSICS)
        self:PhysicsInitBox(Vector(-4, -1, -1), Vector(4, 1, 1))
        self:SetMoveType(MOVETYPE_VPHYSICS)
        self:DrawShadow(false)
        local phys = self:GetPhysicsObject()

        if (phys:IsValid()) then
            phys:Wake()
            phys:EnableGravity(false)
            phys:SetBuoyancyRatio(0)
            phys:SetDragCoefficient(0)
            phys:SetMass(1)
        end

        util.SpriteTrail(self, 0, Color(100, 100, 100), false, 3, 1, 0.25, 2, "trails/tube.vmt")
        SafeRemoveEntityDelayed(self, 60)
    end

    function ENT:Think()
        local effectdata = EffectData()
        effectdata:SetOrigin(self:GetPos())

        if self.Stuck then
            if self:GetSolid() == SOLID_VPHYSICS then
                return
            elseif not self.AttachToWorld and (not IsValid(self:GetParent())) or (IsValid(self:GetParent()) and self:GetParent():GetSolid() ~= SOLID_VPHYSICS and (self:GetParent():Health() <= 0)) then
                self:SetParent()
                self:PhysicsInit(SOLID_VPHYSICS)
                self:SetCollisionGroup(COLLISION_GROUP_PROJECTILE)
                self:PhysWake()
            end
        end
    end

    function ENT:StartTouch(ent)
        if self.Stuck and self.CanPickup and ent:IsPlayer() then
            ent:GiveAmmo(1, "xbowbolt")
            self:Remove()
        end
    end

    function ENT:Use(ply)
        if self.Stuck and self.CanPickup then
            ply:GiveAmmo(1, "xbowbolt")
            self:Remove()
        end
    end

    function ENT:PhysicsCollide(data, physobj)
        if self.Stuck then return end
        self.Stuck = true
        local tgt = data.HitEntity
        local dmginfo = DamageInfo()
        dmginfo:SetDamageType(DMG_NEVERGIB)
        dmginfo:SetDamage(self.ImpactDamage)
        dmginfo:SetAttacker(self:GetOwner())
        dmginfo:SetInflictor(self)
        tgt:TakeDamageInfo(dmginfo)
        local angles = self:GetAngles()

        if tgt:IsWorld() or (IsValid(tgt) and tgt:GetPhysicsObject():IsValid()) then
            timer.Simple(0, function()
                self:SetAngles(angles)
                self:SetPos(data.HitPos)
                self:GetPhysicsObject():Sleep()

                if tgt:IsWorld() or IsValid(tgt) then
                    self:SetSolid(SOLID_NONE)
                    self:SetMoveType(MOVETYPE_NONE)
                    self:SetCollisionGroup(COLLISION_GROUP_DEBRIS)

                    local f = {self}
                    table.Add(f, tgt:GetChildren())

                    local tr = util.TraceLine({
                        start = data.HitPos - data.OurOldVelocity * 0.5,
                        endpos = data.HitPos + data.OurOldVelocity,
                        filter = f,
                        mask = MASK_SHOT
                    })
                    
                    if IsValid(tr.Entity) then
                        local bone = tr.Entity:TranslatePhysBoneToBone(tr.PhysicsBone) or tr.Entity:GetHitBoxBone(tr.HitBox, tr.Entity:GetHitboxSet())
                        local matrix = tgt:GetBoneMatrix(bone or 0)
                        if tr.Entity == tgt and bone and matrix then
                            local pos = matrix:GetTranslation()
                            local ang = matrix:GetAngles()
                            self:FollowBone(tgt, bone)
                            local n_pos, n_ang = WorldToLocal(tr.HitPos, tr.Normal:Angle(), pos, ang)
                            self:SetLocalPos(n_pos)
                            self:SetLocalAngles(n_ang)
                            debugoverlay.Cross(pos, 8, 5, Color(255, 0, 255), true)
                        elseif not tgt:IsWorld() then
                            self:SetParent(tgt)
                            self:GetParent():DontDeleteOnRemove(self)
                        else
                            self.AttachToWorld = true
                        end
                    end
                end
            end)

            self:SetTrigger(true)
            self:UseTriggerBounds(true, 16)
        end
        self:EmitSound(("weapons/cod2019/crossbow/imp_Arrow_Concrete_2ch_V3_0" .. math.random(1,4) .. ".ogg"), 75, 100, 1, CHAN_AUTO)
        self.DetonateTime = CurTime() + 2
		
        -- if not self.Hit then
            -- self.Hit = true
            -- SafeRemoveEntityDelayed(self, 15)
        -- end
		
    end
end

function ENT:Draw()
    self:DrawModel()
end