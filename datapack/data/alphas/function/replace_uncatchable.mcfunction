data modify storage alpha:replace species set string entity @s Pokemon.Species
data modify storage alpha:replace level set from entity @s Pokemon.Level

execute at @s run function alphas:spawn_alpha with storage alpha:replace
tp @s ~ -300 ~
kill @s