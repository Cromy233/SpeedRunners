execute if predicate speedrunner:0.8chance at @a[gamemode=!spectator] run summon marker ~ ~ ~ {Tags:["SR_Disaster_Heavyrain"]}
execute if predicate speedrunner:0.8chance at @a[gamemode=!spectator] run summon marker ~ ~ ~ {Tags:["SR_Disaster_Heavyrain"]}
execute at @a[gamemode=!spectator] run spreadplayers ~ ~ 32 64 false @e[tag=SR_Disaster_Heavyrain]
execute at @e[tag=SR_Disaster_Heavyrain] run fill ~ ~64 ~ ~ ~65 ~ water[level=15] replace air
kill @e[tag=SR_Disaster_Heavyrain]
weather thunder

execute if score $Enable SR_Disaster_Heavyrain matches 1 run schedule function speedrunner:disaster/heavyrain 2s replace