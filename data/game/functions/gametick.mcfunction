scoreboard players add commonDropsTimer commonDropsTimer 1
scoreboard players add uncommonDropsTimer uncommonDropsTimer 1
scoreboard players add rareDropsTimer rareDropsTimer 1

execute if score commonDropsTimer commonDropsTimer matches 80 run function game:drops/common
execute if score uncommonDropsTimer uncommonDropsTimer matches 500 run function game:drops/uncommon
execute if score rareDropsTimer rareDropsTimer matches 3600 run function game:drops/rare

kill @a[x=-96,y=-48,z=-96,dx=192,dy=-64,dz=192]
execute if entity @e[type=minecraft:player,scores={deaths=1}] run function game:respawn