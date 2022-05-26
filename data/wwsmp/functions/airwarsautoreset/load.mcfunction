execute in mini/airwars positioned 0 65 0 run fill ~30 ~ ~30 ~-30 ~ ~-30 stone


scoreboard objectives add wwsmp.mini.airwars.blaster minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add wwsmp.mini.airwars.death deathCount
scoreboard objectives add wwsmp.mini.airwars.deaths dummy
execute in minecraft:mini/airwars run time set noon

tellraw @a "[Server minigame suspension system] Suspended minigame load for Airwars executed, because a player joined."
# execute as @p run discord broadcast [Server minigame suspension system] Suspended minigame load for Airwars executed, because a player joined.
