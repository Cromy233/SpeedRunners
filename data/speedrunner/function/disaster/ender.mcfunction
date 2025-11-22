execute at @n[tag=SR_Center] run summon marker ~ ~ ~ {Tags:["SR_Disaster_Ender_City"]}
execute at @n[tag=SR_Center] run summon marker ~ ~ ~ {Tags:["SR_Disaster_Ender_Laboratory"]}
execute at @n[tag=SR_Center] run summon marker ~ ~ ~ {Tags:["SR_Disaster_Ender_Laboratory"]}
execute at @n[tag=SR_Center] run summon marker ~ ~ ~ {Tags:["SR_Disaster_Ender_Laboratory"]}

execute at @n[tag=SR_Center] run spreadplayers ~ ~ 450 900 false @e[tag=SR_Disaster_Ender_City]
execute at @n[tag=SR_Center] run spreadplayers ~ ~ 450 900 false @e[tag=SR_Disaster_Ender_Laboratory]

execute at @e[tag=SR_Disaster_Ender_City] run place structure end_city
execute at @e[tag=SR_Disaster_Ender_Laboratory] run place structure expension:end_laboratory