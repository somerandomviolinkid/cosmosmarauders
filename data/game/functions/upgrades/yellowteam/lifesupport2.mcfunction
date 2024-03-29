execute as @a[team=yellowTeam] run attribute @s generic.max_health base set 28

data merge block 62 -33 81 {Command:"tellraw @p {\"text\":\"5 metal, 15 rock, 15 biomatter. IN THAT ORDER!\"}"}
data merge block 59 -28 81 {Command:"execute if blocks -1 19 6 -1 19 6 ~ ~-3 ~ all"}
data merge block 59 -28 81 {Command:"function game:upgrades/yellowteam/lifesupport3"}

tellraw @a[team=yellowTeam] {"text":"Your ship life support have been upgraded to level 1. Please die to gain an extra permanant 4 hearts."}
execute at @a[team=yellowTeam] run playsound block.anvil.place master @a[team=yellowTeam]