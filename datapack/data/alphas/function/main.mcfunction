# If someone is battleing an alpha Pokemon, stop them
execute as @e[type=cobblemon:pokemon] if data entity @s BattleId on owner unless entity @s[tag=stopbattle] run function alphas:schedule_stopbattle

# Replace any alpha pokemon with uncatchable ones
execute as @e[nbt={Pokemon:{Features:[{"cobblemon:feature_id":"alpha", alpha:1b}]}}] unless data entity @s Pokemon.PokemonData run function alphas:replace_uncatchable