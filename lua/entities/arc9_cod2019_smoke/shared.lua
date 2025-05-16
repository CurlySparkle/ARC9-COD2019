ENT.Base = "base_entity"
ENT.Type = "anim"

ENT.ARC9Smoke = true

ENT.SmokeRadius = 328
ENT.SmokeRadiusSqr = 328 * 328
ENT.LifeTime = 11
ENT.CollisionGroup = COLLISION_GROUP_NONE --COLLISION_GROUP_DEBRIS_TRIGGER

function ENT:TestCollision( startpos, delta, isbox, extents, mask )
    if (mask == MASK_BLOCKLOS or mask == MASK_BLOCKLOS_AND_NPCS) then
        local len = delta:Length()
        if len <= 128 then return false end -- NPCs can see very close

        local rad = self.SmokeRadiusSqr
        local pos = self:GetPos()
        local dir = delta:GetNormalized()

        -- Trace started within the smoke
        if startpos:DistToSqr(pos) <= rad then
            return {
                HitPos = startpos,
                Fraction = 0,
                Normal = -dir,
            }
        end

        -- Find the closest point on the original trace to the smoke's origin point
        local t = (pos - startpos):Dot(dir)
        local p = startpos + t * dir

        -- If the point is within smoke radius, the trace is intersecting the smoke
        if p:DistToSqr(pos) <= rad then
            return {
                HitPos = p,
                Fraction = math.Clamp(t / len, 0, 0.95),
                Normal = -dir,
            }
        end
    else
        return false
    end
end

game.AddParticles("particles/mw2019_effects.pcf")
PrecacheParticleSystem("smoke_sphere")
PrecacheParticleSystem("smoke_sphere_explosion")

sound.Add({
    name = "MW19_Smoke_Nade.SmokeOn",
    channel = CHAN_BODY,
    volume = 0.25,
    level = 75,
    pitch = {75, 85},
    sound = {"weapons/cod2019/throwables/smoke/smoke_grenade_smoke_loop.ogg"}
})

sound.Add({
    name = "MW19_Smoke_Nade.SmokeOff",
    channel = CHAN_BODY,
    volume = 0.25,
    level = 75,
    pitch = {75, 85},
    sound = {"weapons/cod2019/throwables/smoke/smoke_grenade_smoke_loop_end.ogg"}
})

sound.Add({
    name = "MW19_Smoke_Nade.SmokeExplode",
    channel = CHAN_ITEM,
    volume = 1,
    level = 100,
    pitch = {95, 105},
    sound = {"weapons/cod2019/throwables/smoke/smoke_grenade_body_01.ogg"}
})