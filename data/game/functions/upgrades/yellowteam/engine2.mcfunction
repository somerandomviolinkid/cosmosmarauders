item replace block -2 10 0 container.4 with iron_sword{Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.attack_speed",Amount:10,Slot:mainhand,Name:"generic.attack_speed",UUID:[I;-124224,12994,91857,-25988]},{AttributeName:"generic.attack_damage",Amount:8,Slot:mainhand,Name:"generic.attack_damage",UUID:[I;-124224,13094,91857,-26188]},{AttributeName:"generic.attack_knockback",Amount:3,Slot:mainhand,Name:"generic.attack_knockback",UUID:[I;-124224,13194,91857,-26388]}],display:{Name:'[{"text":"Knife","italic":false}]'},Enchantments:[{id:vanishing_curse,lvl:1}]}

data merge block -66 -33 81 {Command:"tellraw @p {\"text\":\"5 Electrical Plating, 3 Electrical Circuit, 1 Crystal. IN THAT ORDER!\"}"}
data merge block -69 -28 81 {Command:"execute if blocks -4 19 1 -4 19 1 ~ ~-3 ~ all"}
data merge block -69 -27 81 {Command:"function game:upgrades/yellowteam/engine3"}

tellraw @a[team=yellowTeam] {"text":"Your ship engine has been upgraded to level 2. Please die to gain permanent melee knockback."}
setblock -69 -31 81 hopper replace
execute at @a[team=yellowTeam] run playsound block.anvil.place master @a[team=yellowTeam]