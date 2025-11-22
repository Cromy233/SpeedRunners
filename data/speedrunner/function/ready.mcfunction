execute at @n[tag=SR_Center] run setblock ~ ~ ~ air
dialog clear @a
effect give @a blindness 15 0 true
execute store result score $Class SR_TopDisaster run random value 1..3
execute store result score $Class_1 SR_OtherDisaster run random value 1..5
execute store result score $Class_2 SR_OtherDisaster run random value 1..8

execute if score $Class SR_TopDisaster matches 1 run scoreboard players set $Enable SR_Disaster_Meteorite 1
execute if score $Class SR_TopDisaster matches 2 run scoreboard players set $Enable SR_Disaster_Telepoint 1
execute if score $Class SR_TopDisaster matches 3 run scoreboard players set $Enable SR_Disaster_Curse 1

execute if score $Class SR_TopDisaster matches 1 run scoreboard players set $Speed SR_TopDisaster 3
execute if score $Class SR_TopDisaster matches 2 run scoreboard players set $Speed SR_TopDisaster 2
execute if score $Class SR_TopDisaster matches 3 run scoreboard players set $Speed SR_TopDisaster 5

execute if score $Class_1 SR_OtherDisaster matches 1 run scoreboard players set $Enable SR_Disaster_Armored 1
execute if score $Class_1 SR_OtherDisaster matches 2 run scoreboard players set $Enable SR_Disaster_Rider 1
execute if score $Class_1 SR_OtherDisaster matches 3 run scoreboard players set $Enable SR_Disaster_Explosive 1
execute if score $Class_1 SR_OtherDisaster matches 4 run scoreboard players set $Enable SR_Disaster_Zombies 1
execute if score $Class_1 SR_OtherDisaster matches 5 run scoreboard players set $Enable SR_Disaster_Scale 1

execute if score $Class_2 SR_OtherDisaster matches 1 run scoreboard players set $Enable SR_Disaster_Knockback 1
execute if score $Class_2 SR_OtherDisaster matches 2 run scoreboard players set $Enable SR_Disaster_Poisonous 1
execute if score $Class_2 SR_OtherDisaster matches 3 run scoreboard players set $Enable SR_Disaster_AntiGravity 1
execute if score $Class_2 SR_OtherDisaster matches 4 run scoreboard players set $Enable SR_Disaster_Heavyrain 1
execute if score $Class_2 SR_OtherDisaster matches 5 run scoreboard players set $Enable SR_Disaster_DayNight 1
execute if score $Class_2 SR_OtherDisaster matches 6 run scoreboard players set $Enable SR_Disaster_NoGravity 1
execute if score $Class_2 SR_OtherDisaster matches 7 run scoreboard players set $Enable SR_Disaster_Ghast 1
execute if score $Class_2 SR_OtherDisaster matches 8 run scoreboard players set $Enable SR_Disaster_Ender 1

schedule function speedrunner:ready1 3s replace