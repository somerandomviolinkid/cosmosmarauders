execute as @a[team=yellowTeam] run attribute @s generic.max_health base set 28

data merge block -81 -33 62 {Command:"tellraw @p {\"text\":\"32 Water, 32 Gas, 4 Electrical Circuit. IN THAT ORDER!\"}"}
data merge block -81 -28 59 {Command:"execute if blocks -1 19 6 -1 19 6 ~ ~-3 ~ all"}
data merge block -81 -27 59 {Command:"function game:upgrades/yellowteam/lifesupport3"}

tellraw @a[team=yellowTeam] {"text":"Your ship life support have been upgraded to level 2. Please die to gain an extra permanant 4 hearts."}
setblock -81 -31 59 hopper replace
execute at @a[team=yellowTeam] run playsound block.anvil.place master @a[team=yellowTeam]