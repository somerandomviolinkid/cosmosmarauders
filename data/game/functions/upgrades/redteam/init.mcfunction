data merge block -81 -33 -62 {Command:"tellraw @p {\"text\":\"10 Binding Agent, 2 Metal, 2 Crystal. IN THAT ORDER!\"}"}
data merge block -81 -28 -59 {Command:"execute if blocks 1 19 -3 1 19 -3 ~ ~-3 ~ all"}
data merge block -81 -27 -59 {Command:"function game:upgrades/redteam/shipdefenses1"}

data merge block -81 -33 -66 {Command:"tellraw @p {\"text\":\"3 Metal, 3 Crystal. IN THAT ORDER!\"}"}
data merge block -81 -28 -69 {Command:"execute if blocks 1 19 -4 1 19 -4 ~ ~-3 ~ all"}
data merge block -81 -27 -69 {Command:"function game:upgrades/redteam/engine1"}

data merge block -66 -33 -81 {Command:"tellraw @p {\"text\":\"8 Binding Agent, 2 Metal, 1 Industrial Acid. IN THAT ORDER!\"}"}
data merge block -69 -28 -81 {Command:"execute if blocks 1 19 -5 1 19 -5 ~ ~-3 ~ all"}
data merge block -69 -27 -81 {Command:"function game:upgrades/redteam/comms1"}

data merge block -62 -33 -81 {Command:"tellraw @p {\"text\":\"16 Gas, 10 Water, 4 Binding Agent. IN THAT ORDER!\"}"}
data merge block -59 -28 -81 {Command:"execute if blocks 1 19 -6 1 19 -6 ~ ~-3 ~ all"}
data merge block -59 -27 -81 {Command:"function game:upgrades/redteam/lifesupport1"}

setblock -81 -31 -59 hopper replace
setblock -81 -31 -69 hopper replace
setblock -69 -31 -81 hopper replace
setblock -59 -31 -81 hopper replace