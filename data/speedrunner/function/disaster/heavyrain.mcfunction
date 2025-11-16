execute if predicate speedrunner:0.8chance at @a run summon armor_stand ~ ~ ~ {Tags:["SR_Disaster_Heavyrain"],Invisible:true,Invulnerable:true,NoGravity:true,attributes:[{id:"scale",base:0}]}
execute if predicate speedrunner:0.8chance at @a run summon armor_stand ~ ~ ~ {Tags:["SR_Disaster_Heavyrain"],Invisible:true,Invulnerable:true,NoGravity:true,attributes:[{id:"scale",base:0}]}
execute at @a run spreadplayers ~ ~ 32 64 false @e[tag=SR_Disaster_Heavyrain]
execute at @e[tag=SR_Disaster_Heavyrain] run fill ~ ~64 ~ ~ ~65 ~ water[level=15] replace air
kill @e[tag=SR_Disaster_Heavyrain]

execute if score $Enable SR_Disaster_Heavyrain matches 1 run schedule function speedrunner:disaster/heavyrain 2s replace