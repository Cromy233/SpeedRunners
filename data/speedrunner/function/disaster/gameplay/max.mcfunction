scoreboard players set $State SR_TopDisaster 1
bossbar set disaster color red

execute if score $Enable SR_Disaster_Meteorite matches 1 run function speedrunner:disaster/meteorite
execute if score $Enable SR_Disaster_Telepoint matches 1 run function speedrunner:disaster/telepoint
execute if score $Enable SR_Disaster_Curse matches 1 run function speedrunner:disaster/curse