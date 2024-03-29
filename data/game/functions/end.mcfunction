#remove all teams
team remove redTeam
team remove greenTeam
team remove blueTeam
team remove yellowTeam

#reset players
gamemode adventure @a
tp @a 0 1 0
spawnpoint @a 0 1 0
clear @a
effect clear @a
kill @e[type=item]
kill @e[type=arrow]
kill @e[type=villager]

scoreboard objectives remove playerHealth
scoreboard objectives remove deaths
scoreboard objectives remove Kills

scoreboard objectives remove commonDropsTimer
scoreboard objectives remove uncommonDropsTimer
scoreboard objectives remove rareDropsTimer

#pause tick function/remove end votes
setblock 0 13 0 air
setblock 0 29 0 air

setblock 0 15 -6 air
setblock 6 15 0 air
setblock 0 15 6 air
setblock -6 15 0 air