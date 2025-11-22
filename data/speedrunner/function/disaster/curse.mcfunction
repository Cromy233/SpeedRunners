effect give @e[type=#speedrunner:mobs] oozing 1 0 true
effect give @e[type=#speedrunner:mobs] weaving 1 0 true
effect give @e[type=#speedrunner:mobs] infested 1 0 true
effect give @e[type=#speedrunner:mobs] wind_charged 1 0 true

execute if score $Enable SR_Disaster_Curse matches 1 run schedule function speedrunner:disaster/curse 1s replace