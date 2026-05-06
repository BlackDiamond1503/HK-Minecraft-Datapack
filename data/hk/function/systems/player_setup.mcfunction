scoreboard players set @s hk.health.max 5
scoreboard players set @s hk.health 5
scoreboard players set @s hk.soul 0
scoreboard players set @s hk.soul.ui 0
scoreboard players set @s hk.soul.max 99
scoreboard players set @s hk.wings.used 0
scoreboard players set @s hk.health.damage 1

attribute @s jump_strength base set 0.60
attribute @s gravity base set 0.05
attribute @s scale base set 1
attribute @s minecraft:knockback_resistance base set 0

# Force initial health sync
function hk:systems/health_sync