schedule function alphas:utils/clock/3t 3t replace

execute as @e[nbt={Pokemon:{Features:[{"cobblemon:feature_id":"alpha", alpha:1b}]}}, tag=!non_wild] run function alphas:spawning/replace_uncatchable
