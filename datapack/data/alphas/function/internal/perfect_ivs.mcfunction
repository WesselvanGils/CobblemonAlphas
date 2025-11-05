execute if predicate alphas:one_in_six if score @s cobblemon_alphas_perfect matches ..2 as @s run function alphas:internal/perfect_iv_helper {iv: "hp"}
execute if predicate alphas:one_in_six if score @s cobblemon_alphas_perfect matches ..2 as @s run function alphas:internal/perfect_iv_helper {iv: "attack"}
execute if predicate alphas:one_in_six if score @s cobblemon_alphas_perfect matches ..2 as @s run function alphas:internal/perfect_iv_helper {iv: "defense"}
execute if predicate alphas:one_in_six if score @s cobblemon_alphas_perfect matches ..2 as @s run function alphas:internal/perfect_iv_helper {iv: "special_attack"}
execute if predicate alphas:one_in_six if score @s cobblemon_alphas_perfect matches ..2 as @s run function alphas:internal/perfect_iv_helper {iv: "special_defence"}
execute if predicate alphas:one_in_six if score @s cobblemon_alphas_perfect matches ..2 as @s run function alphas:internal/perfect_iv_helper {iv: "speed"}

execute if score @s cobblemon_alphas_perfect matches 3 run tag @s add cobblemon_alphas.processed
