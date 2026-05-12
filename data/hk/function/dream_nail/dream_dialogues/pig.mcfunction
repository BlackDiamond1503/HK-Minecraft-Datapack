execute store result score #randomroll hk.dream_nail.random_idx run random value 1..3
execute if score #randomroll hk.dream_nail.random_idx matches 1 run tellraw @s {text: "Pig...", color: "light_purple"}
execute if score #randomroll hk.dream_nail.random_idx matches 2 run tellraw @s {text: "Pig...", color: "light_purple"}
execute if score #randomroll hk.dream_nail.random_idx matches 3 run tellraw @s {text: "Pig...", color: "light_purple"}
