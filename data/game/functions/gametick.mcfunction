scoreboard players add commonDropsTimer commonDropsTimer 1
scoreboard players add uncommonDropsTimer uncommonDropsTimer 1
scoreboard players add rareDropsTimer rareDropsTimer 1

execute if score commonDropsTimer commonDropsTimer matches 80 run function game:drops/common
execute if score uncommonDropsTimer uncommonDropsTimer matches 500 run function game:drops/uncommon
execute if score rareDropsTimer rareDropsTimer matches 3600 run function game:drops/rare

kill @a[x=-96,y=-48,z=-96,dx=192,dy=-64,dz=192]
execute if entity @e[type=minecraft:player,scores={deaths=1}] run function game:respawn

execute at @e[type=minecraft:armor_stand,tag=grenade] unless entity @e[type=minecraft:snowball,distance=..2] run summon minecraft:creeper ~ ~ ~ {Fuse:0,ExplosionRadius:2,CustomName:'[{"text":"Grenade"}]',NoGravity:1b,ActiveEffects:[{Id:14,Duration:20,Amplifier:1,ShowParticles:0b}]}
kill @e[type=minecraft:armor_stand,tag=grenade]
execute at @e[type=minecraft:snowball] run summon minecraft:armor_stand ~ ~ ~ {Tags:["grenade"],Invisible:1,Marker:1}