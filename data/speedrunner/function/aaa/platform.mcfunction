fill ~2 ~ ~-1 ~2 ~ ~1 minecraft:end_portal_frame[facing=west]
fill ~-2 ~ ~-1 ~-2 ~ ~1 minecraft:end_portal_frame[facing=east]
fill ~1 ~ ~2 ~-1 ~ ~2 minecraft:end_portal_frame[facing=north]
fill ~1 ~ ~-2 ~-1 ~ ~-2 minecraft:end_portal_frame[facing=south]
fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 minecraft:bedrock
execute align xyz run worldborder center ~.5 ~.5
worldborder set 3