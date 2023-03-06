-- Made by Matsilagi

AddCSLuaFile()

ENT.Type = "anim"
ENT.Base = "base_anim"
ENT.Spawnable = false

if CLIENT then
    killicon.Add( "arc9_cod2019_thrownmolotov", "vgui/killicons/cod2019_molotov", Color(251, 85, 25, 255))
end

function ENT:Draw()
	self:DrawModel()
end

function ENT:Initialize()
	if SERVER then
		self:SetModel( "models/weapons/w_eq_cod2019_molotov.mdl" )
		self:SetMoveType( MOVETYPE_VPHYSICS )
		self:SetSolid( SOLID_VPHYSICS )
		self:PhysicsInit( SOLID_VPHYSICS )
		self:SetCollisionGroup( COLLISION_GROUP_NONE )
		self:DrawShadow( false )
	end
	--self:EmitSound( "weapons/csgo/molotov/grenade_throw.wav", 75, 100, 1, CHAN_AUTO )
	--self:EmitSound( "weapons/csgo/molotov/molotov_detonate_1.wav", 75, 100, 1, CHAN_AUTO )
	self.ActiveTimer = CurTime() + 1.5
	self.IgniteEnd = 0
	self.IgniteEndTimer = CurTime()
	self.IgniteStage = 0
	self.IgniteStageTimer = CurTime()
	ParticleEffectAttach("weapon_molotov_thrown",PATTACH_POINT_FOLLOW,self,1)
	self:PhysicsInitSphere( 8 )
end

function ENT:PhysicsCollide( data,phys )
	if SERVER and self.ActiveTimer > CurTime() || data.Speed >= 150 then
		self:EmitSound(Sound("GlassBottle.ImpactHard"))
	end
	local ang = data.HitNormal:Angle()
	ang.p = math.abs( ang.p )
	ang.y = math.abs( ang.y )
	ang.r = math.abs( ang.r )
	
	if ang.p > 90 or ang.p < 60 then
		self:EmitSound(Sound("GlassBottle.ImpactHard"))

		local impulse = (data.OurOldVelocity - 2 * data.OurOldVelocity:Dot(data.HitNormal) * data.HitNormal)*0.25
		phys:ApplyForceCenter(impulse)
	else
		if SERVER then
			local molotovfire = ents.Create( "arc9_cod2019_fire_2" )
			molotovfire:SetPos( self:GetPos() )
			molotovfire:SetOwner( self.Owner )
			molotovfire:Spawn()
			SafeRemoveEntityDelayed(molotovfire, 8)
			
			local molotovfire = ents.Create( "arc9_cod2019_fire_1" )
			local pos = self:GetPos()
			molotovfire:SetPos( self:GetPos() )
			molotovfire:SetOwner( self.Owner )
			molotovfire:SetCreator( self )
			molotovfire:Spawn()
			SafeRemoveEntityDelayed(molotovfire, 8)
			
			self:SetMoveType( MOVETYPE_NONE )
			self:SetSolid( SOLID_NONE )
			self:PhysicsInit( SOLID_NONE )
			self:SetCollisionGroup( COLLISION_GROUP_NONE )
			self:SetRenderMode( RENDERMODE_TRANSALPHA )
			self:SetColor( Color( 255, 255, 255, 0 ) )
			self:DrawShadow( false )
			self:StopParticles()
		end
		self:EmitSound("COD2019.Molotov.Explode")
		self:EmitSound( "weapons/cod2019/throwables/molotov/weap_molotov_burn_lp_01.ogg", 75, 100, 1, CHAN_AUTO )
		self.IgniteEnd = 1
		self.IgniteEndTimer = CurTime() + 7
		self.IgniteStage = 1
		self.IgniteStageTimer = CurTime() + 0.1
	end
	SafeRemoveEntityDelayed(self, 8)
end