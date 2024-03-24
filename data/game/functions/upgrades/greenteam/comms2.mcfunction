item replace block 2 10 0 container.5 with bow{Unbreakable:1,display:{Name:'[{"text":"Laser Gun","italic":false}]'},Enchantments:[{id:vanishing_curse,lvl:1},{id:infinity,lvl:1},{id:power,lvl:1},{id:punch,lvl:1}]}

data merge block 81 -33 -66 {Command:"tellraw @p {\"text\":\"5 metal, 15 rock, 15 biomatter. IN THAT ORDER!\"}"}
data merge block 81 -28 -69 {Command:"execute if blocks 5 19 -1 5 19 -1 ~ ~-3 ~ all"}
data merge block 81 -27 -69 {Command:"function game:upgrades/greenteam/comms3"}

tellraw @a[team=greenTeam] {"text":"Your ship comms have been upgraded to level 2. Please die to gain permament bow knockback."}