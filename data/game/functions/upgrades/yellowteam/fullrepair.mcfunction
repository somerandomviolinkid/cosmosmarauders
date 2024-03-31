clone 0 31 0 0 31 0 -64 -32 64
setblock -64 -31 64 yellow_carpet
setblock -64 -28 64 bedrock

tellraw @a[team=yellowTeam] {"text":"You have fully repaired your ship! Drop Ultrafuel onto the beacon beam to escape and win."}
execute at @a[team=yellowTeam] run playsound entity.wither.death master @a[team=yellowTeam]