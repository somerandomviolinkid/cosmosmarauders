item replace block 0 10 -2 container.5 with bow{Unbreakable:1,display:{Name:'[{"text":"Laser Gun","italic":false}]'},Enchantments:[{id:vanishing_curse,lvl:1},{id:infinity,lvl:1},{id:power,lvl:1},{id:punch,lvl:1}]}

data merge block -66 -33 -81 {Command:"tellraw @p {\"text\":\"10 Industrial Acid, 5 Crystal, 2 Electrical Circuit. IN THAT ORDER!\"}"}
data merge block -69 -28 -81 {Command:"execute if blocks -1 19 -5 -1 19 -5 ~ ~-3 ~ all"}
data merge block -69 -27 -81 {Command:"function game:upgrades/redteam/comms3"}

tellraw @a[team=redTeam] {"text":"Your ship comms have been upgraded to level 2. Please die to gain permament bow knockback."}
setblock -69 -31 -81 hopper replace
execute at @a[team=redTeam] run playsound block.anvil.place master @a[team=redTeam]