# Setup
scoreboard objectives add cobblemon_alphas.perfect dummy
scoreboard objectives add cobblemon_alphas.attack_dmg dummy
scoreboard objectives add cobblemon_alphas.attack_cd dummy

## Dummy player for commands
scoreboard players set cobblemon_alphas_command cobblemon_alphas.perfect 0
scoreboard players set cobblemon_alphas_command cobblemon_alphas.attack_dmg 5

# Start clocks
function alphas:internal/clock/1s_clock
function alphas:internal/clock/5s_clock

# Notify user that the pack has loaded correctly
tellraw @a "[Cobblemon Alphas] Initialized!"