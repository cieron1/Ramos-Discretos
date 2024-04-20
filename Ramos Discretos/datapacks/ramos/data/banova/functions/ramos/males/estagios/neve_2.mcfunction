tag @e[type=marker,tag=male,tag=!estagio_2] add estagio_2
#
execute at @e[type=marker,tag=male] as @a[scores={Jogando=1},distance=..5] run effect give @s slowness 5 4 true
execute at @e[type=marker,tag=male] as @a[scores={Jogando=1},distance=..5] run damage @s 0.8 freeze by @e[type=marker,tag=male,limit=1]
#
execute if entity @e[type=marker,tag=male] run schedule function banova:ramos/males/estagios/neve_2 4s