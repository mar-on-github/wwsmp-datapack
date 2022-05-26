execute as @a if block ~ ~-1 ~ #minecraft:dirt run effect give @s minecraft:slowness 1 2 true
execute as @e[type=player,distance=0..] positioned as @s if block ~ ~-1 ~ stone if block ~ ~-2 ~ minecraft:redstone_block run tellraw @s {"text":"Hitting the road. Where wil you go?","color":"yellow"}
execute as @e[type=player,distance=0..] positioned as @s if block ~ ~-1 ~ stone if block ~ ~-2 ~ minecraft:redstone_block run teleport @s 1004 160 -1002
