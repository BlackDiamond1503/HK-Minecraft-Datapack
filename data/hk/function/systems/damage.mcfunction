# hk:systems/damage
advancement revoke @s only hk:on_hurt
execute as @s if score @s hk.iframes matches 1 run return 0
# Called when player takes damage
execute as @a run function hk:systems/health_sync
scoreboard players operation @s hk.health -= @s hk.health.damage
# Play Hollow Knight hurt sound + particles
#playsound minecraft:entity.player.hurt player @a ~ ~ ~ 1 1.2
particle minecraft:damage_indicator ~ ~1 ~ 0.3 0.5 0.3 0.1 15 force
particle minecraft:explosion ~ ~1 ~ 0.3 0.5 0.3 0.1 1 force
schedule function hk:systems/iframe_reset 60t
scoreboard players set @s hk.iframes 1
