execute if score @s hk.soul.spell_use_timer matches ..0 run return 0
execute if score @s hk.soul matches ..32 run return 0
scoreboard players remove @s hk.soul 33
scoreboard players remove @s hk.soul.ui 33

execute if score @s hk.pitch matches -90..-40 run say shriek
execute if score @s hk.pitch matches -40..40 run function hk:soul/spells/spirit_spawn
execute if score @s hk.pitch matches 40..90 run say desolate

scoreboard players set @s hk.soul.spell_use_timer -20