# Parte genérica
tag @s add deleta
tag @s add male
tag @s add male_2
spreadplayers 0 0 1 64 under 127 false @s
execute align xz at @s run tp @s ~.5 64 ~.5
execute at @s run setblock ~ ~ ~ obsidian
execute at @s if score .male_bedrock Tempo matches 1 run setblock ~ ~ ~ bedrock