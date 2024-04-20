execute if score .male_estagio Tempo matches 1.. at @e[type=marker,tag=male,limit=1] run tag @e[type=marker,tag=male_ponta,limit=1,sort=furthest] add ponta_detectada
execute on origin unless entity @s[scores={Pont.1=1..}] at @s run tp @s ~ ~ ~ facing entity @e[type=marker,tag=male_ponta,limit=1,tag=ponta_detectada]
tag @e[type=marker,tag=male_ponta,tag=ponta_detectada] remove ponta_detectada
#
execute if score .male_estagio Tempo matches 1.. on origin unless entity @s[scores={Pont.1=1..}] run scoreboard players set @s Pont.1 1200
data modify entity @s PickupDelay set value 0s