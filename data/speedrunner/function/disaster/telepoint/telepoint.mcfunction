tag @e[type=marker,tag=SR_Disaster_Telepoint,limit=1,sort=random] add SR_Disaster_Telepoint_Select
tag @r[tag=SR_Disaster_Telepoint] add SR_Disaster_Telepoint_Select
tp @a[tag=SR_Disaster_Telepoint_Select,limit=1] @e[type=marker,tag=SR_Disaster_Telepoint_Select,limit=1]

kill @e[type=marker,tag=SR_Disaster_Telepoint_Select]
tag @a[tag=SR_Disaster_Telepoint_Select] remove SR_Disaster_Telepoint
tag @a[tag=SR_Disaster_Telepoint_Select] remove SR_Disaster_Telepoint_Select

execute if entity @e[tag=SR_Disaster_Telepoint] run schedule function speedrunner:disaster/telepoint/telepoint 1t replace