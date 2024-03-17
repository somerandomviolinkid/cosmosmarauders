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

summon villager -70 -31 -70 {VillagerData:{profession:nitwit,level:5,type:plains},Invulnerable:1,PersistenceRequired:1,Silent:1,NoAI:1,Rotation:[-45f,0f],CustomName:"\"Bob\"",ActiveEffects:[{Id:10,Amplifier:1,Duration:999999,ShowParticles:0b}],Offers:{Recipes:[{buy:{id:iron_ingot,Count:10},buyB:{id:amethyst_shard,Count:3},sell:{id:iron_pickaxe,Count:1,tag:{Unbreakable:1,display:{Name:'[{"text":"Mining Drill","italic":false}]'},CanDestroy:[red_concrete,green_concrete,blue_concrete,yellow_concrete]}},rewardExp:0b,maxUses:9999999},{buy:{id:amethyst_shard,Count:1},buyB:{id:iron_sword,Count:1},sell:{id:iron_sword,Count:1,tag:{display:{Name:"\"Knife\""},Enchantments:[{id:fire_aspect,lvl:1}]}},rewardExp:0b,maxUses:9999999},{buy:{id:cobblestone,Count:16},buyB:{id:sugar_cane,Count:16},sell:{id:red_concrete,Count:8,tag:{display:{Name:'[{"text":"Insulated Scaffolding","italic":false}]'},CanPlaceOn:[cobblestone,end_stone,andesite,red_concrete,green_concrete,blue_concrete,yellow_concrete]}},rewardExp:0b,maxUses:9999999}]}}