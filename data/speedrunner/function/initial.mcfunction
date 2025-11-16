# gamerule sendCommandFeedback false

scoreboard objectives add SR_OpenMenu trigger "开启面板"
scoreboard objectives add SR_ResetAbility trigger "重置能力"
scoreboard objectives add SR_AbilityCount trigger "能力数量"
scoreboard players set $Max SR_AbilityCount 5

scoreboard objectives add SR_Ability_Miner trigger "能力：挖矿工艺"
scoreboard objectives add SR_Ability_MobKiller trigger "能力：怪物杀手"
scoreboard objectives add SR_Ability_Enchant trigger "能力：附魔师"
scoreboard objectives add SR_Ability_Stealth trigger "能力：忍者"
scoreboard objectives add SR_Ability_DoubledArmor trigger "能力：双倍护甲"
scoreboard objectives add SR_Ability_POV trigger "能力：超视距"
scoreboard objectives add SR_Armor_Bows trigger "初始：百弓"
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
scoreboard objectives add SR_Disaster_Heavyrain trigger "灾难：强降雨"
scoreboard players set $Enable SR_Disaster_Heavyrain 0
scoreboard objectives add SR_Disaster_Scale trigger "灾难：放大/缩小"
scoreboard players set $Enable SR_Disaster_Scale 0
scoreboard objectives add SR_Disaster_Poisonous trigger "灾难：水是剧毒的"
scoreboard players set $Enable SR_Disaster_Poisonous 0
scoreboard objectives add SR_Disaster_Armored trigger "灾难：装甲"
scoreboard players set $Enable SR_Disaster_Armored 0
scoreboard objectives add SR_Disaster_Gravity trigger "灾难：失重/超重"
scoreboard players set $Enable SR_Disaster_Gravity 0

say 初始化完成！