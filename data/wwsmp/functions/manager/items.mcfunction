scoreboard objectives add WWSMP.ItemTicks dummy "Counts the ticks an item has been lying around. 800 ticks means delete."
scoreboard players add @e[type=minecraft:item] WWSMP.ItemTicks 1
execute as @e[scores={WWSMP.ItemTicks=800..}] run tp @s @p[distance=..25]
kill @e[scores={WWSMP.ItemTicks=850..}]
