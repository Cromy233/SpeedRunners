execute as @e[type=#speedrunner:mobs,tag=!SR_Disaster_Ghast] at @s if predicate speedrunner:0.1chance run summon happy_ghast ~ ~ ~ {Age:-24000,Tags:["SR_Disaster_Ghast"]}
tag @e[type=#speedrunner:mobs,tag=!SR_Disaster_Ghast] add SR_Disaster_Ghast

execute if score $Enable SR_Disaster_Ghast matches 1 run schedule function speedrunner:disaster/ghast 1s replace