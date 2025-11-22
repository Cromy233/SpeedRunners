tellraw @a [{text:"一级灾难 > > >",color:"white"}]
execute if score $Class SR_TopDisaster matches 1 run tellraw @a [{text:"【陨石雨】",color:red},{text:"天空将会落下火球",color:"white"}]
execute if score $Class SR_TopDisaster matches 2 run tellraw @a [{text:"【位置互换】",color:red},{text:"玩家位置将定时互换",color:"white"}]
execute if score $Class SR_TopDisaster matches 3 run tellraw @a [{text:"【诅咒】",color:red},{text:"生物将获得蓄风、盘丝、渗浆、寄生效果",color:"white"}]

tellraw @a [{text:"其他 > > >",color:"white"}]
execute if score $Class_1 SR_OtherDisaster matches 1 run tellraw @a [{text:"【装甲】",color:yellow},{text:"生物更有可能装备盔甲",color:"white"}]
execute if score $Class_1 SR_OtherDisaster matches 2 run tellraw @a [{text:"【骑士】",color:yellow},{text:"生物更有可能骑乘其他生物",color:"white"}]
execute if score $Class_1 SR_OtherDisaster matches 3 run tellraw @a [{text:"【爆炸箭】",color:yellow},{text:"未命中的箭矢将会爆炸",color:"white"}]
execute if score $Class_1 SR_OtherDisaster matches 4 run tellraw @a [{text:"【僵尸围城】",color:yellow},{text:"僵尸增援最大化",color:"white"}]
execute if score $Class_1 SR_OtherDisaster matches 5 run tellraw @a [{text:"【放大/缩小】",color:yellow},{text:"生物将随机放大、强化或缩小、弱化",color:"white"}]

execute if score $Class_2 SR_OtherDisaster matches 1 run tellraw @a [{text:"【击退】",color:white},{text:"攻击造成的击退增加",color:"white"}]
execute if score $Class_2 SR_OtherDisaster matches 2 run tellraw @a [{text:"【水是剧毒的】",color:white},{text:"非水生动物接触水时会受到伤害，而岩浆可以回复生命",color:"white"}]
execute if score $Class_2 SR_OtherDisaster matches 3 run tellraw @a [{text:"【反重力】",color:white},{text:"生物的重力有可能颠倒",color:"white"}]
execute if score $Class_2 SR_OtherDisaster matches 4 run tellraw @a [{text:"【强降雨】",color:white},{text:"天气锁定为雷暴天，且天空会落下水柱",color:"white"}]
execute if score $Class_2 SR_OtherDisaster matches 5 run tellraw @a [{text:"【昼夜加速】",color:white},{text:"昼夜持续的时长减半",color:"white"}]
execute if score $Class_2 SR_OtherDisaster matches 6 run tellraw @a [{text:"【无重力】",color:white},{text:"生物有可能无重力",color:"white"}]
execute if score $Class_2 SR_OtherDisaster matches 7 run tellraw @a [{text:"【乐魂泛滥】",color:white},{text:"乐魂将会自然生成",color:"white"}]
execute if score $Class_2 SR_OtherDisaster matches 8 run tellraw @a [{text:"【末地入侵】",color:white},{text:"主世界出现最多一座末地城和五个末地实验室",color:"white"}]

execute as @a at @a run playsound entity.ender_dragon.growl player @s ~ ~ ~ 0.8

execute if score $Class SR_TopDisaster matches 1 run title @a subtitle "天空将会落下火球"
execute if score $Class SR_TopDisaster matches 2 run title @a subtitle "玩家位置将定时互换"
execute if score $Class SR_TopDisaster matches 3 run title @a subtitle "生物将获得蓄风、盘丝、渗浆、寄生效果"
execute if score $Class SR_TopDisaster matches 1 run title @a title "陨石雨"
execute if score $Class SR_TopDisaster matches 2 run title @a title "位置互换"
execute if score $Class SR_TopDisaster matches 3 run title @a title "诅咒"

schedule function speedrunner:countdown_3 7s replace