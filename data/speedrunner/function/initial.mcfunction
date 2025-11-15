# gamerule sendCommandFeedback false


scoreboard objectives add SR_OpenMenu trigger "开启面板"
scoreboard objectives add SR_ResetAbility trigger "重置能力"
scoreboard objectives add SR_AbilityCount trigger "能力数量"
scoreboard players set $Max SR_AbilityCount 5

scoreboard objectives add SR_Ability_Miner trigger "能力：挖矿工艺"
scoreboard objectives add SR_Ability_Stealth trigger "能力：潜行者"
scoreboard objectives add SR_Ability_MobKiller trigger "能力：怪物杀手"
scoreboard objectives add SR_Ability_DoubledArmor trigger "能力：双倍护甲"
scoreboard objectives add SR_Ability_Speed trigger "能力：超速移动"
scoreboard objectives add SR_Ability_Explosive trigger "能力：爆炸箭矢"
scoreboard objectives add SR_Armor_Pandora trigger "初始：潘多拉魔盒"
scoreboard objectives add SR_Armor_Trident trigger "初始：三叉戟X鞘翅"
scoreboard objectives add SR_Armor_Mace trigger "初始：风刃X重锤"
scoreboard objectives add SR_Armor_Copper trigger "初始：炼铜癖"

scoreboard objectives add SR_Disaster_Meteorite trigger "灾难：陨石"
scoreboard players set $Enable SR_Disaster_Meteorite 0
scoreboard objectives add SR_Disaster_Knockback trigger "灾难：击退"
scoreboard players set $Enable SR_Disaster_Knockback 0
scoreboard objectives add SR_Disaster_Rider trigger "灾难：骑士"
scoreboard players set $Enable SR_Disaster_Rider 0
say 初始化完成！