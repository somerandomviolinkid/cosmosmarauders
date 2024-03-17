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

scoreboard objectives remove playerHealth

title @a title ["",{"text":"Game has ended","color":"dark_red"}]