#> called by internal/alpha/perfect_ivs

# Check to see if the IV is already perfect and abort if so
$execute store result score cobblemon_alphas_command cobblemon_alphas.perfect run data get entity @s Pokemon.IVs."cobblemon:$(iv)"
execute if score cobblemon_alphas_command cobblemon_alphas.perfect matches 31 run return fail

# Perfect the IV and increase the number of perfected IVs by 1
$data modify entity @s Pokemon.IVs."cobblemon:$(iv)" set value 31
scoreboard players add @s cobblemon_alphas.perfect 1