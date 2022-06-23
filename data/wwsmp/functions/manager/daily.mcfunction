scoreboard objectives add WWSMP.Daily dummy "Counts the ticks you've been online and alive. 24000 ticks is one day."
scoreboard players add @e[type=minecraft:player,tag=WWSMP.In.Survival] WWSMP.Daily 1
give @a[scores={WWSMP.Daily=24000..}] barrel{display:{Name:'"Daily gift box"',Lore:['"Every full clock that you have been online, will gift you one of these!"']},BlockEntityTag:{Items:[{Slot:0,id:"cake",Count:1},{Slot:1,id:"apple",Count:3},{Slot:2,id:"cobblestone",Count:7},{Slot:3,id:"stick",Count:17},{Slot:4,id:"dark_oak_sapling",Count:1},{Slot:5,id:"acacia_sapling",Count:1},{Slot:6,id:"firework_rocket",Count:1,tag:{LifeTime:30,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:10,Explosions:[{Type:4,Colors:[I;16777045]}]}}}}}]}} 1
tag @a[tag=!Bert.has.acc,scores={WWSMP.Daily=24000..}] add Bert.new.acc
scoreboard players set @a[scores={WWSMP.Daily=24000..}] WWSMP.Daily 0