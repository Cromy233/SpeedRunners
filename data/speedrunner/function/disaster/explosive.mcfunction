execute at @e[type=#minecraft:arrows,nbt={inGround:true}] run summon tnt ~ ~ ~ {fuse:0,explosion_power:2}
kill @e[type=#minecraft:arrows,nbt={inGround:true}]

execute if score $Enable SR_Disaster_Explosive matches 1 run schedule function speedrunner:disaster/explosive 2t replace