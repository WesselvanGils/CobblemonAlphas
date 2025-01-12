# Grab some basic data
data modify storage alpha:replace species set string entity @s Pokemon.Species
data modify storage alpha:replace level set from entity @s Pokemon.Level

# Copy over the IVs
data modify storage alpha:replace healthIv set from entity @s Pokemon.IVs.cobblemon:hp
data modify storage alpha:replace attackIv set from entity @s Pokemon.IVs.cobblemon:attack
data modify storage alpha:replace defenceIv set from entity @s Pokemon.IVs.cobblemon:defence
data modify storage alpha:replace spattackIv set from entity @s Pokemon.IVs.cobblemon:special_attack
data modify storage alpha:replace spdefenceIv set from entity @s Pokemon.IVs.cobblemon:special_defence
data modify storage alpha:replace speedIv set from entity @s Pokemon.IVs.cobblemon:speed

# Roll 3 random numbers to be the perfect Ivs
execute as @s run function alphas:utils/roll/roll_3

# If any rolled health, make it perfect
execute if score $roll_1 rng matches 1 run data modify storage alpha:replace healthIv set value 31
execute if score $roll_2 rng matches 1 run data modify storage alpha:replace healthIv set value 31
execute if score $roll_3 rng matches 1 run data modify storage alpha:replace healthIv set value 31

# If any rolled attack, make it perfect
execute if score $roll_1 rng matches 2 run data modify storage alpha:replace attackIv set value 31
execute if score $roll_2 rng matches 2 run data modify storage alpha:replace attackIv set value 31
execute if score $roll_3 rng matches 2 run data modify storage alpha:replace attackIv set value 31

# If any rolled defence, make it perfect
execute if score $roll_1 rng matches 3 run data modify storage alpha:replace defenceIv set value 31
execute if score $roll_2 rng matches 3 run data modify storage alpha:replace defenceIv set value 31
execute if score $roll_3 rng matches 3 run data modify storage alpha:replace defenceIv set value 31

# If any rolled special attack, make it perfect
execute if score $roll_1 rng matches 4 run data modify storage alpha:replace spattackIv set value 31
execute if score $roll_2 rng matches 4 run data modify storage alpha:replace spattackIv set value 31
execute if score $roll_3 rng matches 4 run data modify storage alpha:replace spattackIv set value 31

# If any rolled special defence, make it perfect
execute if score $roll_1 rng matches 5 run data modify storage alpha:replace spdefenceIv set value 31
execute if score $roll_2 rng matches 5 run data modify storage alpha:replace spdefenceIv set value 31
execute if score $roll_3 rng matches 5 run data modify storage alpha:replace spdefenceIv set value 31

# If any rolled speed, make it perfect
execute if score $roll_1 rng matches 6 run data modify storage alpha:replace speedIv set value 31
execute if score $roll_2 rng matches 6 run data modify storage alpha:replace speedIv set value 31
execute if score $roll_3 rng matches 6 run data modify storage alpha:replace speedIv set value 31

execute at @s run function alphas:spawning/spawn_alpha with storage alpha:replace

tag @s add me
execute at @s run tag @n[type=cobblemon:pokemon, distance=..1, tag=!me] add alphas.non_wild

tp @s ~ -300 ~
kill @s