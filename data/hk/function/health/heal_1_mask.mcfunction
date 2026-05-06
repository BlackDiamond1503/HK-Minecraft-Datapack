execute as @s if score @s hk.health < @s hk.health.max run scoreboard players add @s hk.health 1
execute as @s run scoreboard players remove @s hk.soul 33
execute as @s run scoreboard players set @s hk.soul.focus.time 0