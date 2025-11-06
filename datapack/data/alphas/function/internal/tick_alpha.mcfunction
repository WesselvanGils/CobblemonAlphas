#> called from main

# Check if the attack is on cooldown and if a player is in range
execute if score @s cobblemon_alphas.attack_cd matches 1.. run return run scoreboard players remove @s cobblemon_alphas.attack_cd 1
execute if entity @p[distance=2..] run return fail

# Take the precomputed attack value and deal it as damage
execute store result storage alphas:tmp damage int 1 run scoreboard players get @s cobblemon_alphas.attack_dmg
function alphas:internal/attack with storage alphas:tmp

# Reset the attack cooldown
scoreboard players set @s cobblemon_alphas.attack_cd 20