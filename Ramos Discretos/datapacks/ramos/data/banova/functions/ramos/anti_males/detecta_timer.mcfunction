scoreboard players remove @s Pont.1 1
execute at @s[scores={Pont.1=..0}] run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 2
scoreboard players reset @s[scores={Pont.1=..0}] Pont.1