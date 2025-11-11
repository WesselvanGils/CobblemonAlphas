#> called from internal/clock/tick_wild_alphas

# Remove the cooldown if it is present
execute if score @s cobblemon_alphas.attack_cd matches 1 run return run scoreboard players remove @s cobblemon_alphas.attack_cd 1

# Check if a player is in range
execute if entity @p[distance=2..] run return fail

# Damage macro for dynamic attack values
$damage @p $(damage) mob_attack by @s from @s

# Set the cooldown if we hit
scoreboard players add @s cobblemon_alphas.attack_cd 1