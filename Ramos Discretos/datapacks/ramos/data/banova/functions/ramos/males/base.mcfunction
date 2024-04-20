# Quando male
scoreboard players add @e[type=marker,tag=ale.1-4,limit=1,sort=random] Tempo 1
execute if entity @e[type=marker,tag=ale.1-4,tag=ale.1,scores={Tempo=1..}] run scoreboard players set .male_inicio Tempo 1
execute if entity @e[type=marker,tag=ale.1-4,tag=ale.2,scores={Tempo=1..}] run scoreboard players set .male_inicio Tempo 2
execute if entity @e[type=marker,tag=ale.1-4,tag=ale.3,scores={Tempo=1..}] run scoreboard players set .male_inicio Tempo 3
execute if entity @e[type=marker,tag=ale.1-4,tag=ale.4,scores={Tempo=1..}] run scoreboard players set .male_inicio Tempo 4
scoreboard players reset @e[type=marker,tag=ale.1-4,scores={Tempo=1..}] Tempo
# Qual male
scoreboard players add @e[type=marker,tag=ale.1-5,limit=1,sort=random] Tempo 1
execute if entity @e[type=marker,tag=ale.1-5,tag=ale.1,scores={Tempo=1..}] run scoreboard players set .male Tempo 1
execute if entity @e[type=marker,tag=ale.1-5,tag=ale.2,scores={Tempo=1..}] run scoreboard players set .male Tempo 2
execute if entity @e[type=marker,tag=ale.1-5,tag=ale.3,scores={Tempo=1..}] run scoreboard players set .male Tempo 3
execute if entity @e[type=marker,tag=ale.1-5,tag=ale.4,scores={Tempo=1..}] run scoreboard players set .male Tempo 4
execute if entity @e[type=marker,tag=ale.1-5,tag=ale.5,scores={Tempo=1..}] run scoreboard players set .male Tempo 5
scoreboard players reset @e[type=marker,tag=ale.1-5,scores={Tempo=1..}] Tempo