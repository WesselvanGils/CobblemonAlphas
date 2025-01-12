# Repeat
schedule function alphas:utils/clock/20t 20t replace

# Tag all player pokemon
execute as @e[type=cobblemon:pokemon, tag=!alphas.non_wild] if data entity @s Owner run tag @s add alphas.non_wild

# Spawn wild alpha pokemon around the player in a 128 radius
# This is split up in 4 parts to reduce lag
function alphas:utils/clock/subtick
schedule function alphas:utils/clock/subtick 1t
schedule function alphas:utils/clock/subtick 2t
schedule function alphas:utils/clock/subtick 3t
schedule function alphas:utils/clock/subtick 4t
schedule function alphas:utils/clock/subtick 5t
schedule function alphas:utils/clock/subtick 6t
schedule function alphas:utils/clock/subtick 7t