#fill up blue variable chest and update blue team
item replace block 0 10 2 container.0 from block 0 9 2 container.0
item replace block 0 10 2 container.1 from block 0 9 2 container.1
item replace block 0 10 2 container.2 from block 0 9 2 container.2
item replace block 0 10 2 container.3 from block 0 9 2 container.3
item replace block 0 10 2 container.4 from block 0 9 2 container.4
item replace block 0 10 2 container.5 from block 0 9 2 container.5
item replace block 0 10 2 container.6 from block 0 9 2 container.6
function game:updates/updateblueteam
function game:upgrades/blueteam/init

#reset blocks and stuff
setblock 64 -32 64 blue_wool
setblock 64 -31 64 air
setblock 64 -28 64 blue_wool

summon villager 70 -31 70 {VillagerData:{profession:nitwit,level:5,type:plains},Invulnerable:1,PersistenceRequired:1,Silent:1,NoAI:1,Rotation:[135f,0f],CustomName:"\"Bob\"",ActiveEffects:[{Id:10,Amplifier:1,Duration:999999,ShowParticles:0b}],Offers:{Recipes:[{buy:{id:ice,Count:1,tag:{Water:1b,display:{Name:'[{"text":"Water","italic":false}]'}}},buyB:{id:cobblestone,Count:1,tag:{Rock:1b,display:{Name:'[{"text":"Rock","italic":false}]'}}},sell:{id:light_gray_concrete_powder,Count:1,tag:{"Binding Agent":1b,display:{Name:'[{"text":"Binding Agent","italic":false}]'}}},rewardExp:0b,maxUses:9999999},{buy:{id:light_gray_concrete_powder,Count:2,tag:{"Binding Agent":1b,display:{Name:'[{"text":"Binding Agent","italic":false}]'}}},buyB:{id:glass_bottle,Count:2,tag:{Gas:1b,display:{Name:'[{"text":"Gas","italic":false}]'}}},sell:{id:blue_concrete,Count:4,tag:{"Reinforced Scaffolding":1b,display:{Name:'[{"text":"Reinforced Scaffolding","italic":false}]'},HideFlags:16,CanPlaceOn:[red_concrete,green_concrete,blue_concrete,yellow_concrete,blast_furnace,iron_block]}},rewardExp:0b,maxUses:9999999},{buy:{id:light_gray_concrete_powder,Count:2,tag:{"Binding Agent":1b,display:{Name:'[{"text":"Binding Agent","italic":false}]'}}},buyB:{id:iron_ingot,Count:1,tag:{Metal:1b,display:{Name:'[{"text":"Metal","italic":false}]'}}},sell:{id:iron_block,Count:1,tag:{"Hard Point":1b,display:{Name:'[{"text":"Hard Point","italic":false}]',Lore:['[{"text":"Can be placed on asteroids","italic":false}]']},HideFlags:16,CanPlaceOn:[red_concrete,green_concrete,blue_concrete,yellow_concrete,blast_furnace,iron_block,cobblestone,end_stone,blue_ice,end_stone]}},rewardExp:0b,maxUses:9999999},{buy:{id:ice,Count:2,tag:{Water:1b,display:{Name:'[{"text":"Water","italic":false}]'}}},buyB:{id:glass_bottle,Count:2,tag:{Gas:1b,display:{Name:'[{"text":"Gas","italic":false}]'}}},sell:{id:cauldron,Count:1,tag:{"Industrial Grade Acid":1b,display:{Name:'[{"text":"Industrial Grade Acid","italic":false}]'}}},rewardExp:0b,maxUses:9999999},{buy:{id:iron_ingot,Count:1,tag:{Metal:1b,display:{Name:'[{"text":"Metal","italic":false}]'}}},buyB:{id:amethyst_shard,Count:1,tag:{Crystal:1b,display:{Name:'[{"text":"Crystal","italic":false}]'}}},sell:{id:heavy_weighted_pressure_plate,Count:1,tag:{"Electrical Plating":1b,display:{Name:'[{"text":"Electrical Plating","italic":false}]'}}},rewardExp:0b,maxUses:9999999},{buy:{id:heavy_weighted_pressure_plate,Count:1,tag:{"Electrical Plating":1b,display:{Name:'[{"text":"Electrical Plating","italic":false}]'}}},buyB:{id:cauldron,Count:1,tag:{"Industrial Grade Acid":1b,display:{Name:'[{"text":"Industrial Grade Acid","italic":false}]'}}},sell:{id:light_weighted_pressure_plate,Count:1,tag:{"Electrical Circuit":1b,display:{Name:'[{"text":"Electrical Circuit","italic":false}]'}}},rewardExp:0b,maxUses:9999999},{buy:{id:heavy_weighted_pressure_plate,Count:1,tag:{"Electrical Plating":1b,display:{Name:'[{"text":"Electrical Plating","italic":false}]'}}},buyB:{id:light_gray_concrete_powder,Count:3,tag:{"Binding Agent":1b,display:{Name:'[{"text":"Binding Agent","italic":false}]'}}},sell:{id:iron_pickaxe,Count:1,tag:{"Mining Drill":1b,Unbreakable:1,display:{Name:'[{"text":"Mining Drill","italic":false}]'},HideFlags:8,CanDestroy:[red_concrete,green_concrete,blue_concrete,yellow_concrete,iron_block]}},rewardExp:0b,maxUses:9999999},{buy:{id:light_weighted_pressure_plate,Count:1,tag:{"Electrical Circuit":1b,display:{Name:'[{"text":"Electrical Circuit","italic":false}]'}}},buyB:{id:light_gray_concrete_powder,Count:5,tag:{"Binding Agent":1b,display:{Name:'[{"text":"Binding Agent","italic":false}]'}}},sell:{id:shield,Count:1,tag:{"Space Shield":1b,Unbreakable:1,display:{Name:'[{"text":"Space Shield","italic":false}]'}}},rewardExp:0b,maxUses:9999999},{buy:{id:tnt,Count:2,tag:{"Explosive Canister":1b,display:{Name:'[{"text":"Explosive Canister","italic":false}]'}}},buyB:{id:glass_bottle,Count:3,tag:{Gas:1b,display:{Name:'[{"text":"Gas","italic":false}]'}}},sell:{id:snowball,Count:1,tag:{"High Explosive Grenade":1b,display:{Name:'[{"text":"High Explosive Grenade","italic":false}]'}}},rewardExp:0b,maxUses:9999999},{buy:{id:cauldron,Count:3,tag:{"Industrial Grade Acid":1b,display:{Name:'[{"text":"Industrial Grade Acid","italic":false}]'}}},buyB:{id:glass_bottle,Count:5,tag:{Gas:1b,display:{Name:'[{"text":"Gas","italic":false}]'}}},sell:{id:egg,Count:1,tag:{"Smoke Grenade":1b,display:{Name:'[{"text":"Smoke Grenade","italic":false}]'}}},rewardExp:0b,maxUses:9999999},{buy:{id:cauldron,Count:3,tag:{"Industrial Grade Acid":1b,display:{Name:'[{"text":"Industrial Grade Acid","italic":false}]'}}},buyB:{id:light_gray_concrete_powder,Count:8,tag:{"Binding Agent":1b,display:{Name:'[{"text":"Binding Agent","italic":false}]'}}},sell:{id:fire_charge,Count:1,tag:{"Rocket Fuel":1b,display:{Name:'[{"text":"Rocket Fuel","italic":false}]'}}},rewardExp:0b,maxUses:9999999},{buy:{id:iron_ingot,Count:1,tag:{Metal:1b,display:{Name:'[{"text":"Metal","italic":false}]'}}},buyB:{id:fire_charge,Count:1,tag:{"Rocket Fuel":1b,display:{Name:'[{"text":"Rocket Fuel","italic":false}]'}}},sell:{id:tnt,Count:1,tag:{"Explosive Canister":1b,display:{Name:'[{"text":"Explosive Canister","italic":false}]'}}},rewardExp:0b,maxUses:9999999},{buy:{id:cobblestone,Count:4,tag:{Rock:1b,display:{Name:'[{"text":"Rock","italic":false}]'}}},buyB:{id:cauldron,Count:2,tag:{"Industrial Grade Acid":1b,display:{Name:'[{"text":"Industrial Grade Acid","italic":false}]'}}},sell:{id:arrow,Count:8,tag:{"Hard Pellet":1b,display:{Name:'[{"text":"Hard Pellet","italic":false}]'}}},rewardExp:0b,maxUses:9999999},{buy:{id:tnt,Count:2,tag:{"Explosive Canister":1b,display:{Name:'[{"text":"Explosive Canister","italic":false}]'}}},buyB:{id:fire_charge,Count:3,tag:{"Rocket Fuel":1b,display:{Name:'[{"text":"Rocket Fuel","italic":false}]'}}},sell:{id:spectral_arrow,Count:2,tag:{"Rocket":1b,display:{Name:'[{"text":"Rocket","italic":false}]'}}},rewardExp:0b,maxUses:9999999},{buy:{id:heavy_weighted_pressure_plate,Count:4,tag:{"Electrical Plating":1b,display:{Name:'[{"text":"Electrical Plating","italic":false}]'}}},buyB:{id:light_weighted_pressure_plate,Count:2,tag:{"Electrical Circuit":1b,display:{Name:'[{"text":"Electrical Circuit","italic":false}]'}}},sell:{id:warped_fungus_on_a_stick,Count:1,tag:{"Personal Rocket Booster":1b,display:{Name:'[{"text":"Personal Rocket Booster","italic":false}]'}}},rewardExp:0b,maxUses:9999999}]}}