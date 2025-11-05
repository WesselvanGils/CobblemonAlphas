execute if predicate alphas:one_in_six if score @s cobblemon_alphas_perfect matches ..2 as @s run function alphas:internal/perfect_iv_helper {iv: "hp"}
execute if predicate alphas:one_in_six if score @s cobblemon_alphas_perfect matches ..2 as @s run function alphas:internal/perfect_iv_helper {iv: "attack"}
execute if predicate alphas:one_in_six if score @s cobblemon_alphas_perfect matches ..2 as @s run function alphas:internal/perfect_iv_helper {iv: "defence"}
execute if predicate alphas:one_in_six if score @s cobblemon_alphas_perfect matches ..2 as @s run function alphas:internal/perfect_iv_helper {iv: "special_attack"}
execute if predicate alphas:one_in_six if score @s cobblemon_alphas_perfect matches ..2 as @s run function alphas:internal/perfect_iv_helper {iv: "special_defence"}
execute if predicate alphas:one_in_six if score @s cobblemon_alphas_perfect matches ..2 as @s run function alphas:internal/perfect_iv_helper {iv: "speed"}

execute as @s unless score @s cobblemon_alphas_perfect matches 3 run function alphas:internal/perfect_ivs