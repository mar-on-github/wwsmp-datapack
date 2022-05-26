function wwsmp:discord
# TP to lobby load commands
execute in overworld run kill @e[type=villager,tag=WWSMP.Lobby.Trigger]
execute in creative run kill @e[type=villager,tag=WWSMP.Lobby.Trigger]
execute in minecraft:creative run fill 378 123 -54 376 119 -52 minecraft:air
execute in minecraft:creative run fill 378 118 -54 376 118 -52 minecraft:grass_block
execute in minecraft:creative run setblock 377 118 -53 minecraft:beacon
execute in minecraft:creative run fill 378 117 -54 376 117 -52 minecraft:gold_block
scoreboard objectives add talked_to_vill minecraft.custom:minecraft.talked_to_villager
execute in minecraft:overworld unless entity @e[type=villager,tag=WWSMP.Lobby.Trigger,distance=0..] run summon villager -122 113 107 {VillagerData:{profession:"farmer",level:99,type:"plains"},Invulnerable:1,PersistenceRequired:1,NoAI:1,CustomName:'"Click me to go to the WWSMP special lobby"',Tags:["WWSMP.Lobby.Trigger"]}
execute in minecraft:creative unless entity @e[type=villager,tag=WWSMP.Lobby.Trigger,distance=0..] run summon villager 377 119 -53 {VillagerData:{profession:"farmer",level:99,type:"plains"},Invulnerable:1,PersistenceRequired:1,NoAI:1,CustomName:'"Click me to go to the WWSMP special lobby"',Tags:["WWSMP.Lobby.Trigger"]}
scoreboard objectives add WWSMP.Mini.AW.TP trigger "Go to Airwars"
scoreboard objectives add WWSMP.Trigger.Lobby.Command trigger "Go to lobby"
say WWSMP Datapack loaded. Last updated: 22/5/27