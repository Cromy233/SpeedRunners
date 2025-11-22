execute as @a[scores={SR_Ability_Miner=1}] at @s run function speedrunner:miner/tick
execute as @a[scores={SR_Ability_Killer=1}] at @s run function speedrunner:killer/tick
execute as @a[scores={SR_Ability_Enchanter=1}] at @s run function speedrunner:enchanter/tick
execute as @a[scores={SR_Ability_Sneak=1}] at @s run function speedrunner:sneak/tick
execute as @a[scores={SR_Ability_DoubledArmor=1}] at @s run function speedrunner:doubledarmor/tick
execute as @a[scores={SR_Ability_POV=1}] at @s run function speedrunner:pov/tick

schedule function speedrunner:abilities 1t replace