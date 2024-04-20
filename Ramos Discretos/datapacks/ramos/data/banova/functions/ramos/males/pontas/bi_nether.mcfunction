scoreboard players add @e[type=marker,tag=ale.1-3,limit=1,sort=random] Tempo 1
# Bifurca
execute if entity @e[type=marker,tag=ale.1-3,tag=ale.1,scores={Tempo=1..}] run function banova:ramos/males/gera/pontas
execute if entity @e[type=marker,tag=ale.1-3,tag=ale.1,scores={Tempo=1..}] run scoreboard players reset @s Pont.3
# Estágio II
execute if score .male_estagio Tempo matches 2.. if entity @e[type=marker,tag=ale.1,scores={Tempo=1..}] run effect give @a[scores={Jogando=1}] hunger 20 3 true
# Reseta
scoreboard players reset @e[type=marker,tag=ale.1-3,scores={Tempo=1..}] Tempo