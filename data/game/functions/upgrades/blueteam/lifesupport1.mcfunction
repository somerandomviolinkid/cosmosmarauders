setblock 0 25 2 blue_wool
data merge block 62 -33 81 {Command:"tellraw @p {\"text\":\"24 Gas, 4 Industrial Acid, 2 Crystal. IN THAT ORDER!\"}"}
data merge block 59 -28 81 {Command:"execute if blocks 0 19 6 0 19 6 ~ ~-3 ~ all"}
data merge block 59 -27 81 {Command:"function game:upgrades/blueteam/lifesupport2"}

tellraw @a[team=blueTeam] {"text":"Your ship life support have been upgraded to level 1. Please die to gain permament resistance."}
setblock 0 24 6 air
setblock 59 -31 81 hopper replace
execute at @a[team=blueTeam] run playsound block.anvil.place master @a[team=blueTeam]