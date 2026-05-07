# Dash
execute if score @s hk.dash.used matches 1.. run return 0
execute if score @s hk.dash.colldown_left matches ..0 run return 0

tp @s ~ ~0.5 ~
scoreboard players set @s hk.tp 1

attribute @s gravity base set 0.0
schedule function hk:schedules/gravity_reset 5t

scoreboard players set @s hk.dash.used 1
scoreboard players operation @s hk.dash.colldown_left = @s hk.dash.colldown

function hk:movement/dash/boost1_spawn
function hk:movement/dash/boost1_spawn
function hk:movement/dash/boost1_spawn
function hk:movement/dash/boost1_spawn
function hk:movement/dash/boost1_spawn
function hk:movement/dash/boost1_spawn