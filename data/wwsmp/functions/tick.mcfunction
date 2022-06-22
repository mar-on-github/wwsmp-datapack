# Trigger.command
execute as @e[scores={WWSMP.Trigger.Lobby.Command=1..},type=player,tag=!WWSMP.In.Lobby] run tag @s add WWSMP.Lobby.Triggered
scoreboard players reset @a WWSMP.Trigger.Lobby.Command
scoreboard players enable @a[tag=!WWSMP.In.Lobby] WWSMP.Trigger.Lobby.Command
# TPtolobby
execute as @a[tag=WWSMP.Lobby.Triggered] run tellraw @s {"text":"You will now be send to the Witches World SMP special lobby.","color":"yellow"}
execute as @a[tag=WWSMP.Lobby.Triggered,tag=!WWSMP.In.Lobby] run tellraw @a[tag=!WWSMP.Lobby.Triggered] [{"selector":"@s","color":"dark_green"},{"text":"went to the WWSMP lobby.","color":"yellow"}]
execute in minecraft:speciallobby as @a[tag=WWSMP.Lobby.Triggered] run tp @s 11 61 0
execute in minecraft:speciallobby as @a[tag=WWSMP.Lobby.Triggered] run effect give @s minecraft:hero_of_the_village 200 10 true
tag @a remove WWSMP.Lobby.Triggered

# World modes
tag @a remove WWSMP.In.Lobby
tag @a remove WWSMP.In.Survival
tag @a remove WWSMP.In.Creative
tag @a remove WWSMP.Mini.In.Mini
tag @a remove WWSMP.In.Mini.NormalLive
tag @a remove WWSMP.In.Mini.Bedwars1
tag @a remove WWSMP.In.Mini.airwars


execute in minecraft:speciallobby as @a[distance=0..] run tag @s add WWSMP.In.Lobby
gamemode adventure @a[tag=WWSMP.In.Lobby,tag=!wwsmp.mapeditor]
effect give @a[tag=WWSMP.In.Lobby] minecraft:weakness 10 255 true
effect give @a[tag=WWSMP.In.Lobby] minecraft:saturation 10 255 true
effect give @a[tag=WWSMP.In.Lobby] minecraft:regeneration 10 255 true

execute in minecraft:overworld as @a[distance=0..] run tag @s add WWSMP.In.Survival
gamemode survival @a[tag=WWSMP.In.Survival,tag=!wwsmp.mapeditor]

execute in minecraft:creative as @a[distance=0..] run tag @s add WWSMP.In.Creative
gamemode creative @a[tag=WWSMP.In.Creative,tag=!wwsmp.mapeditor]

execute in minecraft:mini_normallive as @a[distance=0..] run tag @s add WWSMP.Mini.In.Mini
execute in minecraft:mini_normallive as @a[distance=0..] run tag @s add WWSMP.In.Mini.NormalLive
gamemode adventure @a[tag=WWSMP.In.Mini.NormalLive,tag=!wwsmp.mapeditor]

execute in minecraft:mini_bedwars1 as @a[distance=0..] run tag @s add WWSMP.Mini.In.Mini
execute in minecraft:mini_bedwars1 as @a[distance=0..] run tag @s add WWSMP.In.Mini.Bedwars1
gamemode survival @a[tag=WWSMP.In.Mini.Bedwars1,tag=!wwsmp.mapeditor]

execute in minecraft:mini_airwars as @a[distance=0..] run tag @s add WWSMP.Mini.In.Mini
execute in minecraft:mini_airwars as @a[distance=0..] run tag @s add WWSMP.In.Mini.airwars
gamemode survival @a[tag=WWSMP.In.Mini.airwars,tag=!wwsmp.mapeditor]

# Execute minifunctions only if player is in them
execute if entity @a[tag=WWSMP.Mini.In.Mini] run function wwsmp:mini

# WWSMP.Survival.Trigger
execute in minecraft:speciallobby positioned -21 62 0 run tag @a[distance=..2] add WWSMP.Survival.Triggered
execute in minecraft:speciallobby as @a[tag=WWSMP.Survival.Triggered,distance=0..] run tellraw @s [{"text":"You will now be send to the Witches World SMP survival world.","color":"yellow"},{"text":" Use ","color":"dark_red"},{"text":"/lobby","color":"dark_blue","clickEvent":{"action":"suggest_command","value":"/lobby"}},{"text":" to return.","color":"dark_red"}]
tag @a[tag=WWSMP.Survival.Triggered] remove WWSMP.In.Lobby
execute in minecraft:overworld run setblock -137 214 101 barrier
execute in minecraft:speciallobby as @a[tag=WWSMP.Survival.Triggered,distance=0..] run execute in minecraft:overworld run tp @s -137 215 101
execute in minecraft:overworld positioned -137 215 101 as @a[distance=..2,tag=WWSMP.Survival.Triggered] run effect give @s blindness 20 255
execute in minecraft:overworld positioned -137 215 101 as @a[distance=..2,tag=WWSMP.Survival.Triggered] run effect give @s slowness 20 255
execute in minecraft:overworld positioned -137 215 101 as @a[distance=..2,tag=WWSMP.Survival.Triggered] run spreadplayers -136 101 5000 900000 false @s
spreadplayers x z 5000 20000 false @s

execute in minecraft:overworld positioned -137 215 101 as @a[distance=2..,tag=WWSMP.Survival.Triggered] run effect clear @s blindness
execute in minecraft:overworld positioned -137 215 101 as @a[distance=2..,tag=WWSMP.Survival.Triggered] run effect clear @s slowness
execute in minecraft:overworld positioned -137 215 101 as @a[distance=2..,tag=WWSMP.Survival.Triggered] run tag @s remove WWSMP.Survival.Triggered

# WWSMP.Creative.Trigger
execute in minecraft:speciallobby positioned -21 62 6 run tag @a[distance=..2] add WWSMP.Creative.Triggered
execute as @a[tag=WWSMP.Creative.Triggered] run tellraw @s [{"text":"You will now be send to the Witches World SMP Creative world.","color":"yellow"},{"text":" Use ","color":"dark_red"},{"text":"/lobby","color":"dark_blue","clickEvent":{"action":"suggest_command","value":"/lobby"}},{"text":" to return.","color":"dark_red"}]
tag @a[tag=WWSMP.Creative.Triggered] remove WWSMP.In.Lobby
execute in minecraft:creative as @a[tag=WWSMP.Creative.Triggered] run tp @s 373 150 -48
tag @a remove WWSMP.Creative.Triggered

# WWSMP.Minigames.Trigger
execute in minecraft:speciallobby positioned -21 62 -6 run tag @a[distance=..2] add WWSMP.Minigames.Triggered
execute as @a[tag=WWSMP.Minigames.Triggered] run tellraw @s [{"text":"You will now be send to the Witches World SMP Minigames gallery.","color":"yellow"},{"text":" Use ","color":"dark_red"},{"text":"/lobby","color":"dark_blue","clickEvent":{"action":"suggest_command","value":"/lobby"}},{"text":" to return.","color":"dark_red"}]
execute in minecraft:speciallobby as @a[tag=WWSMP.Minigames.Triggered] run tp @s -3 102 88
tag @a remove WWSMP.Minigames.Triggered

# TPtominigames
### airwars
execute as @a[scores={WWSMP.Mini.AW.TP=1..}] in minecraft:mini_airwars run tp 0 65 0
scoreboard players reset @a WWSMP.Mini.AW.TP
scoreboard players enable @a WWSMP.Mini.AW.TP

###

## Go Back
execute in minecraft:speciallobby positioned -3 102 95 run tag @a[distance=..2] add WWSMP.Lobby.Triggered


# Reset talked_to_vill score so players can come near villagers without triggering stuff immediately.
scoreboard players set @a talked_to_vill 0

# Lobby void falling protection
execute in minecraft:speciallobby as @e[distance=0..,type=arrow] run kill @s
execute in minecraft:speciallobby as @e[distance=0..,type=spectral_arrow] run kill @s
execute in minecraft:speciallobby as @e[distance=0..,type=trident] run kill @s
execute at @a[tag=WWSMP.In.Lobby,tag=!WWSMP.Lobby.high] positioned ~ 90 ~ run tag @p[distance=..20] add WWSMP.Lobby.high
execute at @a[tag=WWSMP.In.Lobby] positioned ~ 50 ~ run tag @p[distance=..10] remove WWSMP.Lobby.high
execute at @a[tag=WWSMP.In.Lobby,tag=!WWSMP.Lobby.high] positioned ~ 60 ~ run tellraw @p[distance=20..] "[Lobby system] It seems like you are falling. Allow me to lift you up a bit."
execute at @a[tag=WWSMP.In.Lobby,tag=!WWSMP.Lobby.high] positioned ~ 60 ~ run tp @p[distance=20..] -12 85 0 90 100
execute at @a[tag=WWSMP.In.Lobby,tag=!WWSMP.Lobby.high] positioned ~ 60 ~ run effect give @p[distance=20..] minecraft:slow_falling 100
