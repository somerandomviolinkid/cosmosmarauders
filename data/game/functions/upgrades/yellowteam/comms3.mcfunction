item replace block -2 10 0 container.5 with bow{Unbreakable:1,display:{Name:'[{"text":"Energy Slingshot","italic":false}]'},Enchantments:[{id:vanishing_curse,lvl:1},{id:power,lvl:2},{id:punch,lvl:1}],HideFlags:1}

data merge block -81 -33 66 {Command:"tellraw @p {\"text\":\"go to another upgrade brit\"}"}
data merge block -81 -28 69 {Command:"tellraw @a [{\"color\":\"none\",\"selector\":\"@p\"},{\"color\":\"none\",\"text\":\" is stupid\",\"bold\":false}]"}
data merge block -81 -27 69 {Command:""}

tellraw @a[team=yellowTeam] {"text":"Your ship comms have been upgraded to level 3. Please die to gain even more permament bow damage."}
setblock -81 -31 69 hopper replace
execute at @a[team=yellowTeam] run playsound block.anvil.place master @a[team=yellowTeam]