# Check if the player is looking down (45 to 90 degrees)
execute as @e[type=!player, type=!item, distance=..5.0] at @s run tp ^ ^0.2 ^-1.5
execute as @e[type=!player, type=!item, distance=..5.0] at @s run particle minecraft:dust_color_transition{from_color:[1.0, 0.5, 0.0], to_color:[1.0, 0.2, 0.0], scale:4} ~ ~1.0 ~ 0.2 0.5 0.2 10.0 10
execute as @e[type=!player, type=!item, distance=..5.0] at @s run damage @s 5 player_attack by @p

execute if score @s hk.pitch matches 40..90 run function hk:nail/pogo
playsound minecraft:block.copper.hit player @a ~ ~ ~ 1.2 1.5
particle minecraft:glow ~ ~0.3 ~ 0.2 0.3 0.2 0.0 10 force
particle minecraft:sweep_attack ^ ^2 ^3 0.0 0.0 0.0 1 1 normal

scoreboard players add @s hk.soul 11
execute if score @s hk.soul > @s hk.soul.max run scoreboard players operation @s hk.soul = @s hk.soul.max
scoreboard players operation @s hk.soul.ui = @s hk.soul