tag @e[type=marker,tag=male,tag=!estagio_4] add estagio_4
#
summon ghast ~ ~ ~ {DeathLootTable: "banova:ramos/vazio", Tags: ["deleta", "criatura_nether", "criatura"]}
summon ghast ~ ~ ~ {DeathLootTable: "banova:ramos/vazio", Tags: ["deleta", "criatura_nether", "criatura"]}
spreadplayers 0 0 1 64 under 100 false @e[tag=criatura_nether]
#
execute if entity @e[type=marker,tag=male] run schedule function banova:ramos/males/estagios/nether_4 120s