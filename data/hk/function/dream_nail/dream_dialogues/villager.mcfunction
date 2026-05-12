execute store result score #randomroll hk.dream_nail.random_idx run random value 1..3
execute if score #randomroll hk.dream_nail.random_idx matches 1 run tellraw @s {text: "I need more emeralds to pay my rent, I am already overdue...", color: "light_purple"}
execute if score #randomroll hk.dream_nail.random_idx matches 2 run tellraw @s {text: "I'd like to have a better golem here, this one is useless...", color: "light_purple"}
execute if score #randomroll hk.dream_nail.random_idx matches 3 run tellraw @s {text: "I cannot get a single trade yet, meaby I have to lower prices...", color: "light_purple"}
