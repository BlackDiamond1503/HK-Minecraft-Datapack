particle minecraft:cloud ~ ~1 ~ 0.4 0.2 0.4 1 30 force

execute as @e[type=arrow, tag=hk.c-dash, nbt={inGround:true}, limit=1, sort=nearest] store result entity @s Motion[0] double 0.001 run scoreboard players get @s hk.c-dash.x
execute as @e[type=arrow, tag=hk.c-dash, nbt={inGround:true}, limit=1, sort=nearest] store result entity @s Motion[1] double 0.001 run scoreboard players get @s hk.c-dash.y
execute as @e[type=arrow, tag=hk.c-dash, nbt={inGround:true}, limit=1, sort=nearest] store result entity @s Motion[2] double 0.001 run scoreboard players get @s hk.c-dash.z

execute as @s if entity @e[type=arrow, tag=hk.c-dash, nbt={inGround:true}, limit=1, sort=nearest] at @s run scoreboard players set @s hk.c-dash.using 0
execute as @s if entity @e[type=arrow, tag=hk.c-dash, nbt={inGround:true}, limit=1, sort=nearest] at @s run kill @e[tag=hk.c-dash, limit=1, sort=nearest]
execute as @s unless predicate hk:not_riding at @s run scoreboard players set @s hk.c-dash.using 0
execute as @s unless predicate hk:not_riding at @s run kill @e[tag=hk.c-dash, limit=1, sort=nearest]