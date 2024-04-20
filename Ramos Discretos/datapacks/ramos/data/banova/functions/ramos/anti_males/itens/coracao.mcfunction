clear @s heart_of_the_sea 1
give @s heart_of_the_sea{display: {Name: '{"text":"Remediador","color":"aqua","italic":false}', Lore: ['{"text":"Desacelera o crescimento do male","color":"dark_purple","italic":false}']}, remedia: 1b} 1
advancement revoke @s only banova:heart_of_the_sea
kill @e[type=item,nbt={Item: {id: "minecraft:heart_of_the_sea"}},limit=1]