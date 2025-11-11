# Called by internal/clock/1s_clock

# <----- Logic Stage ----->

# Setup any alphas that weren't initialized yet
execute if entity @s[tag=!cobblemon_alphas.processed] run function alphas:internal/alpha/setup/init

# See if we need to update the AI
function alphas:internal/alpha/ai/resolve

### Stop execution if we are in a pokemon battle ###
execute if data entity @s BattleId run return fail

# Attack nearby players
execute store result storage alphas:tmp damage int 1 run scoreboard players get @s cobblemon_alphas.attack_dmg
function alphas:internal/alpha/attack with storage alphas:tmp

# <----- Render stage ----->

# Have all alphas play a sound every 5s
function alphas:internal/effect/encounter

# Remove the tag so the player can hear the sound again if not in range of any alphas
execute as @a at @s unless entity @e[type=cobblemon:pokemon, tag=cobblemon_alphas.processed, distance=..25] run tag @s remove cobblemon_alphas.heard_roar