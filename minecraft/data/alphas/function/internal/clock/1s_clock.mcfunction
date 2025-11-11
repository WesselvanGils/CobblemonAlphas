#> called by reset

execute as @e[type=cobblemon:pokemon, nbt={Pokemon: {FormId: "alpha", PokemonOriginalTrainerType: "NONE"}}] at @s run function alphas:internal/clock/tick_wild_alphas

schedule function alphas:internal/clock/1s_clock 1s replace
