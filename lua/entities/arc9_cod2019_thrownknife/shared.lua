ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "Throwing Knife"
ENT.Author = ""
ENT.Information = ""
ENT.WeaponClass = "arc9_cod2019_nade_knife"
ENT.Spawnable = false
ENT.AdminSpawnable = false

ENT.Model = "models/weapons/cod2019/w_eq_knife_thrown.mdl"
ENT.Collectable = false

if CLIENT then
    killicon.Add( "arc9_cod2019_thrownknife", "VGUI/killicons/cod2019_knife", Color(251, 85, 25, 255))
end

AddCSLuaFile()

function ENT:Initialize()
    if SERVER then
        self:SetModel( self.Model )
        self:SetMoveType( MOVETYPE_VPHYSICS )
        self:SetSolid( SOLID_VPHYSICS )
        self:PhysicsInit( SOLID_VPHYSICS )
        self:DrawShadow( true )

        local phys = self:GetPhysicsObject()
        if phys:IsValid() then
            phys:Wake()
            phys:SetBuoyancyRatio(0)
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
            self:SetMoveType( MOVETYPE_NONE )
            self:SetAngles( data.OurOldVelocity:Angle() + Angle(90, 0, 0) )
            self:SetPos( data.HitPos - (data.HitNormal * 2) )
            self:EmitSound( "weapons/cod2019/throwables/throwing_knife/knife_hitwall1.ogg" )
            self.dt = CurTime() + 15
            self.Collectable = true

            self:SetTrigger(true)
            self:UseTriggerBounds(true, 24)
        else
            self:EmitSound( "weapons/cod2019/throwables/throwing_knife/knife_hit1.ogg" )
            local damage = DamageInfo()
            damage:SetAttacker( self.Owner )
            damage:SetDamage( 50 )
            damage:SetDamageType( DMG_SLASH )
            damage:SetInflictor( self )
            damage:SetReportedPosition( data.HitPos )
            damage:SetDamagePosition( data.HitPos )
            data.HitEntity:TakeDamageInfo( damage )
            self:Remove()
        end
    end
end

-- function ENT:Touch(ply)
    -- if !ply:IsPlayer() then return end

    -- ply:Give("arccw_go_nade_knife", true)
    -- ply:GiveAmmo(1, "arccw_go_nade_knife", false)
    -- self:Remove()
-- end

function ENT:Use(ply)
    if !ply:IsPlayer() then return end
    --ply:Give("grenade", true)
    ply:GiveAmmo(1, "arc9_cod2019_knife", false)

    self:EmitSound("COD2019.Knife.Prepare", 75)
    self:Remove()
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