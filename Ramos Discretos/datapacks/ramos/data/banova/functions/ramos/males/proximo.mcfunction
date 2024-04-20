function banova:ramos/males/base
scoreboard players operation .male_inicio Tempo += .dia Tempo
scoreboard players add .male_bonus Tempo 1
execute if score .male_bonus Tempo matches 21.. run scoreboard players set .male_bonus Tempo 20