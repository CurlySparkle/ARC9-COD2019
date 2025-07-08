ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "Throwing Knife"
ENT.Author = ""
ENT.Information = ""
ENT.WeaponClass = "arc9_cod2019_nade_knife"
ENT.Spawnable = false
ENT.AdminSpawnable = false
ENT.Model = "models/weapons/cod2019/w_eq_knife_thrown.mdl"
ENT.Collectable = true
ENT.Damage = 45

if CLIENT then
    killicon.Add("arc9_cod2019_thrownknife", "VGUI/killicons/cod2019_knife", Color(251, 85, 25, 255))
end

AddCSLuaFile()

function ENT:Initialize()
    if SERVER then
        self:SetModel(self.Model)
        self:SetMoveType(MOVETYPE_VPHYSICS)
        self:SetSolid(SOLID_VPHYSICS)
        self:PhysicsInitSphere(1)
        self:SetCollisionGroup(COLLISION_GROUP_PROJECTILE)
        self:DrawShadow(true)
        self.Bounced = false
        local phys = self:GetPhysicsObject()

        if phys:IsValid() then
            phys:Wake()
            phys:SetBuoyancyRatio(0)
            phys:SetMass(3)
            phys:SetDragCoefficient(3)
            phys:AddAngleVelocity(Vector(0, 1500, 0))
        end

        self.dt = CurTime() + 15
        util.SpriteTrail(self, 0, Color(15, 15, 15), false, 3, 1, 0.25, 2, "trails/tube.vmt")
    end
end

function ENT:PhysicsCollide(data, physobj)
    if SERVER then
        if data.HitEntity:GetClass() == "worldspawn" then
            self:EmitSound("weapons/cod2019/throwables/throwing_knife/knife_hitwall1.ogg")

            local dir = data.OurOldVelocity:GetNormalized()

            if data.HitNormal:Dot(dir) >= 0.25 then
                self.dt = CurTime() + 15
                self.Collectable = true
                util.Decal("mw19_knifecut", data.HitPos + data.HitNormal, data.HitPos - data.HitNormal)

                timer.Simple(0, function()
                    if not IsValid(self) then return end
                    self:SetAngles(data.OurOldVelocity:Angle() + Angle(90, 0, 0))
                    self:SetPos(data.HitPos - (dir * 2))
                    self:SetMoveType(MOVETYPE_NONE)
                    self:SetTrigger(true)
                    self:UseTriggerBounds(true, 12)

                    if self.Collectable then
                        self:AddEffects(EF_ITEM_BLINK)
                    end
                end)
            else
                -- self.Bounced = true
                physobj:SetVelocity((dir - data.HitNormal) * data.Speed)
                physobj:SetAngleVelocity(data.OurOldAngularVelocity * -(dir + data.HitNormal))
            end
        elseif IsValid(data.HitEntity) then
            local ang = data.OurOldVelocity:Angle()

            self:FireBullets({
                Attacker = self:GetOwner(),
                Damage = self.Damage,
                Force = 15,
                Distance = 8,
                HullSize = 5,
                Tracer = 0,
                Dir = ang:Forward(),
                Src = data.HitPos - ang:Forward(),
                IgnoreEntity = self,
                Callback = function(atk, tr, dmginfo)
                    dmginfo:SetInflictor(IsValid(self.Inflictor) and self.Inflictor or self)
                    dmginfo:SetDamageType(DMG_SNIPER + DMG_SLASH)

                    if tr.HitSky then
                        SafeRemoveEntity(self)
                    else
                        local fx = EffectData()
                        fx:SetOrigin(data.HitPos)
                        fx:SetNormal(-ang:Forward())
                        fx:SetAngles(-ang)
                        util.Effect("ManhackSparks", fx)

                        if SERVER then
                            self:EmitSound("weapons/cod2019/throwables/throwing_knife/knife_hit1.ogg", 80, 110, 1)
                        end
                    end

                    if tr.Entity:IsPlayer() or tr.Entity:IsNPC() or tr.Entity:IsNextBot() or tr.Entity:IsRagdoll() then
                        sound.Play("weapons/cod2019/shared/blt_imp_flesh_plr_04.ogg", tr.HitPos + tr.HitNormal * 5)

                        return
                    end
                end
            })

            self.Collectable = true
            self:SetTrigger(true)
            self:UseTriggerBounds(true, 12)
        end

        local theirProps = util.GetSurfaceData(data.TheirSurfaceProps)

        if theirProps ~= nil and theirProps.material == MAT_DEFAULT then
            SafeRemoveEntityDelayed(self, 0)
            return
        end
    end
end

function ENT:StartTouch(ply)
    if not self.PickedUp and self.Collectable and ply:IsPlayer() and ply:HasWeapon("arc9_cod2019_nade_knife") and ply == self:GetOwner() then
        self.PickedUp = true
        ply:GiveAmmo(1, "arc9_cod2019_knife")
        self:EmitSound("shared/iw8_mp_scavenger_pack_pickup.wav", 120, 100, 1, CHAN_AUTO)
        SafeRemoveEntityDelayed(self, 0)
        self.PickedUp = true
    end
end
function ENT:Use(ply)
    if not self.PickedUp and self.Collectable and ply:HasWeapon("arc9_cod2019_nade_knife") then
        self.PickedUp = true
        ply:GiveAmmo(1, "arc9_cod2019_knife")
        self:EmitSound("shared/iw8_mp_scavenger_pack_pickup.wav", 120, 100, 1, CHAN_AUTO)
        SafeRemoveEntityDelayed(self, 0)
    end
end

function ENT:Think()
    if SERVER then
        if CurTime() >= self.dt then
            self:Remove()
        end
    end
end

function ENT:Draw()
    if CLIENT then
        self:DrawModel()
    end
end