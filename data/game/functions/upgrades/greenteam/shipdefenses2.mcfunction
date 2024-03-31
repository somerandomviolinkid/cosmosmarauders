item replace block 2 10 0 container.1 with diamond_chestplate{display:{Name:'["",{"text":"Space Suit","italic":false}]'},Enchantments:[{lvl:1,id:protection},{lvl:1,id:vanishing_curse},{lvl:1,id:binding_curse}],Unbreakable:1}
item replace block 2 10 0 container.2 with diamond_leggings{display:{Name:'["",{"text":"Space Pants","italic":false}]'},Enchantments:[{lvl:1,id:protection},{lvl:1,id:vanishing_curse},{lvl:1,id:binding_curse}],Unbreakable:1}

data merge block 62 -33 -81 {Command:"tellraw @p {\"text\":\"32 Binding Agent, 5 Electrical Plating, 3 Electrical Circuit. IN THAT ORDER!\"}"}
data merge block 59 -28 -81 {Command:"execute if blocks 3 19 -1 3 19 -1 ~ ~-3 ~ all"}
data merge block 59 -27 -81 {Command:"function game:upgrades/greenteam/shipdefenses3"}

tellraw @a[team=greenTeam] {"text":"Your ship defenses have been upgraded to level 2. Please die to gain permanent diamond armor."}
setblock 59 -31 -81 hopper replace
execute at @a[team=greenTeam] run playsound block.anvil.place master @a[team=greenTeam]