item replace block 2 10 0 container.1 with iron_chestplate{display:{Name:'["",{"text":"Space Suit","italic":false}]'},Enchantments:[{lvl:1,id:vanishing_curse},{lvl:1,id:binding_curse}],Unbreakable:1}
item replace block 2 10 0 container.2 with iron_leggings{display:{Name:'["",{"text":"Space Pants","italic":false}]'},Enchantments:[{lvl:1,id:vanishing_curse},{lvl:1,id:binding_curse}],Unbreakable:1}

data merge block 62 -33 -81 {Command:"tellraw @p {\"text\":\"8 crystals, 25 biomatter. IN THAT ORDER!\"}"}
data merge block 59 -28 -81 {Command:"execute if blocks 3 19 0 3 19 0 ~ ~-3 ~ all"}
data merge block 59 -27 -81 {Command:"function game:upgrades/greenteam/shipdefenses2"}

tellraw @a[team=greenTeam] {"text":"Your ship defenses have been upgraded to level 1. Please die to gain permanent iron armor."}
setblock 3 24 0 air
execute at @a[team=greenTeam] run playsound block.anvil.place master @a[team=greenTeam]