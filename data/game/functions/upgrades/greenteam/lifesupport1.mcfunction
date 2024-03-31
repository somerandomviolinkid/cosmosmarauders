setblock 2 25 0 green_wool
data merge block 81 -33 -62 {Command:"tellraw @p {\"text\":\"24 Gas, 4 Industrial Acid, 2 Crystal. IN THAT ORDER!\"}"}
data merge block 81 -28 -59 {Command:"execute if blocks 6 19 0 6 19 0 ~ ~-3 ~ all"}
data merge block 81 -27 -59 {Command:"function game:upgrades/greenteam/lifesupport2"}

tellraw @a[team=greenTeam] {"text":"Your ship life support have been upgraded to level 1. Please die to gain permament resistance."}
setblock 6 24 0 air
setblock 81 -31 -59 hopper replace
execute at @a[team=greenTeam] run playsound block.anvil.place master @a[team=greenTeam]