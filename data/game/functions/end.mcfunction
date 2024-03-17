#remove all teams
team remove redTeam
team remove greenTeam
team remove blueTeam
team remove yellowTeam

#reset players
gamemode creative @a
tp @a 0 1 0
spawnpoint @a 0 1 0
clear @a
effect clear @a
kill @e[type=item]
kill @e[type=villager]

scoreboard objectives remove playerHealth
scoreboard objectives remove deaths
scoreboard objectives remove Kills

scoreboard objectives remove commonDropsTimer
scoreboard objectives remove uncommonDropsTimer
scoreboard objectives remove rareDropsTimer
setblock 0 13 0 air

fill 96 -16 96 -96 -56 -96 air replace minecraft:red_concrete
fill 96 -16 96 -96 -56 -96 air replace minecraft:green_concrete
fill 96 -16 96 -96 -56 -96 air replace minecraft:blue_concrete
fill 96 -16 96 -96 -56 -96 air replace minecraft:yellow_concrete

title @a title ["",{"text":"Game has ended","color":"dark_red"}]