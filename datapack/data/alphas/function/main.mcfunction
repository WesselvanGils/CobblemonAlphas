# If someone is battleing an alpha Pokemon, stop them
execute as @e[type=cobblemon:pokemon] if data entity @s BattleId on owner unless entity @s[tag=stopbattle] run function alphas:schedule_stopbattle

# Replace any wild alphas that spawn with ones that have 3 perfects IVs
execute as @e[type=cobblemon:pokemon, tag=!non_wild] if data entity @s Owner run tag @s add non_wild
# execute as @e[nbt={Pokemon:{Features:[{"cobblemon:feature_id":"alpha", alpha:1b}]}}, tag=!non_wild] run function alphas:spawning/replace_uncatchable
