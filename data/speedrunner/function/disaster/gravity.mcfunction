execute if predicate speedrunner:0.33chance as @e[type=#speedrunner:mobs,tag=!SR_Disaster_Gravity,limit=5,sort=random] run function speedrunner:disaster/gravity/overweight
execute if predicate speedrunner:0.5chance as @e[type=#speedrunner:mobs,tag=!SR_Disaster_Gravity,limit=5,sort=random] run function speedrunner:disaster/gravity/weightless
tag @e[type=#speedrunner:mobs,tag=!SR_Disaster_Gravity,limit=5,sort=random] add SR_Disaster_Gravity

execute if score $Enable SR_Disaster_Gravity matches 1 run schedule function speedrunner:disaster/gravity 1s replace