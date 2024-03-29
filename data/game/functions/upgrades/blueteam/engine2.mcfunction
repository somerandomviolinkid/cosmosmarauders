item replace block 0 10 2 container.4 with iron_sword{Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.attack_speed",Amount:10,Slot:mainhand,Name:"generic.attack_speed",UUID:[I;-124224,12994,91857,-25988]},{AttributeName:"generic.attack_damage",Amount:8,Slot:mainhand,Name:"generic.attack_damage",UUID:[I;-124224,13094,91857,-26188]},{AttributeName:"generic.attack_knockback",Amount:3,Slot:mainhand,Name:"generic.attack_knockback",UUID:[I;-124224,13194,91857,-26388]}],display:{Name:'[{"text":"Knife","italic":false}]'},Enchantments:[{id:vanishing_curse,lvl:1}]}

data merge block 81 -33 66 {Command:"tellraw @p {\"text\":\"8 crystals, 25 biomatter. IN THAT ORDER!\"}"}
data merge block 81 -28 69 {Command:"execute if blocks 1 19 4 1 19 4 ~ ~-3 ~ all"}
data merge block 81 -27 69 {Command:"function game:upgrades/blueteam/engine3"}

tellraw @a[team=blueTeam] {"text":"Your ship engine has been upgraded to level 2. Please die to gain permanent melee knockback."}
execute at @a[team=blueTeam] run playsound block.anvil.place master @a[team=blueTeam]