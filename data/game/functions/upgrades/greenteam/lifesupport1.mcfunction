setblock 2 25 0 green_wool
data merge block 81 -33 -62 {Command:"tellraw @p {\"text\":\"5 metal, 15 rock, 15 biomatter. IN THAT ORDER!\"}"}
data merge block 81 -28 -59 {Command:"execute if blocks 6 19 0 6 19 0 ~ ~-3 ~ all"}
data merge block 81 -27 -59 {Command:"function game:upgrades/greenteam/lifesupport2"}

tellraw @a[team=greenTeam] {"text":"Your ship life support have been upgraded to level 1. Please die to gain permament resistance."}
setblock 6 24 0 air
execute at @a[team=greenTeam] run playsound block.anvil.place master @a[team=greenTeam]