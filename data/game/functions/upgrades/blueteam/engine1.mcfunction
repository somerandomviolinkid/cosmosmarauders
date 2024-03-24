item replace block 0 10 2 container.4 with iron_sword{Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.attack_speed",Amount:10,Slot:mainhand,Name:"generic.attack_speed",UUID:[I;-124224,11294,91857,-22588]},{AttributeName:"generic.attack_damage",Amount:8,Slot:mainhand,Name:"generic.attack_damage",UUID:[I;-124224,11394,91857,-22788]}],display:{Name:'[{"text":"Knife","italic":false}]'},Enchantments:[{id:vanishing_curse,lvl:1}]}

data merge block 81 -33 66 {Command:"tellraw @p {\"text\":\"8 crystals, 25 biomatter. IN THAT ORDER!\"}"}
data merge block 81 -28 69 {Command:"execute if blocks 0 19 4 0 19 4 ~ ~-3 ~ all"}
data merge block 81 -27 69 {Command:"function game:upgrades/blueteam/engine2"}

tellraw @a[team=blueTeam] {"text":"Your ship engine has been upgraded to level 1. Please die to gain permanent better attack damage."}