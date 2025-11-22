### 给所有玩家选择的权限
scoreboard players enable @a SR_OpenMenu
scoreboard players enable @a SR_ResetAbility

scoreboard players enable @a SR_Armor_Shulker
scoreboard players enable @a SR_Armor_Vault
scoreboard players enable @a SR_Armor_Copper
scoreboard players enable @a SR_Armor_Bows
scoreboard players enable @a SR_Armor_Trident
scoreboard players enable @a SR_Armor_Mace

scoreboard players enable @a SR_Ability_Miner
scoreboard players enable @a SR_Ability_Killer
scoreboard players enable @a SR_Ability_Enchanter
scoreboard players enable @a SR_Ability_Sneak
scoreboard players enable @a SR_Ability_DoubledArmor
scoreboard players enable @a SR_Ability_POV

### 打开能力面板
execute as @a[scores={SR_OpenMenu=1}] run function speedrunner:player_op/ability_list

### 重置选择能力
execute as @a[scores={SR_ResetAbility=1}] run function speedrunner:player_op/reset_ability

### 检测是否到最大值
execute as @a[scores={SR_Ability_Miner=2}] if score @s SR_AbilityCount >= $Max SR_AbilityCount run scoreboard players set @s SR_Ability_Miner 0
execute as @a[scores={SR_Ability_Killer=2}] if score @s SR_AbilityCount >= $Max SR_AbilityCount run scoreboard players set @s SR_Ability_Killer 0
execute as @a[scores={SR_Ability_Enchanter=2}] if score @s SR_AbilityCount >= $Max SR_AbilityCount run scoreboard players set @s SR_Ability_Enchanter 0
execute as @a[scores={SR_Ability_Sneak=2}] if score @s SR_AbilityCount >= $Max SR_AbilityCount run scoreboard players set @s SR_Ability_Sneak 0
execute as @a[scores={SR_Ability_DoubledArmor=2}] if score @s SR_AbilityCount >= $Max SR_AbilityCount run scoreboard players set @s SR_Ability_DoubledArmor 0
execute as @a[scores={SR_Ability_POV=2}] if score @s SR_AbilityCount >= $Max SR_AbilityCount run scoreboard players set @s SR_Ability_POV 0

execute as @a[scores={SR_Armor_Shulker=2}] if score @s SR_AbilityCount >= $Max SR_AbilityCount run scoreboard players set @s SR_Armor_Shulker 0
execute as @a[scores={SR_Armor_Vault=2}] if score @s SR_AbilityCount >= $Max SR_AbilityCount run scoreboard players set @s SR_Armor_Vault 0
execute as @a[scores={SR_Armor_Copper=2}] if score @s SR_AbilityCount >= $Max SR_AbilityCount run scoreboard players set @s SR_Armor_Copper 0
execute as @a[scores={SR_Armor_Bows=2}] if score @s SR_AbilityCount >= $Max SR_AbilityCount run scoreboard players set @s SR_Armor_Bows 0
execute as @a[scores={SR_Armor_Trident=2}] if score @s SR_AbilityCount >= $Max SR_AbilityCount run scoreboard players set @s SR_Armor_Trident 0
execute as @a[scores={SR_Armor_Mace=2}] if score @s SR_AbilityCount >= $Max SR_AbilityCount run scoreboard players set @s SR_Armor_Mace 0

### 未到最大值则可选
scoreboard players set @a[scores={SR_Ability_Miner=2}] SR_Ability_Miner 1
scoreboard players set @a[scores={SR_Ability_Killer=2}] SR_Ability_Killer 1
scoreboard players set @a[scores={SR_Ability_Enchanter=2}] SR_Ability_Enchanter 1
scoreboard players set @a[scores={SR_Ability_Sneak=2}] SR_Ability_Sneak 1
scoreboard players set @a[scores={SR_Ability_DoubledArmor=2}] SR_Ability_DoubledArmor 1
scoreboard players set @a[scores={SR_Ability_POV=2}] SR_Ability_POV 1

scoreboard players set @a[scores={SR_Armor_Shulker=2}] SR_Armor_Shulker 1
scoreboard players set @a[scores={SR_Armor_Vault=2}] SR_Armor_Vault 1
scoreboard players set @a[scores={SR_Armor_Copper=2}] SR_Armor_Copper 1
scoreboard players set @a[scores={SR_Armor_Bows=2}] SR_Armor_Bows 1
scoreboard players set @a[scores={SR_Armor_Trident=2}] SR_Armor_Trident 1
scoreboard players set @a[scores={SR_Armor_Mace=2}] SR_Armor_Mace 1

### 统计选择数量
scoreboard players set @a SR_AbilityCount 0

execute as @a run scoreboard players operation @s SR_AbilityCount += @s SR_Armor_Shulker
execute as @a run scoreboard players operation @s SR_AbilityCount += @s SR_Armor_Vault
execute as @a run scoreboard players operation @s SR_AbilityCount += @s SR_Armor_Copper
execute as @a run scoreboard players operation @s SR_AbilityCount += @s SR_Armor_Bows
execute as @a run scoreboard players operation @s SR_AbilityCount += @s SR_Armor_Trident
execute as @a run scoreboard players operation @s SR_AbilityCount += @s SR_Armor_Mace

execute as @a run scoreboard players operation @s SR_AbilityCount += @s SR_Ability_Miner
execute as @a run scoreboard players operation @s SR_AbilityCount += @s SR_Ability_Killer
execute as @a run scoreboard players operation @s SR_AbilityCount += @s SR_Ability_Enchanter
execute as @a run scoreboard players operation @s SR_AbilityCount += @s SR_Ability_Sneak
execute as @a run scoreboard players operation @s SR_AbilityCount += @s SR_Ability_DoubledArmor
execute as @a run scoreboard players operation @s SR_AbilityCount += @s SR_Ability_POV

### 灾难
execute store result bossbar disaster value run scoreboard players get $Time SR_TopDisaster 
execute if score $State SR_TopDisaster matches 2 run scoreboard players operation $Time SR_TopDisaster += $Speed SR_TopDisaster
execute if score $State SR_TopDisaster matches 1 run scoreboard players operation $Time SR_TopDisaster -= $Speed SR_TopDisaster

execute if score $Time SR_TopDisaster matches 12000.. run function speedrunner:disaster/gameplay/max
execute if score $Time SR_TopDisaster matches ..0 run function speedrunner:disaster/gameplay/min