# Kill any riders that have lost their mount
kill @e[type=silverfish, tag=cobblemon_alphas.alpha_ai, predicate=!alphas:is_riding_cobblemon]

# Reduce the attack cooldown
execute as @e[type=cobblemon:pokemon, tag=cobblemon_alphas.processed] at @s run function alphas:internal/tick_alpha
