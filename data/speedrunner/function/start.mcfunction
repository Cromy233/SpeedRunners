### 开始！
title @a title {text:"SUCK        DICK",color:yellow}
execute as @a at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2
execute as @a at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2
execute as @a at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1
effect clear @a saturation
effect clear @a weakness
effect clear @a resistance

### 随机传送
worldborder set 1001
execute at @n[tag=SR_Center] run spreadplayers ~ ~ 800 1000 true @a[gamemode=!spectator]

### 初始装备
loot give @a[scores={SR_Armor_Shulker=1}] loot speedrunner:armor/shulker
loot give @a[scores={SR_Armor_Vault=1}] loot speedrunner:armor/vault
loot give @a[scores={SR_Armor_Copper=1}] loot speedrunner:armor/copper
loot give @a[scores={SR_Armor_Bows=1}] loot speedrunner:armor/bows
loot give @a[scores={SR_Armor_Trident=1}] loot speedrunner:armor/trident
loot give @a[scores={SR_Armor_Mace=1}] loot speedrunner:armor/mace

### 能力
function speedrunner:abilities

### 灾难
bossbar set minecraft:disaster players @a
scoreboard players set $State SR_TopDisaster 2
scoreboard players set $Time SR_TopDisaster 0

# 一级灾难
execute if score $Enable SR_Disaster_Meteorite matches 1 run bossbar set disaster name "陨石雨"
execute if score $Enable SR_Disaster_Telepoint matches 1 run bossbar set disaster name "位置互换"
execute if score $Enable SR_Disaster_Curse matches 1 run bossbar set disaster name "诅咒"

# 二级灾难
execute if score $Enable SR_Disaster_Armored matches 1 run function speedrunner:disaster/armored
execute if score $Enable SR_Disaster_Rider matches 1 run function speedrunner:disaster/rider
execute if score $Enable SR_Disaster_Explosive matches 1 run function speedrunner:disaster/explosive
execute if score $Enable SR_Disaster_Zombies matches 1 run function speedrunner:disaster/zombies
execute if score $Enable SR_Disaster_Scale matches 1 run function speedrunner:disaster/scale

# 三级灾难
execute if score $Enable SR_Disaster_Knockback matches 1 run function speedrunner:disaster/knockback
execute if score $Enable SR_Disaster_Poisonous matches 1 run function speedrunner:disaster/poisonous
execute if score $Enable SR_Disaster_AntiGravity matches 1 run function speedrunner:disaster/antigravity