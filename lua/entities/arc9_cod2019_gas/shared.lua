ENT.Base = "base_entity"
ENT.Type = "anim"

ENT.GasRadius = 164
ENT.LifeTime = 13

PrecacheParticleSystem("AC_nade_gas_dust")
PrecacheParticleSystem("AC_nade_gas_explode")

sound.Add({
    name = "MW19.GasLoop",
    channel = CHAN_BODY,
    volume = 0.25, 
    level = 75,
    pitch = {95, 105},
    sound = {"^weapons/cod2019/throwables/smoke/smoke_grenade_smoke_loop.wav"}
}) 

sound.Add({
    name = "MW19.GasLoop_Off",
    channel = CHAN_BODY, 
    volume = 0.25, 
    level = 75,
    pitch = {95, 105},
    sound = {"^weapons/cod2019/throwables/smoke/smoke_grenade_smoke_loop_end.ogg"}
}) 

sound.Add({
    name = "MW19.GasExplode",
    channel = CHAN_ITEM,
    volume = 1, 
    level = 100,
    pitch = {95, 105},
    sound = {"^weapons/cod2019/throwables/smoke/smoke_grenade_body_01.ogg"}
}) 