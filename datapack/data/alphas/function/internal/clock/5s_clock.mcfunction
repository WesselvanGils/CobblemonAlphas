#> called by reset

# Have all alphas play a sound every 5s
execute as @e[type=cobblemon:pokemon, tag=cobblemon_alphas.processed] at @s run function alphas:internal/effect/encounter

# Remove the tag so the player can hear the sound again if not in range of any alphas
execute as @a at @s unless entity @e[type=cobblemon:pokemon, tag=cobblemon_alphas.processed, distance=..25] run tag @s remove cobblemon_alphas.heard_roar

# Repeat in 5s
schedule function alphas:internal/clock/5s_clock 5s replace
