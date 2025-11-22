execute as @e[type=#minecraft:zombies] run attribute @s spawn_reinforcements base set 1

execute if score $Enable SR_Disaster_Zombies matches 1 run schedule function speedrunner:disaster/zombies 1s replace