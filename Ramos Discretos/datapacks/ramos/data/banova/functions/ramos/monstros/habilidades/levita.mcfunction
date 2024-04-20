execute unless entity @p[gamemode=!spectator,gamemode=!creative,distance=..48] facing entity @p[gamemode=!spectator,gamemode=!creative] eyes rotated ~ 0 run tp ^ ^0.05 ^.5
execute if entity @s[scores={Pont.1=..0}] run playsound minecraft:entity.shulker.open master @a ~ ~ ~ 3.5 0
execute if entity @s[scores={Pont.1=..0}] anchored eyes positioned ^ ^ ^.0 summon shulker_bullet run data modify entity @s Target set from entity @r[gamemode=!spectator,gamemode=!creative,distance=..48] UUID
execute if entity @s[scores={Pont.1=..0}] anchored eyes positioned ^ ^ ^.0 run data merge entity @e[type=shulker_bullet,limit=1,sort=nearest] {Steps: 3}
execute if entity @s[scores={Pont.1=..0}] run scoreboard players set @s Pont.1 300