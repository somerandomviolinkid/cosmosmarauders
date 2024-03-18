#fill up blue variable chest and update blue team
item replace block 0 10 2 container.0 from block 0 9 2 container.0
item replace block 0 10 2 container.1 from block 0 9 2 container.1
item replace block 0 10 2 container.2 from block 0 9 2 container.2
item replace block 0 10 2 container.3 from block 0 9 2 container.3
item replace block 0 10 2 container.4 from block 0 9 2 container.4
item replace block 0 10 2 container.5 from block 0 9 2 container.5
item replace block 0 10 2 container.6 from block 0 9 2 container.6
item replace block 0 10 2 container.7 from block 0 9 2 container.7
function game:updates/updateblueteam

summon villager 70 -31 70 {VillagerData:{profession:nitwit,level:5,type:plains},Invulnerable:1,PersistenceRequired:1,Silent:1,NoAI:1,Rotation:[135f,0f],CustomName:"\"Bob\"",ActiveEffects:[{Id:10,Amplifier:1,Duration:999999,ShowParticles:0b}],Offers:{Recipes:[{buy:{id:iron_ingot,Count:10,tag:{Metal:1b,display:{Name:'[{"text":"Metal","italic":false}]'}}},buyB:{id:"amethyst_shard",Count:3,tag:{Crystal:1b,display:{Name:'[{"text":"Crystal","italic":false}]'}}},sell:{id:iron_pickaxe,Count:1,tag:{Unbreakable:1,display:{Name:'[{"text":"Mining Drill","italic":false}]'},HideFlags:8,CanDestroy:[red_concrete,green_concrete,blue_concrete,yellow_concrete]}},rewardExp:0b,maxUses:9999999},{buy:{id:cobblestone,Count:16,tag:{Rock:1b,display:{Name:'[{"text":"Rock","italic":false}]'}}},buyB:{id:sugar_cane,Count:16,tag:{Biomatter:1b,display:{Name:'[{"text":"Biomatter","italic":false}]'}}},sell:{id:blue_concrete,Count:8,tag:{display:{Name:'[{"text":"Insulated Scaffolding","italic":false}]'},HideFlags:16,CanPlaceOn:[cobblestone,end_stone,andesite,iron_ore,blue_ice,red_concrete,green_concrete,blue_concrete,yellow_concrete,stone,stone_stairs,stone_slab,red_terracotta,green_terracotta,blue_terracotta,yellow_terracotta]}},rewardExp:0b,maxUses:9999999}]}}