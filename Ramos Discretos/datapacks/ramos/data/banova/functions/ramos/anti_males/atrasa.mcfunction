scoreboard players add @s Pont.1 1200
scoreboard players add @s Pont.2 1
scoreboard players operation @s Pont.2 += .male_bonus Tempo
scoreboard players operation @s Pont.1 *= @s Pont.2
scoreboard players operation @e[type=marker,tag=male_ponta] Pont.1 -= @s Pont.1
kill @s[type=item]