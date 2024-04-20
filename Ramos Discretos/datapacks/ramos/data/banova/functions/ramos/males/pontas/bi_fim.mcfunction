scoreboard players add @e[type=marker,tag=ale.1-5,limit=1,sort=random] Tempo 1
# Bifurca
execute if entity @e[type=marker,tag=ale.1,scores={Tempo=1..}] run function banova:ramos/males/gera/pontas
execute if entity @e[type=marker,tag=ale.1,scores={Tempo=1..}] run scoreboard players reset @s Pont.3
# Estágio III
execute if score .male_estagio Tempo matches 3.. if entity @e[type=marker,tag=ale.1,scores={Tempo=1..}] if score .horario Tempo matches ..11799 run time add 10s
# Reseta
scoreboard players reset @e[type=marker,tag=ale.1-5,scores={Tempo=1..}] Tempo