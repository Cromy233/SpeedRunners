gamerule sendCommandFeedback false
execute as @a run attribute @s max_health base set 40

fill ~2 ~ ~-1 ~2 ~ ~1 minecraft:end_portal_frame[facing=west]
fill ~-2 ~ ~-1 ~-2 ~ ~1 minecraft:end_portal_frame[facing=east]
fill ~1 ~ ~2 ~-1 ~ ~2 minecraft:end_portal_frame[facing=north]
fill ~1 ~ ~-2 ~-1 ~ ~-2 minecraft:end_portal_frame[facing=south]
fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 minecraft:bedrock
execute align xyz run worldborder center ~.5 ~.5
worldborder set 3
setblock ~ ~ ~ minecraft:pale_oak_sign{is_waxed:true,front_text:{has_glowing_text:true,messages:["",{text:"选择能力",bold:true,color:"gold",click_event:{action:"run_command",command:"trigger SR_OpenMenu set 1"}},[{"text":"（最多可选"},{score:{name:"$Max",objective:"SR_AbilityCount"}},{"text":"个）"}],""]},back_text:{has_glowing_text:true,messages:["",{text:"选择能力",bold:true,color:"gold",click_event:{action:"run_command",command:"trigger SR_OpenMenu set 1"}},[{"text":"（最多可选"},{score:{name:"$Max",objective:"SR_AbilityCount"}},{"text":"个）"}],""]}}
execute align xyz run summon marker ~.5 ~ ~.5 {Tags:["SR_Center"]}
effect give @a weakness infinite 255 true
effect give @a saturation infinite 255 true
effect give @a resistance infinite 255 true

scoreboard objectives add SR_OpenMenu trigger "开启面板"
scoreboard objectives add SR_ResetAbility trigger "重置能力"
scoreboard objectives add SR_AbilityCount trigger "能力数量"
scoreboard players set $Max SR_AbilityCount 5

scoreboard objectives add SR_Armor_Shulker trigger "初始：潜影盒"
scoreboard objectives add SR_Armor_Vault trigger "初始：宝库"
scoreboard objectives add SR_Armor_Copper trigger "初始：炼铜癖"
scoreboard objectives add SR_Armor_Bows trigger "初始：射手"
scoreboard objectives add SR_Armor_Trident trigger "初始：三叉戟X鞘翅"
scoreboard objectives add SR_Armor_Mace trigger "初始：风刃X重锤"

scoreboard objectives add SR_Ability_Miner trigger "能力：矿工"
scoreboard objectives add SR_Ability_Killer trigger "能力：怪物猎人"
scoreboard objectives add SR_Ability_Enchanter trigger "能力：附魔师"
scoreboard objectives add SR_Ability_Sneak trigger "能力：潜行"
scoreboard objectives add SR_Ability_DoubledArmor trigger "能力：双倍护甲"
scoreboard objectives add SR_Ability_POV trigger "能力：超视距"

scoreboard objectives add SR_Ability_Miner_CD dummy "矿工：盾构CD"
scoreboard players set @a SR_Ability_Miner_CD 20
scoreboard objectives add SR_Ability_Sneak_Check minecraft.custom:minecraft.sneak_time "潜行：潜行检测"

bossbar add disaster "灾难"
bossbar set minecraft:disaster max 12000
bossbar set minecraft:disaster style notched_10
scoreboard objectives add SR_TopDisaster dummy "一级灾难"
scoreboard players set $State SR_TopDisaster 0
scoreboard objectives add SR_OtherDisaster dummy "次级灾难"

scoreboard objectives add SR_Disaster_Meteorite trigger "灾难：陨石雨"
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
scoreboard objectives add SR_Disaster_AntiGravity trigger "灾难：反重力"
scoreboard players set $Enable SR_Disaster_AntiGravity 0
scoreboard objectives add SR_Disaster_Explosive trigger "灾难：爆炸箭"
scoreboard players set $Enable SR_Disaster_Explosive 0
scoreboard objectives add SR_Disaster_Zombies trigger "灾难：僵尸围城"
scoreboard players set $Enable SR_Disaster_Zombies 0
scoreboard objectives add SR_Disaster_Telepoint trigger "灾难：位置互换"
scoreboard players set $Enable SR_Disaster_Telepoint 0
scoreboard objectives add SR_Disaster_Curse trigger "灾难：诅咒"
scoreboard players set $Enable SR_Disaster_Curse 0
scoreboard objectives add SR_Disaster_NoGravity trigger "灾难：无重力"
scoreboard players set $Enable SR_Disaster_NoGravity 0
scoreboard objectives add SR_Disaster_DayNight trigger "灾难：昼夜加速"
scoreboard players set $Enable SR_Disaster_DayNight 0
scoreboard objectives add SR_Disaster_Ghast trigger "灾难：乐魂泛滥"
scoreboard players set $Enable SR_Disaster_Ghast 0
scoreboard objectives add SR_Disaster_Ender trigger "灾难：末地入侵"
scoreboard players set $Enable SR_Disaster_Ender 0

say 初始化完成！