data modify entity @s Pokemon.PokemonData set value ["uncatchable","uncatchable","uncatchable"]

execute unless score @s cobblemon_alphas_perfect matches -2147483648..2147483647 run scoreboard players set @s cobblemon_alphas_perfect 0

execute as @s run function alphas:internal/perfect_ivs
