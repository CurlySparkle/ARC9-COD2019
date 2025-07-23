AddCSLuaFile()

ENT.Base = "arc9_cod2019_plantable"
ENT.PrintName = "C4"

ENT.Model = "models/weapons/w_eq_cod2019_c4.mdl"
ENT.WeaponClass = "arc9_cod2019_nade_c4"
ENT.MinS = Vector(-2, -2, 0)
ENT.MaxS = Vector(2, 2, 4)

ENT.ArmDelay = 0.4
ENT.Radius = 300
ENT.SpinAngles = Vector(0, 0, 300)

ENT.GroundDecal = true

PrecacheParticleSystem("small_smoke_effect3")

if SERVER then
    util.AddNetworkString("cod2019_doorbust")

    function ENT:OnInitialize()
    end

    function ENT:OnPlant()
        self:EmitSound("Cod2019.C4.Plant")
		ParticleEffect("small_smoke_effect3", self:GetPos(), self:GetAngles(), nil)
    end

    function ENT:Detonate()
        if self.Det or self.SpawnTime + 0.75 > CurTime() then return end
        self.Det = true
        self:EmitSound( "weapons/cod2019/throwables/claymore/wpfoly_claymore_sensors_on.ogg", 75, 100, 1, CHAN_AUTO )
        local mult = self:GetArmed() and 1 or 0.5
        local owner = self.Attacker or self

        local door = self:GetParent()
        self:SetParent(NULL)

        local pos = self:GetPos()
        local ang = self:GetAngles()

        if IsValid(door) and string.find(door:GetClass(), "door") then

            -- move explosion behind door
            local tr = util.TraceLine({
                start = pos,
                endpos = pos + self:GetUp() * -256,
                filter = {self, door}
            })
            pos = pos + self:GetUp() * -128 * tr.Fraction
            debugoverlay.Cross(pos, 8, 3, color_white, true)

            local vel = self:GetUp() * -20000 + VectorRand() * 5000
            for _, otherDoor in pairs(ents.FindInSphere(door:GetPos(), 72)) do
                if door ~= otherDoor and otherDoor:GetClass() == door:GetClass() then
                    self:DoorBust(otherDoor, vel, owner)
                    break
                end
            end
            self:DoorBust(door, vel, owner)
        end

        util.BlastDamage(self, owner, pos, 256 * mult, 300 * mult)
        -- Shrapnel radius
        util.BlastDamage(self, IsValid(self:GetOwner()) and self:GetOwner() or self, pos, 400 * mult, 25)

        local fx = EffectData()
        fx:SetOrigin(pos)
        fx:SetNormal(self:GetForward())

        if self:WaterLevel() > 0 then
            util.Effect("WaterSurfaceExplosion", fx)
        else
            if self:GetArmed() then
                local spos = pos
                local trs = util.TraceLine({start = spos + Vector(0,0,64), endpos = spos + Vector(0,0,-32), filter = self})
            end
        end
        ParticleEffect("explosion_grenade", self:GetPos(), Angle(0, 0, 0), nil)
        util.Decal("Scorch", self:GetPos(), self:GetPos() - Vector(0, 0, 50), self)
        util.ScreenShake(self:GetPos(), 25, 4, 0.75, self.Radius * 4)
        self:EmitSound("Cod2019.C4.Explode")

        self:SetMoveType(MOVETYPE_NONE)
        self:SetNoDraw(true)
        self:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
        SafeRemoveEntityDelayed(self, 0.5)
    end

    -- Copied from TacRP. I wrote it too so no complaining!
    function ENT:DoorBust(ent, vel, attacker)
        if not string.find(ent:GetClass(), "door") then return end
        if IsValid(ent:GetParent()) then return end -- seems to cause a crash
        local cvar = 1
        local t = 120
        if cvar == 0 or ent.cod2019_DoorBusted then return end
        ent.cod2019_DoorBusted = true

        local oldSpeed = ent:GetInternalVariable("m_flSpeed")
        ent:Fire("SetSpeed", tostring(oldSpeed * 10), 0)
        ent:Fire("Open", "", 0)
        ent:Fire("SetSpeed", oldSpeed, 0.3)

        if ent:GetPhysicsObject():IsValid() and cvar == 1 and ent:GetClass() == "prop_door_rotating" then

            -- Don't remove the door, that's a silly thing to do
            ent:SetNoDraw(true)
            ent:SetNotSolid(true)
            ent.original_pos = ent:GetPos()

            -- Make a busted door prop and fling it
            local prop = ents.Create("prop_physics")
            prop:SetModel(ent:GetModel())
            prop:SetPos(ent:GetPos())
            prop:SetAngles(ent:GetAngles())
            prop:SetSkin(ent:GetSkin() or 0)
            prop:Spawn()

            -- Shrink the door collision a little so it will slide through the door frame. Only do it to brush doors or the hl2 one in case some of them have custom collision
            if prop:GetModel() == "models/props_c17/door01_left.mdl" or string.Left(prop:GetModel(), 1) == "*" then
                local mins, maxs = prop:GetCollisionBounds()
                prop:PhysicsInitBox(mins + Vector(2, 2, 2), maxs - Vector(2, 2, 2))
            end

            prop:GetPhysicsObject():SetVelocityInstantaneous(vel)
            prop:SetPhysicsAttacker(attacker, 2)

            -- This is necessary to set the render bounds of func doors
            timer.Simple(0.01, function()
                net.Start("cod2019_doorbust")
                    net.WriteEntity(prop)
                net.Broadcast()
            end)

            -- Make it not collide with players after a bit cause that's annoying
            timer.Create("cod2019_DoorBust_" .. prop:EntIndex(), 1.5, 1, function()
                if IsValid(prop) then
                    prop:SetCollisionGroup(COLLISION_GROUP_WEAPON)
                end
            end)

            -- Reset it after a while
            ent:SetPos(ent.original_pos - Vector(0, 0, 100000))
            SafeRemoveEntityDelayed(prop, t)
            timer.Create("cod2019_DoorBust_" .. ent:EntIndex(), t, 1, function()
                if IsValid(ent) then
                    ent:SetNoDraw(false)
                    ent:SetNotSolid(false)
                    ent.cod2019_DoorBusted = false
                    ent:SetPos(ent.original_pos)
                    ent.original_pos = nil
                end
            end)
        else
            timer.Create("cod2019_DoorBust_" .. ent:EntIndex(), 0.5, 1, function()
                if IsValid(ent) then
                    ent.cod2019_DoorBusted = false
                end
            end)
        end
    end
end

if CLIENT then
    net.Receive("cod2019_doorbust", function()
        local door = net.ReadEntity()
        if IsValid(door) then
            local mins, maxs = door:GetCollisionBounds()
            door:SetRenderBounds(mins, maxs, Vector(4, 4, 4))
        end
    end)
end