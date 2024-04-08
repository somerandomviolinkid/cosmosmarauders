item replace block -2 10 0 container.5 with bow{Unbreakable:1,display:{Name:'[{"text":"Energy Slingshot","italic":false}]'},Enchantments:[{id:vanishing_curse,lvl:1},{id:power,lvl:1},{id:punch,lvl:1}],HideFlags:1}

data merge block -81 -33 66 {Command:"tellraw @p {\"text\":\"10 Industrial Acid, 5 Crystal, 2 Electrical Circuit. IN THAT ORDER!\"}"}
data merge block -81 -28 69 {Command:"execute if blocks -5 19 1 -5 19 1 ~ ~-3 ~ all"}
data merge block -81 -27 69 {Command:"function game:upgrades/yellowteam/comms3"}

tellraw @a[team=yellowTeam] {"text":"Your ship comms have been upgraded to level 2. Please die to gain permament bow knockback."}
setblock -81 -31 69 hopper replace
execute at @a[team=yellowTeam] run playsound block.anvil.place master @a[team=yellowTeam]