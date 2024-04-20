tag @e[type=marker,tag=male,tag=!estagio_4] add estagio_4
#
effect give @a[scores={Jogando=1},gamemode=!spectator] darkness 30 0 true
#
execute if entity @e[type=marker,tag=male] run schedule function banova:ramos/males/estagios/sculk_4 25s