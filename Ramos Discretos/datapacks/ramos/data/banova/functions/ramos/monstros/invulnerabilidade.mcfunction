execute if block ~ ~-1 ~ #banova:plantacao run scoreboard players add @s Tempo 1
execute if block ~ ~ ~ #banova:plantacao run scoreboard players add @s Tempo 1
execute if block ~ ~1 ~ #banova:plantacao run scoreboard players add @s Tempo 1
#
execute if entity @s[nbt={Invulnerable: 0b}] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 12 1.7 0.2
execute as @s[nbt={Invulnerable: 0b}] run data modify entity @s Invulnerable set value 1
#
execute if score @s Tempo matches 120.. run scoreboard players set @s Tempo -600