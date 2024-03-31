item replace block -2 10 0 container.4 with iron_sword{Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.attack_speed",Amount:10,Slot:mainhand,Name:"generic.attack_speed",UUID:[I;-124224,11294,91857,-22588]},{AttributeName:"generic.attack_damage",Amount:8,Slot:mainhand,Name:"generic.attack_damage",UUID:[I;-124224,11394,91857,-22788]}],display:{Name:'[{"text":"Knife","italic":false}]'},Enchantments:[{id:vanishing_curse,lvl:1}]}

data merge block -66 -33 81 {Command:"tellraw @p {\"text\":\"16 Binding Agent, 4 Industrial Acid, 1 Electrical Circuit. IN THAT ORDER!\"}"}
data merge block -69 -28 81 {Command:"execute if blocks -4 19 0 -4 19 0 ~ ~-3 ~ all"}
data merge block -69 -27 81 {Command:"function game:upgrades/yellowteam/engine2"}

tellraw @a[team=yellowTeam] {"text":"Your ship engine has been upgraded to level 1. Please die to gain permanent better attack damage."}
setblock -4 24 0 air
setblock -69 -31 81 hopper replace
execute at @a[team=yellowTeam] run playsound block.anvil.place master @a[team=yellowTeam]