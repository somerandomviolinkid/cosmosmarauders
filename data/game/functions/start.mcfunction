gamemode adventure @a

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

item replace entity @a[team=redTeam] armor.head with minecraft:leather_helmet{display:{color:16711680},Unbreakable:1}
item replace entity @a[team=greenTeam] armor.head with minecraft:leather_helmet{display:{color:65280},Unbreakable:1}
item replace entity @a[team=blueTeam] armor.head with minecraft:leather_helmet{display:{color:255},Unbreakable:1}
item replace entity @a[team=yellowTeam] armor.head with minecraft:leather_helmet{display:{color:65535},Unbreakable:1}

item replace entity @a armor.chest with minecraft:chainmail_chestplate{Unbreakable:1}
item replace entity @a armor.legs with minecraft:chainmail_leggings{Unbreakable:1}
item replace entity @a armor.feet with minecraft:chainmail_boots{Unbreakable:1}

#scoreboard trickery
scoreboard objectives add playerHealth health
scoreboard objectives setdisplay list playerHealth
scoreboard objectives add death deathCount

#notify players of game start
title @a title ["",{"text":"Game has started","color":"dark_red"}]
playsound minecraft:entity.ender_dragon.growl master @a