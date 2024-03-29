setblock 2 25 -1 green_wool
data merge block 81 -33 -62 {Command:"tellraw @p {\"text\":\"go to another upgrade brit\"}"}
data merge block 81 -28 -59 {Command:"tellraw @a [{\"color\":\"none\",\"selector\":\"@p\"},{\"color\":\"none\",\"text\":\" is stupid\",\"bold\":false}]"}
data merge block 81 -28 -59 {Command:""}

tellraw @a[team=greenTeam] {"text":"Your ship comms have been upgraded to level 3. Please die to gain permanent regeneration."}
execute at @a[team=greenTeam] run playsound block.anvil.place master @a[team=greenTeam]