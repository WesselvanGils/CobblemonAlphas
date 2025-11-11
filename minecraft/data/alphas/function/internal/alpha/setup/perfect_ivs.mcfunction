#> called by add_alpha_traits

# Roll for every stat to see if they are perfected (relative probabilities based on the order)
execute if predicate alphas:p1_iv_roll if score @s cobblemon_alphas.perfect matches ..2 as @s run function alphas:internal/alpha/setup/perfect_iv_helper {iv: "hp"}
execute if predicate alphas:p2_iv_roll if score @s cobblemon_alphas.perfect matches ..2 as @s run function alphas:internal/alpha/setup/perfect_iv_helper {iv: "attack"}
execute if predicate alphas:p3_iv_roll if score @s cobblemon_alphas.perfect matches ..2 as @s run function alphas:internal/alpha/setup/perfect_iv_helper {iv: "defence"}
execute if predicate alphas:p4_iv_roll if score @s cobblemon_alphas.perfect matches ..2 as @s run function alphas:internal/alpha/setup/perfect_iv_helper {iv: "special_attack"}
execute if predicate alphas:p5_iv_roll if score @s cobblemon_alphas.perfect matches ..2 as @s run function alphas:internal/alpha/setup/perfect_iv_helper {iv: "special_defence"}
execute if predicate alphas:p6_iv_roll if score @s cobblemon_alphas.perfect matches ..2 as @s run function alphas:internal/alpha/setup/perfect_iv_helper {iv: "speed"}

# Try again for all check if we perfected less than 3 IVs
execute as @s unless score @s cobblemon_alphas.perfect matches 3 run function alphas:internal/alpha/setup/perfect_ivs