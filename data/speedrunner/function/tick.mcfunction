### 给所有玩家选择的权限
scoreboard players enable @a SR_OpenMenu
scoreboard players enable @a SR_ResetAbility
scoreboard players enable @a SR_Ability_Miner
scoreboard players enable @a SR_Ability_Stealth
scoreboard players enable @a SR_Ability_MobKiller
scoreboard players enable @a SR_Ability_DoubledArmor
scoreboard players enable @a SR_Ability_POV
scoreboard players enable @a SR_Ability_Enchant
scoreboard players enable @a SR_Armor_Bows
scoreboard players enable @a SR_Armor_Pandora
scoreboard players enable @a SR_Armor_Trident
scoreboard players enable @a SR_Armor_Mace
scoreboard players enable @a SR_Armor_Copper

### 打开能力面板
execute as @a[scores={SR_OpenMenu=1}] run function speedrunner:player_op/ability_list

### 重置选择能力
execute as @a[scores={SR_ResetAbility=1}] run function speedrunner:player_op/reset_ability

### 检测是否到最大值
execute as @a[scores={SR_Ability_Miner=2}] if score @s SR_AbilityCount >= $Max SR_AbilityCount run scoreboard players set @s SR_Ability_Miner 0
execute as @a[scores={SR_Ability_MobKiller=2}] if score @s SR_AbilityCount >= $Max SR_AbilityCount run scoreboard players set @s SR_Ability_MobKiller 0
execute as @a[scores={SR_Ability_Stealth=2}] if score @s SR_AbilityCount >= $Max SR_AbilityCount run scoreboard players set @s SR_Ability_Stealth 0
execute as @a[scores={SR_Ability_DoubledArmor=2}] if score @s SR_AbilityCount >= $Max SR_AbilityCount run scoreboard players set @s SR_Ability_DoubledArmor 0
execute as @a[scores={SR_Ability_POV=2}] if score @s SR_AbilityCount >= $Max SR_AbilityCount run scoreboard players set @s SR_Ability_POV 0
execute as @a[scores={SR_Ability_Enchant=2}] if score @s SR_AbilityCount >= $Max SR_AbilityCount run scoreboard players set @s SR_Ability_Enchant 0
execute as @a[scores={SR_Armor_Bows=2}] if score @s SR_AbilityCount >= $Max SR_AbilityCount run scoreboard players set @s SR_Armor_Bows 0
execute as @a[scores={SR_Armor_Pandora=2}] if score @s SR_AbilityCount >= $Max SR_AbilityCount run scoreboard players set @s SR_Armor_Pandora 0
execute as @a[scores={SR_Armor_Trident=2}] if score @s SR_AbilityCount >= $Max SR_AbilityCount run scoreboard players set @s SR_Armor_Trident 0
execute as @a[scores={SR_Armor_Mace=2}] if score @s SR_AbilityCount >= $Max SR_AbilityCount run scoreboard players set @s SR_Armor_Mace 0
execute as @a[scores={SR_Armor_Copper=2}] if score @s SR_AbilityCount >= $Max SR_AbilityCount run scoreboard players set @s SR_Armor_Copper 0

### 未到最大值则可选
scoreboard players set @a[scores={SR_Ability_Miner=2}] SR_Ability_Miner 1
scoreboard players set @a[scores={SR_Ability_MobKiller=2}] SR_Ability_MobKiller 1
scoreboard players set @a[scores={SR_Ability_Stealth=2}] SR_Ability_Stealth 1
scoreboard players set @a[scores={SR_Ability_DoubledArmor=2}] SR_Ability_DoubledArmor 1
scoreboard players set @a[scores={SR_Ability_POV=2}] SR_Ability_POV 1
scoreboard players set @a[scores={SR_Ability_Enchant=2}] SR_Ability_Enchant 1
scoreboard players set @a[scores={SR_Armor_Bows=2}] SR_Armor_Bows 1
scoreboard players set @a[scores={SR_Armor_Pandora=2}] SR_Armor_Pandora 1
scoreboard players set @a[scores={SR_Armor_Trident=2}] SR_Armor_Trident 1
scoreboard players set @a[scores={SR_Armor_Mace=2}] SR_Armor_Mace 1
scoreboard players set @a[scores={SR_Armor_Copper=2}] SR_Armor_Copper 1

### 统计选择数量
scoreboard players set @a SR_AbilityCount 0
execute as @a run scoreboard players operation @s SR_AbilityCount += @s SR_Ability_Miner
execute as @a run scoreboard players operation @s SR_AbilityCount += @s SR_Ability_MobKiller
execute as @a run scoreboard players operation @s SR_AbilityCount += @s SR_Ability_Stealth
execute as @a run scoreboard players operation @s SR_AbilityCount += @s SR_Ability_DoubledArmor
execute as @a run scoreboard players operation @s SR_AbilityCount += @s SR_Ability_POV
execute as @a run scoreboard players operation @s SR_AbilityCount += @s SR_Ability_Enchant
execute as @a run scoreboard players operation @s SR_AbilityCount += @s SR_Armor_Bows
execute as @a run scoreboard players operation @s SR_AbilityCount += @s SR_Armor_Pandora
execute as @a run scoreboard players operation @s SR_AbilityCount += @s SR_Armor_Trident
execute as @a run scoreboard players operation @s SR_AbilityCount += @s SR_Armor_Mace
execute as @a run scoreboard players operation @s SR_AbilityCount += @s SR_Armor_Copper