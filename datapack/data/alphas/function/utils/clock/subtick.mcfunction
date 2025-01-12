# Reset the scoreboard
scoreboard players set $min range 16

# Calculate the new minmum range
scoreboard players operation $min range *= $iter range
execute store result score $max range run scoreboard players get $min range

# Calculate the new maximum range
scoreboard players add $max range 16

# Store the values in storage
execute store result storage alpha:range min int 1 run scoreboard players get $min range
execute store result storage alpha:range max int 1 run scoreboard players get $max range

# Check for alphas
function alphas:utils/clock/select_alphas with storage alpha:range

# Increment the loop
scoreboard players add $iter range 1

# Reset to 0 if we're at 8 because 8 * 16 = 128 for $min
execute if score $iter range matches 8 run scoreboard players set $iter range 0