execute as @e[type=#speedrunner:mobs,tag=!SR_Disaster_Scale] if predicate speedrunner:0.33chance run function speedrunner:disaster/scale/bigger
execute as @e[type=#speedrunner:mobs,tag=!SR_Disaster_Scale] if predicate speedrunner:0.5chance run function speedrunner:disaster/scale/smaller
tag @e[type=#speedrunner:mobs,tag=!SR_Disaster_Scale] add SR_Disaster_Scale

execute if score $Enable SR_Disaster_Scale matches 1 run schedule function speedrunner:disaster/scale 1s replace