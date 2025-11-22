attribute @s movement_speed modifier add speedrunner:ability_sneak 0.2 add_multiplied_total
attribute @s sneaking_speed modifier add speedrunner:ability_sneak 1 add_value
execute if score @s SR_Ability_Sneak_Check matches 1.. run return run function speedrunner:sneak/sneak
return run function speedrunner:sneak/clear