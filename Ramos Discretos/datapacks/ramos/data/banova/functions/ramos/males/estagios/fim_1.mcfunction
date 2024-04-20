tag @e[type=marker,tag=male,tag=!estagio_1] add estagio_1
#
scoreboard players add @e[type=marker,tag=ale.1-5,limit=1,sort=random] Tempo 1
# Efeito
execute if entity @e[type=marker,tag=ale.1,scores={Tempo=1..}] as @a[scores={Jogando=1}] at @s run tp @s ~ ~ ~ ~-30 ~
execute if entity @e[type=marker,tag=ale.2,scores={Tempo=1..}] as @a[scores={Jogando=1}] at @s run tp @s ~ ~ ~ ~ ~-30
execute if entity @e[type=marker,tag=ale.3,scores={Tempo=1..}] as @a[scores={Jogando=1}] at @s run tp @s ~ ~ ~ ~30 ~
execute if entity @e[type=marker,tag=ale.4,scores={Tempo=1..}] as @a[scores={Jogando=1}] at @s run tp @s ~ ~ ~ ~ ~30
execute if entity @e[type=marker,tag=ale.5,scores={Tempo=1..}] as @a[scores={Jogando=1}] at @s run tp @s ~ ~2 ~
# Tempo
execute if entity @e[type=marker,tag=ale.1,scores={Tempo=1..}] if entity @e[type=marker,tag=male] run schedule function banova:ramos/males/estagios/fim_1 120s
execute if entity @e[type=marker,tag=ale.2,scores={Tempo=1..}] if entity @e[type=marker,tag=male] run schedule function banova:ramos/males/estagios/fim_1 140s
execute if entity @e[type=marker,tag=ale.3,scores={Tempo=1..}] if entity @e[type=marker,tag=male] run schedule function banova:ramos/males/estagios/fim_1 160s
execute if entity @e[type=marker,tag=ale.4,scores={Tempo=1..}] if entity @e[type=marker,tag=male] run schedule function banova:ramos/males/estagios/fim_1 180s
execute if entity @e[type=marker,tag=ale.5,scores={Tempo=1..}] if entity @e[type=marker,tag=male] run schedule function banova:ramos/males/estagios/fim_1 200s
# Reseta
scoreboard players reset @e[type=marker,tag=ale.1-5,scores={Tempo=1..}] Tempo