execute store result score $roll_1 math run random value 1..6
execute store result score $roll_2 math run random value 1..6
execute store result score $roll_3 math run random value 1..6

# Reroll the second value if it's the same as the first
execute as @s if score $roll_1 math = $roll_2 math run function alphas:utils/roll/reroll_1

# Reroll the second value if it's the same as any of the first 2
execute as @s if score $roll_1 math = $roll_3 math run function alphas:utils/roll/reroll_2
execute as @s if score $roll_2 math = $roll_3 math run function alphas:utils/roll/reroll_2