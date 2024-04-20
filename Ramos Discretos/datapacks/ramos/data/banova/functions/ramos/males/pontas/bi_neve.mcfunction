scoreboard players add @e[type=marker,tag=ale.1-2,limit=1,sort=random] Tempo 1
# Bifurca
execute if entity @e[type=marker,tag=ale.1,scores={Tempo=1..}] run function banova:ramos/males/gera/pontas
execute if entity @e[type=marker,tag=ale.1,scores={Tempo=1..}] run scoreboard players reset @s Pont.3
# Estágio I
execute if score .male_estagio Tempo matches 1.. if entity @e[type=marker,tag=ale.1,scores={Tempo=1..}] at @s run fillbiome ~ ~ ~ ~ ~ ~ snowy_plains
# Reseta
scoreboard players reset @e[type=marker,tag=ale.1-2,scores={Tempo=1..}] Tempo