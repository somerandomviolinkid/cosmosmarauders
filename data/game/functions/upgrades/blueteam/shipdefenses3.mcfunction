item replace block 0 10 2 container.1 with diamond_chestplate{display:{Name:'["",{"text":"Space Suit","italic":false}]'},Enchantments:[{lvl:1,id:vanishing_curse},{lvl:1,id:binding_curse}],Unbreakable:1}
item replace block 0 10 2 container.2 with diamond_leggings{display:{Name:'["",{"text":"Space Pants","italic":false}]'},Enchantments:[{lvl:1,id:vanishing_curse},{lvl:1,id:binding_curse}],Unbreakable:1}

data merge block 81 -33 62 {Command:"tellraw @p {\"text\":\"go to another upgrade brit\"}"}
data merge block 81 -28 59 {Command:"tellraw @a [{\"color\":\"none\",\"selector\":\"@p\"},{\"color\":\"none\",\"text\":\" is stupid\",\"bold\":false}]"}
data merge block 81 -27 59 {Command:""}

tellraw @a[team=blueTeam] {"text":"Your ship defenses have been upgraded to level 3. Please die to gain permanent protection 1 diamond armor."}
setblock 81 -31 59 hopper replace
execute at @a[team=blueTeam] run playsound block.anvil.place master @a[team=blueTeam]