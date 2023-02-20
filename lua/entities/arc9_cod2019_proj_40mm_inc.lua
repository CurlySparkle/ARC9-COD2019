AddCSLuaFile()

ENT.Base = "arc9_cod2019_proj_40mm_base"
ENT.PrintName = "Incendiary"

function ENT:DoDetonation( data,phys )
		if SERVER then
			local molotovfire = ents.Create( "arc9_gsr_fire_2" )
			molotovfire:SetPos( self:GetPos() )
			molotovfire:SetOwner( self.Owner )
			molotovfire:Spawn()
			SafeRemoveEntityDelayed(molotovfire, 8)
			
			local molotovfire = ents.Create( "arc9_gsr_fire_1" )
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
		self:EmitSound("CSGO.Incendiary.Explode")
		self.IgniteEnd = 1
		self.IgniteEndTimer = CurTime() + 7
		self.IgniteStage = 1
		self.IgniteStageTimer = CurTime() + 0.1

	SafeRemoveEntityDelayed(self, 8)
end