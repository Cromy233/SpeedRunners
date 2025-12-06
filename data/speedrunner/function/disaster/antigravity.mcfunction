execute as @e[type=#speedrunner:mobs,tag=!SR_Disaster_AntiGravity] if predicate speedrunner:0.5chance run function speedrunner:disaster/anti_gravity/enable
tag @e[type=#speedrunner:mobs,tag=!SR_Disaster_AntiGravity] add SR_Disaster_AntiGravity

execute if score $Enable SR_Disaster_AntiGravity matches 1 run schedule function speedrunner:disaster/antigravity 1s replace