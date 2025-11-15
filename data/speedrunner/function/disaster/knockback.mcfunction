execute as @e[type=#speedrunner:mobs,tag=!SR_Disaster_Knockback] run attribute @s attack_knockback modifier add speedrunner:disaster_knockback 1.5 add_value
enchant @e[type=#speedrunner:mobs,tag=!SR_Disaster_Knockback] punch 1
tag @e[type=#speedrunner:mobs,tag=!SR_Disaster_Knockback] add SR_Disaster_Knockback

execute if score $Enable SR_Disaster_Knockback matches 1 run schedule function speedrunner:disaster/knockback 1s replace