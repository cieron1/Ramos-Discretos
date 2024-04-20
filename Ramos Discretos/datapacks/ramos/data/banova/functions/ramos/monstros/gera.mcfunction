execute unless score .noite Tempo matches 1 run scoreboard players add .dia Tempo 5
execute unless score .noite Tempo matches 1 run scoreboard players set .pontos_ent Tempo 4200
scoreboard players set .noite Tempo 1
execute if score .dia Tempo matches 26.. run scoreboard players set .dia Tempo 25
#
scoreboard players operation .pontos_ent Tempo += .dia Tempo
#
execute if score .pontos_ent Tempo matches 4800.. run function banova:ramos/monstros/escolhe
execute if score .pontos_ent Tempo matches 4800.. run scoreboard players remove .pontos_ent Tempo 4800