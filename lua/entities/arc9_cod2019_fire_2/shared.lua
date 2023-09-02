-- Made by Matsilagi

AddCSLuaFile()
ENT.Type = "anim"
ENT.Base = "base_anim"
ENT.Spawnable = false
ENT.AdminSpawnable = false


function ENT:Draw()
	
end

function ENT:Initialize()
	self:SetNWBool("extinguished",false)
	if SERVER then
		self:SetModel( "models/weapons/w_eq_incendiarygrenade_thrown.mdl" )
		self:SetMoveType( MOVETYPE_VPHYSICS )
		self:SetSolid( SOLID_NONE )
		self:SetCollisionGroup( COLLISION_GROUP_DEBRIS )
		self:DrawShadow( false )
	end
	ParticleEffect( "molotov_explosion", self:GetPos(), self:GetAngles() )
	self:EmitSound( "CSGO.Molotov.Loop" )
end

function ENT:Think()
	if self:GetNWBool("extinguished",true) then
		ParticleEffect( "extinguish_fire", self:GetPos(), self:GetAngles() )
		if SERVER then
			self:Remove()
		end
	end
end

function ENT:OnRemove()
	self:EmitSound( "CSGO.Molotov.FadeOut" )
    self:StopSound( "CSGO.Molotov.Loop" )
end