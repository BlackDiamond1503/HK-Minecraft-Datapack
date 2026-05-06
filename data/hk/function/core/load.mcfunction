scoreboard objectives add hk.nail.swing minecraft.custom:minecraft.damage_dealt

scoreboard objectives add hk.pitch dummy

scoreboard objectives add hk.jump minecraft.custom:minecraft.jump
scoreboard objectives add hk.sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add hk.use minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add hk.tp dummy
scoreboard objectives add hk.iframes dummy

scoreboard objectives add hk.wings.used dummy
scoreboard objectives add hk.wings.const dummy
scoreboard objectives add hk.wings.levitation dummy

scoreboard objectives add hk.health dummy
scoreboard objectives add hk.health.max dummy
scoreboard objectives add hk.health.damage dummy

scoreboard objectives add hk.soul dummy
scoreboard objectives add hk.soul.ui dummy
scoreboard objectives add hk.soul.max dummy
scoreboard objectives add hk.soul.focus.time dummy
scoreboard objectives add hk.soul.used dummy

scoreboard players set @a hk.iframes 0

gamerule natural_health_regeneration false
gamerule fall_damage false
gamerule keep_inventory true

tellraw @a ["",{"text":"[HK Datapack] ","color":"gold"},{"text":"loaded! ","color":"white"},{text:"Click here to get the Old Nail", "color":"yellow", click_event:{action:"run_command", command:"function hk:nail/give_nail"}}]