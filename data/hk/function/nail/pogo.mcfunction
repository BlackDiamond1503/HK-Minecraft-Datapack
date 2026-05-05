attribute @s gravity base set 0.1
execute unless predicate hk:on_ground as @s run execute at @s run summon wind_charge ~ ~-0.1 ~ {Motion:[0.0,0.1,0.0],ExplosionPower:0,Tags:["instant_boost", "hk.no_damage"],NoGravity:1b}
schedule function hk:schedules/gravity_reset 10t
scoreboard players set @s hk.wings.used 0