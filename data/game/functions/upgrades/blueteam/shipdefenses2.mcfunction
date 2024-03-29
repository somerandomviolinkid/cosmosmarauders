item replace block 0 10 2 container.1 with diamond_chestplate{display:{Name:'["",{"text":"Space Suit","italic":false}]'},Enchantments:[{lvl:1,id:protection},{lvl:1,id:vanishing_curse},{lvl:1,id:binding_curse}],Unbreakable:1}
item replace block 0 10 2 container.2 with diamond_leggings{display:{Name:'["",{"text":"Space Pants","italic":false}]'},Enchantments:[{lvl:1,id:protection},{lvl:1,id:vanishing_curse},{lvl:1,id:binding_curse}],Unbreakable:1}

data merge block 81 -33 62 {Command:"tellraw @p {\"text\":\"15 metal, 69 oxygen. IN THAT ORDER!\"}"}
data merge block 81 -28 59 {Command:"execute if blocks 1 19 3 1 19 3 ~ ~-3 ~ all"}
data merge block 81 -27 59 {Command:"function game:upgrades/blueteam/shipdefenses3"}

tellraw @a[team=blueTeam] {"text":"Your ship defenses have been upgraded to level 2. Please die to gain permanent diamond armor."}
execute at @a[team=blueTeam] run playsound block.anvil.place master @a[team=blueTeam]