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

if CLIENT then
    killicon.Add( "arc9_cod2019_thrownknife", "VGUI/killicons/cod2019_knife", Color(251, 85, 25, 255))
end

AddCSLuaFile()

function ENT:Initialize()
    if SERVER then
        self:SetModel( self.Model )
        self:SetMoveType( MOVETYPE_VPHYSICS )
        self:SetSolid( SOLID_VPHYSICS )
        self:PhysicsInitSphere( 1 )
        self:DrawShadow( true )
        self.Bounced = false

        local phys = self:GetPhysicsObject()
        if phys:IsValid() then
            phys:Wake()
            phys:SetBuoyancyRatio(0)
			phys:AddAngleVelocity(Vector(0,1500,0))
        end

        self.dt = CurTime() + 15
		
		util.SpriteTrail(self, 0, Color(15, 15, 15), false, 3, 1, 0.25, 2, "trails/tube.vmt")

        timer.Simple(0, function()
            if !IsValid(self) then return end
            self:SetCollisionGroup(COLLISION_GROUP_PROJECTILE)
        end)
    end
end

function ENT:PhysicsCollide(data, physobj)
    if SERVER then
        if data.HitEntity:GetClass() == "worldspawn" then
            self:EmitSound( "weapons/cod2019/throwables/throwing_knife/knife_hitwall1.ogg" )
            if data.HitNormal:Dot(data.OurOldVelocity:GetNormalized()) >= 0.25 then
                self.dt = CurTime() + 15
                self.Collectable = true
                timer.Simple(0, function()
				    if (!IsValid(self)) then return end
                    self:SetAngles(data.OurOldVelocity:Angle() + Angle(90,0,0))
                    self:SetPos(data.HitPos - (data.OurOldVelocity:GetNormalized() * 2))
                    self:SetMoveType(MOVETYPE_NONE)
                    self:SetTrigger(true)
                    self:UseTriggerBounds(true, 24)
                end)
            else
                -- self.Bounced = true 
                physobj:SetVelocity((data.OurOldVelocity:GetNormalized() - data.HitNormal) * data.Speed * 0.5)
                physobj:SetAngleVelocity(data.OurOldAngularVelocity * -(data.OurOldVelocity:GetNormalized() + data.HitNormal))
            end
        else
			self:FireBullets({
				Attacker = self:GetOwner(),
			    Num = 1,
			    Tracer = 0,
			    Damage = 75,
			    Force = 15,
			    Distance = 20000,
			    Src = data.HitPos,
			    Dir = data.OurOldVelocity:GetNormalized(),
			    HullSize = bHull && self.Maxs:Length() * 3 || 2,
			 })
            self:EmitSound( "weapons/cod2019/throwables/throwing_knife/knife_hit1.ogg" )
			self.Collectable = true
        end
   end
end

function ENT:Touch(ply)
    local dist = self:GetOwner():NearestPoint(self:GetPos()):DistToSqr(self:GetPos())
    if !ply:IsPlayer() then return end

    if (dist < 32 * 32) then
    ply:GiveAmmo(1, "arc9_cod2019_nade_knife", false)

    self:EmitSound("shared/iw8_mp_scavenger_pack_pickup.wav", 75)
    timer.Simple(0, function()
	if (!IsValid(self)) then return end
	self:Remove() end) 
    end
end

function ENT:Use(ply)
    if !ply:IsPlayer() then return end
    --ply:Give("grenade", true)
    ply:GiveAmmo(1, "arc9_cod2019_nade_knife", false)

    self:EmitSound("shared/iw8_mp_scavenger_pack_pickup.wav", 75)
    timer.Simple(0, function()
	if (!IsValid(self)) then return end
	self:Remove() end) 
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