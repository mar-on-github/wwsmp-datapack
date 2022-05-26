tellraw @p ["",{"text":"To reset the Airwars map, please run the commands in this file through either console, from in-game, or through an Rcon (script) thank you.","color":"yellow"}]
# To reset the Airwars map, please run the following commands:

# 1. /mv delete mini/airwars
# 2. /mv confirm
# 3. /mv create mini/airwars normal -g VoidGenerator

# After that, 
# Run the following commands:
# /mvm set Alias "Minigame: Airwars" mini/airwars
# /mvm difficulty peaceful mini/airwars
# /mvrule doMobSpawning false mini/airwars
# /mvrule showDeathMessages false mini/airwars
# /mvrule doDaylightCycle false mini/airwars
# /mvrule doWeatherCycle false mini/airwars
# /mvrule fallDamage false mini/airwars
# /mvrule keepInventory true mini/airwars

# (Preferably, put these in a shell script and run them by RCon already)