clear @s nether_star 1
give @s nether_star{display: {Name: '{"text":"Atrasa Male","color":"aqua","italic":false}', Lore: ['{"text":"Barra o male por 1 minuto","color":"dark_purple","italic":false}']}, atrasa: 1b} 1
advancement revoke @s only banova:nether_star
kill @e[type=item,nbt={Item: {id: "minecraft:nether_star"}},limit=1]