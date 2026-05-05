# hk:systems/damage

# Called when player takes damage
execute as @s run function hk:systems/health_sync
scoreboard players operation @s hk.health -= @s hk.health.damage

# Play Hollow Knight hurt sound + particles
#playsound minecraft:entity.player.hurt player @a ~ ~ ~ 1 1.2
particle minecraft:damage_indicator ~ ~1 ~ 0.3 0.5 0.3 0.1 15 force