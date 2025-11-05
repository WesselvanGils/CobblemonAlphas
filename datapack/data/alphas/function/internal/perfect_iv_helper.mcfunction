$execute store result score cobblemon_alphas_command cobblemon_alphas_perfect run data get entity @s Pokemon.IVs."cobblemon:$(iv)"

$execute unless score cobblemon_alphas_command cobblemon_alphas_perfect matches 31 run data modify entity @s Pokemon.IVs."cobblemon:$(iv)" set value 31
execute unless score cobblemon_alphas_command cobblemon_alphas_perfect matches 31 run scoreboard players add @s cobblemon_alphas_perfect 1