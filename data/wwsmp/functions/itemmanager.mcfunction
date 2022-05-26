scoreboard objectives add WWSMP.ItemTicks dummy "Counts the ticks an item has been lying around. 800 ticks means delete."
scoreboard players add @e[type=minecraft:item] WWSMP.ItemTicks 1
kill @e[scores={WWSMP.ItemTicks=800..}]
