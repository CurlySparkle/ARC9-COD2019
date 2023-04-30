ENT.Base 				= "arc9_cod2019_proj_crossbow_default"
ENT.PrintName 			= "Explosive Crossbow Bolt"

DEFINE_BASECLASS(ENT.Base)

ENT.ImpactDamage = 50
ENT.CanPickup = false

ENT.Model = "models/weapons/cod2019/mags/w_eq_crossbow_bolt.mdl"

if CLIENT then
    killicon.Add( "arc9_cod2019_proj_crossbow_he", "hud/killicons/default", Color( 255, 255, 255, 255 ) )
end

if SERVER then
    AddCSLuaFile()

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
            end)

            self:SetTrigger(true)
            self:UseTriggerBounds(true, 16)
        end
        self:EmitSound(("weapons/cod2019/crossbow/imp_Arrow_Concrete_2ch_V3_0" .. math.random(1,4) .. ".ogg"), 75, 100, 1, CHAN_AUTO)
        self.DetonateTime = CurTime() + 0
    end

    function ENT:Think()
        local effectdata = EffectData()
        effectdata:SetOrigin( self:GetPos() )
        if self.Stuck then
            if self.DetonateTime < CurTime() then
                util.BlastDamage(self, self:GetOwner(), self:GetPos(), 128, 150)
                EffectData():SetOrigin(self:GetPos())
                EffectData():SetNormal(self:GetForward())
                if self:WaterLevel() >= 1 then
                    util.Effect( "WaterSurfaceExplosion", effectdata )
                    self:EmitSound("weapons/underwater_explode3.wav", 125, 100, 1, CHAN_AUTO)
                else
				    ParticleEffect("AC_muzzle_desert", self:GetPos(), Angle(0, 0, 0), nil)
                    --util.Effect( "Explosion", effectdata)
                    --self:EmitSound("phx/kaboom.wav", 125, 100, 1, CHAN_AUTO)
					self:EmitSound("COD2019.HE_ExplosiveHit")
                end
                self:Remove()
            end
            if self:GetSolid() == SOLID_VPHYSICS then return
            elseif !self.AttachToWorld and (!IsValid(self:GetParent())) or (IsValid(self:GetParent()) and self:GetParent():GetSolid() != SOLID_VPHYSICS and (self:GetParent():Health() <= 0)) then
                self:SetParent()
                self:PhysicsInit(SOLID_VPHYSICS)
                self:PhysWake()
            end
        end
    end
end