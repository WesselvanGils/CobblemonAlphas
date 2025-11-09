# called by internal/clock/tick_wild_alphas

# Check if a player is in range that heard the roar
execute if entity @a[distance=..16, tag=cobblemon_alphas.heard_roar] run return fail

# Rotate towards the nearest player and roar
tp @s ~ ~ ~ facing entity @p
playsound minecraft:entity.ender_dragon.growl hostile @a[distance=..16] ~ ~ ~
particle minecraft:dragon_breath ~ ~1 ~ 0 0 0 .5 100 normal @a[distance=..16]

# Make sure that all players who saw the effect don't see it again until they walk away
tag @a[distance=..16] add cobblemon_alphas.heard_roar
