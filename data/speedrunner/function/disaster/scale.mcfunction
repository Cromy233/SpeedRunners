execute if predicate speedrunner:0.33chance as @e[type=#speedrunner:mobs,tag=!SR_Disaster_Scale,limit=5,sort=random] run function speedrunner:disaster/scale/bigger
execute if predicate speedrunner:0.5chance as @e[type=#speedrunner:mobs,tag=!SR_Disaster_Scale,limit=5,sort=random] run function speedrunner:disaster/scale/smaller
tag @e[type=#speedrunner:mobs,tag=!SR_Disaster_Scale,limit=5,sort=random] add SR_Disaster_Scale

execute if score $Enable SR_Disaster_Scale matches 1 run schedule function speedrunner:disaster/scale 1s replace