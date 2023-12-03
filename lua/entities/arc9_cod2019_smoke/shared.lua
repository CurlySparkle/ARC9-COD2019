ENT.Base = "base_entity"
ENT.Type = "anim"

ENT.SmokeRadius = 256
ENT.LifeTime = 11
ENT.CollisionGroup = COLLISION_GROUP_DEBRIS_TRIGGER

function ENT:TestCollision(startpos, delta, isbox, extents, mask)
    --[[if (bit.band(mask, MASK_SHOT) == MASK_SHOT && SERVER) then
        --workaround for strider
        local tr = util.TraceLine({
            start = self:GetPos(),
            endpos = startpos,
            filter = self,
            mask = MASK_SHOT
        })

        if (IsValid(tr.Entity)) then
            tr.Entity:Fire("SetCannonTarget", "") --strider
            tr.Entity:Fire("SetMinigunTarget", "") --strider
            --can't do shit to helicopter _shrug_
        end
    end]] --causes an infinite loop when shooting more arrows into the smoke

    return bit.band(mask, MASK_BLOCKLOS) == MASK_BLOCKLOS
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