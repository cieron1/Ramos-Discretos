execute positioned ~ ~1 ~ unless block ~ ~ ~ #banova:male_deserto_a run tag @e[type=marker,tag=ale.1] add sem_lado
execute positioned ~ ~-1 ~ unless block ~ ~ ~ #banova:male_deserto_a run tag @e[type=marker,tag=ale.2] add sem_lado
execute positioned ~1 ~ ~ unless block ~ ~ ~ #banova:male_deserto_a run tag @e[type=marker,tag=ale.3] add sem_lado
execute positioned ~-1 ~ ~ unless block ~ ~ ~ #banova:male_deserto_a run tag @e[type=marker,tag=ale.4] add sem_lado
execute positioned ~ ~ ~1 unless block ~ ~ ~ #banova:male_deserto_a run tag @e[type=marker,tag=ale.5] add sem_lado
execute positioned ~ ~ ~-1 unless block ~ ~ ~ #banova:male_deserto_a run tag @e[type=marker,tag=ale.6] add sem_lado
#
execute if block ~ ~1 ~ obsidian run tag @e[type=marker,tag=ale.1] add sem_lado
execute if block ~ ~-1 ~ obsidian run tag @e[type=marker,tag=ale.2] add sem_lado
execute if block ~1 ~ ~ obsidian run tag @e[type=marker,tag=ale.3] add sem_lado
execute if block ~-1 ~ ~ obsidian run tag @e[type=marker,tag=ale.4] add sem_lado
execute if block ~ ~ ~1 obsidian run tag @e[type=marker,tag=ale.5] add sem_lado
execute if block ~ ~ ~-1 obsidian run tag @e[type=marker,tag=ale.6] add sem_lado
#
scoreboard players add @e[type=marker,tag=ale.1-6,tag=!sem_lado,limit=1,sort=random] Tempo 1
# +Y, -Y, +X, -X, +Z, -Z
execute if entity @e[type=marker,tag=ale.1-6,tag=ale.1,scores={Tempo=1..}] run fill ~ ~1 ~ ~ ~1 ~ sand replace #banova:male_deserto
execute if entity @e[type=marker,tag=ale.1-6,tag=ale.2,scores={Tempo=1..}] run fill ~ ~-1 ~ ~ ~-1 ~ sand replace #banova:male_deserto
execute if entity @e[type=marker,tag=ale.1-6,tag=ale.3,scores={Tempo=1..}] run fill ~1 ~ ~ ~1 ~ ~ sand replace #banova:male_deserto
execute if entity @e[type=marker,tag=ale.1-6,tag=ale.4,scores={Tempo=1..}] run fill ~-1 ~ ~ ~-1 ~ ~ sand replace #banova:male_deserto
execute if entity @e[type=marker,tag=ale.1-6,tag=ale.5,scores={Tempo=1..}] run fill ~ ~ ~1 ~ ~ ~1 sand replace #banova:male_deserto
execute if entity @e[type=marker,tag=ale.1-6,tag=ale.6,scores={Tempo=1..}] run fill ~ ~ ~-1 ~ ~ ~-1 sand replace #banova:male_deserto
#
execute if entity @e[type=marker,tag=ale.1-6,tag=ale.1,scores={Tempo=1..}] run fill ~ ~1 ~ ~ ~1 ~ fire replace #banova:male_fogo
execute if entity @e[type=marker,tag=ale.1-6,tag=ale.2,scores={Tempo=1..}] run fill ~ ~-1 ~ ~ ~-1 ~ fire replace #banova:male_fogo
execute if entity @e[type=marker,tag=ale.1-6,tag=ale.3,scores={Tempo=1..}] run fill ~1 ~ ~ ~1 ~ ~ fire replace #banova:male_fogo
execute if entity @e[type=marker,tag=ale.1-6,tag=ale.4,scores={Tempo=1..}] run fill ~-1 ~ ~ ~-1 ~ ~ fire replace #banova:male_fogo
execute if entity @e[type=marker,tag=ale.1-6,tag=ale.5,scores={Tempo=1..}] run fill ~ ~ ~1 ~ ~ ~1 fire replace #banova:male_fogo
execute if entity @e[type=marker,tag=ale.1-6,tag=ale.6,scores={Tempo=1..}] run fill ~ ~ ~-1 ~ ~ ~-1 fire replace #banova:male_fogo
# Tp
execute if entity @e[type=marker,tag=ale.1-6,tag=ale.1,scores={Tempo=1..}] run tp @s ~ ~1 ~
execute if entity @e[type=marker,tag=ale.1-6,tag=ale.2,scores={Tempo=1..}] run tp @s ~ ~-1 ~
execute if entity @e[type=marker,tag=ale.1-6,tag=ale.3,scores={Tempo=1..}] run tp @s ~1 ~ ~
execute if entity @e[type=marker,tag=ale.1-6,tag=ale.4,scores={Tempo=1..}] run tp @s ~-1 ~ ~
execute if entity @e[type=marker,tag=ale.1-6,tag=ale.5,scores={Tempo=1..}] run tp @s ~ ~ ~1
execute if entity @e[type=marker,tag=ale.1-6,tag=ale.6,scores={Tempo=1..}] run tp @s ~ ~ ~-1
#
execute if entity @e[type=marker,tag=ale.1-6,scores={Tempo=1..}] run scoreboard players add @s Pont.3 1
execute if entity @e[type=marker,tag=ale.1-6,scores={Tempo=1..}] run scoreboard players remove @s Pont.2 1
execute if entity @e[type=marker,tag=ale.1-6,scores={Tempo=1..}] run scoreboard players add @e[type=marker,tag=male] Pont.3 1
execute unless entity @e[type=marker,tag=ale.1-6,scores={Tempo=1..}] run kill @s
scoreboard players reset @e[type=marker,tag=ale.1-6,scores={Tempo=1..}] Tempo
#
execute at @s[scores={Pont.3=40..}] run function banova:ramos/males/pontas/bi_deserto
#
tag @e[type=marker,tag=ale.1-6] remove sem_lado