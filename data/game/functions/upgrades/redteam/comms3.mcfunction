item replace block 0 10 -2 container.5 with bow{Unbreakable:1,display:{Name:'[{"text":"Laser Gun","italic":false}]'},Enchantments:[{id:vanishing_curse,lvl:1},{id:infinity,lvl:1},{id:power,lvl:2},{id:punch,lvl:1}]}

data merge block -66 -33 -81 {Command:"tellraw @p {\"text\":\"go to another upgrade brit\"}"}
data merge block -69 -28 -81 {Command:"say @p is stupid"}
data merge block -69 -27 -81 {Command:""}

tellraw @a[team=redTeam] {"text":"Your ship comms have been upgraded to level 3. Please die to gain even more permament bow damage."}