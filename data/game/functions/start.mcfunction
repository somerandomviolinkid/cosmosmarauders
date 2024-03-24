gamemode adventure @a
kill @e[type=item]
kill @e[type=arrow]

#remove all force game end votes
setblock 0 15 -3 air
setblock 3 15 0 air
setblock 0 15 3 air
setblock -3 15 0 air

#reset repair things
fill 0 24 -3 0 24 -6 redstone_block
fill 3 24 0 6 24 0 redstone_block
fill 0 24 3 0 24 6 redstone_block
fill -3 24 0 -6 24 0 redstone_block

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
effect clear @a
effect give @a minecraft:slow_falling infinite 1 true
effect give @a minecraft:jump_boost infinite 3 true

#remove player placed blocks
fill 96 -16 96 -96 -56 -96 air replace minecraft:red_concrete
fill 96 -16 96 -96 -56 -96 air replace minecraft:green_concrete
fill 96 -16 96 -96 -56 -96 air replace minecraft:blue_concrete
fill 96 -16 96 -96 -56 -96 air replace minecraft:yellow_concrete
fill 96 -16 96 -96 -56 -96 air replace minecraft:iron_block

#clear chests
setblock -67 -32 -70 minecraft:chest[facing=south] replace
setblock 70 -32 -67 minecraft:chest[facing=west] replace
setblock 67 -32 70 minecraft:chest[facing=north] replace
setblock -70 -32 67 minecraft:chest[facing=east] replace

#scoreboard trickery
scoreboard objectives add playerHealth health
scoreboard objectives setdisplay list playerHealth

scoreboard objectives add deaths deathCount

scoreboard objectives add Kills playerKillCount
scoreboard objectives setdisplay sidebar Kills

scoreboard objectives add commonDropsTimer dummy
scoreboard objectives add uncommonDropsTimer dummy
scoreboard objectives add rareDropsTimer dummy

#initialize team spawn
function game:init/redteam
function game:init/greenteam
function game:init/blueteam
function game:init/yellowteam
setblock 0 13 0 minecraft:redstone_block

#notify players of game start
title @a times 10 80 10
title @a title ["",{"text":"Started Game","color":"red"}]
title @a subtitle ["",{"text":"Good luck, you'll need it.","color":"dark_red"}]
playsound minecraft:entity.ender_dragon.growl master @a

tellraw @a {"text":"[GALACTICOMMAND TRANSMISSION] You and your crew have been stranded in deep space after a large burst of alpha radiation struck your ship. Unfortunately, you are drifting towards a large asteroid field and if you aren't able to repair your ship in time, your ship will collide with an asteroid and you will be stranded in space forever.","color":"green"}
tellraw @a {"text":"[GALACTICOMMAND TRANSMISSION] Fortunately, the larger asteroids have a large amount of resources that you can use to repair your ship. However, there are three other hostile enemy ships in the vicinity also trying to escape, and you will have to fight over rarer materials.","color":"green"}
tellraw @a {"text":"[GALACTICOMMAND TRANSMISSION] In order to repair modules of your ship, you will have to collect resources and bring them back safely. Once all of the modules are repaired, you will have to obtain Ultrafuel from the large blackened asteroid and insert it into your ship's fuel cell. Ultrafuel is incredibly rare, and the environment it's found in is incredibly dangerous. Good luck spaceman, and don't get lost in space.","color":"green"}

effect give @a minecraft:saturation 1 255
effect give @a minecraft:regeneration 1 255