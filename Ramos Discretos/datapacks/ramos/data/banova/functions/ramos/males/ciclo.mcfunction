execute as @a[scores={mortes=1..}] run scoreboard players add @e[type=marker,tag=male_ponta] Pont.1 400
scoreboard players add @e[type=marker,tag=male_ponta] Pont.1 1
execute as @e[type=marker,tag=male_ponta] if score .male_bonus Tempo matches 1.. run scoreboard players operation @s Pont.1 += .male_bonus Tempo
# Verificar estágio
execute if score @e[type=marker,tag=male,limit=1] Pont.3 matches 0..249 run scoreboard players set .male_estagio Tempo 0
execute if score @e[type=marker,tag=male,limit=1] Pont.3 matches 250..499 run scoreboard players set .male_estagio Tempo 1
execute if score @e[type=marker,tag=male,limit=1] Pont.3 matches 500..999 run scoreboard players set .male_estagio Tempo 2
execute if score @e[type=marker,tag=male,limit=1] Pont.3 matches 1000..1999 run scoreboard players set .male_estagio Tempo 3
execute if score @e[type=marker,tag=male,limit=1] Pont.3 matches 2000.. run scoreboard players set .male_estagio Tempo 4
# Efeitos dos estágios
execute if score .male_estagio Tempo matches 1.. run function banova:ramos/males/estagios/1
execute if score .male_estagio Tempo matches 2.. run function banova:ramos/males/estagios/2
execute if score .male_estagio Tempo matches 3.. run function banova:ramos/males/estagios/3
execute if score .male_estagio Tempo matches 4.. run function banova:ramos/males/estagios/4
# Gera pontas
execute unless entity @e[type=marker,tag=male_ponta] at @e[type=marker,tag=male] run function banova:ramos/males/gera/pontas
# Pontas
execute if score .male Tempo matches 1 as @e[type=marker,tag=male_ponta,scores={Pont.1=400..}] run function banova:ramos/males/pontas/bloco_sculk
execute if score .male Tempo matches 2..3 as @e[type=marker,tag=male_ponta,scores={Pont.1=700..}] run function banova:ramos/males/pontas/bloco_bioma
execute if score .male Tempo matches 4 as @e[type=marker,tag=male_ponta,scores={Pont.1=900..}] run function banova:ramos/males/pontas/bloco_nether
execute if score .male Tempo matches 5 as @e[type=marker,tag=male_ponta,scores={Pont.1=380..}] run function banova:ramos/males/pontas/bloco_fim
# Corroer
execute if score .male Tempo matches 1 as @e[type=marker,tag=male_ponta,scores={Pont.2=1..}] at @s run function banova:ramos/males/pontas/corroe_sculk
execute if score .male Tempo matches 2 as @e[type=marker,tag=male_ponta,scores={Pont.2=1..}] at @s run function banova:ramos/males/pontas/corroe_deserto
execute if score .male Tempo matches 3 as @e[type=marker,tag=male_ponta,scores={Pont.2=1..}] at @s run function banova:ramos/males/pontas/corroe_neve
execute if score .male Tempo matches 4 as @e[type=marker,tag=male_ponta,scores={Pont.2=1..}] at @s run function banova:ramos/males/pontas/corroe_nether
execute if score .male Tempo matches 5 as @e[type=marker,tag=male_ponta,scores={Pont.2=1..}] at @s run function banova:ramos/males/pontas/corroe_fim
# Morre
execute at @e[type=marker,tag=male,scores={mortes=12..}] run setblock ~ ~ ~ air
execute as @e[type=marker,tag=male] at @s if block ~ ~ ~ air at @e[type=marker,tag=male_ponta] run setblock ~ ~ ~ air destroy
execute as @e[type=marker,tag=male] at @s if block ~ ~ ~ air run function banova:ramos/males/proximo
execute as @e[type=marker,tag=male] at @s if block ~ ~ ~ air run kill @s
execute as @e[type=marker,tag=male_ponta] at @s if block ~ ~ ~ air run kill @s