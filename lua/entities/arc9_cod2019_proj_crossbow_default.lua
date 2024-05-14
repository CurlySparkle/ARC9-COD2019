ENT.Type = "anim"
ENT.Base = "base_anim"
ENT.PrintName = "Base Bolt"

ENT.ImpactDamage = 75
ENT.Model = "models/weapons/cod2019/mags/w_eq_crossbow_bolt.mdl"

ENT.CollisionGroup = COLLISION_GROUP_PROJECTILE
ENT.CanPickup = true

if CLIENT then
    killicon.Add( "arc9_cod2019_proj_crossbow_default", "hud/killicons/default", Color( 255, 255, 255, 255 ) )
end

if SERVER then
    AddCSLuaFile()

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

        util.SpriteTrail(self, 0, Color(155, 155, 155), false, 3, 1, 0.1, 2, "trails/smoke.vmt")
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
                --self:SetCollisionGroup(COLLISION_GROUP_PROJECTILE)
                self:PhysWake()
            end
        end
    end

    function ENT:StartTouch(ent)
        if self.Stuck and self.CanPickup and ent:IsPlayer() then
            ent:GiveAmmo(1, "xbowbolt")
			self:EmitSound("shared/iw8_mp_scavenger_pack_pickup.wav", 120, 100, 1, CHAN_AUTO)
            self:Remove()
        end
    end

    function ENT:Use(ply)
        if self.Stuck and self.CanPickup then
            ply:GiveAmmo(1, "xbowbolt")
			self:EmitSound("shared/iw8_mp_scavenger_pack_pickup.wav", 120, 100, 1, CHAN_AUTO)
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
        local hitPos = data.HitPos -- Get the position where the grenade hit
        local hitNormal = data.HitNormal -- Get the normal vector of the surface hit
        local hitEntity = data.HitEntity -- Get the entity that was hit (can be nil if it hit the world)

        if tgt:IsWorld() or (IsValid(tgt) and tgt:GetPhysicsObject():IsValid()) then
            timer.Simple(0, function()
                self:SetAngles(angles)
                self:SetPos(data.HitPos)
                self:GetPhysicsObject():Sleep()

                if tgt:IsWorld() or IsValid(tgt) then
                    self:SetSolid(SOLID_NONE)
                    self:SetMoveType(MOVETYPE_NONE)
                    --self:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
					self:EmitSound(("weapons/cod2019/crossbow/imp_Arrow_Concrete_2ch_V3_0" .. math.random(1,4) .. ".ogg"), 75, 100, 1, CHAN_AUTO)
					self:EmitSound("weapons/cod2019/throwables/throwing_knife/knife_hitwall1.ogg")
					--self:EmitSound("weapons/crossbow/hit1.wav")
					--sound.Play("weapons/cod2019/crossbow/imp_Arrow_Concrete_2ch_V3_01", data.HitPos + data.HitNormal * 5)
					util.Decal("Impact.Concrete", hitPos + hitNormal, hitPos - hitNormal)

                    local f = {self}
                    table.Add(f, tgt:GetChildren())

                    local tr = util.TraceLine({
                        start = data.HitPos - data.OurOldVelocity * 0.5,
                        endpos = data.HitPos + data.OurOldVelocity,
                        filter = f,
                        mask = MASK_SHOT
                    })

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
						self:EmitSound(("weapons/cod2019/crossbow/bullet_flesh_plr_head_0" .. math.random(1,3) .. ".ogg"), 75, 100, 1, CHAN_AUTO)
						self:EmitSound("weapons/cod2019/throwables/throwing_knife/knife_hit1.ogg")
						--self:EmitSound("weapons/crossbow/bolt_skewer1.wav")
						--sound.Play("weapons/cod2019/crossbow/bullet_flesh_plr_head_01", data.HitPos + data.HitNormal * 5)
                    elseif not tgt:IsWorld() then
                        self:SetParent(tgt)
                        self:GetParent():DontDeleteOnRemove(self)
                    else
                        self.AttachToWorld = true
                    end
                end
            end)

            self:SetTrigger(true)
            self:UseTriggerBounds(true, 16)
        end

        self.DetonateTime = CurTime() + 2
		self:Detonate()
    end
end

function ENT:Detonate()
end

function ENT:Draw()
    self:DrawModel()
end