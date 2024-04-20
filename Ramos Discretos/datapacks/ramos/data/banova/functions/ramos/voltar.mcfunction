execute positioned 0 0 0 run scoreboard players add @a[distance=..30] Jogando 1
execute positioned 0 0 0 as @a[distance=..30] run function banova:ramos/desiste
spreadplayers 0 0 1 64 under 127 false @a[scores={Jogando=1}]
gamemode survival @a[scores={Jogando=1}]
effect give @a[scores={Jogando=1}] saturation 30 0 true