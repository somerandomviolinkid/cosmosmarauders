data merge block 81 -33 62 {Command:"tellraw @p {\"text\":\"8 crystals, 25 biomatter. IN THAT ORDER!\"}"}
data merge block 81 -28 59 {Command:"execute if blocks -1 19 3 -1 19 3 ~ ~-3 ~ all"}
data merge block 81 -27 59 {Command:"function game:upgrades/blueteam/shipdefenses1"}

data merge block 81 -33 66 {Command:"tellraw @p {\"text\":\"8 crystals, 25 biomatter. IN THAT ORDER!\"}"}
data merge block 81 -28 69 {Command:"execute if blocks -1 19 4 -1 19 4 ~ ~-3 ~ all"}
data merge block 81 -27 69 {Command:"function game:upgrades/blueteam/engine1"}

data merge block 66 -33 81 {Command:"tellraw @p {\"text\":\"5 metal, 15 rock, 15 biomatter. IN THAT ORDER!\"}"}
data merge block 69 -28 81 {Command:"execute if blocks -1 19 5 -1 19 5 ~ ~-3 ~ all"}
data merge block 69 -27 81 {Command:"function game:upgrades/blueteam/comms1"}

data merge block 62 -33 81 {Command:"tellraw @p {\"text\":\"5 metal, 15 rock, 15 biomatter. IN THAT ORDER!\"}"}
data merge block 59 -28 81 {Command:"execute if blocks -1 19 6 -1 19 6 ~ ~-3 ~ all"}
data merge block 59 -27 81 {Command:"function game:upgrades/blueteam/lifesupport1"}

setblock 81 -31 59 hopper replace
setblock 81 -31 69 hopper replace
setblock 69 -31 81 hopper replace
setblock 59 -31 81 hopper replace