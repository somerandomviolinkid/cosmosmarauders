setblock -2 25 0 yellow_wool
data merge block 62 -33 81 {Command:"tellraw @p {\"text\":\"5 metal, 15 rock, 15 biomatter. IN THAT ORDER!\"}"}
data merge block 59 -28 81 {Command:"execute if blocks 0 19 6 0 19 6 ~ ~-3 ~ all"}
data merge block 59 -27 81 {Command:"function game:upgrades/yellowteam/lifesupport2"}

tellraw @a[team=yellowTeam] {"text":"Your ship life support have been upgraded to level 1. Please die to gain permament resistance."}
setblock 6 24 0 air
execute at @a[team=yellowTeam] run playsound block.anvil.place master @a[team=yellowTeam]