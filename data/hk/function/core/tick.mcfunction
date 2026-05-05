execute as @a[scores={hk.nail.swing=1..}] at @s if items entity @s weapon.mainhand netherite_sword[custom_data={hk_nail:1b}] run function hk:nail/nail_slash
scoreboard players set @a[scores={hk.nail.swing=1..}] hk.nail.swing 0

execute as @a run execute store result score @s hk.pitch run data get entity @s Rotation[1]

# === Monarch Wings (Double Jump) ===
execute as @a[predicate=hk:has_monarch_wings] at @s run function hk:movement/monarch_wings

# Reset wings when landing
execute as @a if predicate hk:on_ground run scoreboard players set @s hk.wings.used 0

execute as @a[scores={hk.soul.use=1..}] if items entity @s weapon.mainhand *[custom_data~{hk_soul_item:1}] run function hk:soul/use
scoreboard players set @a hk.soul.use 0

# Reset sneak tracking for next tick
execute as @a run scoreboard players set @s hk.sneak 0

#execute as @e[nbt={HurtTime:10s}] if predicate hk:is_not_player at @s run particle minecraft:lava ~ ~1 ~ 0.2 0.5 0.2 0.05 20
execute as @e[nbt={HurtTime:10s}, type=!player] at @s run particle minecraft:dust_color_transition{from_color:[1.0, 0.5, 0.0], to_color:[1.0, 0.2, 0.0], scale:4} ~ ~1.0 ~ 0.2 0.5 0.2 20.0 10

function hk:systems/health_sync
function hk:systems/hunger_disabling
function hk:systems/player_init
function hk:soul/ui

execute as @a[scores={hk.health=1..}] if entity @s[nbt={HurtTime:9s}] run function hk:systems/damage

