#execute if entity @p[gamemode=!spectator,gamemode=!creative,distance=..32] at @p[gamemode=!spectator,gamemode=!creative,distance=..32] run particle white_ash ^3 ^ ^6 0.1 0.1 0.1 0.8 10 force @a
execute if entity @p[gamemode=!spectator,gamemode=!creative,distance=..32] at @p[gamemode=!spectator,gamemode=!creative,distance=..32] run summon armor_stand ~ ~ ~ {Tags: ["D", "D1", "Ilusion"]}
execute if entity @p[gamemode=!spectator,gamemode=!creative,distance=..32] at @p[gamemode=!spectator,gamemode=!creative,distance=..32] run summon armor_stand ~ ~ ~ {Tags: ["D", "D1", "Ilusion"]}
execute if entity @p[gamemode=!spectator,gamemode=!creative,distance=..32] at @p[gamemode=!spectator,gamemode=!creative,distance=..32] run summon armor_stand ~ ~ ~ {Tags: ["D", "D1", "Ilusion"]}
execute as @e[tag=Ilusion,type=armor_stand] at @s run spreadplayers ~ ~ 1 9 under 128 true @s
execute as @e[tag=Ilusion,type=armor_stand] at @s anchored eyes run particle white_ash ^ ^ ^ 0.1 0.1 0.1 0.8 10 force @a
tp @e[tag=Ilusion,type=armor_stand] 0 -32 0
kill @e[tag=Ilusion,type=armor_stand]
scoreboard players set @s Pont.1 400