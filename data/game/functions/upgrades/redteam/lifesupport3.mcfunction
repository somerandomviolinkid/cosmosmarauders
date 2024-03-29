setblock -1 25 -2 red_wool
data merge block -62 -33 -81 {Command:"tellraw @p {\"text\":\"go to another upgrade brit\"}"}
data merge block -59 -28 -81 {Command:"tellraw @a [{\"color\":\"none\",\"selector\":\"@p\"},{\"color\":\"none\",\"text\":\" is stupid\",\"bold\":false}]"}
data merge block -59 -27 -81 {Command:""}

tellraw @a[team=redTeam] {"text":"Your ship life support have been upgraded to level 3. Please die to gain permanent regeneration."}
execute at @a[team=redTeam] run playsound block.anvil.place master @a[team=redTeam]