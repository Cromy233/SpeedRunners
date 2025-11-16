execute as @e[type=#speedrunner:mobs,tag=!SR_Disaster_Gravity] if predicate speedrunner:0.33chance run function speedrunner:disaster/gravity/overweight
execute as @e[type=#speedrunner:mobs,tag=!SR_Disaster_Gravity] if predicate speedrunner:0.5chance run function speedrunner:disaster/gravity/weightless
tag @e[type=#speedrunner:mobs,tag=!SR_Disaster_Gravity] add SR_Disaster_Gravity

execute if score $Enable SR_Disaster_Gravity matches 1 run schedule function speedrunner:disaster/gravity 1s replace