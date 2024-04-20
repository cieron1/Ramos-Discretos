execute if score .male Tempo matches 1 if entity @e[type=marker,tag=male,tag=!estagio_3] run function banova:ramos/males/estagios/sculk_3
execute if score .male Tempo matches 2 run scoreboard players add @a[scores={Jogando=1},predicate=banova:ramos/calor] Temperatura 50
execute if score .male Tempo matches 3 as @a[scores={Jogando=1}] at @s if biome ~ ~ ~ snowy_plains run effect give @s slowness 5 1 true
execute if score .male Tempo matches 4 if entity @e[type=marker,tag=male,tag=!estagio_3] run function banova:ramos/males/estagios/nether_3
# 5: bifurcação