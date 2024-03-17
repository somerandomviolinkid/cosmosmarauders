gamemode adventure @a
effect give @a minecraft:saturation 1 255
effect give @a minecraft:regeneration 1 255
kill @e[type=item]

#initialize teams
team add redTeam "Red Team"
team modify redTeam color red
team modify redTeam collisionRule never
team modify redTeam friendlyFire false

team add greenTeam "Green Team"
team modify greenTeam color green
team modify greenTeam collisionRule never
team modify greenTeam friendlyFire false

team add blueTeam "Blue Team"
team modify blueTeam color blue
team modify blueTeam collisionRule never
team modify blueTeam friendlyFire false

team add yellowTeam "Yellow Team"
team modify yellowTeam color yellow
team modify yellowTeam collisionRule never
team modify yellowTeam friendlyFire false

#propogate teams
team join redTeam @r[team=]
team join greenTeam @r[team=]
team join yellowTeam @r[team=]
team join blueTeam @r[team=]

team join redTeam @r[team=]
team join greenTeam @r[team=]
team join blueTeam @r[team=]
team join yellowTeam @r[team=]

team join redTeam @r[team=]
team join greenTeam @r[team=]
team join blueTeam @r[team=]
team join yellowTeam @r[team=]

team join redTeam @r[team=]
team join greenTeam @r[team=]
team join blueTeam @r[team=]
team join yellowTeam @r[team=]

#prepare players
tp @a[team=redTeam] -64 -31 -64
tp @a[team=greenTeam] 64 -31 -64
tp @a[team=blueTeam] 64 -31 64
tp @a[team=yellowTeam] -64 -31 64

spawnpoint @a[team=redTeam] -64 -31 -64
spawnpoint @a[team=greenTeam] 64 -31 -64
spawnpoint @a[team=blueTeam] 64 -31 64
spawnpoint @a[team=yellowTeam] -64 -31 64

clear @a
effect give @a minecraft:slow_falling infinite 1
effect give @a minecraft:jump_boost infinite 3

#fill up red variable chest and update red team
item replace block 0 10 -2 container.0 from block 0 9 -2 container.0
item replace block 0 10 -2 container.1 from block 0 9 -2 container.1
item replace block 0 10 -2 container.2 from block 0 9 -2 container.2
item replace block 0 10 -2 container.3 from block 0 9 -2 container.3
item replace block 0 10 -2 container.4 from block 0 9 -2 container.4
item replace block 0 10 -2 container.5 from block 0 9 -2 container.5
item replace block 0 10 -2 container.6 from block 0 9 -2 container.6
item replace block 0 10 -2 container.7 from block 0 9 -2 container.7
function game:updates/updateredteam

#fill up green variable chest and update green team
item replace block 2 10 0 container.0 from block 2 9 0 container.0
item replace block 2 10 0 container.1 from block 2 9 0 container.1
item replace block 2 10 0 container.2 from block 2 9 0 container.2
item replace block 2 10 0 container.3 from block 2 9 0 container.3
item replace block 2 10 0 container.4 from block 2 9 0 container.4
item replace block 2 10 0 container.5 from block 2 9 0 container.5
item replace block 2 10 0 container.6 from block 2 9 0 container.6
item replace block 2 10 0 container.7 from block 2 9 0 container.7
function game:updates/updategreenteam

#fill up blue variable chest and update blue team
item replace block 0 10 2 container.0 from block 0 9 2 container.0
item replace block 0 10 2 container.1 from block 0 9 2 container.1
item replace block 0 10 2 container.2 from block 0 9 2 container.2
item replace block 0 10 2 container.3 from block 0 9 2 container.3
item replace block 0 10 2 container.4 from block 0 9 2 container.4
item replace block 0 10 2 container.5 from block 0 9 2 container.5
item replace block 0 10 2 container.6 from block 0 9 2 container.6
item replace block 0 10 2 container.7 from block 0 9 2 container.7
function game:updates/updateblueteam

#fill up yellow variable chest and update yellow team
item replace block -2 10 0 container.0 from block -2 9 0 container.0
item replace block -2 10 0 container.1 from block -2 9 0 container.1
item replace block -2 10 0 container.2 from block -2 9 0 container.2
item replace block -2 10 0 container.3 from block -2 9 0 container.3
item replace block -2 10 0 container.4 from block -2 9 0 container.4
item replace block -2 10 0 container.5 from block -2 9 0 container.5
item replace block -2 10 0 container.6 from block -2 9 0 container.6
item replace block -2 10 0 container.7 from block -2 9 0 container.7
function game:updates/updateyellowteam

#scoreboard trickery
scoreboard objectives add playerHealth health
scoreboard objectives setdisplay list playerHealth
scoreboard objectives add deaths deathCount

scoreboard objectives add commonDropsTimer dummy
scoreboard objectives add uncommonDropsTimer dummy
scoreboard objectives add rareDropsTimer dummy

setblock 0 13 0 minecraft:redstone_block

#notify players of game start
title @a title ["",{"text":"Game has started","color":"dark_red"}]
playsound minecraft:entity.ender_dragon.growl master @a