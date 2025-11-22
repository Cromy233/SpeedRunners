tag @e[type=#speedrunner:mobs] remove SR_Disaster_Poisonous
tag @e[type=#minecraft:aquatic] add SR_Disaster_Poisonous
execute as @e[tag=!SR_Disaster_Poisonous,type=#speedrunner:mobs] on vehicle if entity @s[type=#minecraft:boat] on passengers run tag @s add SR_Disaster_Poisonous
execute as @a[tag=!SR_Disaster_Poisonous] on vehicle if entity @s[type=#minecraft:boat] on passengers run tag @s add SR_Disaster_Poisonous

execute as @e[tag=!SR_Disaster_Poisonous,type=#speedrunner:mobs] at @s if block ~ ~ ~ water run damage @s 2.0 minecraft:drown
execute as @a[tag=!SR_Disaster_Poisonous] at @s if block ~ ~ ~ water run damage @s 2.0 minecraft:drown
execute if predicate speedrunner:0.5chance as @e[type=#speedrunner:mobs] at @s if block ~ ~ ~ lava run effect give @s instant_health 1 0 true
execute if predicate speedrunner:0.5chance as @a[gamemode=!spectator] at @s if block ~ ~ ~ lava run effect give @s instant_health 1 0 true

execute as @e[tag=!SR_Disaster_Poisonous,type=#speedrunner:mobs] at @s if block ~ ~1 ~ water run damage @s 2.0 minecraft:drown
execute as @a[tag=!SR_Disaster_Poisonous] at @s if block ~ ~1 ~ water run damage @s 2.0 minecraft:drown
execute if predicate speedrunner:0.5chance as @e[type=#speedrunner:mobs] at @s if block ~ ~1 ~ lava run effect give @s instant_health 1 0 true
execute if predicate speedrunner:0.5chance as @a[gamemode=!spectator] at @s if block ~ ~1 ~ lava run effect give @s instant_health 1 0 true

execute if score $Enable SR_Disaster_Poisonous matches 1 run schedule function speedrunner:disaster/poisonous 2t replace