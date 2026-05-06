# Camera pitch storing
execute as @a run execute store result score @s hk.pitch run data get entity @s Rotation[1]

# Nail use
execute as @a[scores={hk.nail.swing=1..}] at @s if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={hk_nail:1}] run function hk:nail/nail_slash
execute as @a[scores={hk.use=1..}] at @s if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={hk_nail:1}] if predicate hk:has_monarch_wings if score @s hk.pitch matches -90..-30 run function hk:movement/monarch_wings
execute as @a[scores={hk.use=1..}] at @s if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={hk_nail:1}] if score @s hk.pitch matches -30..40 run function hk:movement/dash

# Ability resets
execute as @a[scores={hk.wings.used=1..}] if predicate hk:on_ground if score @s hk.tp matches 0 run scoreboard players set @s hk.wings.used 0
execute as @a[scores={hk.wings.used=1..}] if score @s hk.tp matches 1 run scoreboard players set @s hk.tp 0

# Soul use
execute as @a[scores={hk.use=1..}] if items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{hk_soul_item:1b}] run function hk:soul/use

# System functions
effect give @a resistance infinite 5 true
function hk:systems/health_sync
function hk:systems/hunger_disabling
function hk:systems/player_init
function hk:soul/ui

# Focus Time
execute as @a[scores={hk.soul.focus.time=1..}] at @s unless items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{hk_soul_item:1}] run scoreboard players set @s hk.soul.focus.time 0
execute as @a[scores={hk.soul.focus.time=1..}] at @s unless predicate hk:sneaking run scoreboard players set @s hk.soul.focus.time 0
execute as @a[scores={hk.use=1..}, predicate=hk:sneaking] at @s if items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{hk_soul_item:1}] run scoreboard players add @s hk.soul.focus.time 1

# Reset trakings for next tick
execute as @a[scores={hk.use=1..}] at @s run scoreboard players set @s hk.use 0
execute as @a[scores={hk.nail.swing=1..}] at @s run scoreboard players set @s hk.nail.swing 0
execute as @a[scores={hk.sneak=1..}] at @s run scoreboard players set @s hk.sneak 0
# Dying sequence
execute as @a[scores={hk.health=..0}] at @s run function hk:systems/death
