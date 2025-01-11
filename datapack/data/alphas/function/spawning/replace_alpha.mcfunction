execute store result score $roll_1 rng run random value 1..5

execute as @s if score $roll_1 rng matches 1..4 run tag @s add failed_alpha
execute as @s if score $roll_1 rng matches 5 run function alphas:spawning/setup_alpha
