scoreboard players set @a deaths 0

function game:updates/updateredteam
function game:updates/updateblueteam
function game:updates/updategreenteam
function game:updates/updateyellowteam

effect give @a minecraft:slow_falling infinite 0 true
effect give @a minecraft:jump_boost infinite 2 true

execute as @a[team=redTeam] if block 0 25 -2 red_wool run effect give @s resistance infinite 0 true
execute as @a[team=redTeam] if block -1 25 -2 red_wool run effect give @s regeneration infinite 0 true

execute as @a[team=greenTeam] if block 2 25 0 green_wool run effect give @s resistance infinite 0 true
execute as @a[team=greenTeam] if block 2 25 -1 green_wool run effect give @s regeneration infinite 0 true

execute as @a[team=blueTeam] if block 0 25 2 blue_wool run effect give @s resistance infinite 0 true
execute as @a[team=blueTeam] if block 1 25 2 blue_wool run effect give @s regeneration infinite 0 true

execute as @a[team=yellowTeam] if block -2 25 0 yellow_wool run effect give @s resistance infinite 0 true
execute as @a[team=yellowTeam] if block -2 25 1 yellow_wool run effect give @s regeneration infinite 0 true