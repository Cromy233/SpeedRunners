execute if score @s SR_Ability_Miner_CD matches 0 run fill ~1 ~ ~1 ~-1 ~2 ~-1 air replace #mineable/pickaxe destroy
execute if score @s SR_Ability_Miner_CD matches 0 run item modify entity @s weapon.mainhand speedrunner:miner/damage0.001
execute if score @s SR_Ability_Miner_CD matches 0 run playsound minecraft:entity.generic.extinguish_fire player @s ~ ~ ~ 0.5
execute if score @s SR_Ability_Miner_CD matches 0 run particle minecraft:smoke ~ ~1 ~ 1 1 1 0.01 50
execute if score @s SR_Ability_Miner_CD matches 0 run scoreboard players set @s SR_Ability_Miner_CD 20

advancement revoke @a[advancements={speedrunner:miner=true}] only speedrunner:miner