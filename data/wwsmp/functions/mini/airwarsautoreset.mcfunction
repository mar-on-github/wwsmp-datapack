tellraw @a "[Server minigame suspension system] Doing weekly reset for minigame world, contact Mar on crash."
execute as @p run discord broadcast [Server minigame suspension system] Doing weekly reset for minigame world, contact <@718850508135333919> on crash.
# These functions are kinda heavy, and caused direct server crashes, so I split them.
schedule function wwsmp:airwarsautoreset/1 5s
schedule function wwsmp:airwarsautoreset/2 15s
