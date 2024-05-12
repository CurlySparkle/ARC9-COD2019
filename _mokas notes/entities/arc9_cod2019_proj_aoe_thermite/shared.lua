ENT.Base = "base_entity"
ENT.Type = "anim"

ENT.FireRadius = 64
ENT.LifeTime = 7

game.AddParticles("particles/sdrk_molotov.pcf")
PrecacheParticleSystem("arrow_thermite")
PrecacheParticleSystem("arrow_thermite_smokeleft")

sound.Add({
    name = "MW19_Crossbow.FireOn",
    channel = CHAN_BODY,
    volume = 0.75, 
    level = 75,
    pitch = {95, 105},
    sound = {"weapons/cod2019/shared/weap_thermite_loop.ogg"}
}) 

sound.Add({
    name = "MW19_Crossbow.FireOff",
    channel = CHAN_BODY, 
    volume = 0.75, 
    level = 75,
    pitch = {95, 105},
    sound = {"weapons/cod2019/shared/weap_thermite_loop_end_01.ogg"}
}) 

sound.Add({
    name = "MW19_Crossbow.FireExplode",
    channel = CHAN_ITEM,
    volume = 1, 
    level = 100,
    pitch = {95, 105},
    sound = {"weapons/cod2019/shared/weap_thermite_impact_01.ogg", "weapons/cod2019/shared/weap_thermite_impact_02.ogg", "weapons/cod2019/shared/weap_thermite_impact_03.ogg"}
}) 