scoreboard players add commonDropsTimer commonDropsTimer 1
scoreboard players add uncommonDropsTimer uncommonDropsTimer 1
scoreboard players add rareDropsTimer rareDropsTimer 1

execute if score commonDropsTimer commonDropsTimer matches 50 run function game:drops/common
execute if score uncommonDropsTimer uncommonDropsTimer matches 240 run function game:drops/uncommon
execute if score rareDropsTimer rareDropsTimer matches 1200 run function game:drops/rare

execute if entity @e[type=minecraft:player,scores={deaths=1}] run function game:respawn