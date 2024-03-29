item replace block -2 10 0 container.1 with diamond_chestplate{display:{Name:'["",{"text":"Space Suit","italic":false}]'},Enchantments:[{lvl:1,id:protection},{lvl:1,id:vanishing_curse},{lvl:1,id:binding_curse}],Unbreakable:1}
item replace block -2 10 0 container.2 with diamond_leggings{display:{Name:'["",{"text":"Space Pants","italic":false}]'},Enchantments:[{lvl:1,id:protection},{lvl:1,id:vanishing_curse},{lvl:1,id:binding_curse}],Unbreakable:1}

data merge block -62 -33 81 {Command:"tellraw @p {\"text\":\"15 metal, 69 oxygen. IN THAT ORDER!\"}"}
data merge block -59 -28 81 {Command:"execute if blocks -3 19 1 -3 19 1 ~ ~-3 ~ all"}
data merge block -59 -27 81 {Command:"function game:upgrades/yellowteam/shipdefenses3"}

tellraw @a[team=yellowTeam] {"text":"Your ship defenses have been upgraded to level 2. Please die to gain permanent diamond armor."}
execute at @a[team=yellowTeam] run playsound block.anvil.place master @a[team=yellowTeam]