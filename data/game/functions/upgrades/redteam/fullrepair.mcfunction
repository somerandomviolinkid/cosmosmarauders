clone 0 31 0 0 31 0 -64 -32 -64
setblock -64 -31 -64 red_carpet
setblock -64 -28 -64 bedrock

tellraw @a[team=redTeam] {"text":"You have fully repaired your ship! Drop Ultrafuel onto the beacon beam to escape and win."}
execute at @a[team=redTeam] run playsound ui.toast.challenge_complete master @a[team=redTeam]