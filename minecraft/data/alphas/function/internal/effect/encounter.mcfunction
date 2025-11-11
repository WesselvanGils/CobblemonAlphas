# called by internal/clock/tick_wild_alphas

# Check if a player is in range that heard the roar
execute if entity @a[distance=..16, tag=cobblemon_alphas.heard_roar] run return fail

# Rotate towards the nearest player and roar
tp @s ~ ~ ~ facing entity @p
playsound minecraft:entity.ender_dragon.growl hostile @a[distance=..16] ~ ~ ~
particle minecraft:poof ~ ~0.5 ~ 0 0 0 .5 30 normal @a[distance=..16]
particle minecraft:flash ~ ~0.5 ~ 0 0 0 .5 1 normal @a[distance=..16]

# Do a fake hit and dismount the player
damage @p[distance=..16, tag=!cobblemon_alphas.heard_roar] 1 mob_attack by @s from @s
ride @p dismount

# Make sure that all players who saw the effect don't see it again until they walk away
tag @a[distance=..16] add cobblemon_alphas.heard_roar
