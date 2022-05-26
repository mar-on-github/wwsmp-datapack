tellraw @a[tag=!Welcomed] ["",{"text":"Hi, I think you might be new in this server, huh?","color":"gray"},{"text":"\n\nHave you joined the Discord server yet? If not, you can do it here: "},{"text":"https://discord.gg/gBhR2bzzMw","color":"dark_purple","clickEvent":{"action":"open_url","value":"https://discord.gg/gBhR2bzzMw"}},{"text":"\n\n"},{"text":"Have a great time in the server :)","color":"green"}]
tellraw @a[tag=!Welcomed] ["",{"text":"A Dynamic map of this server can be browsed ","color":"yellow"},{"text":"here","color":"blue","clickEvent":{"action":"open_url","value":"http://bluemap.wwsmp.storiesbymar.nl/"}},{"text":".","color":"yellow"}]
tellraw @a[tag=!Welcomed] {"text":"We've got a rather large spawn protection! So run away and find an area of your own.","color":"dark_green"}
tell @a[tag=!Welcomed] "If you are seeing this message even though you are not new, message Mar."
tag @a[tag=!Welcomed] add WWSMP.Lobby.Triggered
tag @a[tag=!Welcomed] add Welcomed
