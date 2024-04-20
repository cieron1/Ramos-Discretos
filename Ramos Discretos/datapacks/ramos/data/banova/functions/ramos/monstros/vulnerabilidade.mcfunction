scoreboard players add @s Tempo 1
execute if entity @s[nbt={Invulnerable: 1b}] run playsound minecraft:entity.wither.hurt hostile @a ~ ~ ~ 4 0 0.4
execute unless score @s[nbt={Invulnerable: 1b}] Tempo matches 0 run data modify entity @s Invulnerable set value 0
scoreboard players reset @s[scores={Tempo=0}] Tempo