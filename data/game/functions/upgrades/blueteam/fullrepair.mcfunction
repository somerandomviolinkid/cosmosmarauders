setblock 64 -32 64 hopper
setblock 64 -31 64 blue_carpet
setblock 64 -28 64 bedrock
tellraw @a[team=blueTeam] {"text":"You have fully repaired your ship! Drop Ultrafuel onto the beacon beam to escape and win."}
execute at @a[team=blueTeam] run playsound ui.toast.challenge_complete master @a[team=blueTeam]