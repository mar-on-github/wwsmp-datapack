scoreboard players add @a WWSMP.Protips.when.ticks 1
scoreboard objectives add WWSMP.Protips.trigger trigger

# Triggered protips
execute as @a[scores={WWSMP.Protips.trigger=1}] run function wwsmp:protips/1


scoreboard players set @a WWSMP.Protips.trigger 0
scoreboard players enable @a WWSMP.Protips.trigger