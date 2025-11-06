# called by 5s_clock

# Check if a player is in range
execute unless entity @a[distance=..16] run return fail

# Rotate towards the nearest player and roar
tp @s ~ ~ ~ facing entity @p
playsound minecraft:entity.ender_dragon.growl hostile @a[distance=..16, tag=!cobblemon_alphas.heard_roar] ~ ~ ~
particle minecraft:dragon_breath ~ ~1 ~ 0 0 0 .5 100 normal @a[distance=..16, tag=!cobblemon_alphas.heard_roar]

# Make sure that all players who saw the effect don't see it again until they walk away
tag @a[distance=..16] add cobblemon_alphas.heard_roar
