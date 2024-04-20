scoreboard players reset .male_bedrock Tempo
# 5
scoreboard players add @e[type=marker,tag=ale.1-5,limit=1,sort=random] Tempo 1
scoreboard players add @e[type=marker,tag=ale.1-5,limit=1,sort=random] Tempo 1
scoreboard players add @e[type=marker,tag=ale.1-5,limit=1,sort=random] Tempo 1
scoreboard players add @e[type=marker,tag=ale.1-5,limit=1,sort=random] Tempo 1
scoreboard players add @e[type=marker,tag=ale.1-5,limit=1,sort=random] Tempo 1
# 10
scoreboard players add @e[type=marker,tag=ale.1-5,limit=1,sort=random] Tempo 1
scoreboard players add @e[type=marker,tag=ale.1-5,limit=1,sort=random] Tempo 1
scoreboard players add @e[type=marker,tag=ale.1-5,limit=1,sort=random] Tempo 1
scoreboard players add @e[type=marker,tag=ale.1-5,limit=1,sort=random] Tempo 1
scoreboard players add @e[type=marker,tag=ale.1-5,limit=1,sort=random] Tempo 1
# 15
scoreboard players add @e[type=marker,tag=ale.1-5,limit=1,sort=random] Tempo 1
scoreboard players add @e[type=marker,tag=ale.1-5,limit=1,sort=random] Tempo 1
scoreboard players add @e[type=marker,tag=ale.1-5,limit=1,sort=random] Tempo 1
scoreboard players add @e[type=marker,tag=ale.1-5,limit=1,sort=random] Tempo 1
scoreboard players add @e[type=marker,tag=ale.1-5,limit=1,sort=random] Tempo 1
# 20
scoreboard players add @e[type=marker,tag=ale.1-5,limit=1,sort=random] Tempo 1
scoreboard players add @e[type=marker,tag=ale.1-5,limit=1,sort=random] Tempo 1
scoreboard players add @e[type=marker,tag=ale.1-5,limit=1,sort=random] Tempo 1
scoreboard players add @e[type=marker,tag=ale.1-5,limit=1,sort=random] Tempo 1
scoreboard players add @e[type=marker,tag=ale.1-5,limit=1,sort=random] Tempo 1
# .male_bedrock
execute as @e[type=marker,tag=ale.1-5,tag=ale.1,scores={Tempo=1..}] run function banova:ramos/males/gera_bedrock/1
execute as @e[type=marker,tag=ale.1-5,tag=ale.2,scores={Tempo=1..}] run function banova:ramos/males/gera_bedrock/2
execute as @e[type=marker,tag=ale.1-5,tag=ale.3,scores={Tempo=1..}] run function banova:ramos/males/gera_bedrock/3
execute as @e[type=marker,tag=ale.1-5,tag=ale.4,scores={Tempo=1..}] run function banova:ramos/males/gera_bedrock/4
execute as @e[type=marker,tag=ale.1-5,tag=ale.5,scores={Tempo=1..}] run function banova:ramos/males/gera_bedrock/5
#
execute if score .male_bedrock Tempo <= .dia Tempo run scoreboard players set .male_bedrock Tempo 1
# Garantia caso algo dê errado
scoreboard players reset @e[type=marker,tag=ale.1-5,scores={Tempo=1..}] Tempo