# Commands imported and adapted from on tick script
execute in minecraft:mini/airwars as @a[tag=WWSMP.In.Mini.airwars,scores={wwsmp.mini.airwars.blaster=1..},nbt={SelectedItem:{tag:{wwsmp.mini.airwars.blaster:1}}}] at @s run setblock ~ ~-1 ~ white_wool
scoreboard players set @a[tag=WWSMP.In.Mini.airwars] wwsmp.mini.airwars.blaster 0
item replace entity @a[tag=WWSMP.In.Mini.airwars] container.0 with minecraft:carrot_on_a_stick{wwsmp.mini.airwars.blaster:1,display:{Name:'[{"text":"Wool","italic":false,"color":"white"},{"text":" "},{"text":"Wool placer","color":"aqua"}]'},Enchantments:[{id:"efficiency",lvl:6},{id:"sharpness",lvl:3}],Unbreakable:1} 1
item replace entity @a[tag=WWSMP.In.Mini.airwars] container.1 with golden_shovel{display:{Name:'[{"text":"Banana Spoon","italic":false,"color":"yellow"}]'},Enchantments:[{id:"sharpness",lvl:10}],Unbreakable:1} 1
item replace entity @a[tag=WWSMP.In.Mini.airwars] container.2 with shears{display:{Name:'[{"text":"Wool","italic":false,"color":"white"},{"text":" ","color":"yellow"},{"text":"Cutter","color":"dark_red","italic":true,"bold":true}]'},Enchantments:[{id:"efficiency",lvl:6},{id:"sharpness",lvl:3}],Unbreakable:1} 1
item replace entity @a[tag=WWSMP.In.Mini.airwars] container.3 with bow{display:{Name:'[{"text":"AirBow","italic":false,"color":"green"}]'}} 1
item replace entity @a[tag=WWSMP.In.Mini.airwars] container.10 with arrow
# Adjustments or replacements by me
#  On player death
scoreboard players set @p[tag=!WWSMP.In.Mini.airwars] wwsmp.mini.airwars.death 0
tag @p[scores={wwsmp.mini.airwars.death=1..},tag=WWSMP.In.Mini.airwars] add wwsmp.mini.airwars.died
scoreboard players set @p[tag=wwsmp.mini.airwars.died] wwsmp.mini.airwars.death 0
scoreboard players add @p[tag=wwsmp.mini.airwars.died] wwsmp.mini.airwars.deaths 1
execute in minecraft:mini/airwars if entity @p[tag=wwsmp.mini.airwars.died] run tellraw @e[type=player,distance=0..,tag=!wwsmp.mini.airwars.died] ["",{"selector":"@p[tag=wwsmp.mini.airwars.died]","color":"dark_green"},{"text":" died!","color":"dark_green"},{"text":" Which means 500 emeralds for you! They'll be stored in your BertBanking account!","color":"yellow"},{"text":"\n\n"},{"text":"Times ","color":"gold"},{"selector":"@p[tag=wwsmp.mini.airwars.died]","color":"gold"},{"text":" died:","color":"gold"},{"text":" "},{"score":{"name":"@p[tag=wwsmp.mini.airwars.died]","objective":"wwsmp.mini.airwars.deaths"},"color":"dark_blue"}]
execute in minecraft:mini/airwars if entity @p[tag=wwsmp.mini.airwars.died] run scoreboard players add @e[distance=0..,tag=!wwsmp.mini.airwars.died] Berts_Banking_Credit 500
execute in minecraft:mini/airwars if entity @p[tag=wwsmp.mini.airwars.died] run tellraw @p[tag=wwsmp.mini.airwars.died] ["",{"text":"You died.","color":"red"},{"text":" That'll cost you 300 emeralds, withdrawn from your BertBanking account.","color":"yellow"},{"text":"\n\n"},{"text":"F for you.","color":"gray"},{"text":"\n\n"},{"text":"Times you died:","color":"gold"},{"text":" "},{"score":{"name":"@p[tag=wwsmp.mini.airwars.died]","objective":"wwsmp.mini.airwars.deaths"},"color":"dark_blue"}]
execute in minecraft:mini/airwars if entity @p[tag=wwsmp.mini.airwars.died] run scoreboard players remove @p[tag=wwsmp.mini.airwars.died] Berts_Banking_Credit 300
tag @a remove wwsmp.mini.airwars.died

execute in minecraft:mini/airwars if block 0 65 0 air run function wwsmp:airwarsautoreset/load
