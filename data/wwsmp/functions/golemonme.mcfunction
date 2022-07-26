scoreboard objectives add WWSMP.poppy.mobhealth dummy
scoreboard objectives add WWSMP.poppy.attacked dummy
execute store result score @s WWSMP.poppy.mobhealth run data get entity @s Health
scoreboard players remove @s[type=#wwsmp:mobskilledbygolems] WWSMP.poppy.mobhealth 5
execute as @s[type=#wwsmp:mobskilledbygolems] store result entity @s Health short 1 run scoreboard players get @s WWSMP.poppy.mobhealth
scoreboard players add @s[type=#wwsmp:mobskilledbygolems] WWSMP.poppy.attacked
kill @s[type=#wwsmp:mobskilledbygolems,score={WWSMP.poppy.attacked=5..}]
execute as @s[type=#wwsmp:mobskilledbygolems] run data modify entity @s ActiveEffects append {id:7,Duration:1,Amplifier:0}
