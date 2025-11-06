#> called by reset

execute as @e[type=cobblemon:pokemon, tag=!cobblemon_alphas.processed, nbt={Pokemon: {FormId: "alpha", PokemonOriginalTrainerType: "NONE"}}] run function alphas:internal/add_alpha_traits

schedule function alphas:internal/clock/1s_clock 1s replace
