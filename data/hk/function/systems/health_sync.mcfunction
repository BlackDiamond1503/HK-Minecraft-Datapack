# hk:systems/health_sync

# Sync custom health (5 masks = 10 half-hearts) to vanilla hearts
execute as @a if score @s hk.health matches 0 run attribute @s minecraft:max_health base set 0
execute as @a if score @s hk.health matches 1 run attribute @s minecraft:max_health base set 2
execute as @a if score @s hk.health matches 2 run attribute @s minecraft:max_health base set 4
execute as @a if score @s hk.health matches 3 run attribute @s minecraft:max_health base set 6
execute as @a if score @s hk.health matches 4 run attribute @s minecraft:max_health base set 8
execute as @a if score @s hk.health matches 5 run attribute @s minecraft:max_health base set 10
execute as @a if score @s hk.health matches 6 run attribute @s minecraft:max_health base set 12
execute as @a if score @s hk.health matches 7 run attribute @s minecraft:max_health base set 14
execute as @a if score @s hk.health matches 8 run attribute @s minecraft:max_health base set 16
execute as @a if score @s hk.health matches 9 run attribute @s minecraft:max_health base set 18
execute as @a if score @s hk.health matches 10 run attribute @s minecraft:max_health base set 20

# Force update
effect give @a instant_health 1 1 true

# Optional: Prevent going over max health
execute as @a if score @s hk.health > @s hk.health.max run scoreboard players operation @s hk.health = @s hk.health.max