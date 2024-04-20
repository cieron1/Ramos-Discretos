execute unless entity @p[gamemode=!spectator,gamemode=!creative,distance=..48] facing entity @p[gamemode=!spectator,gamemode=!creative] eyes rotated ~ 0 run tp ^ ^0.05 ^.5
execute as @s[tag=!foi,nbt={Invulnerable: 0b}] run playsound minecraft:ambient.cave hostile @a ~ ~ ~ 3 2
effect give @s[nbt={Invulnerable: 0b}] speed infinite 6 true
tag @s[nbt={Invulnerable: 0b}] add foi
#
execute if score @s Pont.1 matches ..0 run scoreboard players set @s Pont.1 100