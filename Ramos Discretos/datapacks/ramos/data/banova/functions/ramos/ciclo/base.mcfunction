gamerule doDaylightCycle true
execute unless score .horario Tempo matches 12000.. store result score .dia Tempo run time query day
#
execute if score .horario Tempo matches 10 run scoreboard players reset .dia_mod Tempo
execute if score .horario Tempo matches 10 run scoreboard players operation .dia_mod Tempo += .dia Tempo
execute if score .horario Tempo matches 10 run scoreboard players operation .dia_mod Tempo %= #2 Constantes
execute if score .horario Tempo matches 10 if score .dia_mod Tempo matches 0 if score .dia Tempo matches 1.. as @e[type=marker,tag=deleta,limit=1] run function banova:ramos/ciclo/recursos_extras
# Ambulante
execute if score .horario Tempo matches 11 if score .dia Tempo matches 1.. run function banova:ramos/ciclo/ambulante
# Male
execute if score .horario Tempo matches 12 if score .dia Tempo = .male_inicio Tempo unless score .Modo_mapa Tempo matches 5 run function banova:ramos/males/gera
#
execute store result score .horario Tempo run time query daytime
execute if score .horario Tempo matches 12000.. run time add 1t
execute if score .horario Tempo matches 12198..12202 run effect give @a[scores={Jogando=1}] darkness 30 0 true
execute unless score .horario Tempo matches 12000.. run schedule clear banova:ramos/ciclo/reseta_bedrock
#execute if score .horario Tempo matches 12398..12402 run fill -64 319 -64 63 318 63 minecraft:bedrock
execute if score .horario Tempo matches 12398..12399 run playsound minecraft:entity.wither.spawn master @a 0 64 0 64 1
execute if score .horario Tempo matches 12398..12402 run schedule function banova:ramos/ciclo/reseta_bedrock 30s
execute if score .horario Tempo matches 12398.. run function banova:ramos/monstros/gera
execute unless score .horario Tempo matches 12398.. run scoreboard players reset .noite Tempo
execute unless score .horario Tempo matches 12398.. run tp @e[tag=monstro,type=!player] 0 -80 0
execute unless score .horario Tempo matches 12398.. run tp @e[type=phantom] 0 -80 0
execute unless score .horario Tempo matches 12398.. run kill @e[tag=monstro,type=!player]
execute unless score .horario Tempo matches 12398.. run kill @e[type=phantom]
# Abelhas
execute as @e[type=bee,nbt={AngerTime: 0},sort=random,limit=15] at @s if block ~ ~-1 ~ air if block ~ ~-2 ~ air if block ~ ~-3 ~ air if block ~ ~-4 ~ air run tp @s ~ ~-0.05 ~