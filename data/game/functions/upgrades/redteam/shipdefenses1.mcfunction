item replace block 0 10 -2 container.1 with iron_chestplate{display:{Name:'["",{"text":"Space Suit","italic":false}]'},Enchantments:[{lvl:1,id:vanishing_curse},{lvl:1,id:binding_curse}],Unbreakable:1}
item replace block 0 10 -2 container.2 with iron_leggings{display:{Name:'["",{"text":"Space Pants","italic":false}]'},Enchantments:[{lvl:1,id:vanishing_curse},{lvl:1,id:binding_curse}],Unbreakable:1}

data merge block -81 -33 -62 {Command:"tellraw @p {\"text\":\"20 Binding Agent, 3 Electrical Plating, 1 Electrical Circuit. IN THAT ORDER!\"}"}
data merge block -81 -28 -59 {Command:"execute if blocks 0 19 -3 0 19 -3 ~ ~-3 ~ all"}
data merge block -81 -27 -59 {Command:"function game:upgrades/redteam/shipdefenses2"}

tellraw @a[team=redTeam] {"text":"Your ship defenses have been upgraded to level 1. Please die to gain permanent iron armor."}
setblock 0 24 -3 air
setblock -81 -31 -59 hopper replace
execute at @a[team=redTeam] run playsound block.anvil.place master @a[team=redTeam]