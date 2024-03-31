item replace block 0 10 2 container.5 with bow{Unbreakable:1,display:{Name:'[{"text":"Laser Gun","italic":false}]'},Enchantments:[{id:vanishing_curse,lvl:1},{id:infinity,lvl:1},{id:power,lvl:1}]}

data merge block 66 -33 81 {Command:"tellraw @p {\"text\":\"4 Crystal, 3 Industrial Acid, 2 Gas. IN THAT ORDER!\"}"}
data merge block 69 -28 81 {Command:"execute if blocks 0 19 5 0 19 5 ~ ~-3 ~ all"}
data merge block 69 -27 81 {Command:"function game:upgrades/blueteam/comms2"}

tellraw @a[team=blueTeam] {"text":"Your ship comms have been upgraded to level 1. Please die to gain permament bow damage."}
setblock 0 24 5 air
setblock 69 -31 81 hopper replace
execute at @a[team=blueTeam] run playsound block.anvil.place master @a[team=blueTeam]