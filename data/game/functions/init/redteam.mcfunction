#fill up red variable chest and update red team
item replace block 0 10 -2 container.0 from block 0 9 -2 container.0
item replace block 0 10 -2 container.1 from block 0 9 -2 container.1
item replace block 0 10 -2 container.2 from block 0 9 -2 container.2
item replace block 0 10 -2 container.3 from block 0 9 -2 container.3
item replace block 0 10 -2 container.4 from block 0 9 -2 container.4
item replace block 0 10 -2 container.5 from block 0 9 -2 container.5
item replace block 0 10 -2 container.6 from block 0 9 -2 container.6
item replace block 0 10 -2 container.7 from block 0 9 -2 container.7
function game:updates/updateredteam

summon villager -70 -31 -70 {VillagerData:{profession:nitwit,level:5,type:plains},Invulnerable:1,PersistenceRequired:1,Silent:1,NoAI:1,Rotation:[-45f,0f],CustomName:"\"Bob\"",ActiveEffects:[{Id:10,Amplifier:1,Duration:999999,ShowParticles:0b}],Offers:{Recipes:[{buy:{id:iron_ingot,Count:3,tag:{Metal:1b,display:{Name:'[{"text":"Metal","italic":false}]'}}},buyB:{id:"amethyst_shard",Count:1,tag:{Crystal:1b,display:{Name:'[{"text":"Crystal","italic":false}]'}}},sell:{id:iron_pickaxe,Count:1,tag:{Unbreakable:1,display:{Name:'[{"text":"Mining Drill","italic":false}]'},HideFlags:8,CanDestroy:[red_concrete,green_concrete,blue_concrete,yellow_concrete]}},rewardExp:0b,maxUses:9999999},{buy:{id:iron_ingot,Count:10,tag:{Metal:1b,display:{Name:'[{"text":"Metal","italic":false}]'}}},buyB:{id:"amethyst_shard",Count:3,tag:{Crystal:1b,display:{Name:'[{"text":"Crystal","italic":false}]'}}},sell:{id:diamond,Count:1,tag:{display:{Name:'[{"text":"Advanced drill bit","italic":false}]'}}},rewardExp:0b,maxUses:9999999},{buy:{id:iron_pickaxe,Count:1,tag:{Unbreakable:1,display:{Name:'[{"text":"Mining Drill","italic":false}]'},HideFlags:8,CanDestroy:[red_concrete,green_concrete,blue_concrete,yellow_concrete]}},buyB:{id:diamond,Count:1,tag:{display:{Name:'[{"text":"Advanced drill bit","italic":false}]'}}},sell:{id:diamond_pickaxe,Count:1,tag:{Unbreakable:1,display:{Name:'[{"text":"Advanced Mining Drill","italic":false}]'},HideFlags:8,CanDestroy:[red_concrete,green_concrete,blue_concrete,yellow_concrete,iron_block]}},rewardExp:0b,maxUses:9999999},{buy:{id:cobblestone,Count:4,tag:{Rock:1b,display:{Name:'[{"text":"Rock","italic":false}]'}}},buyB:{id:sugar_cane,Count:4,tag:{Biomatter:1b,display:{Name:'[{"text":"Biomatter","italic":false}]'}}},sell:{id:red_concrete,Count:4,tag:{display:{Name:'[{"text":"Insulated Scaffolding","italic":false}]'},HideFlags:16,CanPlaceOn:[red_concrete,green_concrete,blue_concrete,yellow_concrete,blast_furnace,iron_block]}},rewardExp:0b,maxUses:9999999},{buy:{id:red_concrete,Count:2,tag:{display:{Name:'[{"text":"Insulated Scaffolding","italic":false}]'},HideFlags:16,CanPlaceOn:[red_concrete,green_concrete,blue_concrete,yellow_concrete,blast_furnace,iron_block]}},buyB:{id:iron_ingot,Count:1,tag:{Metal:1b,display:{Name:'[{"text":"Metal","italic":false}]'}}},sell:{id:iron_block,Count:1,tag:{display:{Name:'[{"text":"Scaffolding Connector","italic":false}]',Lore:['[{"text":"Can be placed on asteroids","italic":false}]']},HideFlags:16,CanPlaceOn:[red_concrete,green_concrete,blue_concrete,yellow_concrete,blast_furnace,iron_block,cobblestone,end_stone,blue_ice,end_stone]}},rewardExp:0b,maxUses:9999999},{buy:{id:cobblestone,Count:15,tag:{Rock:1b,display:{Name:'[{"text":"Rock","italic":false}]'}}},buyB:{id:iron_ingot,Count:5,tag:{Metal:1b,display:{Name:'[{"text":"Metal","italic":false}]'}}},sell:{id:shield,Count:1,tag:{Unbreakable:1,display:{Name:'[{"text":"Space Shield","italic":false}]'}}},rewardExp:0b,maxUses:9999999}]}}