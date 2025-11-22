tag @a remove SR_Disaster_Telepoint
execute at @a run summon marker ~ ~ ~ {Tags:["SR_Disaster_Telepoint"]}
scoreboard players set $Time SR_TopDisaster 1
schedule function speedrunner:disaster/telepoint/tick 1t replace