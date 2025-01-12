$execute at @a as @e[type=cobblemon:pokemon, distance=$(min)..$(max), tag=!alphas.non_wild, tag=!alphas.failed_alpha] if predicate alphas:fully_evolved run function alphas:spawning/replace_alpha
