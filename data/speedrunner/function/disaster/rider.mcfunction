execute as @e[type=#speedrunner:mobs] unless data entity @s Passengers run tag @s add SR_Disaster_Rider
execute as @e[type=#speedrunner:mobs] if predicate speedrunner:0.03chance at @s run ride @s mount @e[distance=0.001..5,limit=1,sort=nearest,tag=SR_Disaster_Rider]
tag @e[tag=SR_Disaster_Rider] remove SR_Disaster_Rider

execute if score $Enable SR_Disaster_Rider matches 1 run schedule function speedrunner:disaster/rider 1s replace