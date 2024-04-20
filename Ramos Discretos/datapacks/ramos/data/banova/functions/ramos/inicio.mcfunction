execute positioned 0 0 0 run scoreboard players add @a[distance=..30] Jogando 1
execute positioned 0 0 0 as @a[distance=..30] run function banova:ramos/desiste
function banova:ramos/gera/base
spreadplayers 0 0 1 64 under 127 false @a[scores={Jogando=1}]
# Spawn
#execute as @a[scores={Jogando=1}] run spawnpoint @s 0 -32 0
gamemode survival @a[scores={Jogando=1}]
effect give @a[scores={Jogando=1}] saturation 30 0 true
time set 0t
weather clear 300s
# function banova:ramos/ciclo/base
execute unless score .male Tempo matches 0 run function banova:ramos/males/base