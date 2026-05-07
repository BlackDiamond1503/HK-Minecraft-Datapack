# X component
scoreboard players operation $in hk.const = @s hk.yaw
function hk:math/trig/lookup_tables/sin
scoreboard players operation @s hk.motion.x = $out hk.const
scoreboard players operation @s hk.motion.x *= @s hk.velocity
scoreboard players operation @s hk.motion.x *= #-1 hk.const

# Z component
scoreboard players operation $in hk.const = @s hk.yaw
function hk:math/trig/lookup_tables/cos
scoreboard players operation @s hk.motion.z = $out hk.const
scoreboard players operation @s hk.motion.z *= @s hk.velocity