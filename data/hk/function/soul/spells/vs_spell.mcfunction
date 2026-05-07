execute as @e[type=!player, type=!item, type=!block_display, type=!item_display, distance=..3] at @s unless entity @s[tag=hk.spirit.damaged] run damage @s 20 player_attack by @p
execute as @e[type=!player, type=!item, type=!block_display, type=!item_display, distance=..3] at @s unless entity @s[tag=hk.spirit.damaged] run tag @s add hk.spirit.damaged
execute as @e[type=!player, type=!item, type=!block_display, type=!item_display, distance=3.1..] at @s if entity @s[tag=hk.spirit.damaged] run tag @s remove hk.spirit.damaged
execute as @s if entity @s[nbt={inGround:true}] run execute as @e[tag=hk.spirit.damaged] at @s run tag @s remove hk.spirit.damaged
execute as @s if entity @s[nbt={inGround:true}] at @s run kill @s
particle minecraft:cloud ~ ~ ~ 0.4 0.2 0.4 0.1 30 force
execute if score @s hk.spirit.timer matches 0.. run execute as @e[tag=hk.spirit.damaged] at @s run tag @s remove hk.spirit.damaged
execute if score @s hk.spirit.timer matches 0.. at @s run kill @s
scoreboard players add @s hk.spirit.timer 1