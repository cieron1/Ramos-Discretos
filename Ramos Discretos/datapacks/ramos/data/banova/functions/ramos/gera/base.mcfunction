#scoreboard players set .arvores Constantes 10
#scoreboard players set .lago Constantes 2
#scoreboard players set .grama Constantes 8
#scoreboard players set .abobora Constantes 1
#scoreboard players set .flores Constantes 3
kill @e[tag=deleta,type=marker]
execute if score .Modo_mapa Tempo matches 1 positioned 0 74 0 summon marker run function banova:ramos/gera/gera
execute if score .Modo_mapa Tempo matches 2 positioned 0 74 0 summon marker run function banova:ramos/gera/outres/gera_a
execute if score .Modo_mapa Tempo matches 3 positioned 0 74 0 summon marker run function banova:ramos/gera/outres/gera_b
execute if score .Modo_mapa Tempo matches 4 positioned 0 74 0 summon marker run function banova:ramos/gera/outres/gera_c
execute if score .Modo_mapa Tempo matches 5 positioned 0 74 0 summon marker run function banova:ramos/gera/outres/gera_limpo