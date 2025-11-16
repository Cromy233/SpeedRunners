execute as @e[type=#speedrunner:mobs,tag=!SR_Disaster_Armored] run function speedrunner:disaster/armored/helmet
execute as @e[type=#speedrunner:mobs,tag=!SR_Disaster_Armored] run function speedrunner:disaster/armored/chestplate
execute as @e[type=#speedrunner:mobs,tag=!SR_Disaster_Armored] run function speedrunner:disaster/armored/leggings
execute as @e[type=#speedrunner:mobs,tag=!SR_Disaster_Armored] run function speedrunner:disaster/armored/boots
tag @e[type=#speedrunner:mobs,tag=!SR_Disaster_Armored] add SR_Disaster_Armored

execute if score $Enable SR_Disaster_Armored matches 1 run schedule function speedrunner:disaster/armored 1s replace