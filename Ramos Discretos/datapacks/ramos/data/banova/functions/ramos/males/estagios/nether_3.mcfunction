tag @e[type=marker,tag=male,tag=!estagio_3] add estagio_3
# Destruição
execute if predicate banova:ramos/chuva unless entity @e[type=marker,tag=nether_chuva] run summon marker 0 74 0 {Tags: ["deleta", "nether_chuva"]}
execute if predicate banova:ramos/chuva run spreadplayers 0 0 1 64 under 150 false @e[tag=nether_chuva,limit=1]
execute at @e[tag=nether_chuva,limit=1] if predicate banova:ramos/chuva unless block ~ ~-1 ~ #wither_immune unless block ~ ~-1 ~ #geode_invalid_blocks run fill ~ ~-1 ~ ~ ~-1 ~ air destroy
# Tempo
scoreboard players add @e[type=marker,tag=ale.1-5,limit=1,sort=random] Tempo 1
execute if entity @e[type=marker,tag=ale.1,scores={Tempo=1..}] if entity @e[type=marker,tag=male] run schedule function banova:ramos/males/estagios/nether_3 2s
execute if entity @e[type=marker,tag=ale.2,scores={Tempo=1..}] if entity @e[type=marker,tag=male] run schedule function banova:ramos/males/estagios/nether_3 4s
execute if entity @e[type=marker,tag=ale.3,scores={Tempo=1..}] if entity @e[type=marker,tag=male] run schedule function banova:ramos/males/estagios/nether_3 6s
execute if entity @e[type=marker,tag=ale.4,scores={Tempo=1..}] if entity @e[type=marker,tag=male] run schedule function banova:ramos/males/estagios/nether_3 8s
execute if entity @e[type=marker,tag=ale.5,scores={Tempo=1..}] if entity @e[type=marker,tag=male] run schedule function banova:ramos/males/estagios/nether_3 10s
# Reseta
scoreboard players reset @e[type=marker,tag=ale.1-5,scores={Tempo=1..}] Tempo