tag @e[type=marker,tag=male,tag=!estagio_3] add estagio_3
# Esporo
execute at @a[scores={Jogando=1},sort=random,limit=1] at @e[type=marker,tag=male_ponta,sort=nearest] summon marker run function banova:ramos/males/gera/ponta_esporo
# Tempo
scoreboard players add @e[type=marker,tag=ale.1-5,limit=1,sort=random] Tempo 1
execute if entity @e[type=marker,tag=ale.1,scores={Tempo=1..}] if entity @e[type=marker,tag=male] run schedule function banova:ramos/males/estagios/sculk_3 200s
execute if entity @e[type=marker,tag=ale.2,scores={Tempo=1..}] if entity @e[type=marker,tag=male] run schedule function banova:ramos/males/estagios/sculk_3 400s
execute if entity @e[type=marker,tag=ale.3,scores={Tempo=1..}] if entity @e[type=marker,tag=male] run schedule function banova:ramos/males/estagios/sculk_3 600s
execute if entity @e[type=marker,tag=ale.4,scores={Tempo=1..}] if entity @e[type=marker,tag=male] run schedule function banova:ramos/males/estagios/sculk_3 800s
execute if entity @e[type=marker,tag=ale.5,scores={Tempo=1..}] if entity @e[type=marker,tag=male] run schedule function banova:ramos/males/estagios/sculk_3 1000s
# Reseta
scoreboard players reset @e[type=marker,tag=ale.1-5,scores={Tempo=1..}] Tempo