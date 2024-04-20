scoreboard players add .male_bedrock Tempo 4
scoreboard players remove @s Tempo 1
execute if score @s Tempo matches ..0 run scoreboard players reset @s
execute if score @s Tempo matches 1.. run function banova:ramos/males/gera_bedrock/4