attribute @s gravity base set 0.15
execute unless predicate hk:on_ground as @s run execute at @s run summon wind_charge ~ ~-0.1 ~ {Motion:[0.0,0.1,0.0],ExplosionPower:0,Tags:["instant_boost", "hk.no_damage"],NoGravity:1b}
tp @s ~ ~ ~
schedule function hk:schedules/gravity_reset 6t

scoreboard players set @s hk.wings.used 0
scoreboard players set @s hk.dash.used 0