# Repeat
schedule function alphas:utils/clock/20t 20t replace

# Tag all player pokemon
execute as @e[type=cobblemon:pokemon, tag=!non_wild] if data entity @s Owner run tag @s add non_wild

# Spawn wild alpha pokemon
execute at @a as @e[type=cobblemon:pokemon, distance=..128, predicate=alphas:fully_evolved, tag=!non_wild, tag=!failed_alpha] run function alphas:spawning/replace_alpha