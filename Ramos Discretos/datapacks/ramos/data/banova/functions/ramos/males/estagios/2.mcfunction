execute if score .male Tempo matches 1 as @a[scores={mortes=1..}] run scoreboard players add @e[type=marker,tag=male_ponta] Pont.1 800
execute if score .male Tempo matches 2 run function banova:ramos/males/estagios/temperatura
execute if score .male Tempo matches 3 if entity @e[type=marker,tag=male,tag=!estagio_2] run function banova:ramos/males/estagios/neve_2
# 4: bifurcação
execute if score .male Tempo matches 5 if entity @e[type=marker,tag=male,tag=!estagio_2] run function banova:ramos/males/estagios/fim_2