execute if block ~ ~1 ~ #banova:plantacao run setblock ~ ~1 ~ air destroy
execute if block ~ ~ ~ #banova:plantacao run setblock ~ ~ ~ air destroy
execute if block ~ ~-1 ~ #banova:plantacao run setblock ~ ~-1 ~ air destroy
execute if block ^ ^ ^1 #banova:plantacao run setblock ^ ^ ^1 air destroy
execute if block ^ ^-1 ^1 #banova:plantacao run setblock ^ ^-1 ^1 air destroy
execute if block ^ ^ ^2 #banova:plantacao run setblock ^ ^ ^2 air destroy
execute if block ^ ^-1 ^2 #banova:plantacao run setblock ^ ^-1 ^2 air destroy
playsound minecraft:block.crop.break hostile @a ~ ~ ~ 6 0
scoreboard players set @s Pont.1 100