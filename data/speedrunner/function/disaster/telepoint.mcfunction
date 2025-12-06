tag @a add SR_Disaster_Telepoint
execute at @a[gamemode=!spectator] run summon marker ~ ~ ~ {Tags:["SR_Disaster_Telepoint"]}
execute as @a[gamemode=!spectator] at @s run data modify entity @n[type=marker,tag=SR_Disaster_Telepoint] Rotation set from entity @s Rotation
scoreboard players set $Time SR_TopDisaster 1
schedule function speedrunner:disaster/telepoint/telepoint 1t replace