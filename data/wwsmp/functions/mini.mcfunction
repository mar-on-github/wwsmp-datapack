schedule clear wwsmp:mini/closedown
execute if entity @a[tag=WWSMP.In.Mini.NormalLive] in minecraft:mini/normallive run function wwsmp:mini/normallive
#execute if entity @a[tag=WWSMP.In.Mini.Bedwars1] in minecraft:mini/bedwars1 run function wwsmp:mini/bedwars1
execute if entity @a[tag=WWSMP.In.Mini.airwars] in minecraft:mini/airwars run function wwsmp:mini/airwars
schedule function wwsmp:mini/closedown 5s
