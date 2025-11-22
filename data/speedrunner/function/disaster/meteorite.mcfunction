execute if predicate speedrunner:0.8chance at @a[gamemode=!spectator] run summon marker ~ ~ ~ {Tags:["SR_Disaster_Meteorite"]}
execute at @a[gamemode=!spectator] run spreadplayers ~ ~ 32 64 false @e[tag=SR_Disaster_Meteorite]
execute at @e[tag=SR_Disaster_Meteorite] run summon fireball ~ ~64 ~ {acceleration_power:0.1,Motion:[0,-0.15,0],Invulnerable:true,ExplosionPower:3}
kill @e[tag=SR_Disaster_Meteorite]

execute if score $Enable SR_Disaster_Meteorite matches 1 run schedule function speedrunner:disaster/meteorite 2s replace