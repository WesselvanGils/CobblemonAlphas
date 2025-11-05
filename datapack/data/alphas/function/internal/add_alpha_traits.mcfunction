tag @s add cobblemon_alphas.processed

data modify entity @s Pokemon.PokemonData set value ["uncatchable","uncatchable","uncatchable"]

scoreboard players set @s cobblemon_alphas_perfect 0

execute as @s run function alphas:internal/perfect_ivs
