advancement revoke @s only hk:on_r-click
execute unless items entity @s weapon.mainhand carrot_on_a_stick[custom_data={hk_dream_nail:1}] run return 0
say dream nailed
execute on target run particle dust_color_transition{from_color:[1, 1, 1], to_color:[1, 1, 1], scale:4} ~ ~1 ~ 0 0 0 10 20 force @s 
execute as @s positioned ^ ^ ^1 if entity @e[type=villager, distance=..1, limit=1, sort=nearest] at @s run function hk:dream_nail/dream_dialogues/villager
execute as @s positioned ^ ^ ^1 if entity @e[type=pig, distance=..1, limit=1, sort=nearest] at @s run function hk:dream_nail/dream_dialogues/pig
