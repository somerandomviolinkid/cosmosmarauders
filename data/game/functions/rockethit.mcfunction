execute at @s run summon minecraft:creeper ~ ~ ~ {Fuse:0,ExplosionRadius:3,CustomName:'[{"text":"Rocket"}]',Silent:1b}
execute at @s run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.15 0.05 0.15 0.02 750 force @a
execute at @s run particle minecraft:flame ~ ~ ~ 0.15 0.05 0.15 0.03 500 force @a

advancement revoke @s only game:rockethit