execute if predicate speedrunner:0.8chance at @a run summon armor_stand ~ ~ ~ {Tags:["SR_Disaster_Meteorite"],Invisible:true,Invulnerable:true,NoGravity:true,attributes:[{id:"scale",base:0}]}
execute at @a run spreadplayers ~ ~ 32 64 false @n[tag=SR_Disaster_Meteorite]
execute at @e[tag=SR_Disaster_Meteorite] run summon fireball ~ ~64 ~ {acceleration_power:0.1,Motion:[0,-0.1,0],Invulnerable:true,ExplosionPower:2}
kill @e[tag=SR_Disaster_Meteorite]

execute if score $Enable SR_Disaster_Meteorite matches 1 run schedule function speedrunner:disaster/meteorite 2s replace