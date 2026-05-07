# hk:movement/monarch_wings

execute if predicate hk:on_ground run return 0

# Only if wearing Monarch Wings
execute unless predicate hk:has_monarch_wings run return 0

# Prevent using more than once per air time
execute if score @s hk.wings.used matches 1.. run return 0

attribute @s gravity base set 0.13
schedule function hk:schedules/gravity_reset 6t

# === Monarch Wings Double Jump ACTIVATED ===
scoreboard players set @s hk.wings.used 1

# Strong upward boost
execute at @s run summon wind_charge ~ ~-0.3 ~ {Motion:[0.0, 0.3, 0.0], ExplosionPower:0, Tags:["hk.wings.boost", "hk.no_damage"]}
tp @s ~ ~ ~
scoreboard players set @s hk.tp 1

# Hollow Knight visuals
particle minecraft:cloud ~ ~0.1 ~ 0.4 0.2 0.4 0.1 25 force
#particle minecraft:electric_spark ~ ~0.4 ~ 0.3 0.5 0.3 0.0 20 force
particle minecraft:glow ~ ~0.3 ~ 0.2 0.3 0.2 0.0 10 force

# Sounds
playsound minecraft:entity.firework_rocket.launch player @a ~ ~ ~ 0.7 1.6