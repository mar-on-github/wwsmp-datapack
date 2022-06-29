scoreboard objectives add WWSMP.Protips.which dummy
scoreboard objectives add WWSMP.Protips.when.ticks dummy
schedule function wwsmp:manager/protips 24000t
scoreboard players add @a WWSMP.Protips.which 1
execute as @a[scores={WWSMP.Protips.when.ticks=144000}] run function wwsmp:protips/selector
