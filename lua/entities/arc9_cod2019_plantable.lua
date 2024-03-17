AddCSLuaFile()

ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "Claymore"
ENT.Spawnable = false
ENT.AdminSpawnable = false
ENT.RenderGroup = RENDERGROUP_BOTH

ENT.WeaponClass = ""
ENT.Model = "models/weapons/w_eq_claymore_dropped.mdl"
ENT.LockYaw = false
ENT.AdjustPitch = false
ENT.AdjustOffset = false
ENT.GroundDecal = false
ENT.MinS = Vector(-2, -5, 0)
ENT.MaxS = Vector(2, 5, 8)
ENT.Bury = 0
ENT.SpinAngles = Vector(0, 0, 0)

ENT.BurySurfaces = {
    [MAT_DIRT] = true,
    [MAT_SAND] = true,
    [MAT_GRASS] = true,
    [MAT_FLESH] = true,
    [MAT_BLOODYFLESH] = true,
    [MAT_SNOW] = true,
    [MAT_SLOSH] = true,
}

function ENT:SetupDataTables()
    self:NetworkVar("Float", 0, "ArmTime")
    self:NetworkVar("Angle", 0, "Adjustment")
end

function ENT:OnInitialize()
end

function ENT:Initialize()
    if SERVER then
        self:SetModel(self.Model)
        self:PhysicsInitBox(self.MinS, self.MaxS)
        self:DrawShadow(true)
        self:SetArmTime(-1)

        local phys = self:GetPhysicsObject()

        if phys:IsValid() then
            phys:Wake()
            phys:SetMass(5)
            phys:SetBuoyancyRatio(0)
			phys:AddAngleVelocity(self.SpinAngles)
        end

        self:SetHealth(10)
        self:SetMaxHealth(10)

        self.SpawnAngle = self:GetAngles().y

        self.Attacker = self:GetOwner()
    end
    self.SpawnTime = CurTime()

    self:OnInitialize()
end

function ENT:GetArmed()
    return self:GetArmTime() > 0 and CurTime() > self:GetArmTime() + self.ArmDelay
end

if SERVER then
    function ENT:OnPlant()
    end

    function ENT:Plant(ent, pos, normal, v)
        if self:GetArmTime() > 0 then return end
        if IsValid(ent) and (ent:IsPlayer() or ent:IsNPC() or ent:IsNextBot()) then return end

        -- The AdjustOffset nudge works poorly when the entity is not already aligned with the surface
        local adjustoffset = self.AdjustOffset and self:GetUp():Dot(normal) > 0.5

        -- Use the normal to place our center on the surface if possible
        if v and not adjustoffset then
            local wsc = self:WorldSpaceCenter()
            local tr = util.TraceLine({
                start = wsc,
                endpos = wsc - normal * 24,
                filter = {self, self:GetOwner()},
                mask = MASK_SOLID,
                collisiongroup = self:GetCollisionGroup(),
            })
            debugoverlay.Line(tr.StartPos, tr.HitPos, 5, Color(255, 0, 0), true)
            debugoverlay.Cross(tr.HitPos, 4, 5, Color(255, 0, 0), true)
            debugoverlay.Cross(pos, 4, 5, Color(255, 0, 255), true)
            debugoverlay.Line(tr.HitPos, tr.HitPos + tr.HitNormal * 8, 5, Color(255, 0, 255), true)
            -- If we find a spot for the center, treat that as the location; otherwise don't adjust (it will visually snap but at least the pos/ang will be correct)
            if tr.Hit then
                pos = tr.HitPos
                normal = tr.HitNormal
                ent = tr.Entity
            end
        end

        self:SetOwner(NULL)
        self:SetCollisionGroup(COLLISION_GROUP_DEBRIS)

        local a = Angle(0, self.LockYaw and self.SpawnAngle or self:GetAngles().y, 0)
        local f = a:Forward()

        local na = normal:Angle()
        na:RotateAroundAxis(na:Right(), -90)

        local angle = Angle(na)
        local dir = angle:Forward()
        dir.z = 0
        dir:Normalize()

        local turn = angle:Forward():Cross(dir):GetNormalized()
        local theta = math.deg(math.acos(angle:Forward():Dot(dir)))

        angle:RotateAroundAxis(turn, theta)
        angle:RotateAroundAxis(dir:Cross(f):GetNormalized(), math.deg(math.acos(dir:Dot(f))))
        angle:RotateAroundAxis(turn, -theta)

        if self.AdjustPitch then
            self:SetAdjustment(Angle(-math.Clamp(theta * 0.5, 3, 15), 0, 0))
        end

        if adjustoffset then
            local offset = self:WorldToLocal(pos)
            pos = pos + angle:Forward() * -offset.x + angle:Right() * offset.y
        end

        if self.Bury > 0 then
            local tr_mat = util.TraceLine({
                start = pos + normal,
                endpos = pos - normal,
                filter = {self},
            })
            if self.BurySurfaces[tr_mat.MatType] and normal:Dot(Vector(0, 0, 1)) >= 0.5 then
                pos = pos - normal * self.Bury
                self:DrawShadow(false)
            end
        end

        if ent:IsWorld() or (IsValid(ent) and ent:GetSolid() == SOLID_BSP) then
            self:SetMoveType(MOVETYPE_NONE)
            self:SetPos(pos)
        else
            self:SetPos(pos)
            self:SetParent(ent)
        end

        self:SetAngles(angle)
        self:SetArmTime(CurTime())

        self:OnPlant()
    end

    function ENT:PhysicsCollide(data, physobj)
      local hitPos = data.HitPos -- Get the position where the grenade hit
      local hitNormal = data.HitNormal -- Get the normal vector of the surface hit
      local hitEntity = data.HitEntity -- Get the entity that was hit (can be nil if it hit the world)
		
        self:Plant(data.HitEntity, data.HitPos, -data.HitNormal, data.OurOldVelocity:GetNormalized())
	  if self.GroundDecal then
		util.Decal("Dark", hitPos + hitNormal, hitPos - hitNormal)
	  end
    end

    function ENT:Detonate()
        self:Remove()
    end

    function ENT:OnTakeDamage(dmg)
        self:SetHealth(self:Health() - dmg:GetDamage())
        if not self.BOOM and self:Health() <= 0 then
            self.BOOM = true
            self:Detonate()
        end
        return dmg:GetDamage()
    end

    function ENT:Use(act, call, calltype, integer)
        if not self.BOOM and self.WeaponClass and IsValid(act) and act:IsPlayer() then
            act:GiveAmmo(1, weapons.GetStored(self.WeaponClass).Ammo, true)
            act:Give(self.WeaponClass, true)

            --self:EmitSound("CSGO.Breacher.BreachUse", 75)
			self:EmitSound("shared/iw8_mp_scavenger_pack_pickup.wav", 120, 100, 1, CHAN_AUTO)
            self:Remove()
        end
    end
else
    function ENT:DrawTranslucent()
        self:Draw()
    end

    function ENT:Draw()
        self:DrawModel()
    end
end