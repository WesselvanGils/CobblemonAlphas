execute store result score $roll_3 rng run random value 1..6

# Reroll the second value if it's the same as any of the first 2
execute as @s if score $roll_1 rng = $roll_3 rng run function alphas:utils/roll/reroll_2
execute as @s if score $roll_2 rng = $roll_3 rng run function alphas:utils/roll/reroll_2