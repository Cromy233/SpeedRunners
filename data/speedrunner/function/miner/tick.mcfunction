execute if items entity @s weapon.mainhand #minecraft:pickaxes run item modify entity @s weapon.mainhand speedrunner:miner/enchantment
execute if items entity @s weapon.mainhand #minecraft:pickaxes run item modify entity @s weapon.mainhand speedrunner:miner/tunneling

scoreboard players remove @s[scores={SR_Ability_Miner_CD=1..}] SR_Ability_Miner_CD 1
title @s[scores={SR_Ability_Miner_CD=19..20}] actionbar [{"text":"【 "},{text:"▉",color:"green"},{text:"▉▉▉▉▉▉▉▉▉ 】",color:white}]
title @s[scores={SR_Ability_Miner_CD=17..18}] actionbar [{"text":"【 "},{text:"▉▉",color:"green"},{text:"▉▉▉▉▉▉▉▉ 】",color:white}]
title @s[scores={SR_Ability_Miner_CD=15..16}] actionbar [{"text":"【 "},{text:"▉▉▉",color:"green"},{text:"▉▉▉▉▉▉▉ 】",color:white}]
title @s[scores={SR_Ability_Miner_CD=13..14}] actionbar [{"text":"【 "},{text:"▉▉▉▉",color:"green"},{text:"▉▉▉▉▉▉ 】",color:white}]
title @s[scores={SR_Ability_Miner_CD=11..12}] actionbar [{"text":"【 "},{text:"▉▉▉▉▉",color:"green"},{text:"▉▉▉▉▉ 】",color:white}]
title @s[scores={SR_Ability_Miner_CD=9..10}] actionbar [{"text":"【 "},{text:"▉▉▉▉▉▉",color:"green"},{text:"▉▉▉▉ 】",color:white}]
title @s[scores={SR_Ability_Miner_CD=7..8}] actionbar [{"text":"【 "},{text:"▉▉▉▉▉▉▉",color:"green"},{text:"▉▉▉ 】",color:white}]
title @s[scores={SR_Ability_Miner_CD=5..6}] actionbar [{"text":"【 "},{text:"▉▉▉▉▉▉▉▉",color:"green"},{text:"▉▉ 】",color:white}]
title @s[scores={SR_Ability_Miner_CD=3..4}] actionbar [{"text":"【 "},{text:"▉▉▉▉▉▉▉▉▉",color:"green"},{text:"▉ 】",color:white}]
title @s[scores={SR_Ability_Miner_CD=1..2}] actionbar [{"text":"【 "},{text:"▉▉▉▉▉▉▉▉▉▉",color:"green"},{text:" 】",color:white}]