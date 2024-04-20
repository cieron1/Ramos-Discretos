execute if block ~ ~1 ~ #minecraft:dirt run setblock ~ ~1 ~ air destroy
execute if block ~ ~ ~ #minecraft:dirt run setblock ~ ~ ~ air destroy
execute if block ^ ^ ^1 #minecraft:dirt run setblock ^ ^ ^1 air destroy
execute if block ^ ^1 ^1 #minecraft:dirt run setblock ^ ^1 ^1 air destroy
execute if block ^ ^ ^2 #minecraft:dirt run setblock ^ ^ ^2 air destroy
execute if block ^ ^1 ^2 #minecraft:dirt run setblock ^ ^1 ^2 air destroy
playsound block.gravel.break hostile @a ~ ~ ~ 3 0
scoreboard players set @s Pont.1 80