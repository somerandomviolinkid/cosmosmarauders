item replace block 0 10 2 container.4 with iron_sword{Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.attack_speed",Amount:10,Slot:mainhand,Name:"generic.attack_speed",UUID:[I;-124224,13294,91857,-26588]},{AttributeName:"generic.attack_damage",Amount:10,Slot:mainhand,Name:"generic.attack_damage",UUID:[I;-124224,13394,91857,-26788]},{AttributeName:"generic.attack_knockback",Amount:3,Slot:mainhand,Name:"generic.attack_knockback",UUID:[I;-124224,13494,91857,-26988]}],display:{Name:'[{"text":"Knife","italic":false}]'},Enchantments:[{id:vanishing_curse,lvl:1}]}

data merge block 81 -33 66 {Command:"tellraw @p {\"text\":\"go to another upgrade brit\"}"}
data merge block 81 -28 69 {Command:"tellraw @a [{\"color\":\"none\",\"selector\":\"@p\"},{\"color\":\"none\",\"text\":\" is stupid\",\"bold\":false}]"}
data merge block 81 -27 69 {Command:""}

tellraw @a[team=blueTeam] {"text":"Your ship engine has been upgraded to level 3. Please die to gain even more permanent melee damage."}
execute at @a[team=blueTeam] run playsound block.anvil.place master @a[team=blueTeam]