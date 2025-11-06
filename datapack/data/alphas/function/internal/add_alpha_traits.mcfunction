#> called by 1s_clock

# Make sure we don't process the same entity twice
tag @s add cobblemon_alphas.processed

# Make the alpha uncatchable
data modify entity @s Pokemon.PokemonData set value ["uncatchable","uncatchable","uncatchable"]

# Perfect 3 random IVs
scoreboard players set @s cobblemon_alphas.perfect 0
execute as @s run function alphas:internal/perfect_ivs

# Add hostile AI
execute as @s run function alphas:internal/replace_ai

# Start attack cooldown
scoreboard players set @s cobblemon_alphas.attack_cd 0

# Set attack damage
execute store result score @s cobblemon_alphas.attack_dmg run data get entity @s Pokemon.Level
scoreboard players remove @s cobblemon_alphas.attack_dmg 1
scoreboard players operation @s cobblemon_alphas.attack_dmg /= cobblemon_alphas_command cobblemon_alphas.attack_dmg
scoreboard players add @s cobblemon_alphas.attack_dmg 1