execute if score @s hk.soul matches ..32 run return 0 
execute as @a[scores={hk.soul.focus.time=00..}] at @s run particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0.3 0.3 0.3 0 10 normal
execute as @a[scores={hk.soul.focus.time=05}] at @s run scoreboard players remove @s hk.soul.ui 11
execute as @a[scores={hk.soul.focus.time=10}] at @s run scoreboard players remove @s hk.soul.ui 11
execute as @a[scores={hk.soul.focus.time=15}] at @s run scoreboard players remove @s hk.soul.ui 11
execute as @a[scores={hk.soul.focus.time=15}] at @s run particle minecraft:wax_off ~ ~1 ~ 0.0 0.0 0.0 20 30 force
execute as @a[scores={hk.soul.focus.time=15}] at @s run function hk:health/heal_1_mask