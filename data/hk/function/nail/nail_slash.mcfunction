# Check if the player is looking down (45 to 90 degrees)
execute if score @s hk.pitch matches 40..90 run function hk:nail/pogo
playsound minecraft:block.copper.hit player @a ~ ~ ~ 1.2 1.5
particle minecraft:glow ~ ~0.3 ~ 0.2 0.3 0.2 0.0 10 force

scoreboard players add @s hk.soul 11
execute if score @s hk.soul > @s hk.soul.max run scoreboard players operation @s hk.soul = @s hk.soul.max