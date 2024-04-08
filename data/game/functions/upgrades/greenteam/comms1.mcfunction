item replace block 2 10 0 container.5 with bow{Unbreakable:1,display:{Name:'[{"text":"Energy Slingshot","italic":false}]'},Enchantments:[{id:vanishing_curse,lvl:1},{id:power,lvl:1}],HideFlags:1}

data merge block 81 -33 -66 {Command:"tellraw @p {\"text\":\"4 Crystal, 3 Industrial Acid, 2 Gas. IN THAT ORDER!\"}"}
data merge block 81 -28 -69 {Command:"execute if blocks 5 19 0 5 19 0 ~ ~-3 ~ all"}
data merge block 81 -27 -69 {Command:"function game:upgrades/greenteam/comms2"}

tellraw @a[team=greenTeam] {"text":"Your ship comms have been upgraded to level 1. Please die to gain permament bow damage."}
setblock 5 24 0 air
setblock 81 -31 -69 hopper replace
execute at @a[team=greenTeam] run playsound block.anvil.place master @a[team=greenTeam]