# VEXES ARE OP AND ILLUSIONERS ARE COOL
scoreboard objectives add wwsmp.VexTicks
execute as @e[type=vex] run scoreboard players add @e[type=evoker,sort=nearest] wwsmp.VexTicks 1
kill @e[type=vex]
execute as @e[scores={wwsmp.VexTicks=20..}] run summon illusioner
execute as @e[scores={wwsmp.VexTicks=20..}] run scoreboard players reset @s wwsmp.VexTicks
