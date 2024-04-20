execute if entity @e[type=marker,tag=male,tag=!estagio_4] run function banova:ramos/males/estagios/neve_4a
#
tag @e[type=marker,tag=male,tag=!estagio_4] add estagio_4
#
weather thunder 60s
#
execute if entity @e[type=marker,tag=male] run schedule function banova:ramos/males/estagios/neve_4 30s