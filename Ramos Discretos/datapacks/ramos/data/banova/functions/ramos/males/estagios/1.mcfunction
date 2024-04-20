# 1: bifurcação
# 2: bifurcação
# 3: bifurcação
execute if score .male Tempo matches 4 run function banova:ramos/males/estagios/temperatura
execute if score .male Tempo matches 5 if entity @e[type=marker,tag=male,tag=!estagio_1] run function banova:ramos/males/estagios/fim_1