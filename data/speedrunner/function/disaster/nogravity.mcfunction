execute as @e[type=#speedrunner:mobs] if predicate speedrunner:0.5chance run attribute @s gravity modifier add speedrunner:disaster_nogravity -1 add_multiplied_total
tag @e[tag=!SR_Disaster_NoGravity] add SR_Disaster_NoGravity

execute if score $Enable SR_Disaster_NoGravity matches 1 run schedule function speedrunner:disaster/nogravity 1s replace