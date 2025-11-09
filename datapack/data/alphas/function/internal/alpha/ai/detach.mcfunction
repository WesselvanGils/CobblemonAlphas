#> called from internal/alpha/ai/resolve

# Kill the custom silverfish AI
kill @n[type=silverfish, tag=cobblemon_alphas.alpha_ai]

# Make the pokemon catchable in battle
data modify entity @s Pokemon.PokemonData set value []
