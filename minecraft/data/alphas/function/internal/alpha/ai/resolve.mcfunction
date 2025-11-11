#> called from internal/clock/tick_wild_alphas

# Remove the custom AI silverfish if we start a battle
execute if data entity @s BattleId if predicate alphas:has_ai run function alphas:internal/alpha/ai/detach

# Attach a silverfish as the AI unless it is already present
execute unless data entity @s BattleId unless predicate alphas:has_ai run function alphas:internal/alpha/ai/attach