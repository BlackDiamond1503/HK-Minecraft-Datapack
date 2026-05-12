# Camera angle storing
execute as @a run execute store result score @s hk.pitch run data get entity @s Rotation[1]
execute as @a run execute store result score @s hk.yaw run data get entity @s Rotation[0]

# Nail use
execute as @a[scores={hk.nail.swing=1..}] at @s if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={hk_nail:1}] run function hk:nail/nail_slash
execute as @a[scores={hk.use=1.., hk.c-dash.charge_time=..0}] at @s unless predicate hk:sneaking unless score @s hk.c-dash.using matches 1.. if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={hk_nail:1}] if predicate hk:has_monarch_wings if score @s hk.pitch matches -90..-30 run function hk:movement/monarch_wings
execute as @a[scores={hk.use=1.., hk.c-dash.charge_time=..0}] at @s unless predicate hk:sneaking unless score @s hk.c-dash.using matches 1.. if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={hk_nail:1}] if score @s hk.pitch matches -31..40 run function hk:movement/dash
execute as @a[scores={hk.use=1.., hk.c-dash.charge_time=..0}] at @s if predicate hk:on_ground if predicate hk:sneaking unless score @s hk.c-dash.using matches 1.. if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={hk_nail:1}] run scoreboard players set @s hk.c-dash.charge_time 1

# Ability resets
execute as @a[scores={hk.wings.used=1..}] if predicate hk:on_ground if score @s hk.tp matches 0 run scoreboard players set @s hk.wings.used 0
execute as @a[scores={hk.dash.used=1..}] if predicate hk:on_ground if score @s hk.tp matches 0 run scoreboard players set @s hk.dash.used 0
execute as @a[scores={hk.wings.used=1..}] if score @s hk.tp matches 1 run scoreboard players set @s hk.tp 0
execute as @a[scores={hk.dash.used=1..}] if score @s hk.tp matches 1 run scoreboard players set @s hk.tp 0

# Soul use
execute as @a[scores={hk.use=1..}] unless score @s hk.c-dash.using matches 1.. if items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{hk_soul_item:1}] run function hk:soul/use


# Timers
execute as @a[scores={hk.soul.spell_use_timer=..0}] at @s run scoreboard players add @s hk.soul.spell_use_timer 1
execute as @a[scores={hk.dash.colldown_left=..0}] at @s run scoreboard players add @s hk.dash.colldown_left 1
effect give @a resistance infinite 5 true

# Spell updates
execute as @e[tag=hk.spirit] at @s run function hk:soul/spells/vs_spell

# C-Dash Charge
execute as @a[scores={hk.c-dash.charge_time=1..}] at @s unless items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{hk_nail:1}] run scoreboard players set @s hk.c-dash.charge_time 0
execute as @a[scores={hk.c-dash.charge_time=1..}] at @s unless predicate hk:on_ground run scoreboard players set @s hk.c-dash.charge_time 0
execute as @a[scores={hk.use=1.., hk.c-dash.charge_time=1..}, predicate=hk:on_ground, predicate=hk:sneaking] at @s if items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{hk_nail:1}] run scoreboard players add @s hk.c-dash.charge_time 1
execute as @a[scores={hk.c-dash.charge_time=6..}] at @s unless predicate hk:sneaking run function hk:movement/c-dash/c-dash_spawn
execute as @a[scores={hk.c-dash.charge_time=1..}] at @s unless predicate hk:sneaking run scoreboard players set @s hk.c-dash.charge_time 0
execute as @a[scores={hk.c-dash.charge_time=6..}] at @s run scoreboard players set @s hk.c-dash.charge_time 6
execute as @a[scores={hk.c-dash.using=1..}] at @s run function hk:movement/c-dash

execute as @a[scores={hk.c-dash.charge_time=1..5}, predicate=hk:on_ground, predicate=hk:sneaking] at @s run particle minecraft:dust_color_transition{from_color:[1.0, 0.4, 0.9], to_color:[0.7, 0.0, 1.0], scale:0.8} ~ ~1 ~ 0.25 0.35 0.25 0.0 10 force @a
execute as @a[scores={hk.c-dash.charge_time=1..5}, predicate=hk:on_ground, predicate=hk:sneaking] at @s run particle minecraft:dust_color_transition{from_color:[0.9, 0.3, 0.8], to_color:[0.6, 0.1, 1.0], scale:1.2} ~ ~1 ~ 0.35 0.45 0.35 0.0 14 force @a

execute as @a[scores={hk.c-dash.charge_time=1..5, hk.2-ticks=..0}, predicate=hk:on_ground, predicate=hk:sneaking] at @s run playsound minecraft:block.amethyst_cluster.break player @a ~ ~ ~ 0.9 1.6

# Focus Time
execute as @a[scores={hk.soul.focus.time=1..}] at @s unless items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{hk_soul_item:1}] run scoreboard players set @s hk.soul.focus.time 0
execute as @a[scores={hk.soul.focus.time=1..}] at @s unless predicate hk:sneaking run scoreboard players set @s hk.soul.focus.time 0
execute as @a[scores={hk.use=1..}, predicate=hk:sneaking] at @s if items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{hk_soul_item:1}] run scoreboard players add @s hk.soul.focus.time 1

# Systems
function hk:systems/health_sync
function hk:systems/hunger_disabling
function hk:systems/player_init
function hk:soul/ui

# Reset trakings for next tick
execute as @a[scores={hk.use=1..}] at @s run scoreboard players set @s hk.use 0
execute as @a[scores={hk.nail.swing=1..}] at @s run scoreboard players set @s hk.nail.swing 0
execute as @a[scores={hk.sneak=1..}] at @s run scoreboard players set @s hk.sneak 0

# "Tickers" 
scoreboard players add @a hk.2-ticks 1
execute as @a if score @s hk.2-ticks matches 2.. run scoreboard players set @s hk.2-ticks 0
scoreboard players add @a hk.5-ticks 1
execute as @a if score @s hk.5-ticks matches 5.. run scoreboard players set @s hk.5-ticks 0
scoreboard players add @a hk.10-ticks 1
execute as @a if score @s hk.10-ticks matches 10.. run scoreboard players set @s hk.10-ticks 0
scoreboard players add @a hk.15-ticks 1
execute as @a if score @s hk.15-ticks matches 15.. run scoreboard players set @s hk.15-ticks 0
scoreboard players add @a hk.20-ticks 1
execute as @a if score @s hk.20-ticks matches 20.. run scoreboard players set @s hk.20-ticks 0

# Dying sequence
execute as @a[scores={hk.health=..0}] at @s run function hk:systems/death
