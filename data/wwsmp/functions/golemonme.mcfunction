scoreboard objectives add WWSMP.mobhealth dummy
execute store result score @s WWSMP.mobhealth run data get entity @s Health
scoreboard players remove @s[type=#wwsmp:mobskilledbygolems] WWSMP.mobhealth 5
execute as @s[type=#wwsmp:mobskilledbygolems] store result entity @s Health short 1 run scoreboard players get @s WWSMP.mobhealth
