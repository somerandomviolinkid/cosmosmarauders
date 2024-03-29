item replace block 2 10 0 container.5 with bow{Unbreakable:1,display:{Name:'[{"text":"Laser Gun","italic":false}]'},Enchantments:[{id:vanishing_curse,lvl:1},{id:infinity,lvl:1},{id:power,lvl:2},{id:punch,lvl:1}]}

data merge block 81 -33 -66 {Command:"tellraw @p {\"text\":\"go to another upgrade brit\"}"}
data merge block 81 -28 -69 {Command:"tellraw @a [{\"color\":\"none\",\"selector\":\"@p\"},{\"color\":\"none\",\"text\":\" is stupid\",\"bold\":false}]"}
data merge block 81 -27 -69 {Command:""}

tellraw @a[team=greenTeam] {"text":"Your ship comms have been upgraded to level 3. Please die to gain even more permament bow damage."}
execute at @a[team=greenTeam] run playsound block.anvil.place master @a[team=greenTeam]