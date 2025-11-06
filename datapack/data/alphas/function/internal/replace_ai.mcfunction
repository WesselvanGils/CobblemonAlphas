#> called from add_alpha_traits

# Summon silverfish to act as AI
summon silverfish ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["cobblemon_alphas.alpha_ai"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}]}
ride @n[type=silverfish, tag=cobblemon_alphas.alpha_ai] mount @s