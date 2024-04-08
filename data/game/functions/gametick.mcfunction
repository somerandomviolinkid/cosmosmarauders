scoreboard players add commonDropsTimer commonDropsTimer 1
scoreboard players add uncommonDropsTimer uncommonDropsTimer 1
scoreboard players add rareDropsTimer rareDropsTimer 1

execute if score commonDropsTimer commonDropsTimer matches 80 run function game:drops/common
execute if score uncommonDropsTimer uncommonDropsTimer matches 500 run function game:drops/uncommon
execute if score rareDropsTimer rareDropsTimer matches 6000 run function game:drops/rare

kill @a[x=-96,y=-48,z=-96,dx=192,dy=-64,dz=192]
execute if entity @e[type=minecraft:player,scores={deaths=1}] run function game:respawn

#regular grenade
execute at @e[type=minecraft:armor_stand,tag=grenade] unless entity @e[type=minecraft:snowball,distance=..2] run summon minecraft:creeper ~ ~ ~ {Fuse:0,ExplosionRadius:2,CustomName:'[{"text":"Grenade"}]',Silent:1b}
execute at @e[type=minecraft:armor_stand,tag=grenade] unless entity @e[type=minecraft:snowball,distance=..2] run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.15 0.05 0.15 0.02 750 force @a
execute at @e[type=minecraft:armor_stand,tag=grenade] unless entity @e[type=minecraft:snowball,distance=..2] run particle minecraft:flame ~ ~ ~ 0.15 0.05 0.15 0.03 500 force @a
kill @e[type=minecraft:armor_stand,tag=grenade]
execute at @e[type=minecraft:snowball] run summon minecraft:armor_stand ~ ~ ~ {Tags:["grenade"],Invisible:1,Marker:1}

#smoke grenade
execute at @e[type=minecraft:armor_stand,tag=smokegrenade] unless entity @e[type=minecraft:egg,distance=..2] run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.15 0.05 0.15 0.03 5000 force @a
kill @e[type=minecraft:armor_stand,tag=smokegrenade]
kill @e[type=chicken]
execute at @e[type=minecraft:egg] run summon minecraft:armor_stand ~ ~ ~ {Tags:["smokegrenade"],Invisible:1,Marker:1}

#rocket
execute as @e[type=spectral_arrow] at @s run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.15 0.05 0.15 0.02 3 force @a
execute as @e[type=spectral_arrow] at @s run particle minecraft:flame ~ ~ ~ 0.15 0.05 0.15 0.03 1 force @a

execute as @e[type=spectral_arrow,nbt={inGround:1b}] at @s run summon minecraft:creeper ~ ~ ~ {Fuse:0,ExplosionRadius:3,CustomName:'[{"text":"Rocket"}]',Silent:1b}
execute as @e[type=spectral_arrow,nbt={inGround:1b}] at @s run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.15 0.05 0.15 0.02 750 force @a
execute as @e[type=spectral_arrow,nbt={inGround:1b}] at @s run particle minecraft:flame ~ ~ ~ 0.15 0.05 0.15 0.03 500 force @a
kill @e[type=spectral_arrow,nbt={inGround:1b}]

#arrow effects
execute at @e[type=arrow,nbt={inGround:1b}] run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.15 0.05 0.15 0.02 25 force @a
execute at @e[type=arrow,nbt={inGround:1b}] run particle minecraft:flame ~ ~ ~ 0.15 0.05 0.15 0.03 5 force @a
kill @e[type=arrow,nbt={inGround:1b}]